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

### 步驟四：執行所有 Mode（三階段）

> **Mode 分類**：
> - **一般 Mode**：從 Qdrant 查詢資料產出報告
> - **Meta-mode**：彙整其他 Mode 的報告（如 `executive_summary`），需在一般 Mode 完成後執行

#### 階段 4a：Qdrant 查詢（Sonnet 平行執行）

對所有**一般 Mode**（排除 meta-mode）平行執行 Qdrant 語意搜尋：

```
頂層 CLI 同時分派多個 Sonnet Task：
├── Task(Bash, sonnet) → rule_change_brief 的 Qdrant 查詢
├── Task(Bash, sonnet) → ai_governance_landscape 的 Qdrant 查詢
├── Task(Bash, sonnet) → ai_implementation_guide 的 Qdrant 查詢
├── Task(Bash, sonnet) → supply_chain_security 的 Qdrant 查詢
├── Task(Bash, sonnet) → critical_infrastructure_resilience 的 Qdrant 查詢
└── Task(Bash, sonnet) → cybersecurity_compliance 的 Qdrant 查詢
（不包含 executive_summary，它是 meta-mode）
```

每個 Task 執行：
1. 讀取該 Mode 的 `CLAUDE.md` 取得搜尋關鍵字
2. 執行 `chatgpt_embed` 產生 embedding
3. 執行 `qdrant_search` 取得搜尋結果
4. 將結果寫入暫存檔 `/tmp/qdrant-{mode_name}.json`

#### 階段 4b：一般 Mode 報告產出（Opus 平行執行）

收集所有 Qdrant 查詢結果後，對所有**一般 Mode** 平行產出報告：

```
頂層 CLI 同時分派多個 Opus Task：
├── Task(general-purpose, opus) → rule_change_brief 報告
├── Task(general-purpose, opus) → ai_governance_landscape 報告
├── Task(general-purpose, opus) → ai_implementation_guide 報告
├── Task(general-purpose, opus) → supply_chain_security 報告
├── Task(general-purpose, opus) → critical_infrastructure_resilience 報告
└── Task(general-purpose, opus) → cybersecurity_compliance 報告
```

每個 Task 執行：
1. 讀取該 Mode 的 `CLAUDE.md`、`core/Narrator/CLAUDE.md`、`core/Narrator/seo-integration.md`
2. 讀取暫存的 Qdrant 搜尋結果
3. 依照輸出框架產出報告到 `docs/Narrator/{mode_name}/`
   - **SEO 整合**：報告使用 `layout: report`，包含完整 `seo:` front matter 和 SGE 標記
4. 更新該 Mode 的 `index.md`（嵌入最新報告內容）

#### 階段 4c：Meta-mode 報告產出（Opus 循序執行）

**等待階段 4b 全部完成後**，執行 meta-mode：

```
頂層 CLI 執行：
└── Task(general-purpose, opus) → executive_summary 報告
```

`executive_summary` Task 執行：
1. 讀取 `core/Narrator/Modes/executive_summary/CLAUDE.md`
2. 讀取本週各 Mode 的報告（從 `docs/Narrator/*/` 取得 `.key-takeaway` 內容）
3. 依照輸出框架產出 Top 3 摘要報告
4. 更新 `docs/Narrator/executive_summary/index.md`

> **效能優勢**：Sonnet 平行處理 I/O 密集的 API 呼叫，Opus 專注於需要推理的報告撰寫。Meta-mode 在最後執行，確保能讀取到所有一般 Mode 的產出。

### 步驟五：網站改版分析（Revamp）

> 完整規範 → 見 `revamp/CLAUDE.md`

執行完整的 6 階段改版分析流程，產出優化建議：

