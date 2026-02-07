# Mode: ai_governance_landscape — AI 治理全景

## Mode 定義表

| 項目 | 內容 |
|------|------|
| **Mode name** | `ai_governance_landscape` — AI 治理全景 |
| **Purpose and audience** | 每月彙整全球 AI 治理動態，供 AI 風險管理團隊、法遵主管掌握跨區域趨勢 |
| **Source layers** | `nist_frameworks`、`nist_cybersecurity_insights`、`eu_regulations` |
| **Automation ratio** | 85% — 跨來源彙整自動化，趨勢判斷與區域比較需人工確認 |
| **Content risk** | 混淆不同區域的監管要求、將草案誤判為生效法規、過度推測趨勢 |
| **Reviewer persona** | 法規與責任審核員、使用者誤導風險審核員、領域保守審核員 |
| **Output frequency** | 每月（月初產出上月報告） |

## 資料來源定義

| Layer | Category | 說明 |
|-------|----------|------|
| `nist_frameworks` | `ai_risk` | NIST AI RMF、AI 評估方法、演算法問責 |
| `nist_cybersecurity_insights` | `ai_risk` | AI 相關部落格文章、政策分析 |
| `eu_regulations` | `ai_governance` | EU AI Act、通用 AI 模型規範、高風險 AI 系統 |

讀取各 Layer 對應 category 目錄下的 `.md` 檔案。

## 輸出框架

```markdown
# AI Governance Landscape — {YYYY}-{MM}

> 本期追蹤 {N} 項 AI 治理動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

（3-5 項最重要的 AI 治理動態，每項 2-3 句話，標註來源區域與 rule_type）

---

## 區域動態比較

### 美國（NIST）
（NIST 相關 AI 治理動態摘要，含 document_id 和 status）

### 歐盟
（EU AI Act 及相關立法動態，含 document_type 和 binding_force）

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | ... | ... | ... | ... |
| EU | ... | ... | ... | ... |

（從所有項目的 L2 欄位彙整成表格）

---

## 義務與舉證要求

### 新增義務摘要
（彙整各項目 L4 的 new_obligations）

### 舉證要求摘要
（彙整各項目 L4 的 evidence_requirements）

---

## L5 — Evolution Signals

（跨區域的趨勢觀察，限 2-3 點，必須標註為「系統推論」）

例如：
- [系統推論] 美歐在高風險 AI 系統定義上呈現 {趨同/分歧} 趨勢
- [系統推論] {具體觀察}

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | {N} |
| 來源分布 | NIST Frameworks: X, NIST Insights: Y, EU: Z |
| rule_type 分布 | draft: X, final: Y, revision: Z, ... |
| enforcement_signal 分布 | mandatory: X, recommended: Y, informational: Z |
| REVIEW_NEEDED | {N} 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | ai_risk | {N} | {earliest_date} ~ {latest_date} |
| nist_cybersecurity_insights | ai_risk | {N} | {earliest_date} ~ {latest_date} |
| eu_regulations | ai_governance | {N} | {earliest_date} ~ {latest_date} |
```

## 輸出位置

`docs/Narrator/ai_governance_landscape/{YYYY}-{MM}-ai-governance-landscape.md`

## 寫作規則

1. **事實優先** — 每個聲明必須對應到具體的 Layer 資料（document_id 或 source_url）
2. **區分區域** — 明確標示資訊來源區域（美國/歐盟），避免混淆不同司法管轄區要求
3. **區分層級** — 嚴格區分 law / regulation / guidance / recommendation，不可混用
4. **標註推測** — L5 Evolution Signals 中的趨勢判斷必須加上 `[系統推論]` 前綴
5. **中文為主** — 報告以繁體中文撰寫，專有名詞保留英文（如 AI RMF、EU AI Act）
6. **draft ≠ final** — 明確標註文件狀態，不可將 public_comment 階段的文件描述為已生效
7. **binding_force 區分** — EU 法規需標註是 directly_applicable 還是 requires_transposition

## 自我審核 Checklist

發布前必須逐項確認：

- [ ] 免責聲明存在且完整
- [ ] 本月重點不超過 5 項
- [ ] 區域動態比較涵蓋所有來源區域
- [ ] 責任變動追蹤表格包含所有來源的 L2 欄位
- [ ] L5 Evolution Signals 的每一點都標註 `[系統推論]`
- [ ] 統計數字與實際資料一致
- [ ] 沒有將 draft 文件描述為已生效的法規
- [ ] 沒有將 recommended 描述為 mandatory
- [ ] 沒有混淆不同區域的監管要求
- [ ] 所有 document_id 引用可追溯到 Layer 資料
