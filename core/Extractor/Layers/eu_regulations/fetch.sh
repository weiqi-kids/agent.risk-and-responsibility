#!/bin/bash
# eu_regulations 資料擷取腳本
# 從 EUR-Lex 預定義 RSS（歐洲議會與理事會立法）下載原始資料並轉為 JSONL

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/rss.sh"

LAYER_NAME="eu_regulations"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === RSS 來源 ===
# EUR-Lex Predefined Feed #1: All Parliament and Council legislation
# 需要 User-Agent header（EUR-Lex 有 WAF 防護）
FEED_URL="https://eur-lex.europa.eu/EN/display-feed.rss?rssId=162"
XML_FILE="$RAW_DIR/rss-eurlex-parliament-council.xml"
JSONL_FILE="$RAW_DIR/rss-eurlex-parliament-council.jsonl"

# === 1. 下載 RSS XML ===
# EUR-Lex 需要 User-Agent，使用 curl 直接下載而非 rss_fetch
echo "Fetching: $FEED_URL"
curl -sL \
  -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36" \
  -o "$XML_FILE" \
  --fail \
  "$FEED_URL"

echo "Downloaded: $(wc -c < "$XML_FILE" | tr -d ' ') bytes"

# === 2. 驗證 ===
rss_validate "$XML_FILE"

# === 3. 轉換為 JSONL ===
rss_extract_items_jsonl "$XML_FILE" > "$JSONL_FILE.raw"

ORIGINAL_COUNT=$(wc -l < "$JSONL_FILE.raw" | tr -d ' ')

# === 3.5 過濾非英文 corrigenda ===
# 這些是「翻譯語法修正」，不涉及法規實質變動，對合規分析無價值
# 特徵：description 含 "does not concern the English version"
jq -c 'select(.description | test("does not concern the English version") | not)' \
  "$JSONL_FILE.raw" > "$JSONL_FILE"

ITEM_COUNT=$(wc -l < "$JSONL_FILE" | tr -d ' ')
FILTERED=$((ORIGINAL_COUNT - ITEM_COUNT))
echo "Items: $ORIGINAL_COUNT total, $FILTERED filtered (non-English corrigenda), $ITEM_COUNT kept"

# 保留原始檔供參考，但加上 .raw 後綴
# rm -f "$JSONL_FILE.raw"  # 取消註解可刪除原始檔

# === 4. 記錄時間戳 ===
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$RAW_DIR/.last_fetch"

echo "Fetch completed: $LAYER_NAME ($ITEM_COUNT items)"
