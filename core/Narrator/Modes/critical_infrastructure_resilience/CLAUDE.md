# Mode: critical_infrastructure_resilience — 關鍵基礎設施韌性

## Mode 定義表

| 項目 | 內容 |
|------|------|
| **Mode name** | `critical_infrastructure_resilience` — 關鍵基礎設施韌性 |
| **Purpose and audience** | 每週彙整全球關鍵基礎設施保護動態，供 CISO、OT 安全團隊、合規主管掌握韌性要求變化 |
| **Source layers** | `nist_frameworks`、`nist_cybersecurity_insights`、`eu_regulations` |
| **Automation ratio** | 85% — 跨來源彙整自動化，影響範圍判斷需人工確認 |
| **Content risk** | 混淆不同區域的基礎設施定義、誤判適用範圍、將草案誤判為生效法規 |
| **Reviewer persona** | 法規與責任審核員、使用者誤導風險審核員、領域保守審核員 |
| **Output frequency** | 每週 |

## 資料來源定義

| Layer | Category | 說明 |
|-------|----------|------|
| `nist_frameworks` | `critical_infrastructure` | ICS/OT 安全、基礎設施韌性、CHIPS Act 相關 |
| `nist_cybersecurity_insights` | `critical_infrastructure` | 基礎設施相關部落格文章、政策分析 |
| `eu_regulations` | `critical_infrastructure` | CER Directive、能源安全、電信韌性 |

讀取各 Layer 對應 category 目錄下的 `.md` 檔案。

## 輸出框架

```markdown
---
layout: report
title: "{YYYY}-W{WW} Critical Infrastructure Resilience"
parent: "Critical Infrastructure Resilience"
nav_order: {WW}

seo:
  title: "{YYYY}-W{WW} 關鍵基礎設施韌性 | ICS/OT 安全、CER Directive 最新動態"
  description: "本週追蹤 {N} 項關鍵基礎設施韌性動態，涵蓋 ICS/OT 安全指引、歐盟 CER Directive、能源電信韌性等重要更新。"
  date_published: "{YYYY-MM-DD}"
  date_modified: "{YYYY-MM-DD}"
  article_section: "Critical Infrastructure Resilience"
  keywords:
    - "Critical Infrastructure"
    - "ICS Security"
    - "OT Security"
    - "CER Directive"
    - "基礎設施韌性"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/critical_infrastructure_resilience/{上週報告}/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/{本週報告}/"
  faq:
    - question: "本週有哪些重要的基礎設施韌性動態？"
      answer: "（從本週重點摘要）"
    - question: "OT 安全團隊需要注意哪些新要求？"
      answer: "（從基礎設施領域矩陣摘要）"
    - question: "歐盟 CER Directive 有何最新進展？"
      answer: "（從區域動態比較摘要）"
---

# Critical Infrastructure Resilience — {YYYY}-W{WW}

<div class="key-takeaway">
本週重點：（從「本週重點」提取 2-3 項最重要動態，簡潔描述）
</div>

> 本期追蹤 {N} 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規。

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

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>（最重要的 1 項動態）</strong>，（補充說明來源區域與影響）。
</p>

（3-5 項最重要的基礎設施韌性動態，每項 2-3 句話，標註來源區域與 rule_type）

<blockquote class="expert-quote">
  「（從資料來源引用相關聲明）」
  <cite>（來源機構）</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）
（NIST 相關基礎設施韌性動態摘要，含 document_id 和 status）
（重點關注：ICS/OT 安全指引、跨部門協調、CHIPS Act 執行）

### 歐盟
（EU 基礎設施保護立法動態，含 document_type 和 binding_force）
（重點關注：CER Directive、NIS2 交集、能源/電信特定要求）

---

## 基礎設施領域矩陣

| 領域 | 美國要求 | 歐盟要求 | 本週變動 |
|------|----------|----------|----------|
| 能源 | ... | ... | ... |
| 電信 | ... | ... | ... |
| 金融 | ... | ... | ... |
| 運輸 | ... | ... | ... |
| 水務 | ... | ... | ... |

（基於各項目內容彙整，無變動則標註「無」）

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
- 韌性測試義務
- 事件通報義務
- 供應商管理義務

### 舉證要求摘要
（彙整各項目 L4 的 evidence_requirements）

---

## L5 — Evolution Signals

（跨區域的趨勢觀察，限 2-3 點，必須標註為「系統推論」）

例如：
- [系統推論] OT 安全責任正從 {營運部門} 擴展到 {資安團隊}
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
| nist_frameworks | critical_infrastructure | {N} | {earliest_date} ~ {latest_date} |
| nist_cybersecurity_insights | critical_infrastructure | {N} | {earliest_date} ~ {latest_date} |
| eu_regulations | critical_infrastructure | {N} | {earliest_date} ~ {latest_date} |
```

## 輸出位置

`docs/Narrator/critical_infrastructure_resilience/{YYYY}-W{WW}-critical-infrastructure-resilience.md`

週數以 ISO 8601 計算。

## 寫作規則

1. **事實優先** — 每個聲明必須對應到具體的 Layer 資料（document_id 或 source_url）
2. **區分區域** — 明確標示資訊來源區域（美國/歐盟），避免混淆不同司法管轄區要求
3. **區分層級** — 嚴格區分 law / regulation / guidance / recommendation，不可混用
4. **領域明確** — 基礎設施涵蓋多個領域，需清楚標註適用的基礎設施類型
5. **標註推測** — L5 Evolution Signals 中的趨勢判斷必須加上 `[系統推論]` 前綴
6. **中文為主** — 報告以繁體中文撰寫，專有名詞保留英文（如 ICS、OT、CER Directive）
7. **draft ≠ final** — 明確標註文件狀態，不可將 public_comment 階段的文件描述為已生效
8. **binding_force 區分** — EU 法規需標註是 directly_applicable 還是 requires_transposition

## 自我審核 Checklist

發布前必須逐項確認：

### 內容檢查
- [ ] 免責聲明存在且完整
- [ ] 報告資訊區塊存在（產出方式、審核狀態、資料來源、資料時間）
- [ ] 本週重點不超過 5 項
- [ ] 區域動態比較涵蓋所有來源區域
- [ ] 基礎設施領域矩陣正確反映各領域的要求
- [ ] 責任變動追蹤表格包含所有來源的 L2 欄位
- [ ] L5 Evolution Signals 的每一點都標註 `[系統推論]`
- [ ] 統計數字與實際資料一致
- [ ] 沒有將 draft 文件描述為已生效的法規
- [ ] 沒有將 recommended 描述為 mandatory
- [ ] 沒有混淆不同區域的基礎設施定義與適用範圍
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
