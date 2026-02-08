#!/bin/bash
# csa_cloud_security 資料擷取腳本
# 從 Cloud Security Alliance Blog RSS 下載原始資料並轉為 JSONL

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/rss.sh"

LAYER_NAME="csa_cloud_security"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === RSS 來源 ===
FEED_URL="https://cloudsecurityalliance.org/blog/feed/"
XML_FILE="$RAW_DIR/rss-csa-blog.xml"
JSONL_FILE="$RAW_DIR/rss-csa-blog.jsonl"

# === 1. 下載 RSS XML ===
echo "Fetching: $FEED_URL"
rss_fetch "$FEED_URL" "$XML_FILE"

# === 2. 驗證 ===
rss_validate "$XML_FILE"

# === 3. 轉換為 JSONL ===
rss_extract_items_jsonl "$XML_FILE" > "$JSONL_FILE.raw"

ORIGINAL_COUNT=$(wc -l < "$JSONL_FILE.raw" | tr -d ' ')

# === 3.5 過濾純宣傳內容 ===
# 過濾會議、活動、會員公告等
FILTER_PATTERN="conference|summit|webinar|member|membership|sponsor"

jq -c --arg pattern "$FILTER_PATTERN" \
  'select(.title | test($pattern; "i") | not)' \
  "$JSONL_FILE.raw" > "$JSONL_FILE"

ITEM_COUNT=$(wc -l < "$JSONL_FILE" | tr -d ' ')
FILTERED=$((ORIGINAL_COUNT - ITEM_COUNT))
echo "Items: $ORIGINAL_COUNT total, $FILTERED filtered (promotional), $ITEM_COUNT kept"

# === 4. 記錄時間戳 ===
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$RAW_DIR/.last_fetch"

echo "Fetch completed: $LAYER_NAME ($ITEM_COUNT items)"
