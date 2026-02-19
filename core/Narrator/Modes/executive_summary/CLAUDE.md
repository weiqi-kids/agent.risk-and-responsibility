# Mode: executive_summary — 高階決策摘要

## Mode 定義表

| 項目 | 內容 |
|------|------|
| **Mode name** | `executive_summary` — 高階決策摘要 |
| **Purpose and audience** | 每週一頁式摘要，供 CEO/CFO/董事會成員快速掌握風險動態 |
| **Source layers** | 彙整其他 Mode 的產出（meta-mode） |
| **Automation ratio** | 80% — 重點萃取自動化，優先順序判斷需人工確認 |
| **Content risk** | 過度簡化導致遺漏重要細節、優先順序判斷錯誤、誤導決策 |
| **Reviewer persona** | 自動化邊界審核員、使用者誤導風險審核員 |
| **Output frequency** | 每週（週一產出，依賴其他 Mode 完成） |

## 資料來源定義

此 Mode 為 **meta-mode**，不直接讀取 Layer 資料，而是彙整其他 Mode 的報告重點。

| 來源 Mode | 讀取欄位 |
|-----------|----------|
| `rule_change_brief` | 本期重點（key-takeaway） |
| `cybersecurity_compliance` | 本週重點（key-takeaway） |
| `supply_chain_security` | 本週重點（key-takeaway） |
| `critical_infrastructure_resilience` | 本週重點（key-takeaway） |
| `ai_governance_landscape` | 本月重點（若為該月首週） |

執行順序：此 Mode 必須在所有其他 Mode 完成後執行。

## 輸出框架

```markdown
---
layout: report
title: "{YYYY}-W{WW} Executive Summary"
parent: "Executive Summary"
nav_order: {WW}

seo:
  title: "{YYYY}-W{WW} 高階決策摘要 | 本週風險管理重點"
  description: "本週 3 大風險管理重點：{重點1摘要}、{重點2摘要}、{重點3摘要}。"
  date_published: "{YYYY-MM-DD}"
  date_modified: "{YYYY-MM-DD}"
  article_section: "Executive Summary"
  keywords:
    - "Executive Summary"
    - "風險管理"
    - "決策摘要"
    - "CISO Brief"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/executive_summary/{上週報告}/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/{本週報告}/"
  faq:
    - question: "本週最重要的風險管理動態是什麼？"
      answer: "（從 Top 3 摘要）"
    - question: "企業決策者需要採取哪些行動？"
      answer: "（從建議行動彙整）"
    - question: "在哪裡可以看到完整分析？"
      answer: "Risk & Responsibility Intelligence 每週產出多份專題報告，涵蓋法規變動、資安合規、供應鏈安全等領域。"
---

# Executive Summary — {YYYY}-W{WW}

<div class="key-takeaway">
本週重點：（1 句話總結本週最重要的風險管理動態）
</div>

> 本摘要彙整 {N} 份專題報告的重點，供決策者快速掌握本週動態。

## 免責聲明

本摘要由 AI 系統自動產出，基於本週各專題報告彙整。
內容僅供參考，不構成法律或合規建議。詳細分析請參閱各專題報告。

---

## Top 3 This Week

<p class="key-answer" data-question="本週最重要的風險管理動態是什麼">
  <strong>{重點 1 標題}</strong>：{1-2 句話說明}
</p>

### 1. {重點 1 標題}

{2-3 句話說明}

**建議行動**：{1 句話}

[詳細閱讀 →]({來源報告連結})

---

### 2. {重點 2 標題}

{2-3 句話說明}

**建議行動**：{1 句話}

[詳細閱讀 →]({來源報告連結})

---

### 3. {重點 3 標題}

{2-3 句話說明}

**建議行動**：{1 句話}

[詳細閱讀 →]({來源報告連結})

---

## 本週報告一覽

| 報告 | 重點摘要 |
|------|----------|
| [Rule Change Brief]({連結}) | {1 句話} |
| [Cybersecurity Compliance]({連結}) | {1 句話} |
| [Supply Chain Security]({連結}) | {1 句話} |
| [Critical Infrastructure]({連結}) | {1 句話} |

---

## 資料來源

本摘要彙整自以下報告：

| 報告 | 日期 |
|------|------|
| {報告名稱} | {YYYY-MM-DD} |
```

## 輸出位置

`docs/Narrator/executive_summary/{YYYY}-W{WW}-executive-summary.md`

週數以 ISO 8601 計算。

## 寫作規則

1. **精簡為王** — 總長度控制在 500 字以內，決策者沒有時間閱讀長文
2. **Top 3 固定** — 每期固定 3 個重點，不多不少
3. **建議行動必填** — 每個重點都要有 1 句話的建議行動
4. **連結必填** — 每個重點都要連結到來源報告
5. **優先順序明確** — Top 3 的排序反映重要性，第 1 項是本週最重要的
6. **中文為主** — 報告以繁體中文撰寫，專有名詞保留英文

## 重點選取規則

從各 Mode 的 `key-takeaway` 中選取 Top 3，優先順序依據：

1. **強制性法規變動** > 指引/建議
2. **即將生效** > 未來規劃
3. **影響範圍廣** > 特定領域
4. **責任歸屬明確變動** > 技術細節更新

## 自我審核 Checklist

發布前必須逐項確認：

### 內容檢查
- [ ] 免責聲明存在且完整
- [ ] Top 3 固定 3 項，不多不少
- [ ] 每項重點有建議行動（1 句話）
- [ ] 每項重點有詳細閱讀連結
- [ ] 所有連結可正常訪問
- [ ] 總長度不超過 500 字
- [ ] 沒有過度簡化導致誤導的描述
- [ ] 優先順序反映真實重要性

### SEO 檢查（參照 `core/Narrator/seo-integration.md`）
- [ ] `layout: report`
- [ ] `seo.title` 不超過 60 字且包含關鍵字
- [ ] `seo.description` 不超過 155 字
- [ ] `seo.keywords` 包含 5-8 個關鍵字
- [ ] `seo.related_articles` 包含至少 2 個相關報告 URL
- [ ] `seo.faq` 包含 3-5 個 Q&A
- [ ] 報告開頭有 `.key-takeaway`
- [ ] 有 `.key-answer`（含 `data-question`）
