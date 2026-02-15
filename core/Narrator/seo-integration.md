# SEO + AEO 整合指引

> 本文件供 Mode 報告產出時參考，定義 SEO front matter 欄位規範和 SGE 標記使用方式。

---

## 一、Front Matter SEO 欄位

報告產出時，必須在 front matter 中填入以下 `seo:` 欄位：

```yaml
---
layout: report
title: "2026-W07 Rule Change Brief"
parent: "Rule Change Brief"
nav_order: 97

seo:
  # 必填欄位
  title: "2026-W07 規則變動簡報 | NIST 框架更新、歐盟法規勘誤"    # 60字內，含關鍵字
  description: "本期追蹤 50 項框架與標準變動，涵蓋 NIST SP 800-53..."  # 155字內
  date_published: "2026-02-15"           # ISO 8601 格式
  date_modified: "2026-02-15"            # ISO 8601 格式
  article_section: "Rule Change Brief"   # 使用 Mode 名稱
  keywords:                              # 5-8 個關鍵字
    - "NIST Framework"
    - "ISO Standards"
    - "EU Regulations"
    - "Cybersecurity Compliance"
    - "Risk Management"
  related_articles:                      # 至少 2 個相關報告 URL
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W06-rule-change-brief/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W07-cybersecurity-compliance/"
  faq:                                   # 3-5 個 Q&A
    - question: "本期有哪些重要的規則變動？"
      answer: "本期追蹤 50 項框架與標準變動，包括..."
    - question: "這些變動對組織有什麼影響？"
      answer: "聯邦機構需依 FISMA 合規要求..."
    - question: "如何追蹤這些規則變動？"
      answer: "本系統每週更新 Rule Change Brief..."

  # 選填欄位（無則使用預設值）
  image: "https://risk.weiqi.kids/assets/reports/2026-W07-rule-change-brief.png"
  image_alt: "2026-W07 Rule Change Brief"
---
```

### 欄位填寫規則

| 欄位 | 來源 | 範例 |
|------|------|------|
| `seo.title` | 從「本期重點」提取核心關鍵字，組合成 60 字內標題 | `2026-W07 規則變動簡報 | NIST 框架更新` |
| `seo.description` | 從「引言段落」改寫，155 字內 | `本期追蹤 50 項框架與標準變動，涵蓋...` |
| `seo.keywords` | 從報告內容提取 5-8 個關鍵詞 | NIST、ISO、EU、Cybersecurity 等 |
| `seo.faq` | 從「本期重點」和「L5 Evolution Signals」提取 3-5 個 Q&A | 見上方範例 |
| `seo.related_articles` | 使用上一期同 Mode 報告 + 同週其他 Mode 報告 | 見上方範例 |

---

## 二、SGE 標記使用方式

在報告內容中，使用 HTML class 標記關鍵內容，以利 AI 答案引擎（SGE）抓取。

### 2.1 .key-takeaway（重點摘要）

**位置**：報告開頭，免責聲明之前
**用途**：概述本期重點，作為語音搜尋和 AI 摘要的首選內容

```html
<div class="key-takeaway">
本期重點：NIST SP 800-53 Rev. 5.2.0 新增三項控制項、ISO/IEC TS 27103:2026 發布、歐盟生態設計法規勘誤。聯邦機構需依 FISMA 合規要求實作新控制項。
</div>
```

### 2.2 .key-answer（關鍵答案）

**位置**：每個 H2 段落開頭
**用途**：直接回答搜尋問句，1-2 句話
**必填屬性**：`data-question="搜尋問句"`

```html
## 本期重點

<p class="key-answer" data-question="本期有哪些重要的規則變動">
  <strong>NIST SP 800-53 Rev. 5.2.0 新增三項控制項</strong>，回應 Executive Order 14306，聯邦機構需依 FISMA 合規要求實作。
</p>
```

### 2.3 .expert-quote（專家引言）

**位置**：報告中段，增加權威性
**用途**：引用權威來源的重要觀點

```html
<blockquote class="expert-quote">
  「新增的控制項回應 Executive Order 14306，強化聯邦系統的網路韌性設計。」
  <cite>NIST Cybersecurity Framework Team</cite>
</blockquote>
```

**引言來源建議**：
- NIST 官方公告
- EU 法規前言或說明
- ISO 標準摘要
- 權威機構聲明

### 2.4 .actionable-steps（行動步驟）

