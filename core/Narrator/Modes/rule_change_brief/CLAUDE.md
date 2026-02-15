# Mode: rule_change_brief — 規則變動簡報

## Mode 定義表

| 項目 | 內容 |
|------|------|
| **Mode name** | `rule_change_brief` — 規則變動簡報 |
| **Purpose and audience** | 每期彙整框架與標準的規則變動，供資安主管、法遵團隊快速掌握最新動態 |
| **Source layers** | `nist_frameworks` |
| **Automation ratio** | 90% — 彙整與分類全自動，趨勢判斷需人工確認 |
| **Content risk** | 將 draft 誤讀為 final、遺漏重要變動、過度推測趨勢 |
| **Reviewer persona** | 法規與責任審核員、使用者誤導風險審核員 |

## 資料來源定義

讀取 `docs/Extractor/nist_frameworks/` 下所有分類目錄中的 `.md` 檔案。

每筆資料包含 L1-L4 結構化欄位（rule_type、affected_roles、risk_domains、new_obligations 等）。

## 輸出框架

```markdown
---
layout: report
title: "{YYYY}-W{WW} Rule Change Brief"
parent: "Rule Change Brief"
nav_order: {WW}

seo:
  title: "{YYYY}-W{WW} 規則變動簡報 | NIST 框架與標準最新動態"
  description: "本期追蹤 {N} 項框架與標準變動，涵蓋 NIST SP 800-53、CSF 等重要更新。資安主管與法遵團隊必讀。"
  date_published: "{YYYY-MM-DD}"
  date_modified: "{YYYY-MM-DD}"
  article_section: "Rule Change Brief"
  keywords:
    - "NIST Framework"
    - "規則變動"
    - "資安合規"
    - "SP 800-53"
    - "Cybersecurity"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/{上週報告}/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/{本週報告}/"
  faq:
    - question: "本期有哪些重要的規則變動？"
      answer: "（從本期重點摘要）"
    - question: "這些變動對組織有什麼影響？"
      answer: "（從責任變動追蹤摘要）"
    - question: "如何追蹤最新規則變動？"
      answer: "Risk & Responsibility Intelligence 每週更新 Rule Change Brief，涵蓋 NIST、EU、ISO 等主要框架與標準動態。"
---

# Rule Change Brief — {YYYY}-W{WW}

<div class="key-takeaway">
本期重點：（從「本期重點」提取 2-3 項最重要變動，簡潔描述）
</div>

> 本期追蹤 {N} 項框架與標準變動，涵蓋 {來源 Layer 列表}。

## 免責聲明

本簡報由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本期重點

<p class="key-answer" data-question="本期有哪些重要的規則變動">
  <strong>（最重要的 1 項變動）</strong>，（補充說明 rule_type 和影響）。
</p>

（3-5 項最重要的變動，每項 2-3 句話，標註 rule_type 和 enforcement_signal）

<blockquote class="expert-quote">
  「（從資料來源引用相關聲明）」
  <cite>（來源機構）</cite>
</blockquote>

---

## 按風險領域分析

### Cybersecurity
（該領域本期的變動摘要，含 document_id 和 status）

### AI Risk
（同上）

### Privacy
（同上）

### Supply Chain
（同上）

### Identity
（同上）

### Critical Infrastructure
（同上）

> 無變動的領域寫「本期無變動」，不省略。

---

## 責任變動追蹤

| 文件 | affected_roles | shift_type | shift_summary |
|------|---------------|------------|---------------|
| ... | ... | ... | ... |

（從所有項目的 L2 欄位彙整成表格）

---

## L5 — Evolution Signals

（跨項目的趨勢觀察，限 2-3 點，必須標註為「系統推論」）

例如：
- [系統推論] 本期多項變動回應同一行政命令，顯示 {趨勢}
- [系統推論] {risk_domain} 領域的責任正從 {A} 轉向 {B}

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | {N} |
| rule_type 分布 | draft: X, final: Y, revision: Z, ... |
| enforcement_signal 分布 | mandatory: X, recommended: Y, informational: Z |
| REVIEW_NEEDED | {N} 筆 |

---

## 資料來源

| Layer | 筆數 | 時間範圍 |
|-------|------|----------|
| nist_frameworks | {N} | {earliest_date} ~ {latest_date} |
```

## 輸出位置

`docs/Narrator/rule_change_brief/{YYYY}-W{WW}-rule-change-brief.md`

週數以 ISO 8601 計算。

## 寫作規則

1. **事實優先** — 每個聲明必須對應到具體的 Layer 資料（document_id 或 source_url）
2. **區分層級** — 嚴格區分 law / regulation / guidance / recommendation，不可混用
3. **標註推測** — L5 Evolution Signals 中的趨勢判斷必須加上 `[系統推論]` 前綴
4. **不遺漏** — 所有 6 個風險領域都必須出現在「按風險領域分析」段落
5. **中文為主** — 報告以繁體中文撰寫，專有名詞保留英文（如 NIST CSF、SP 800-53）
6. **draft ≠ final** — 明確標註文件狀態，不可將 public_comment 階段的文件描述為已生效

## 自我審核 Checklist

發布前必須逐項確認：

### 內容檢查
- [ ] 免責聲明存在且完整
- [ ] 本期重點不超過 5 項
- [ ] 每個風險領域都有段落（含「本期無變動」）
- [ ] 責任變動追蹤表格完整（所有項目的 L2 欄位都列入）
- [ ] L5 Evolution Signals 的每一點都標註 `[系統推論]`
- [ ] 統計數字與實際資料一致
- [ ] 沒有將 draft 文件描述為已生效的法規
- [ ] 沒有將 recommended 描述為 mandatory
- [ ] 所有 document_id 引用可追溯到 Layer 資料

### SEO 檢查（參照 `core/Narrator/seo-integration.md`）
- [ ] `layout: report`
- [ ] `seo.title` 不超過 60 字且包含關鍵字
- [ ] `seo.description` 不超過 155 字
- [ ] `seo.keywords` 包含 5-8 個關鍵字
- [ ] `seo.related_articles` 包含至少 2 個相關報告 URL
- [ ] `seo.faq` 包含 3-5 個 Q&A
- [ ] 報告開頭有 `.key-takeaway`
- [ ] 「本期重點」開頭有 `.key-answer`（含 `data-question`）
- [ ] 至少 1 個 `.expert-quote`
