# Layer: sans_isc — SANS Internet Storm Center

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `sans_isc` — SANS Internet Storm Center |
| **Engineering function** | 追蹤 SANS ISC Handler's Diary 的每日威脅分析與安全事件 |
| **Collectable data** | RSS: SANS ISC Handler's Diary（每日更新） |
| **Automation level** | 75% — 分析文章需判斷類別和影響，部分需人工確認 |
| **Output value** | 即時威脅情報、攻擊手法分析、防禦建議 |
| **Risk type** | 將分析師觀點誤認為確認事實、誤判威脅嚴重性 |
| **Reviewer persona** | 資料可信度審核員、領域保守審核員、幻覺風險審核員 |
| **WebFetch 策略** | **按需** — RSS description 通常足夠，複雜分析時觸發 |

## RSS 來源

| 名稱 | URL | 說明 |
|------|-----|------|
| SANS ISC Handler's Diary | `https://isc.sans.edu/rssfeed_full.xml` | 每日安全分析日誌，含威脅情報、漏洞分析、惡意軟體分析 |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `threat_analysis` | 威脅分析 | 攻擊活動追蹤、APT 分析、攻擊趨勢 |
| `vulnerability` | 漏洞分析 | CVE 分析、漏洞利用技術、修補建議 |
| `malware` | 惡意軟體 | 惡意軟體分析、勒索軟體、惡意程式碼 |
| `incident_response` | 事件回應 | 事件處理經驗、調查技巧、取證分析 |

> **嚴格限制：category 只能使用上述 4 個值。** 若有項目不屬於任何分類，選最接近的並在 Notes 說明。

## 內容過濾規則

本 Layer 的 RSS 來源為專業安全分析，大部分內容都屬於萃取範圍。

### 過濾對象（❌ 跳過，不萃取）

- **純工具推廣**：僅介紹工具而無安全分析
- **純活動宣傳**：僅宣傳 SANS 課程或活動

### 萃取對象（✅ 納入）

- 威脅情報分析
- 漏洞技術分析
- 惡意軟體逆向分析
- 事件回應案例
- 攻擊手法研究
- 防禦建議與最佳實踐

## 萃取邏輯

### 步驟

1. 讀取 JSONL 的一行 JSON（含 title、link、description、pubDate）
2. 判斷 description 長度和內容：
   - ≥ 200 字 且 內容完整 → 直接萃取
   - < 200 字 或 內容不完整 → 使用 WebFetch 抓取完整文章
3. 根據 title + description（+ WebFetch 內容）填寫 L1-L4 欄位
4. 依 category 判定條件分類
5. 用 Write tool 寫出 `.md` 檔到 `docs/Extractor/sans_isc/{category}/`

### 萃取重點

- **L1 (Rule Signal)**：
  - `rule_type`: 通常為 `guidance`（分析文）
  - `issuing_body`: SANS Internet Storm Center
  - `document_id`: 通常無（Handler's Diary 條目）
  - `status`: `final`
- **L2 (Responsibility)**：
  - `affected_roles`: 依文章內容判斷（security analysts、IT administrators、SOC teams 等）
  - `shift_type`: 通常為 `clarified`（提供新的威脅情報）或 `new`（新發現的威脅）
- **L3 (Risk Domains)**：從 4 個領域中選擇
- **L4 (Obligation)**：
  - `enforcement_signal`: 通常為 `recommended` 或 `informational`
  - 注意：Handler's Diary 為專家分析，非強制要求

### 特殊欄位（加入 L1 區塊，若適用）

```markdown
- **cve_references**: CVE-XXXX-XXXXX（若文中提及）
- **threat_actor**: 威脅行為者名稱（若有）
- **attack_technique**: MITRE ATT&CK 技術（若可識別）
```

## WebFetch 補充規則

- **策略**：按需
- **觸發條件**：description < 200 字 或 無法判斷文章完整性
- **降級處理**：WebFetch 失敗時基於 RSS 資料萃取，confidence 最高為「中」，Notes 標註降級

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. 文章涉及零日漏洞但無法確認 CVE 編號
2. 威脅評估與其他來源明顯矛盾
3. 無法區分「確認事實」與「分析師推測」

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ 分析文無正式文件編號（正常現象）
- ❌ 單一分析師觀點（ISC handler 為該領域專家）

## 自我審核 Checklist

輸出前必須逐項確認：

### Frontmatter
- [ ] frontmatter 所有欄位已填寫
- [ ] category 使用 enum 定義值（4 類之一）
- [ ] confidence 為 `高` / `中` / `低`（中文）
- [ ] 檔名格式正確：`{date}-{slug}.md`

### L1 — Rule Signal
- [ ] **rule_type** 有明確依據
- [ ] **issuing_body** 為 SANS Internet Storm Center

### L2 — Responsibility Structure
- [ ] **affected_roles** 已填寫
- [ ] **shift_type** 為 `new` / `expanded` / `clarified` / `transferred` / `restricted` 之一
- [ ] **shift_summary** 是一句完整描述

### L3 — Risk Domains
- [ ] 至少一個風險領域

### L4 — Obligation & Evidence
- [ ] **enforcement_signal** 為 `mandatory` / `recommended` / `informational` 之一
- [ ] 未將 recommended 誤判為 mandatory（ISC 分析多為 recommended）

### 其他
- [ ] 已明確區分「確認事實」與「分析師推測」
- [ ] CVE 引用（若有）格式正確
