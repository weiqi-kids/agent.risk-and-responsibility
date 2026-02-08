# Layer: eu_regulations — 歐盟法規動態

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `eu_regulations` — 歐盟法規動態 |
| **Engineering function** | 追蹤歐盟議會與理事會發布的法規、指令與決定 |
| **Collectable data** | RSS: EUR-Lex 預定義 feed（歐洲議會與理事會立法） |
| **Automation level** | 70% — 法律文件結構固定，但 binding force 判斷與影響範圍需推論 |
| **Output value** | EU 法規變動訊號、合規義務、跨國影響分析 |
| **Risk type** | 混淆 Regulation（直接適用）與 Directive（需轉置）、誤判生效日期 |
| **Reviewer persona** | 法規與責任審核員、領域保守審核員、使用者誤導風險審核員 |
| **WebFetch 策略** | **必用** — EUR-Lex RSS description 通常不足，binding documents 一律 WebFetch |

## RSS 來源

| 名稱 | URL | 說明 |
|------|-----|------|
| EUR-Lex Predefined: All Parliament and Council legislation | `https://eur-lex.europa.eu/EN/display-feed.rss?rssId=162` | 歐洲議會與理事會立法行為，含 Regulation、Directive、Decision |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `ai_governance` | AI 治理 | AI Act、通用 AI 模型規範、高風險 AI 系統 |
| `cybersecurity` | 資安法規 | NIS2 Directive、ENISA 相關、資安事件通報 |
| `data_protection` | 資料保護 | GDPR 修正、跨境傳輸、ePrivacy |
| `digital_market` | 數位市場 | DMA、DSA、平台治理、市場競爭 |
| `financial_compliance` | 財務合規 | DORA、MiFID、ESG 披露、支付服務 |
| `supply_chain` | 供應鏈責任 | 人權盡職調查、環境責任、供應鏈透明度 |
| `critical_infrastructure` | 關鍵基礎設施 | CER Directive、能源安全、電信韌性 |
| `institutional_administration` | 機構內部行政 | EU 機構內部人事、預算、津貼、程序變動（不直接影響成員國或企業） |

> **嚴格限制：category 只能使用上述 8 個值。** 若有項目不屬於任何分類，選最接近的並在 Notes 說明。需要新增 category 時必須與使用者確認後寫入本檔案。

## 內容過濾規則（fetch.sh 階段）

以下內容在 `fetch.sh` 階段自動過濾，不進入 JSONL：

### 過濾對象（❌ 不進入 JSONL）

- **非英文 corrigenda**：description 含 `"does not concern the English version"`
  - 這些是「翻譯語法修正」（如愛爾蘭文被動式、德文用詞順序）
  - 不涉及法規實質變動，對合規分析無價值

### 萃取對象（✅ 進入 JSONL）

- 所有 Regulation、Directive、Decision 的實質內容
- 涉及英文版本的 Corrigendum（實質修正）

## 萃取邏輯

### 步驟

1. 讀取 JSONL 的一行 JSON（含 title、link、description、pubDate、dc:creator）
2. **一律使用 WebFetch** 抓取 link 頁面以取得完整法律文本摘要
   - EUR-Lex RSS description 通常為空或極簡，不足以萃取
   - WebFetch 目標：取得文件全名、類型、生效日期、關鍵條文摘要
3. 根據 title + WebFetch 內容填寫 L1-L4 欄位（含 EU 特有欄位）
4. 依 category 判定條件分類
5. 用 Write tool 寫出 `.md` 檔到 `docs/Extractor/eu_regulations/{category}/`

### 萃取重點

- **L1 (Rule Signal)**：EU 法規的 rule_type 判斷：
  - CELEX 編號以 `3` 開頭 → 已通過的法律行為
  - 標題含 "Regulation" → `rule_type: new` 或 `revision`
  - 標題含 "Directive" → `rule_type: new` 或 `revision`
  - 標題含 "Decision" → `rule_type: new`
  - 標題含 "Recommendation" → `rule_type: guidance`
  - 標題含 "Corrigendum" → `rule_type: amendment`
  - **EU 特有欄位**（加入 L1 區塊，必須使用 bold 格式）：
    - `- **document_type**: regulation | directive | decision | recommendation | corrigendum`
    - `- **binding_force**: directly_applicable | requires_transposition | non_binding`
    - `- **effective_date**: 生效日期（若文中有）`
    - `- **transposition_deadline**: 轉置期限（僅 Directive）`

> ⚠️ **P7 教訓**：EU 特有欄位常缺少 bold 格式，導致驗證失敗。正確格式為 `- **document_type**: Regulation`，而非 `- document_type: Regulation`
- **L2 (Responsibility)**：判斷法規影響的角色
  - EU 法規影響範圍廣：member states、regulated entities、supervisory authorities、data controllers 等
  - Regulation → 直接對所有成員國適用
  - Directive → 成員國需轉置為國內法
- **L3 (Risk Domains)**：可多選，從 7 個領域中選擇
- **L4 (Obligation)**：EU 法規多為 `mandatory`
  - Regulation → `enforcement_signal: mandatory`
  - Directive → `enforcement_signal: mandatory`（轉置後具強制力）
  - Recommendation → `enforcement_signal: recommended`

### document_type 判定規則

