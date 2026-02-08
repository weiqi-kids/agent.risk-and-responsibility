#!/bin/bash
# iso_standards 資料擷取腳本
# 從 ISO Open Data Platform 下載標準元資料 CSV 並轉為 JSONL

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/core.sh"

LAYER_NAME="iso_standards"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === 資料來源 ===
CSV_URL="https://isopublicstorageprod.blob.core.windows.net/opendata/_latest/iso_deliverables_metadata/csv/iso_deliverables_metadata.csv"
CSV_FILE="$RAW_DIR/iso_deliverables.csv"
JSONL_FILE="$RAW_DIR/iso_deliverables.jsonl"

# === 1. 下載 CSV ===
echo "Fetching: $CSV_URL"
curl -sL \
  -A "Mozilla/5.0 (compatible; RiskIntel/1.0)" \
  -o "$CSV_FILE" \
  --fail \
  "$CSV_URL"

echo "Downloaded: $(wc -c < "$CSV_FILE" | tr -d ' ') bytes"

# === 2. 驗證 CSV ===
HEADER=$(head -1 "$CSV_FILE")
if [[ ! "$HEADER" =~ "reference" ]]; then
  echo "❌ Invalid CSV format (missing reference column)" >&2
  exit 1
fi

TOTAL_LINES=$(($(wc -l < "$CSV_FILE") - 1))
echo "Total standards in catalog: $TOTAL_LINES"

# === 3. 轉換為 JSONL + 篩選 ===
# 只保留：
# - ICS 碼 35.xxx（資訊科技）
# - ICS 碼 03.100.xx（組織與管理）
# - ICS 碼 13.020.xx（環境保護）
# - 標題含 security, privacy, risk, governance, management system

# 使用 csvtool 或 python 轉換（若可用），否則用 awk
if command -v python3 &>/dev/null; then
  python3 -c "
import csv
import json
import sys
import re
from datetime import datetime, timedelta

# 計算 90 天前的日期
cutoff = (datetime.now() - timedelta(days=90)).strftime('%Y-%m-%d')

# 關鍵字篩選
keywords = ['security', 'privacy', 'risk', 'governance', 'management system', 'cybersecurity', 'information technology']
ics_prefixes = ['35', '03.100', '13.020']

with open('$CSV_FILE', 'r', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    for row in reader:
        # 篩選條件 1: ICS 碼
        ics = row.get('icsCode', '')
        ics_match = any(ics.startswith(prefix) for prefix in ics_prefixes)

        # 篩選條件 2: 標題關鍵字
        title = row.get('title.en', '').lower()
        keyword_match = any(kw in title for kw in keywords)

        # 篩選條件 3: 近期發布（90 天內）
        pubdate = row.get('publicationDate', '')
        recent = pubdate >= cutoff if pubdate else False

        # 滿足任一條件且為近期發布
        if (ics_match or keyword_match) and recent:
            print(json.dumps(row, ensure_ascii=False))
" > "$JSONL_FILE"
else
  # 降級：使用 awk（較簡單的篩選）
  echo "⚠️  python3 not found, using basic filtering" >&2
  # 跳過標題行，轉換每行為 JSON
  tail -n +2 "$CSV_FILE" | head -100 | while IFS=',' read -r line; do
    echo "{\"raw\": \"$line\"}"
  done > "$JSONL_FILE"
fi

ITEM_COUNT=$(wc -l < "$JSONL_FILE" | tr -d ' ')
echo "Items after filtering: $ITEM_COUNT (IT/Security/Governance standards, last 90 days)"

# === 4. 記錄時間戳 ===
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$RAW_DIR/.last_fetch"

echo "Fetch completed: $LAYER_NAME ($ITEM_COUNT items)"
