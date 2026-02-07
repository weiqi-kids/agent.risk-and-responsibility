# core/ — 系統架構與維護指令

> 執行流程、模型指派、環境設定 → 見根目錄 `CLAUDE.md`

---

## 一、系統概覽

### 1.1 系統目的

本系統是一套圍繞 Claude CLI 運作的全球風險與責任情報系統，透過多角色協作完成資料擷取、萃取、報告生成與品質審核。

### 1.2 架構角色

| 角色 | 職責 | 實現方式 |
|------|------|----------|
| **Architect** | 系統巡檢、資料源探索、指揮協調 | 由 Claude CLI 頂層直接扮演（無外部腳本） |
| **Extractor** | 資料擷取（fetch）與萃取（extract） | `core/Extractor/Layers/` 下的 Layer 定義 + shell 腳本 |
| **Narrator** | 跨來源綜合分析、報告產出 | `core/Narrator/Modes/` 下的 Mode 定義 |
| **Reviewer** | 自我審核 Checklist | 內嵌於每個 Layer/Mode 的 CLAUDE.md |

### 1.3 資料流

```
外部資料源（RSS/API）
  → fetch.sh 下載原始資料 → docs/Extractor/{layer}/raw/*.jsonl
  → Claude 萃取（逐行處理）→ docs/Extractor/{layer}/{category}/*.md
  → update.sh 寫入 Qdrant + 檢查 REVIEW_NEEDED
  → Narrator Mode 讀取 Layer 資料 → docs/Narrator/{mode}/*.md
```

---

## 二、目錄結構

### 2.1 完整結構

```
.
├── CLAUDE.md                              # 系統執行指令（執行入口）
├── README.md                              # 專案說明 + 健康度儀表板
├── .env                                   # 環境設定（不入版控）
├── .gitignore
│
├── core/
│   ├── CLAUDE.md                          # 系統架構與維護指令（本檔案）
│   ├── Architect/
│   │   └── CLAUDE.md                      # Architect 角色說明（由 Claude CLI 直接扮演）
│   ├── Extractor/
│   │   ├── CLAUDE.md                      # Extractor 角色說明 + 通用規則
│   │   └── Layers/
│   │       └── {layer_name}/
│   │           ├── CLAUDE.md              # Layer 定義 + 萃取邏輯 + 審核規則
│   │           ├── fetch.sh               # 資料擷取（輸出到 docs/Extractor/{layer_name}/raw/）
│   │           ├── update.sh              # Qdrant 更新 + REVIEW_NEEDED 檢查
│   │           └── .disabled              # 存在時跳過此 Layer
│   └── Narrator/
│       ├── CLAUDE.md                      # Narrator 角色說明
│       └── Modes/
│           └── {mode_name}/
│               ├── CLAUDE.md              # Mode 定義 + 輸出框架 + 審核規則
│               └── .disabled              # 存在時跳過此 Mode
│
├── lib/
│   ├── args.sh                            # 參數解析工具
│   ├── core.sh                            # 核心工具函式
│   ├── time.sh                            # 時間/日期工具
│   ├── rss.sh                             # RSS 擷取與解析（fetch.sh 的核心依賴）
│   ├── chatgpt.sh                         # OpenAI embedding 呼叫（Qdrant 寫入的核心依賴）
│   └── qdrant.sh                          # Qdrant 向量資料庫操作
│
├── docs/
│   ├── explored.md                        # 資料源探索紀錄
│   ├── Extractor/
│   │   └── {layer_name}/
│   │       ├── raw/                       # 原始資料（.gitignore）
│   │       │   ├── rss-*.xml              # 下載的 RSS XML
│   │       │   ├── rss-*.jsonl            # 轉換後的 JSONL
│   │       │   └── .last_fetch            # 最後擷取時間戳
│   │       └── {category}/               # 萃取結果（.md 檔）
│   └── Narrator/
│       └── {mode_name}/
│           └── {報告檔名}.md              # 報告文件
│
├── scripts/
│   └── check-evaluated-sources.sh         # 資料源連線檢查
│
└── .github/
    └── workflows/
        ├── build-index.yml                # docs/ 下 .md 變動時自動重建 index.json
        └── check-evaluated-sources.yml    # 每日資料源健康檢查
```

### 2.2 lib/ 說明

| 檔案 | 用途 | 主要依賴者 |
|------|------|------------|
| `args.sh` | 命令列參數解析 | 所有 shell 腳本 |
| `core.sh` | 通用工具函式（路徑、日誌等） | 所有 shell 腳本 |
| `time.sh` | 時間與日期計算 | fetch.sh、update.sh |
| `rss.sh` | RSS 下載（`rss_fetch`）、XML 轉 JSONL（`rss_extract_items_jsonl`） | fetch.sh |
| `chatgpt.sh` | OpenAI API 呼叫（text-embedding-3-small） | update.sh（透過 qdrant.sh） |
| `qdrant.sh` | Qdrant 向量資料庫 CRUD、去重（by source_url） | update.sh |

