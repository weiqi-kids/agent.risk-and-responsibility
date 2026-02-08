# Layer: csa_cloud_security — 雲安全聯盟

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `csa_cloud_security` — 雲安全聯盟 |
| **Engineering function** | 追蹤 Cloud Security Alliance (CSA) 的雲安全、AI 安全與最佳實踐 |
| **Collectable data** | RSS: CSA Blog（持續更新） |
| **Automation level** | 75% — Blog 分析文需判斷類別和影響 |
| **Output value** | 雲安全最佳實踐、AI 安全指引、合規框架更新 |
| **Risk type** | 將 CSA 建議誤認為強制要求、誤判雲服務商責任 |
| **Reviewer persona** | 法規與責任審核員、領域保守審核員 |
| **WebFetch 策略** | **按需** — RSS description 通常足夠，詳細技術內容時觸發 |

## RSS 來源

| 名稱 | URL | 說明 |
|------|-----|------|
| CSA Blog | `https://cloudsecurityalliance.org/blog/feed/` | CSA 官方部落格，含雲安全研究、AI 安全、最佳實踐 |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `cloud_security` | 雲端安全 | 雲端架構安全、容器安全、Kubernetes 安全 |
| `ai_security` | AI 安全 | AI 系統安全、LLM 安全、AI 治理 |
| `identity` | 身分識別 | IAM、零信任、身分驗證 |
| `compliance` | 合規框架 | CCM、STAR、合規評估 |
| `best_practices` | 最佳實踐 | 安全架構、DevSecOps、安全設計 |

> **嚴格限制：category 只能使用上述 5 個值。** 若有項目不屬於任何分類，選最接近的並在 Notes 說明。

## 內容過濾規則

本 Layer 的 RSS 來源為 CSA 官方部落格，大部分內容都屬於萃取範圍。

### 過濾對象（❌ 跳過，不萃取）

- **純活動宣傳**：僅宣傳 CSA 會議或活動
- **會員公告**：CSA 會員制度或組織公告

### 萃取對象（✅ 納入）

- 雲安全研究報告摘要
- AI 安全指引與建議
- 合規框架更新（CCM、STAR）
- 技術最佳實踐
- 行業趨勢分析

## 萃取邏輯

### 步驟

1. 讀取 JSONL 的一行 JSON（含 title、link、description、pubDate）
2. 判斷 description 長度和內容：
   - ≥ 150 字 且 內容完整 → 直接萃取
   - < 150 字 或 內容不完整 → 使用 WebFetch 抓取完整文章
3. 根據 title + description（+ WebFetch 內容）填寫 L1-L4 欄位
4. 依 category 判定條件分類
5. 用 Write tool 寫出 `.md` 檔到 `docs/Extractor/csa_cloud_security/{category}/`

### 萃取重點

- **L1 (Rule Signal)**：
  - `rule_type`: 通常為 `guidance`（指引類）
  - `issuing_body`: Cloud Security Alliance (CSA)
  - `document_id`: 若引用 CSA 正式文件則填寫（如 CCM v4.0）
  - `status`: `final`
- **L2 (Responsibility)**：
  - `affected_roles`: 雲端架構師、安全工程師、CISO、雲服務供應商
  - `shift_type`: 依內容判斷
- **L3 (Risk Domains)**：從 5 個領域中選擇
- **L4 (Obligation)**：
  - `enforcement_signal`: 通常為 `recommended`（CSA 指引為建議性質）
  - 注意：某些法規（如 GDPR、HIPAA）可能要求採用 CSA 框架

### 特殊欄位（加入 L1 區塊，若適用）

```markdown
- **csa_framework**: CCM | STAR | CAIQ（若引用 CSA 框架）
- **cloud_provider**: AWS | Azure | GCP | Multi-cloud（若針對特定雲）
```

## WebFetch 補充規則

- **策略**：按需
- **觸發條件**：description < 150 字 或 無法判斷文章完整性
- **降級處理**：WebFetch 失敗時基於 RSS 資料萃取，confidence 最高為「中」，Notes 標註降級

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. 涉及重大框架更新（如 CCM 新版本）
2. 與其他來源的安全建議相矛盾
3. 無法區分 CSA 官方立場與作者觀點

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ Blog 式內容無正式文件編號（正常現象）
- ❌ 單一作者觀點（CSA blog 作者為該領域專家）

## 自我審核 Checklist

輸出前必須逐項確認：

### Frontmatter
- [ ] frontmatter 所有欄位已填寫
- [ ] category 使用 enum 定義值（5 類之一）
- [ ] confidence 為 `高` / `中` / `低`（中文）
- [ ] 檔名格式正確：`{date}-{slug}.md`

### L1 — Rule Signal
- [ ] **rule_type** 有明確依據
- [ ] **issuing_body** 為 Cloud Security Alliance (CSA)

### L2 — Responsibility Structure
- [ ] **affected_roles** 已填寫
- [ ] **shift_type** 為 `new` / `expanded` / `clarified` / `transferred` / `restricted` 之一
- [ ] **shift_summary** 是一句完整描述

### L3 — Risk Domains
- [ ] 至少一個風險領域

### L4 — Obligation & Evidence
- [ ] **enforcement_signal** 為 `mandatory` / `recommended` / `informational` 之一
- [ ] 未將 recommended 誤判為 mandatory（CSA 指引多為 recommended）
