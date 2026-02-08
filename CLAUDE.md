# Global Risk & Responsibility Intelligence — 系統執行指令

> 系統架構、建立規範與維護操作 → 見 `core/CLAUDE.md`

---

## 執行流程

使用者說「執行完整流程」或「更新資料」時，依照以下步驟執行：

### 步驟一：動態發現所有 Layer

掃描 `core/Extractor/Layers/*/`，排除含有 `.disabled` 檔案的目錄。
每個有效 Layer 目錄應包含 `fetch.sh`、`update.sh`、`CLAUDE.md`。

### 步驟二：逐一執行 Layer

對每個 Layer 依序執行：

1. **fetch** — 執行 `core/Extractor/Layers/{layer_name}/fetch.sh` 下載原始資料
2. **萃取（逐行處理）** — 讀取該 Layer 的 `CLAUDE.md` 和 `core/Extractor/CLAUDE.md`，再對 `docs/Extractor/{layer_name}/raw/` 目錄中的 JSONL 逐行處理
3. **update** — 將步驟 2 產出的 `.md` 檔案路徑作為參數，執行 `core/Extractor/Layers/{layer_name}/update.sh {md_files...}` 寫入 Qdrant 並檢查 REVIEW_NEEDED

### 步驟三：動態發現所有 Mode

掃描 `core/Narrator/Modes/*/`，排除含有 `.disabled` 檔案的目錄。
每個有效 Mode 目錄應包含 `CLAUDE.md`。

### 步驟四：執行所有 Mode（兩階段）

#### 階段 4a：Qdrant 查詢（Sonnet 平行執行）

對所有 Mode **平行**執行 Qdrant 語意搜尋：

```
頂層 CLI 同時分派多個 Sonnet Task：
├── Task(Bash, sonnet) → Mode A 的 Qdrant 查詢
├── Task(Bash, sonnet) → Mode B 的 Qdrant 查詢
├── Task(Bash, sonnet) → Mode C 的 Qdrant 查詢
└── ...
```

每個 Task 執行：
1. 讀取該 Mode 的 `CLAUDE.md` 取得搜尋關鍵字
2. 執行 `chatgpt_embed` 產生 embedding
3. 執行 `qdrant_search` 取得搜尋結果
4. 將結果寫入暫存檔 `/tmp/qdrant-{mode_name}.json`

#### 階段 4b：報告產出（Opus 平行執行）

收集所有 Qdrant 查詢結果後，對所有 Mode **平行**產出報告：

```
頂層 CLI 同時分派多個 Opus Task：
├── Task(general-purpose, opus) → Mode A 報告（讀取 /tmp/qdrant-mode-a.json）
├── Task(general-purpose, opus) → Mode B 報告
├── Task(general-purpose, opus) → Mode C 報告
└── ...
```

每個 Task 執行：
1. 讀取該 Mode 的 `CLAUDE.md` 和 `core/Narrator/CLAUDE.md`
2. 讀取暫存的 Qdrant 搜尋結果
3. 依照輸出框架產出報告到 `docs/Narrator/{mode_name}/`
4. 更新該 Mode 的 `index.md`（嵌入最新報告內容）

> **效能優勢**：Sonnet 平行處理 I/O 密集的 API 呼叫，Opus 專注於需要推理的報告撰寫，避免 Opus 等待網路回應。

### 步驟五：更新時間戳、提交並部署

執行完所有 Mode 後：

1. **更新首頁時間戳**：
   - `README.md`：更新 `**最後更新：YYYY-MM-DD**`
   - `index.md`：更新 `**最後更新：YYYY-MM-DD**`
   - `README.md` 系統健康度表格：更新各 Layer/Mode 的最後更新時間和資料筆數
2. 檢查是否有變動：`git status --porcelain`
3. 若有變動，執行：
   ```bash
   git add docs/ README.md index.md
   git commit -m "chore: update reports $(date +%Y-%m-%d)"
   git push
   ```
4. 等待 GitHub Actions 部署完成

### JSONL 處理規範

> **禁止使用 Read 工具直接讀取 `.jsonl` 檔案**（可能數百 KB，超出 token 上限）

```
✅ 用 `wc -l < {jsonl_file}` 取得總行數
✅ 用 `sed -n '{N}p' {jsonl_file}` 逐行讀取（N = 1, 2, 3, ...）
✅ 每行獨立交由一個 Task 子代理處理
✅ 子代理透過 Write tool 寫出 .md 檔（不用 Bash heredoc）
```

每個萃取 Task 接收：
- **單一 JSON 字串**（sed 取出的該行內容）
- **Layer CLAUDE.md 的萃取邏輯**（作為 Task prompt 的一部分）
- **core/Extractor/CLAUDE.md 的通用規則**（WebFetch、REVIEW_NEEDED 等）

### JSONL 批次處理建議

- 每個萃取 Task 建議處理 **8-10 筆** JSONL 資料
- 避免一筆一個 Task（啟動開銷大，效率低）
- 避免超過 15 筆（單一 Task 執行時間過長，失敗風險增加）
- 批次內的多筆資料由同一個 Task 依序處理，各自產出獨立的 `.md` 檔

