#!/bin/bash
# cisa_kev 資料擷取腳本
# 從 CISA Known Exploited Vulnerabilities Catalog 下載 JSON 並轉為 JSONL

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"

LAYER_NAME="cisa_kev"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === 資料來源 ===
KEV_URL="https://www.cisa.gov/sites/default/files/feeds/known_exploited_vulnerabilities.json"
JSON_FILE="$RAW_DIR/kev.json"
JSONL_FILE="$RAW_DIR/kev.jsonl"

# === 1. 下載 KEV JSON ===
echo "Fetching: $KEV_URL"
curl -sL \
  -A "Mozilla/5.0 (compatible; RiskIntel/1.0)" \
  -o "$JSON_FILE" \
  --fail \
  "$KEV_URL"

echo "Downloaded: $(wc -c < "$JSON_FILE" | tr -d ' ') bytes"

# === 2. 驗證 JSON ===
if ! jq empty "$JSON_FILE" 2>/dev/null; then
  echo "❌ Invalid JSON" >&2
  exit 1
fi

# === 3. 提取版本資訊 ===
CATALOG_VERSION=$(jq -r '.catalogVersion' "$JSON_FILE")
DATE_RELEASED=$(jq -r '.dateReleased' "$JSON_FILE")
TOTAL_COUNT=$(jq -r '.count' "$JSON_FILE")
echo "Catalog version: $CATALOG_VERSION (released: $DATE_RELEASED)"

# === 4. 轉換為 JSONL（每個漏洞一行）===
jq -c '.vulnerabilities[]' "$JSON_FILE" > "$JSONL_FILE.raw"

ORIGINAL_COUNT=$(wc -l < "$JSONL_FILE.raw" | tr -d ' ')

# === 4.5 增量處理：只保留最近 30 天新增的 ===
# 計算 30 天前的日期
CUTOFF_DATE=$(date -v-30d +%Y-%m-%d 2>/dev/null || date -d "30 days ago" +%Y-%m-%d)

jq -c --arg cutoff "$CUTOFF_DATE" \
  'select(.dateAdded >= $cutoff)' \
  "$JSONL_FILE.raw" > "$JSONL_FILE"

ITEM_COUNT=$(wc -l < "$JSONL_FILE" | tr -d ' ')
FILTERED=$((ORIGINAL_COUNT - ITEM_COUNT))
echo "Items: $TOTAL_COUNT total in catalog, $ITEM_COUNT added in last 30 days"

# === 5. 記錄時間戳 ===
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$RAW_DIR/.last_fetch"

echo "Fetch completed: $LAYER_NAME ($ITEM_COUNT items)"