```
頂層 CLI 依序執行：
├── 5a: 0-positioning（品牌定位分析）
│   ├── Task(general-purpose, opus) → Writer 產出定位文件
│   └── Task(general-purpose, sonnet) → Reviewer 檢查
├── 5b: 1-discovery（網站健檢）
│   ├── Task(Bash, sonnet) → 執行 site-audit.sh
│   ├── Task(general-purpose, opus) → Writer 產出盤點報告
│   └── Task(general-purpose, sonnet) → Reviewer 檢查
├── 5c: 2-competitive（競品分析）
│   ├── Task(Bash, sonnet) → 執行 competitive-audit.sh（如有競品 URL）
│   ├── Task(general-purpose, opus) → Writer 產出競品報告
│   └── Task(general-purpose, sonnet) → Reviewer 檢查
├── 5d: 3-analysis（差距分析）
│   ├── Task(general-purpose, opus) → Writer 產出差距報告
│   └── Task(general-purpose, sonnet) → Reviewer 檢查
├── 5e: 4-strategy（策略規劃）
│   ├── Task(general-purpose, opus) → Writer 產出改版計劃
│   └── Task(general-purpose, sonnet) → Reviewer 檢查
├── 5f: 5-content-spec（內容規格）
│   ├── Task(general-purpose, opus) → Writer 產出內容規格書
│   └── Task(general-purpose, sonnet) → Reviewer 檢查
└── 5g: final-review（整合驗收）
    └── Task(general-purpose, opus) → 產出驗收報告與優化建議清單
```

#### 各階段執行細節

每個階段依序執行：

1. **讀取該階段 CLAUDE.md**：`revamp/{階段}/CLAUDE.md`
2. **Writer 產出**：依照規範產出該階段文件
3. **Reviewer 檢查**：讀取 `revamp/{階段}/review/CLAUDE.md`，檢查 Writer 產出
4. **通過後進入下一階段**：若未通過，Writer 修正後重新送審

#### Revamp 輸出位置

| 階段 | 輸出檔案 |
|------|----------|
| 0-positioning | `docs/revamp/positioning.md` |
| 1-discovery | `docs/revamp/discovery.md` |
| 2-competitive | `docs/revamp/competitive.md` |
| 3-analysis | `docs/revamp/analysis.md` |
| 4-strategy | `docs/revamp/strategy.md` |
| 5-content-spec | `docs/revamp/content-spec.md` |
| final-review | `docs/revamp/final-review.md` |

#### 優化建議彙整

`final-review` 完成後，產出 `docs/revamp/action-items.md`，包含：

- **P0 必須修正**：阻礙核心功能的問題
- **P1 建議改善**：明顯提升體驗的項目
- **P2 可考慮**：錦上添花的優化

### 步驟六：更新時間戳

執行完所有 Mode 後：

1. **更新首頁時間戳**：
   - `README.md`：更新 `**最後更新：YYYY-MM-DD**`
   - `index.md`：更新 `**最後更新：YYYY-MM-DD**`
   - `README.md` 系統健康度表格：更新各 Layer/Mode 的最後更新時間和資料筆數

### 步驟七：完成檢查

**每當回報「完成」時，必須先執行以下檢查，全部通過才能回報完成。**

#### 7.1 連結檢查

- [ ] 所有新增/修改的內部連結正常，無 404
- [ ] 所有新增/修改的外部連結正常（source_url 可達）

#### 7.2 SEO/AEO 檢查

依照 `core/Narrator/seo-integration.md` 確認：

- [ ] `layout: report` 已設定
- [ ] `seo.title` ≤ 60 字，含關鍵字
- [ ] `seo.description` ≤ 155 字
- [ ] `seo.faq` 包含 3-5 個 Q&A
- [ ] `.key-takeaway` 存在於報告開頭
- [ ] 每個 H2 有 `.key-answer`（含 `data-question`）
- [ ] 至少 1 個 `.expert-quote`

#### 7.3 內容更新確認

- [ ] 列出本次預計修改的所有檔案
- [ ] 逐一確認每個檔案都已正確更新
- [ ] 修改內容與任務要求一致
- [ ] 無遺漏項目

#### 7.4 SOP 完成度檢查

- [ ] 回顧原始任務需求
- [ ] 原訂步驟每個都已執行
- [ ] 無遺漏的待辦項目
- [ ] 無「之後再處理」的項目

#### 7.5 Revamp 完成度檢查

- [ ] 6 個階段都已完成 Writer + Reviewer 流程
- [ ] 所有 Reviewer 檢查都已通過
- [ ] `docs/revamp/action-items.md` 已產出
- [ ] P0 項目已標註並安排後續處理

#### 7.6 檢查報告格式

完成檢查後，輸出以下格式：

