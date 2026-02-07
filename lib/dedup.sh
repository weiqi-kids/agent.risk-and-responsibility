#!/usr/bin/env bash

###############################################
# dedup.sh
# 萃取前去重工具：
#   - dedup_normalize_url <url>   正規化 URL 以進行比對
#   - dedup_build_index <dir>     掃描目錄下所有 .md 建立 URL 索引
#   - dedup_check <url> <dir>     檢查 URL 是否已存在於目錄中
#
# 使用方式（在編排腳本或 CLI 中）：
#   source ./lib/dedup.sh
#   result="$(dedup_check "$url" "$layer_dir")"
#   # result = "new" | "exists:<filepath>"
#
# 注意：
#   - 此檔案預期被其他腳本以 `source` 載入
#   - 去重檢查由頂層編排邏輯執行，不由子代理自行判斷
###############################################

if [[ -n "${DEDUP_SH_LOADED:-}" ]]; then
  return 0 2>/dev/null || exit 0
fi
DEDUP_SH_LOADED=1

_dedup_lib_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
. "${_dedup_lib_dir}/core.sh"

########################################
# dedup_normalize_url URL
#
# 功能：
#   正規化 URL 以進行去重比對
#   - 移除尾端斜線
#   - 移除尾端空白
#   - 統一 scheme 為小寫
#   - 移除常見追蹤參數（utm_*）
#   - 統一 EUR-Lex AUTO URL 格式
#
# 參數：
#   URL: 欲正規化的 URL
#
# 輸出：
#   正規化後的 URL 字串（stdout）
#
# 回傳值：
#   0 = 成功
########################################
dedup_normalize_url() {
  local url="$1"

  # 移除前後空白與引號
  url="$(printf '%s' "$url" | sed -e 's/^[[:space:]"]*//;s/[[:space:]"]*$//')"

  # 移除尾端斜線
  url="$(printf '%s' "$url" | sed -E 's|/+$||')"

  # 統一 scheme+host 為小寫（保留 path 原始大小寫）
  local scheme_host path_query
  scheme_host="$(printf '%s' "$url" | sed -E 's|^(https?://[^/]+).*|\1|' | tr '[:upper:]' '[:lower:]')"
  path_query="$(printf '%s' "$url" | sed -E 's|^https?://[^/]+||')"
  url="${scheme_host}${path_query}"

  # 移除常見追蹤參數
  url="$(printf '%s' "$url" | sed -E 's/[?&]utm_[a-z_]+=[^&]*//g')"

  # 移除空的 query string
  url="$(printf '%s' "$url" | sed 's/\?$//')"

  printf '%s\n' "$url"
}

########################################
# dedup_extract_url FILE
#
# 功能：
#   從 .md 檔案的 YAML frontmatter 中萃取 source_url
#
# 參數：
#   FILE: .md 檔案路徑
#
# 輸出：
#   source_url 值（stdout），若無則輸出空字串
#
# 回傳值：
#   0 = 成功（有找到 source_url）
#   1 = 未找到
########################################
dedup_extract_url() {
  local file="$1"

  if [[ ! -f "$file" ]]; then
    return 1
  fi

  # 從前 10 行（frontmatter 區域）中擷取 source_url
  local url
  url="$(head -10 "$file" | grep '^source_url:' | head -1 | sed 's/^source_url:[[:space:]]*//' | sed 's/^"//;s/"$//')"

  if [[ -z "$url" ]]; then
    return 1
  fi

  echo "$url"
  return 0
}

########################################
# dedup_build_index DIR
#
# 功能：
#   掃描目錄（含子目錄）下所有 .md 檔案，
#   建立 source_url → filepath 的索引。
#   排除 raw/ 子目錄。
#
# 參數：
#   DIR: 目錄路徑（例如 docs/Extractor/eu_regulations/）
#
# 輸出：
#   每行格式：<normalized_url>\t<filepath>
#
# 回傳值：
#   0 = 成功
########################################
dedup_build_index() {
  local dir="$1"

  if [[ ! -d "$dir" ]]; then
    echo "❌ [dedup_build_index] 目錄不存在：$dir" >&2
    return 1
  fi

  local file url norm_url
  while IFS= read -r file; do
    url="$(dedup_extract_url "$file")" || continue
    norm_url="$(dedup_normalize_url "$url")"
    printf '%s\t%s\n' "$norm_url" "$file"
  done < <(find "$dir" -name '*.md' -not -path '*/raw/*' -type f)
}

########################################
# dedup_check URL DIR
#
# 功能：
#   檢查給定 URL 是否已存在於指定目錄的 .md 檔案中。
#   使用正規化 URL 比對。
#
# 參數：
#   URL: 欲檢查的 source_url
#   DIR: 目錄路徑
#
# 輸出：
#   "new"            → 該 URL 尚未存在
#   "exists:<path>"  → 已存在，輸出匹配的檔案路徑
#
# 回傳值：
#   0 = 成功（不論是否找到）
########################################
dedup_check() {
  local check_url="$1"
  local dir="$2"

  local norm_check_url
  norm_check_url="$(dedup_normalize_url "$check_url")"

  local file url norm_url
  while IFS= read -r file; do
    url="$(dedup_extract_url "$file")" || continue
    norm_url="$(dedup_normalize_url "$url")"

    if [[ "$norm_url" == "$norm_check_url" ]]; then
      echo "exists:$file"
      return 0
    fi
  done < <(find "$dir" -name '*.md' -not -path '*/raw/*' -type f)

  echo "new"
  return 0
}

########################################
# dedup_batch_check JSONL_FILE DIR
#
# 功能：
#   批次檢查 JSONL 檔案中每行的 source_url，
#   回報哪些是新的、哪些已存在。
#   先建立索引再逐行比對，避免重複掃描目錄。
#
# 參數：
#   JSONL_FILE: JSONL 檔案路徑
#   DIR:        已萃取檔案的目錄路徑
#
# 輸出：
#   每行格式：<line_number>\t<status>\t<source_url>
#   status = "new" | "exists"
#
# 回傳值：
#   0 = 成功
########################################
dedup_batch_check() {
  local jsonl_file="$1"
  local dir="$2"

  require_cmd jq || return 1

  if [[ ! -f "$jsonl_file" ]]; then
    echo "❌ [dedup_batch_check] JSONL 檔案不存在：$jsonl_file" >&2
    return 1
  fi

  # 建立索引（存入臨時檔案）
  local index_file
  index_file="$(mktemp)"
  dedup_build_index "$dir" > "$index_file"

  local line_num=0
  local line url norm_url status
  while IFS= read -r line; do
    line_num=$((line_num + 1))

    # 從 JSON 行中萃取 source_url（支援 link / url / source_url 欄位）
    url="$(echo "$line" | jq -r '.source_url // .link // .url // empty' 2>/dev/null)" || continue

    if [[ -z "$url" ]]; then
      printf '%d\tskip\t(no_url)\n' "$line_num"
      continue
    fi

    norm_url="$(dedup_normalize_url "$url")"

    # 在索引中查找
    if grep -qF "$norm_url" "$index_file" 2>/dev/null; then
      status="exists"
    else
      status="new"
    fi

    printf '%d\t%s\t%s\n' "$line_num" "$status" "$url"
  done < "$jsonl_file"

  rm -f "$index_file"
  return 0
}
