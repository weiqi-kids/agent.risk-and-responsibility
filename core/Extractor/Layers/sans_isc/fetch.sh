#!/bin/bash
# sans_isc 資料擷取腳本
# 從 SANS Internet Storm Center Handler's Diary RSS 下載原始資料並轉為 JSONL

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/rss.sh"

LAYER_NAME="sans_isc"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === RSS 來源 ===
FEED_URL="https://isc.sans.edu/rssfeed_full.xml"
XML_FILE="$RAW_DIR/rss-sans-isc.xml"
JSONL_FILE="$RAW_DIR/rss-sans-isc.jsonl"

# === 1. 下載 RSS XML ===
echo "Fetching: $FEED_URL"
rss_fetch "$FEED_URL" "$XML_FILE"

# === 2. 驗證 ===
rss_validate "$XML_FILE"

# === 3. 轉換為 JSONL ===
rss_extract_items_jsonl "$XML_FILE" > "$JSONL_FILE.raw"

# === 4. 過濾掉 Stormcast podcast（純音訊，無法萃取實質內容）===
jq -c 'select(.title | test("ISC Stormcast"; "i") | not)' "$JSONL_FILE.raw" > "$JSONL_FILE"
FILTERED_COUNT=$(($(wc -l < "$JSONL_FILE.raw" | tr -d ' ') - $(wc -l < "$JSONL_FILE" | tr -d ' ')))
echo "Filtered out $FILTERED_COUNT Stormcast podcast entries"

ITEM_COUNT=$(wc -l < "$JSONL_FILE" | tr -d ' ')
echo "Items extracted: $ITEM_COUNT"

# === 5. 記錄時間戳 ===
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$RAW_DIR/.last_fetch"

echo "Fetch completed: $LAYER_NAME ($ITEM_COUNT items)"