```
## 完成檢查報告

| 類別 | 狀態 | 問題（如有） |
|------|------|-------------|
| 連結檢查 | ✅/❌ | |
| SEO/AEO | ✅/❌ | |
| 內容更新 | ✅/❌ | |
| SOP 完成度 | ✅/❌ | |
| Revamp 完成度 | ✅/❌ | |

**總結**：X/5 項通過，狀態：通過/未通過

## Revamp 優化建議摘要

| 優先級 | 項目數 | 重點項目 |
|--------|--------|----------|
| P0 | X | [列出前 3 項] |
| P1 | X | [列出前 3 項] |
| P2 | X | [列出前 3 項] |

詳見：`docs/revamp/action-items.md`
```

#### 7.7 檢查未通過時

1. **不回報完成**
2. 列出所有未通過項目
3. 立即修正問題
4. 重新執行檢查
5. 全部通過才能說「完成」

### 步驟八：提交並部署

1. 檢查是否有變動：`git status --porcelain`
2. 若有變動，執行：
   ```bash
   git add docs/ README.md index.md
   git commit -m "chore: update reports $(date +%Y-%m-%d)"
   git push
   ```
3. 等待 GitHub Actions 部署完成

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
├── 步驟四：Mode 報告（三階段）
│   ├── 階段 4a：Task(Bash, sonnet) × N     → 平行 Qdrant 查詢（排除 meta-mode）
│   │   └── 等待全部完成...
│   ├── 階段 4b：Task(general-purpose, opus) × N → 平行報告產出（一般 Mode）
│   │   └── 等待全部完成...
│   └── 階段 4c：Task(general-purpose, opus)     → Meta-mode 報告（executive_summary）
│
├── 步驟五：Revamp 改版分析（6 階段）
│   ├── 5a-5f：每階段依序執行
│   │   ├── Task(general-purpose, opus)   → Writer 產出文件
│   │   └── Task(general-purpose, sonnet) → Reviewer 檢查
│   └── 5g：Task(general-purpose, opus)   → Final Review + action-items
│
├── 步驟六：更新時間戳（Sonnet）
│
├── 步驟七：完成檢查（頂層 CLI 直接執行）
│
└── 步驟八：Git commit + push
```

### 指派表

| 步驟 | 任務類型 | 指定模型 | 子代理類型 | 平行化 | 原因 |
|------|----------|----------|------------|--------|------|
| 步驟一 | 動態發現所有 Layer | `sonnet` | `Bash` | - | 純目錄掃描 |
| 步驟二 | fetch.sh 執行 | `sonnet` | `Bash` | ✅ 可平行 | 各 Layer 獨立 |
| 步驟二 | Layer 萃取 | `sonnet` | `general-purpose` | ✅ 可平行 | 需 Write 工具 |
| 步驟二 | update.sh 執行 | `sonnet` | `Bash` | ✅ 可平行 | 各 Layer 獨立 |
| 步驟三 | 動態發現所有 Mode | `sonnet` | `Bash` | - | 純目錄掃描 |
| **步驟 4a** | Qdrant 語意搜尋 | `sonnet` | `Bash` | ✅ 可平行 | I/O 密集，排除 meta-mode |
| **步驟 4b** | 一般 Mode 報告產出 | `opus` | `general-purpose` | ✅ 可平行 | 跨來源綜合分析 |
| **步驟 4c** | Meta-mode 報告產出 | `opus` | `general-purpose` | - | 依賴 4b 產出，最後執行 |
| **步驟 5** | Revamp Writer | `opus` | `general-purpose` | - | 深度分析，依序執行 |
| **步驟 5** | Revamp Reviewer | `sonnet` | `general-purpose` | - | 依據清單檢查 |
| **步驟 5** | site-audit.sh | `sonnet` | `Bash` | - | 純 I/O 操作 |
| 步驟六 | 更新時間戳 | `sonnet` | `Bash` | - | 純檔案更新 |
| 步驟七 | 完成檢查 | - | 頂層 CLI | - | 品質關卡 |
| 步驟八 | git commit + push | `sonnet` | `Bash` | - | 純腳本執行 |

> **強制規則**：
> - 步驟 4b 和 4c（Mode 報告產出）使用 `opus`
> - 步驟 5 Revamp Writer 使用 `opus`，Reviewer 使用 `sonnet`
> - 其餘所有步驟（含步驟 4a Qdrant 搜尋）一律使用 `sonnet`
> - 步驟 4a 必須全部完成後，才能開始步驟 4b
> - 步驟 4b 必須全部完成後，才能開始步驟 4c（meta-mode 依賴一般 Mode 產出）
> - 步驟 4c 必須完成後，才能開始步驟 5（Revamp 需要分析已產出的報告）
> - 步驟 5 各階段依序執行（每階段 Writer → Reviewer 通過後才進入下一階段）
>
> **子代理規則**：需要寫入檔案的 Task 必須使用 `general-purpose`，純腳本執行使用 `Bash`。

### 平行分派策略

**步驟二（Layer 處理）**：
- 多個 Layer 的 fetch.sh 可平行執行（彼此獨立）
- JSONL 萃取可平行分派多個 Task（例如：20 筆 JSONL 可一次分派 10-20 個 Sonnet Task）
- update.sh 可平行執行（各 Layer 獨立）

**步驟四（Mode 報告）**：
- 階段 4a：一般 Mode 的 Qdrant 查詢**平行執行**（Sonnet 處理 I/O，排除 meta-mode）
- 階段 4b：一般 Mode 的報告產出**平行執行**（Opus 處理推理）
- 階段 4c：Meta-mode（executive_summary）報告產出（Opus，循序執行）
- 階段之間有依賴：4a → 4b → 4c，必須依序等待完成

**步驟五（Revamp 改版分析）**：
- 各階段**循序執行**（每階段依賴前一階段產出）
- 每階段內部：Writer → Reviewer → 通過後進入下一階段
- 不可平行化（階段間有依賴關係）

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

## 網站改版流程

> 結構化的網站改版流程，包含品牌定位、健檢、競品分析、策略規劃等階段。
> 完整規範 → 見 `revamp/CLAUDE.md`

### 流程總覽

```
0-Positioning → 1-Discovery → 2-Competitive → 3-Analysis → 4-Strategy → 5-Content-Spec → 執行 → Final-Review
     ↓              ↓             ↓              ↓            ↓              ↓                       ↓
  Review ✓      Review ✓      Review ✓      Review ✓     Review ✓       Review ✓                Review ✓