---

## 三、審核人設池

| 審核人設 | 關注重點 |
|----------|----------|
| 資料可信度審核員 | 來源是否一手、是否可驗證 |
| 幻覺風險審核員 | AI 是否產生無中生有的內容 |
| 領域保守審核員 | 是否符合該領域的專業標準 |
| 邏輯一致性審核員 | 前後陳述是否矛盾 |
| 法規與責任審核員 | 是否有法律風險 |
| 使用者誤導風險審核員 | 是否可能造成誤解 |
| 自動化邊界審核員 | 是否超出適合自動化的範圍 |

---

## 四、Layer 建立規範

### 4.1 Layer 定義表

新增 Layer 時必須確認以下每一欄：

| 項目 | 說明 |
|------|------|
| **Layer name** | 中英文名稱 |
| **Engineering function** | 這個 Layer 的工程職責 |
| **Collectable data** | 可收集的資料類型與來源 |
| **Automation level** | 自動化程度百分比 + 說明 |
| **Output value** | 產出的價值 |
| **Risk type** | 主要風險 |
| **Reviewer persona** | 從審核人設池中選擇 |
| **Category enum** | 固定分類清單（英文 key + 中文 + 判定條件） |
| **WebFetch 策略** | 必用 / 按需（含觸發條件） / 不使用 |

### 4.2 Layer CLAUDE.md 必備內容

每個 Layer 的 CLAUDE.md 必須包含：

1. **Layer 定義表**（見 4.1）
2. **執行指令** — 萃取邏輯與輸出格式
3. **分類規則（enum）** — 固定值清單 + 判定條件
   > **嚴格限制：category 只能使用定義的英文值，不可自行新增。** 需要新增 category 時必須與使用者確認後寫入 CLAUDE.md。
4. **WebFetch 補充規則** — 策略宣告 + 降級處理
5. **`[REVIEW_NEEDED]` 觸發規則** — 必須標記的場景 + 不觸發的場景
6. **輸出格式** — Markdown 模板
7. **自我審核 Checklist** — 輸出前必須逐項確認

### 4.3 fetch.sh 模板

```bash
#!/bin/bash
# {layer_name} 資料擷取腳本

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/args.sh"
source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/rss.sh"

LAYER_NAME="{layer_name}"
RAW_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME/raw"

mkdir -p "$RAW_DIR"

# === 資料擷取邏輯 ===
# 1. rss_fetch 下載 XML 到 $RAW_DIR/
# 2. rss_extract_items_jsonl 轉換為 JSONL

echo "Fetch completed: $LAYER_NAME"
```

### 4.4 update.sh 模板

```bash
#!/bin/bash
# {layer_name} 資料更新腳本
# 職責：Qdrant 更新 + REVIEW_NEEDED 檢查
# 注意：不處理 index.json（由 GitHub Actions 產生）

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"

source "$PROJECT_ROOT/lib/args.sh"
source "$PROJECT_ROOT/lib/core.sh"
source "$PROJECT_ROOT/lib/qdrant.sh"

LAYER_NAME="{layer_name}"
DOCS_DIR="$PROJECT_ROOT/docs/Extractor/$LAYER_NAME"

# 確保分類子目錄存在
for category in {category_enum_values}; do
  mkdir -p "$DOCS_DIR/$category"
done

# === Qdrant 更新（by source_url 去重）===
if [[ -n "${QDRANT_URL:-}" ]]; then
  qdrant_init_env || echo "Qdrant 連線失敗" >&2
fi

# === REVIEW_NEEDED 檢查 ===
REVIEW_FILES=""
for f in $(find "$DOCS_DIR" -name "*.md" -type f 2>/dev/null); do
  if grep -q "\[REVIEW_NEEDED\]" "$f" 2>/dev/null; then
    REVIEW_FILES+="  - $f\n"
  fi
done

if [[ -n "$REVIEW_FILES" ]]; then
  echo "需要審核：" && echo -e "$REVIEW_FILES"
  command -v gh >/dev/null 2>&1 && gh issue create \
    --title "[Extractor] $LAYER_NAME - 需要人工審核" \
    --label "review-needed" \
    --body "偵測到 [REVIEW_NEEDED] 標記" 2>/dev/null || true
fi

echo "Update completed: $LAYER_NAME"
```

---