| 關鍵字 | document_type | binding_force |
|--------|---------------|---------------|
| Regulation (EU) | `regulation` | `directly_applicable` |
| Directive (EU) | `directive` | `requires_transposition` |
| Decision (EU) | `decision` | `directly_applicable` |
| Recommendation | `recommendation` | `non_binding` |
| Corrigendum | 繼承原文件類型 | 繼承原文件 |

### CELEX 編號解讀

- `32024R1234` → 2024 年 Regulation 第 1234 號
- `32024L5678` → 2024 年 Directive 第 5678 號
- `32024D9012` → 2024 年 Decision 第 9012 號
- `R(02)` 後綴 → 第 2 次 corrigendum

## WebFetch 補充規則

- **策略**：必用
- **觸發條件**：所有項目一律 WebFetch（EUR-Lex RSS description 通常不足）
- **降級處理**：WebFetch 失敗時基於 RSS title + CELEX 編號推斷，confidence 最高為「低」，Notes 標註降級
- **注意**：EUR-Lex 頁面可能需要 User-Agent header，若遇 WAF challenge 可嘗試加入 browser UA
- **WebFetch prompt 建議**：「從此 EUR-Lex 頁面萃取：文件全名、類型（Regulation/Directive/Decision）、生效日期、轉置期限（若有）、主要義務摘要、影響範圍」

### URL 格式修正（2026-02-06 經驗）

EUR-Lex `/AUTO/` 路徑常返回技術錯誤，改用 `/EN/TXT/` 可成功取得內容：

```
❌ 失敗：https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32013R0575R(09)
✅ 成功：https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32013R0575R(09)
```

**轉換規則**：
- 將 `/legal-content/AUTO/` 改為 `/legal-content/EN/TXT/`
- 其餘 query string（`?uri=CELEX:...`）保持不變

**適用場景**：
- 初次 WebFetch 使用 `/AUTO/` 失敗時，重試使用 `/EN/TXT/`
- 可直接在萃取流程中優先使用 `/EN/TXT/` 格式

### CELEX 編號衝突（2026-02-06 經驗）

同一文件編號（如 2026/303）可能對應多份不同文件：
- **Council Decision** vs **European Parliament and Council Decision**
- WebFetch 返回的文件可能與 RSS 標題描述的文件不同

**處理方式**：
- 以 RSS 提供的 title 為準判斷文件內容
- 在 Notes 標註 WebFetch 限制
- confidence 設為「中」

### RSS Metadata 降級策略（2026-02-06 經驗）

當 WebFetch 無法取得正確內容時，RSS metadata（title、link、pubDate）足以產出有效萃取：
- confidence: 中（非「低」）
- 不需標記 `[REVIEW_NEEDED]`
- 在 Notes 說明資料來源限制即可

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. 無法判斷 document_type（Regulation / Directive / Decision）
2. 生效日期與轉置期限從文本中無法確認
3. WebFetch 失敗（EU 法規 RSS description 不足以完整萃取）
4. 涉及 delegated / implementing act 的權限範圍不明確

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ 多語言可用但僅萃取英文版（在 Notes 記錄）
- ❌ 轉置期限較長（在 L4 反映，不標記）
- ❌ 文件為 consolidated version（合併版本本身非風險）

## 自我審核 Checklist

輸出前必須逐項確認：

### Frontmatter
- [ ] frontmatter 所有欄位已填寫
- [ ] category 使用 enum 定義值（7 類之一）
- [ ] confidence 為 `高` / `中` / `低`（中文）
- [ ] 檔名格式正確：`{date}-{slug}.md`

### L1 — Rule Signal
- [ ] rule_type 有明確依據（CELEX 編號或標題關鍵字）
- [ ] **document_type** 已填寫且使用 bold 格式
- [ ] **binding_force** 已填寫且使用 bold 格式
- [ ] binding_force 與 document_type 一致

### L2 — Responsibility Structure
- [ ] **affected_roles** 已填寫
- [ ] **shift_type** 為 `new` / `expanded` / `clarified` / `transferred` / `restricted` 之一（❌ 禁止：revision, extension, administrative, clarification_correction）
- [ ] **shift_summary** 是一句完整描述
- [ ] Section 位於 L1 之後、L3 之前

### L3 — Risk Domains
- [ ] 至少一個風險領域
- [ ] Section 位於 L2 之後、L4 之前

### L4 — Obligation & Evidence
- [ ] **new_obligations** 已填寫
- [ ] **evidence_requirements** 已填寫
- [ ] **enforcement_signal** 為 `mandatory` / `recommended` / `informational` 之一（❌ 禁止：完整句子、中文描述、Low/High 等）
- [ ] enforcement_signal 與 document_type 一致（Regulation/Directive → mandatory）
- [ ] Section 位於 L3 之後、Notes 之前

### 其他
- [ ] confidence 等級合理（WebFetch 降級時不超過「低」）
- [ ] REVIEW_NEEDED 判定嚴格遵循觸發規則

> ⚠️ **P7 常見問題**：
> 1. shift_type 使用 `revision`（應改為 `clarified`）或 `extension`（應改為 `expanded`）
> 2. enforcement_signal 填入「Supervisory authority to verify...」等長句（應改為 `mandatory`）
> 3. L3 與 L4 順序對調
> 4. EU 特有欄位缺少 bold 格式
