# Mode: supply_chain_security — 供應鏈安全趨勢

## Mode 定義表

| 項目 | 內容 |
|------|------|
| **Mode name** | `supply_chain_security` — 供應鏈安全趨勢 |
| **Purpose and audience** | 每週彙整全球供應鏈安全動態，供採購主管、資安團隊、法遵團隊掌握供應鏈責任變化 |
| **Source layers** | `nist_frameworks`、`nist_cybersecurity_insights`、`eu_regulations` |
| **Automation ratio** | 85% — 跨來源彙整自動化，責任歸屬判斷需人工確認 |
| **Content risk** | 混淆不同區域的供應鏈責任要求、誤判盡職調查範圍、將草案誤判為生效法規 |
| **Reviewer persona** | 法規與責任審核員、使用者誤導風險審核員、領域保守審核員 |
| **Output frequency** | 每週 |

## 資料來源定義

| Layer | Category | 說明 |
|-------|----------|------|
| `nist_frameworks` | `supply_chain` | SSDF、SBOM、C-SCRM、軟體供應鏈安全 |
| `nist_cybersecurity_insights` | `supply_chain` | 供應鏈相關部落格文章、政策分析 |
| `eu_regulations` | `supply_chain` | 人權盡職調查、環境責任、供應鏈透明度 |

讀取各 Layer 對應 category 目錄下的 `.md` 檔案。

## 輸出框架

```markdown
---
layout: report
title: "{YYYY}-W{WW} Supply Chain Security"
parent: "Supply Chain Security"
nav_order: {WW}

seo:
  title: "{YYYY}-W{WW} 供應鏈安全趨勢 | SBOM、SSDF、盡職調查最新動態"
  description: "本週追蹤 {N} 項供應鏈安全動態，涵蓋 NIST SSDF、SBOM 要求、歐盟盡職調查指令等重要更新。"
  date_published: "{YYYY-MM-DD}"
  date_modified: "{YYYY-MM-DD}"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "盡職調查"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/{上週報告}/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/{本週報告}/"
  faq:
    - question: "本週有哪些重要的供應鏈安全動態？"
      answer: "（從本週重點摘要）"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "（從供應鏈責任矩陣摘要）"
    - question: "SBOM 相關義務有何變化？"
      answer: "（從義務與舉證要求摘要）"
---

# Supply Chain Security Trends — {YYYY}-W{WW}

<div class="key-takeaway">
本週重點：（從「本週重點」提取 2-3 項最重要動態，簡潔描述）
</div>

> 本期追蹤 {N} 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | {N} 個權威來源（NIST、EUR-Lex 等） |
| 資料時間 | {earliest_date} ~ {latest_date} |

</div>

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>（最重要的 1 項動態）</strong>，（補充說明來源區域與影響）。
</p>

（3-5 項最重要的供應鏈安全動態，每項 2-3 句話，標註來源區域與 rule_type）

<blockquote class="expert-quote">
  「（從資料來源引用相關聲明）」
  <cite>（來源機構）</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）
（NIST 相關供應鏈安全動態摘要，含 document_id 和 status）
（重點關注：SSDF、SBOM、C-SCRM 相關更新）

### 歐盟
（EU 供應鏈責任立法動態，含 document_type 和 binding_force）
（重點關注：盡職調查指令、環境責任、供應鏈透明度）

---

## 供應鏈責任矩陣

| 角色 | 美國要求 | 歐盟要求 | 變動趨勢 |
|------|----------|----------|----------|
| 軟體供應商 | ... | ... | ... |
| 採購方 | ... | ... | ... |
| 系統整合商 | ... | ... | ... |

（基於各項目 L2 affected_roles 彙整）

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
- SBOM 相關義務
- 盡職調查義務
- 透明度報告義務

### 舉證要求摘要
（彙整各項目 L4 的 evidence_requirements）

---

## L5 — Evolution Signals

（跨區域的趨勢觀察，限 2-3 點，必須標註為「系統推論」）

例如：
- [系統推論] 軟體供應鏈透明度要求正從 {自願} 轉向 {強制}
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
| nist_frameworks | supply_chain | {N} | {earliest_date} ~ {latest_date} |
| nist_cybersecurity_insights | supply_chain | {N} | {earliest_date} ~ {latest_date} |
| eu_regulations | supply_chain | {N} | {earliest_date} ~ {latest_date} |
```

## 輸出位置

`docs/Narrator/supply_chain_security/{YYYY}-W{WW}-supply-chain-security.md`

週數以 ISO 8601 計算。

## 寫作規則

1. **事實優先** — 每個聲明必須對應到具體的 Layer 資料（document_id 或 source_url）
2. **區分區域** — 明確標示資訊來源區域（美國/歐盟），避免混淆不同司法管轄區要求
3. **區分層級** — 嚴格區分 law / regulation / guidance / recommendation，不可混用
4. **責任歸屬明確** — 供應鏈涉及多方角色，需清楚標註責任歸屬對象
5. **標註推測** — L5 Evolution Signals 中的趨勢判斷必須加上 `[系統推論]` 前綴
6. **中文為主** — 報告以繁體中文撰寫，專有名詞保留英文（如 SSDF、SBOM、C-SCRM）
7. **draft ≠ final** — 明確標註文件狀態，不可將 public_comment 階段的文件描述為已生效
8. **binding_force 區分** — EU 法規需標註是 directly_applicable 還是 requires_transposition

## 自我審核 Checklist

發布前必須逐項確認：

### 內容檢查
- [ ] 免責聲明存在且完整
- [ ] 報告資訊區塊存在（產出方式、審核狀態、資料來源、資料時間）
- [ ] 本週重點不超過 5 項
- [ ] 區域動態比較涵蓋所有來源區域
- [ ] 供應鏈責任矩陣正確反映各角色的責任
- [ ] 責任變動追蹤表格包含所有來源的 L2 欄位
- [ ] L5 Evolution Signals 的每一點都標註 `[系統推論]`
- [ ] 統計數字與實際資料一致
- [ ] 沒有將 draft 文件描述為已生效的法規
- [ ] 沒有將 recommended 描述為 mandatory
- [ ] 沒有混淆不同區域的供應鏈責任要求
- [ ] 所有 document_id 引用可追溯到 Layer 資料

### SEO 檢查（參照 `core/Narrator/seo-integration.md`）
- [ ] `layout: report`
- [ ] `seo.title` 不超過 60 字且包含關鍵字
- [ ] `seo.description` 不超過 155 字
- [ ] `seo.keywords` 包含 5-8 個關鍵字
- [ ] `seo.related_articles` 包含至少 2 個相關報告 URL
- [ ] `seo.faq` 包含 3-5 個 Q&A
- [ ] 報告開頭有 `.key-takeaway`
- [ ] 「本週重點」開頭有 `.key-answer`（含 `data-question`）
- [ ] 至少 1 個 `.expert-quote`