```

### 使用時機

| 情境 | 說明 |
|------|------|
| **定期改版** | 每季度或年度進行網站全面改版時 |
| **SEO 優化** | 需要系統性提升 SEO 表現時 |
| **品牌重塑** | 品牌定位或目標受眾改變時 |
| **效能優化** | 網站效能或使用者體驗需要改善時 |

### 各階段說明

| 階段 | 目的 | 輸出 |
|------|------|------|
| **0-positioning** | 釐清品牌定位、核心價值 | 定位文件 |
| **1-discovery** | 盤點現有內容 + 技術健檢 | 健檢報告 + KPI |
| **2-competitive** | 分析競爭對手 | 競品分析報告 |
| **3-analysis** | 受眾分析 + 內容差距 | 差距分析報告 |
| **4-strategy** | 改版計劃 + 優先級排序 | 改版計劃書 |
| **5-content-spec** | 每頁內容規格 | 內容規格書 |
| **final-review** | 驗收執行結果 | 驗收報告 |

### 自動化工具

`revamp/tools/` 目錄提供以下腳本（使用本地 Lighthouse，不受 API 配額限制）：

| 工具 | 用途 | 範例 |
|------|------|------|
| `site-audit.sh` | 完整網站健檢（效能、安全、SEO） | `./revamp/tools/site-audit.sh https://example.com` |
| `competitive-audit.sh` | 批次競品比較 | `./revamp/tools/competitive-audit.sh https://our-site.com https://competitor.com` |

### 模型指派

| 任務類型 | 指定模型 | 原因 |
|----------|----------|------|
| Writer（各階段產出） | `opus` | 需要深度分析和策略思考 |
| Reviewer（檢查審核） | `sonnet` | 依據清單檢查，不需複雜推理 |
| 工具腳本執行 | `sonnet` | 純 I/O 操作 |

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
| 「執行網站改版」 | 啟動完整 revamp 流程（0-positioning → final-review） |
| 「執行改版 {階段}」 | 只執行指定階段（如 `執行改版 1-discovery`） |
| 「網站健檢」 | 使用 `site-audit.sh` 執行技術健檢 |
| 「競品分析」 | 使用 `competitive-audit.sh` 比較競品 |

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