### 萃取前去重

在萃取前，應檢查 `docs/Extractor/{layer_name}/` 下是否已存在相同 `source_url` 或 ID 的 `.md` 檔：
- 若存在且內容相同（同一筆資料重複擷取），**跳過**該筆
- 若存在但內容不同（同一來源的更新版本），依 Layer 策略決定**覆蓋**或**保留兩版**
- 去重檢查由頂層編排邏輯執行（在分派 Task 前），不由子代理自行判斷

---

## 模型與子代理指派規則

### 編排架構

本系統由 **Claude CLI 全程編排**，透過 Task tool 分派子代理執行各步驟。

```
頂層 Claude CLI（Opus）
│
├── 步驟一～三：Layer 處理（全部 Sonnet）
│   ├── Task(Bash, sonnet)           → 目錄掃描、fetch.sh、update.sh
│   └── Task(general-purpose, sonnet) → Layer 萃取（需 Write tool）
│
└── 步驟四：Mode 報告（兩階段）
    ├── 階段 4a：Task(Bash, sonnet) × N     → 平行 Qdrant 查詢（I/O 密集）
    │   └── 等待全部完成...
    └── 階段 4b：Task(general-purpose, opus) × N → 平行報告產出（推理密集）
```

### 指派表

| 步驟 | 任務類型 | 指定模型 | 子代理類型 | 平行化 | 原因 |
|------|----------|----------|------------|--------|------|
| 步驟一 | 動態發現所有 Layer | `sonnet` | `Bash` | - | 純目錄掃描 |
| 步驟二 | fetch.sh 執行 | `sonnet` | `Bash` | ✅ 可平行 | 各 Layer 獨立 |
| 步驟二 | Layer 萃取 | `sonnet` | `general-purpose` | ✅ 可平行 | 需 Write 工具 |
| 步驟二 | update.sh 執行 | `sonnet` | `Bash` | ✅ 可平行 | 各 Layer 獨立 |
| 步驟三 | 動態發現所有 Mode | `sonnet` | `Bash` | - | 純目錄掃描 |
| **步驟 4a** | Qdrant 語意搜尋 | `sonnet` | `Bash` | ✅ 可平行 | I/O 密集，無需推理 |
| **步驟 4b** | Mode 報告產出 | `opus` | `general-purpose` | ✅ 可平行 | 跨來源綜合分析 |
| 步驟五 | git commit + push | `sonnet` | `Bash` | - | 純腳本執行 |

> **強制規則**：
> - 只有步驟 4b（Mode 報告產出）使用 `opus`
> - 其餘所有步驟（含步驟 4a Qdrant 搜尋）一律使用 `sonnet`
> - 步驟 4a 必須全部完成後，才能開始步驟 4b
>
> **子代理規則**：需要寫入檔案的 Task 必須使用 `general-purpose`，純腳本執行使用 `Bash`。

### 平行分派策略

**步驟二（Layer 處理）**：
- 多個 Layer 的 fetch.sh 可平行執行（彼此獨立）
- JSONL 萃取可平行分派多個 Task（例如：20 筆 JSONL 可一次分派 10-20 個 Sonnet Task）
- update.sh 可平行執行（各 Layer 獨立）

**步驟四（Mode 報告）**：
- 階段 4a：所有 Mode 的 Qdrant 查詢**平行執行**（Sonnet 處理 I/O）
- 階段 4b：所有 Mode 的報告產出**平行執行**（Opus 處理推理）
- 兩階段之間有依賴，必須等 4a 全部完成後才執行 4b

**背景執行**：
- fetch.sh、update.sh 可用 `run_in_background` 執行，主執行緒觀察進度
- Qdrant 查詢 Task 可用 `run_in_background` 執行

---

## 指定執行

使用者也可以指定執行特定 Layer 或 Mode：

- 「執行 nist_frameworks」→ 只跑該 Layer 的 fetch → 萃取 → update
- 「執行 rule_change_brief」→ 只跑該 Mode 的報告產出
- 「只跑 fetch」→ 只執行所有 Layer 的 fetch.sh，不萃取
- 「只跑萃取」→ 假設 `docs/Extractor/{layer_name}/raw/` 已有 JSONL 資料，只做萃取 + update

> 指定執行時，模型指派規則仍然生效。Layer 相關任務使用 `sonnet`，Mode 相關任務使用 `opus`。

---

## 網站預覽與部署

本專案使用 Jekyll + Just the Docs 主題。

### 本地預覽

```bash
bundle install
bundle exec jekyll serve
```

瀏覽器開啟 http://localhost:4000/agent.risk-and-responsibility/

### GitHub Pages 部署

推送至 GitHub 後，透過 `.github/workflows/pages.yml` 自動部署。

---

## 環境設定

### .env 必要項目

```
QDRANT_URL=...
QDRANT_API_KEY=...
QDRANT_COLLECTION=risk-and-responsibility
EMBEDDING_MODEL=text-embedding-3-small
EMBEDDING_DIMENSION=1536
OPENAI_API_KEY=sk-...
```

