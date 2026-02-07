#!/bin/bash
# eu_regulations 資料更新腳本
# 職責：Qdrant 更新 + REVIEW_NEEDED 檢查
# 用法：update.sh [md_file1] [md_file2] ...
# 注意：不處理 index.json（由 GitHub Actions 產生）

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/chatgpt.sh"
source "$PROJECT_ROOT/lib/qdrant.sh"

LAYER_NAME="eu_regulations"
DOCS_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME"

# 確保分類子目錄存在
for category in ai_governance cybersecurity data_protection digital_market financial_compliance supply_chain critical_infrastructure institutional_administration; do
  mkdir -p "$DOCS_DIR/$category"
done

# 排除低價值類別（不寫入 Qdrant）
EXCLUDED_CATEGORIES="institutional_administration"

# === 收集要處理的 .md 檔案 ===
MD_FILES=()
if [[ $# -gt 0 ]]; then
  # 從參數接收
  MD_FILES=("$@")
else
  # 無參數時掃描所有分類目錄
  while IFS= read -r -d '' f; do
    MD_FILES+=("$f")
  done < <(find "$DOCS_DIR" -name "*.md" -type f -not -path "*/raw/*" -print0 2>/dev/null)
fi

if [[ ${#MD_FILES[@]} -eq 0 ]]; then
  echo "No .md files to process"
  exit 0
fi

echo "Processing ${#MD_FILES[@]} file(s)..."

# === Qdrant 更新（by source_url 去重）===
if [[ -n "${QDRANT_URL:-}" ]]; then
  chatgpt_init_env || { echo "❌ OpenAI init failed" >&2; exit 1; }
  qdrant_init_env || { echo "❌ Qdrant init failed" >&2; exit 1; }

  COLLECTION="${QDRANT_COLLECTION:-risk-and-responsibility}"
  VECTOR_DIM="${EMBEDDING_DIMENSION:-1536}"

  # 確保 collection 存在
  qdrant_create_collection "$COLLECTION" "$VECTOR_DIM" "Cosine" 2>/dev/null || true

  UPSERT_OK=0
  UPSERT_FAIL=0

  for md_file in "${MD_FILES[@]}"; do
    if [[ ! -f "$md_file" ]]; then
      echo "⚠️  File not found: $md_file" >&2
      ((UPSERT_FAIL++)) || true
      continue
    fi

    # 檢查是否為排除的類別
    for excluded in $EXCLUDED_CATEGORIES; do
      if [[ "$md_file" == *"/$excluded/"* ]]; then
        echo "⏭️  Skipped (excluded category): $md_file"
        continue 2
      fi
    done

    # 從 frontmatter 提取 source_url
    source_url="$(sed -n 's/^source_url: *//p' "$md_file" | head -1)"
    if [[ -z "$source_url" ]]; then
      echo "⚠️  No source_url in $md_file, skipping" >&2
      ((UPSERT_FAIL++)) || true
      continue
    fi

    # 用 source_url 產生 point ID
    point_id="$(_qdrant_id_to_uuid "$source_url")"

    # 提取 frontmatter 欄位
    title="$(sed -n 's/^title: *"\{0,1\}\([^"]*\)"\{0,1\}/\1/p' "$md_file" | head -1)"
    date_val="$(sed -n 's/^date: *//p' "$md_file" | head -1)"
    category="$(sed -n 's/^category: *//p' "$md_file" | head -1)"
    confidence="$(sed -n 's/^confidence: *//p' "$md_file" | head -1)"

    # 提取 L2 shift_summary（用於 embedding）
    shift_summary="$(sed -n 's/^- \*\*shift_summary\*\*: *//p' "$md_file" | head -1)" || true

    # 提取 L3 Risk Domains（用於 embedding）
    risk_domains="$(sed -n '/^## L3/,/^## L4/p' "$md_file" 2>/dev/null | grep '^- ' 2>/dev/null | sed 's/^- //' | tr '\n' ', ' | sed 's/, $//')" || true

    # 讀取完整內容
    content="$(cat "$md_file")"

    # 組合 embedding 文字（title + shift_summary + risk_domains）
    embed_text="$title"
    [[ -n "$shift_summary" ]] && embed_text="$embed_text. $shift_summary"
    [[ -n "$risk_domains" ]] && embed_text="$embed_text. Risk domains: $risk_domains"

    # 產生 embedding
    vector_json="$(chatgpt_embed "$embed_text")" || {
      echo "⚠️  Embedding failed: $md_file" >&2
      ((UPSERT_FAIL++)) || true
      continue
    }

    # 提取額外欄位（用於 payload 篩選）
    rule_type="$(sed -n 's/^- \*\*rule_type\*\*: *//p' "$md_file" | head -1)" || true
    affected_roles="$(sed -n 's/^- \*\*affected_roles\*\*: *//p' "$md_file" | head -1)" || true
    enforcement_signal="$(sed -n 's/^- \*\*enforcement_signal\*\*: *//p' "$md_file" | head -1)" || true

    # 建構 payload
    payload_json="$(jq -nc \
      --arg source_url "$source_url" \
      --arg title "$title" \
      --arg date "$date_val" \
      --arg category "$category" \
      --arg confidence "$confidence" \
      --arg source_layer "$LAYER_NAME" \
      --arg rule_type "$rule_type" \
      --arg affected_roles "$affected_roles" \
      --arg enforcement_signal "$enforcement_signal" \
      --arg shift_summary "$shift_summary" \
      --arg fetched_at "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" \
      --arg original_content "$content" \
      '{
        source_url: $source_url,
        title: $title,
        date: $date,
        category: $category,
        confidence: $confidence,
        source_layer: $source_layer,
        rule_type: $rule_type,
        affected_roles: $affected_roles,
        enforcement_signal: $enforcement_signal,
        shift_summary: $shift_summary,
        fetched_at: $fetched_at,
        original_content: $original_content
      }'
    )"

    # Upsert to Qdrant
    if qdrant_upsert_point "$COLLECTION" "$point_id" "$vector_json" "$payload_json"; then
      echo "✅ Upserted: $title"
      ((UPSERT_OK++)) || true
    else
      echo "❌ Failed: $title" >&2
      ((UPSERT_FAIL++)) || true
    fi
  done

  echo "Qdrant: $UPSERT_OK ok, $UPSERT_FAIL failed"
else
  echo "⚠️  QDRANT_URL not set, skipping Qdrant upsert"
fi

# === REVIEW_NEEDED 檢查 ===
REVIEW_FILES=""
for f in "${MD_FILES[@]}"; do
  if [[ -f "$f" ]] && grep -q "\[REVIEW_NEEDED\]" "$f" 2>/dev/null; then
    REVIEW_FILES+="  - $f\n"
  fi
done

if [[ -n "$REVIEW_FILES" ]]; then
  echo ""
  echo "⚠️  需要審核："
  echo -e "$REVIEW_FILES"
fi

echo "Update completed: $LAYER_NAME"