**位置**：報告結尾，建議措施段落
**用途**：提供可執行的步驟清單

```html
<ol class="actionable-steps">
  <li>檢視組織目前使用的 NIST SP 800-53 版本</li>
  <li>評估新增控制項（SA-15、SI-02(07)、SA-24）的適用性</li>
  <li>規劃實作時程與資源分配</li>
  <li>更新系統安全計畫（SSP）以納入新控制項</li>
</ol>
```

### 2.5 .comparison-table（比較表格）

**位置**：需要比較不同框架/法規時
**用途**：結構化呈現比較資訊

```html
<table class="comparison-table">
  <thead>
    <tr>
      <th>框架</th>
      <th>版本</th>
      <th>主要變動</th>
      <th>生效日期</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>NIST SP 800-53</td>
      <td>Rev. 5.2.0</td>
      <td>新增三項控制項</td>
      <td>2026-02-01</td>
    </tr>
  </tbody>
</table>
```

---

## 三、SGE 標記檢查清單

報告產出時，確認以下項目：

- [ ] 有一個 `.key-takeaway` 在報告開頭
- [ ] 每個 H2 段落開頭有 `.key-answer`（含 `data-question` 屬性）
- [ ] 至少有一個 `.expert-quote`
- [ ] 若有建議措施，使用 `.actionable-steps`
- [ ] 若有比較表格，使用 `.comparison-table`

---

## 四、FAQ 產生規則

### 問題來源

1. **本期重點**：轉換為「本期有哪些...？」格式
2. **責任變動追蹤**：轉換為「對...有什麼影響？」格式
3. **L5 Evolution Signals**：轉換為「未來趨勢是什麼？」格式
4. **統計資訊**：轉換為「有多少...？」格式

### 答案撰寫規則

1. 答案必須完整，可被獨立理解（不依賴上下文）
2. 答案長度 50-150 字
3. 包含具體數字、名稱、日期等事實
4. 避免使用「本期」「本報告」等指示詞（改用具體週次）

### 範例

```yaml
faq:
  - question: "2026-W07 有哪些重要的規則變動？"
    answer: "2026-W07 週報追蹤 50 項框架與標準變動，重點包括 NIST SP 800-53 Rev. 5.2.0 新增三項控制項（SA-15、SI-02(07)、SA-24）、ISO/IEC TS 27103:2026 發布、歐盟生態設計法規勘誤。"
  - question: "NIST SP 800-53 Rev. 5.2.0 新增哪些控制項？"
    answer: "NIST SP 800-53 Rev. 5.2.0 新增三項控制項：SA-15（事件紀錄標準化）、SI-02(07)（修補失敗根因分析）、SA-24（網路韌性設計），回應 Executive Order 14306 的要求。"
  - question: "這些變動對聯邦機構有什麼影響？"
    answer: "聯邦機構需於系統安全計畫（SSP）中納入 NIST SP 800-53 Rev. 5.2.0 新控制項，實作時程依風險評估決定，通常為 1-3 年。"
```

---

## 五、related_articles 產生規則

### URL 格式

```
https://risk.weiqi.kids/docs/Narrator/{mode_name}/{filename}/
```

### 選擇規則

1. **上一期同 Mode 報告**（必填）
2. **同週其他 Mode 報告**（至少選 1 個相關的）

### 範例

假設目前產出 `2026-W07 Rule Change Brief`：

```yaml
related_articles:
  # 上一期同 Mode
  - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W06-rule-change-brief/"
  # 同週相關 Mode
  - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W07-cybersecurity-compliance/"
```

---

## 六、SEO 自我審核 Checklist

報告產出後，確認以下項目：

### Front Matter
- [ ] `layout: report`
- [ ] `seo.title` 不超過 60 字且包含關鍵字
- [ ] `seo.description` 不超過 155 字
- [ ] `seo.keywords` 包含 5-8 個關鍵字
- [ ] `seo.related_articles` 包含至少 2 個 URL
- [ ] `seo.faq` 包含 3-5 個 Q&A
- [ ] `seo.date_published` 和 `seo.date_modified` 使用 ISO 8601 格式

### SGE 標記
- [ ] 報告開頭有 `.key-takeaway`
- [ ] 每個 H2 開頭有 `.key-answer`（含 `data-question`）
- [ ] 至少 1 個 `.expert-quote`
- [ ] 若有步驟，使用 `.actionable-steps`
- [ ] 表格使用 `.comparison-table`