### Qdrant 設定

- Collection：`risk-and-responsibility`
- 向量維度：1536（text-embedding-3-small）
- 距離：Cosine
- Payload 必要欄位：`source_url`、`fetched_at`、`original_content`、`source_layer`、`title`、`date`、`category`、`confidence`
- 去重機制：以 `source_url` 為主鍵，避免重複寫入

---

## 輸出規則

### 格式規則

- Layer 萃取的 `.md` 檔必須遵循該 Layer CLAUDE.md 定義的格式
- Mode 報告的 `.md` 檔必須遵循該 Mode CLAUDE.md 定義的框架
- 所有輸出必須通過各自的「自我審核 Checklist」
- 未通過審核的輸出必須在開頭加上 `[REVIEW_NEEDED]`
- `index.json` 由 GitHub Actions 自動產生，不在此流程中處理

### 禁止行為

1. 不可產出無法驗證的「專業外觀」聲明 — 所有聲明必須有來源
2. 不可跳過審核層 — 每個輸出必須經過自我審核 checklist
3. 不可混淆推測與事實 — 推測必須明確標註
4. 不可將高風險領域標記為全自動 — 涉及法律、財務建議等必須有人工介入
5. 不可自行新增 category enum 值 — 必須與使用者確認後寫入 CLAUDE.md
6. 不可使用 Read 工具直接讀取 `.jsonl` 檔案 — 一律透過 `sed -n '{N}p'` 逐行讀取
7. 不可自行擴大 `[REVIEW_NEEDED]` 判定範圍 — 嚴格遵循各 Layer CLAUDE.md 的觸發規則

### GitHub Actions

| Workflow | 觸發條件 | 功能 |
|----------|----------|------|
| `build-index.yml` | `docs/Extractor/**/*.md` 或 `docs/Narrator/**/*.md` 變動 | 自動重建 `index.json` |
| `check-evaluated-sources.yml` | 每日 UTC 06:00 | 檢查已採用和評估中的資料源連線狀態 |

- `index.json` 不由 update.sh 或萃取流程產生，僅由 GitHub Actions 自動建立

---

## 互動規則

### 語言偏好

- 使用**繁體中文、台灣用語**與使用者互動
- 專有名詞保留英文（如 NIST CSF、EU AI Act）

### 常用指令

| 指令 | 說明 |
|------|------|
| 「執行完整流程」 | 執行 fetch → 萃取 → update → Mode 報告（建議每週） |
| 「執行 {layer_name}」 | 只執行指定 Layer |
| 「執行 {mode_name}」 | 只執行指定 Mode 報告 |
| 「回報專案現況」 | 顯示 Layer/Mode 統計與健康度 |

### 執行後回報

完成執行後，簡要回報：

1. 各 Layer 擷取與萃取結果（筆數、有無 REVIEW_NEEDED）
2. 各 Mode 報告產出狀態
3. 是否有錯誤或需要人工介入的項目

### 健康度儀表板

README.md 中的系統健康度表格由頂層 Claude CLI 在「執行完整流程」後更新：

| Layer | 最後更新 | 資料筆數 | 狀態 |
|-------|----------|----------|------|
| {Layer 名稱} | {YYYY-MM-DD} | {N} | ✅/⚠️/❌ |

| Mode | 最後產出 | 狀態 |
|------|----------|------|
| {Mode 名稱} | {YYYY-MM-DD} | ✅/⚠️/❌ |

健康度判定規則：
- ✅ 正常：最後更新在預期週期內
- ⚠️ 需關注：超過預期週期但未超過 2 倍
- ❌ 異常：超過預期週期 2 倍以上

---

## 執行教訓

> 過往執行中踩過的坑，避免重蹈覆轍。

### Shell 腳本

| 日期 | 問題 | 原因 | 解法 |
|------|------|------|------|
| 2026-02-08 | update.sh 在 zsh 環境報錯 `no matches found: *.md` | glob 模式傳入腳本時，zsh 會先展開；若 `.md` 在子目錄則展開失敗 | 在腳本開頭加入 `setopt null_glob`，或不傳入 glob 參數讓腳本自行用 `find` 搜尋 |

### 資料源

| 日期 | 問題 | 原因 | 解法 |
|------|------|------|------|
| 2026-02-08 | SANS ISC Stormcast podcast 無法萃取 | 純音訊內容，RSS description 只有版權聲明，WebFetch 也無法取得轉錄 | 在 fetch.sh 階段過濾掉標題含 "ISC Stormcast" 的條目 |

### 呼叫方式

| 日期 | 問題 | 原因 | 解法 |
|------|------|------|------|
| 2026-02-08 | update.sh 傳入 glob 參數導致失敗 | Task 代理傳入 `docs/Extractor/{layer}/*.md`，但 zsh 無法展開 | update.sh 本身已有無參數時自動掃描的邏輯，**不傳參數**讓腳本自行處理即可 |

---

End of CLAUDE.md
