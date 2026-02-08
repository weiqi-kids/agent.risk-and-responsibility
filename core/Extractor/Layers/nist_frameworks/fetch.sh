#!/bin/bash
# nist_frameworks 資料擷取腳本
# 從 NIST Information Technology topic RSS 下載原始資料並轉為 JSONL

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/rss.sh"

LAYER_NAME="nist_frameworks"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === RSS 來源 ===
FEED_URL="https://www.nist.gov/news-events/information%20technology/rss.xml"
XML_FILE="$RAW_DIR/rss-nist-it.xml"
JSONL_FILE="$RAW_DIR/rss-nist-it.jsonl"

# === 1. 下載 RSS XML ===
echo "Fetching: $FEED_URL"
rss_fetch "$FEED_URL" "$XML_FILE"

# === 2. 驗證 ===
rss_validate "$XML_FILE"

# === 3. 轉換為 JSONL ===
rss_extract_items_jsonl "$XML_FILE" > "$JSONL_FILE.raw"

ORIGINAL_COUNT=$(wc -l < "$JSONL_FILE.raw" | tr -d ' ')

# === 3.5 過濾非框架內容 ===
# 過濾活動、獎項、人才招募等非框架/標準內容
# 詳見 CLAUDE.md「內容過濾規則」
FILTER_PATTERN="webinar|workshop|event|conference|summit|seminar|symposium|awards|grants|funding|fellowship|workforce|hiring|career|internship|student|USAJobs"

jq -c --arg pattern "$FILTER_PATTERN" \
  'select(.title | test($pattern; "i") | not)' \
  "$JSONL_FILE.raw" > "$JSONL_FILE"

ITEM_COUNT=$(wc -l < "$JSONL_FILE" | tr -d ' ')
FILTERED=$((ORIGINAL_COUNT - ITEM_COUNT))
echo "Items: $ORIGINAL_COUNT total, $FILTERED filtered (non-framework), $ITEM_COUNT kept"

# 保留原始檔供參考
# rm -f "$JSONL_FILE.raw"

# === 4. 記錄時間戳 ===
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$RAW_DIR/.last_fetch"

echo "Fetch completed: $LAYER_NAME ($ITEM_COUNT items)"