## 五、Mode 建立規範

### 5.1 Mode 定義表

新增 Mode 時必須確認以下每一欄：

| 項目 | 說明 |
|------|------|
| **Mode name** | 中英文名稱 |
| **Purpose and audience** | 報告目的與目標受眾 |
| **Source layers** | 讀取哪些 Layer 的資料 |
| **Automation ratio** | 自動化比例 + 說明 |
| **Content risk** | 內容風險 |
| **Reviewer persona** | 從審核人設池中選擇 |

### 5.2 Mode CLAUDE.md 必備內容

每個 Mode 的 CLAUDE.md 必須包含：

1. **Mode 定義表**（見 5.1）
2. **資料來源定義** — 從 Qdrant / docs / 本次執行讀取的資料
3. **輸出框架** — 報告結構
4. **免責聲明** — 必須包含的法律與使用限制說明
5. **輸出位置** — 檔案路徑（通常為 `{YYYY}-W{WW}-{mode_name}.md`）
6. **自我審核 Checklist** — 發布前必須逐項確認

### 5.3 跨 Layer Mode 注意事項

Mode 可讀取多個 Layer 的資料（主題式跨 Layer 報告）。建立跨 Layer Mode 時：

1. **Category 映射表** — 不同 Layer 的 category 名稱可能不同，需在 CLAUDE.md 明確定義對應關係
   ```
   | Layer | Category |
   |-------|----------|
   | nist_frameworks | ai_risk |
   | eu_regulations | ai_governance |
   ```

2. **區域標示** — 跨區域資料需明確標示來源區域（美國/歐盟），避免混淆監管要求

3. **輸出頻率** — 跨 Layer Mode 可依資料量決定頻率
   - 資料量少（< 15 筆）：每月
   - 資料量適中（15-50 筆）：每週
   - 資料量大（> 50 筆）：每週或分拆

4. **建立流程**：
   1. 建立 `core/Narrator/Modes/{mode_name}/` 目錄
   2. 建立 `core/Narrator/Modes/{mode_name}/CLAUDE.md`
   3. 建立 `docs/Narrator/{mode_name}/` 目錄
   4. 更新 `core/Narrator/CLAUDE.md` 的 Mode 清單
   5. 更新 `README.md` 健康度儀表板

---

## 六、系統維護操作

### 6.1 Layer 管理

#### 新增 Layer

使用者說：「新增一個 {名稱} Layer，資料來源是 {URL}，類型是 {RSS/API/...}」

執行流程：
1. 與使用者確認 Layer 定義表（見 4.1）
2. 確認 category enum 清單（嚴格限定，不可開放式）
3. 確認 WebFetch 策略
4. 確認 `[REVIEW_NEEDED]` 觸發規則
5. 建立目錄 `core/Extractor/Layers/{layer_name}/`
6. 產生 `fetch.sh`、`update.sh`、`CLAUDE.md`（依模板）
7. 建立 `docs/Extractor/{layer_name}/` 及 category 子目錄
8. 更新 `docs/explored.md`「已採用」表格
9. 告知使用者需要在 `.env` 補充的設定（若有）

#### 修改 Layer

1. 讀取 `core/Extractor/Layers/{layer_name}/CLAUDE.md` 確認現況
2. 與使用者確認修改內容
3. 修改對應檔案
4. 若 category enum 有變動，確認不會影響既有 docs 分類
5. 列出影響範圍（哪些 Mode 會受影響）

#### 刪除 / 暫停 Layer

- 刪除前列出依賴此 Layer 的所有 Mode，警告影響範圍
- 暫停：在 Layer 目錄建立 `.disabled` 標記檔
- 執行流程會自動跳過帶有 `.disabled` 的 Layer

### 6.2 Mode 管理

與 Layer 管理邏輯類似，在 `core/Narrator/Modes/` 下操作。

### 6.3 資料源管理

使用者說：「我找到一個新的資料源 {URL}」

執行流程：
1. 測試連線（curl 確認可達）
2. 若為 RSS，驗證格式並顯示前 5 筆標題
3. 更新 `docs/explored.md`「評估中」表格
4. 詢問使用者要建立新 Layer 還是加入現有 Layer

### 6.4 docs/explored.md 格式

```markdown
## 已採用
| 資料源 | 類型 | 對應 Layer | 採用日期 | 備註 |

## 評估中
| 資料源 | 類型 | URL | 語言 | 發現日期 | 狀態 | 下次評估 |

## 已排除
| 資料源 | 類型 | 排除原因 | 排除日期 | 重新評估時間 |
```

> **v1 修正**：「評估中」表格新增 URL 和語言欄位，便於批次評估。
