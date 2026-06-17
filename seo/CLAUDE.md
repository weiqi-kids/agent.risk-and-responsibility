# SEO + AEO 優化規則庫（風險與責任分析版）

## 概述

本規則庫定義風險與責任分析報告網站的 SEO（搜尋引擎優化）和 AEO（AI 答案引擎優化）標準。Writer 和 Reviewer 模組都必須參照此檔案執行任務。

> **適用範圍**：`docs/Narrator/{mode}/` 下的風險與責任分析報告

---

## 一、JSON-LD Schema 類型定義

### 必填 Schema（5 種 + 1 內嵌）

> **注意**：WebSite Schema 透過 Article.isPartOf 內嵌，包含 SearchAction 網站搜尋功能。

#### 1. WebPage + Speakable

```json
{
  "@type": "WebPage",
  "@id": "{{CANONICAL_URL}}#webpage",
  "url": "{{CANONICAL_URL}}",
  "name": "{{TITLE}}",
  "description": "{{META_DESCRIPTION}}",
  "inLanguage": "zh-TW",
  "isPartOf": { "@id": "https://risk.weiqi.kids/#website" },
  "primaryImageOfPage": { "@type": "ImageObject", "url": "{{OG_IMAGE}}" },
  "datePublished": "{{PUBLISHED_DATE}}",
  "dateModified": "{{MODIFIED_DATE}}",
  "speakable": {
    "@type": "SpeakableSpecification",
    "cssSelector": [
      ".article-summary",
      ".speakable-content",
      ".key-takeaway",
      ".key-answer",
      ".expert-quote",
      ".actionable-steps li",
      ".data-highlight"
    ]
  }
}
```

**必填欄位**：
- `@id`：必須使用 `{{CANONICAL_URL}}#webpage` 格式
- `speakable.cssSelector`：必須包含至少 7 個選擇器

---

#### 2. Article（完整版）

```json
{
  "@type": "Article",
  "@id": "{{CANONICAL_URL}}#article",
  "mainEntityOfPage": {
    "@id": "{{CANONICAL_URL}}#webpage",
    "significantLink": ["{{RELATED_REPORT_1}}", "{{RELATED_REPORT_2}}"]
  },
  "headline": "{{TITLE}}",
  "description": "{{META_DESCRIPTION}}",
  "image": { "@type": "ImageObject", "url": "{{OG_IMAGE}}", "width": 1200, "height": 630 },
  "author": { "@id": "https://risk.weiqi.kids/about#ai-analyst" },
  "publisher": { "@id": "https://risk.weiqi.kids/#organization" },
  "datePublished": "{{PUBLISHED_DATE}}",
  "dateModified": "{{MODIFIED_DATE}}",
  "articleSection": "{{ARTICLE_SECTION}}",
  "keywords": "{{META_KEYWORDS}}",
  "wordCount": "{{WORD_COUNT}}",
  "inLanguage": "zh-TW",
  "isAccessibleForFree": true,
  "isPartOf": {
    "@type": "WebSite",
    "@id": "https://risk.weiqi.kids/#website",
    "name": "Risk & Responsibility Intelligence",
    "potentialAction": {
      "@type": "SearchAction",
      "target": "https://risk.weiqi.kids/search?q={search_term}",
      "query-input": "required name=search_term"
    }
  }
}
```

**必填欄位**：
- `author`：固定連結到 AI 分析師 Person Schema
- `publisher`：固定連結到 Organization Schema
- `isAccessibleForFree`：必須為 `true`
- `mainEntityOfPage.significantLink`：相關報告連結（至少 2 個）

---

#### 3. Person（AI 分析師 — 固定值）

```json
{
  "@type": "Person",
  "@id": "https://risk.weiqi.kids/about#ai-analyst",
  "name": "AI 風險與責任分析師",
  "url": "https://risk.weiqi.kids/about",
  "description": "基於 Claude 的智慧風險與責任分析系統，整合 NIST 框架、EU 法規與產業標準等權威來源，提供即時風險情報與合規分析。",
  "knowsAbout": [
    "NIST 框架與標準追蹤",
    "EU AI Act 法規分析",
    "供應鏈安全風險評估",
    "關鍵基礎設施韌性",
    "資安合規框架"
  ],
  "affiliation": { "@id": "https://risk.weiqi.kids/#organization" },
  "sameAs": [
    "https://github.com/anthropics/claude-code"
  ]
}
```

**注意**：此 Schema 為固定值，不需每篇報告重新產生。

---

#### 4. Organization（出版者 — 固定值）

```json
{
  "@type": "Organization",
  "@id": "https://risk.weiqi.kids/#organization",
  "name": "Risk & Responsibility Intelligence",
  "url": "https://risk.weiqi.kids",
  "logo": {
    "@type": "ImageObject",
    "url": "https://risk.weiqi.kids/assets/images/logo.png",
    "width": 600,
    "height": 60
  },
  "description": "自動化風險與責任情報分析平台，追蹤全球框架、法規與產業規則的變動。",
  "sameAs": [
    "https://github.com/anthropics/claude-code"
  ]
}
```

**注意**：此 Schema 為固定值，不需每篇報告重新產生。

---

#### 5. BreadcrumbList（麵包屑導航）

```json
{
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "首頁", "item": "https://risk.weiqi.kids/" },
    { "@type": "ListItem", "position": 2, "name": "{{MODE_NAME}}", "item": "https://risk.weiqi.kids/Narrator/{{MODE}}/" },
    { "@type": "ListItem", "position": 3, "name": "{{TITLE}}", "item": "{{CANONICAL_URL}}" }
  ]
}
```

**規則**：
- 至少 3 層（首頁 + Mode + 報告）
- position 必須從 1 開始連續編號

---

### 條件式 Schema（3 種）

> 以下 Schema 依據報告內容動態判斷是否需要加入。

#### 6. FAQPage（若報告含 Q&A 段落）

```json
{
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "{{QUESTION_1}}",
      "acceptedAnswer": { "@type": "Answer", "text": "{{ANSWER_1}}" }
    }
  ]
}
```

**適用條件**：報告中有明確的問答段落
**規則**：若適用，必須包含 3-5 個 Q&A

---

#### 7. ItemList（若有排序清單）

```json
{
  "@type": "ItemList",
  "@id": "{{CANONICAL_URL}}#itemlist",
  "name": "{{LIST_TITLE}}",
  "description": "{{LIST_DESCRIPTION}}",
  "numberOfItems": "{{ITEM_COUNT}}",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "{{ITEM_1_NAME}}",
      "description": "{{ITEM_1_DESCRIPTION}}"
    }
  ]
}
```

**適用條件**：報告含排序清單（如「前 10 大風險因素」「5 大合規要求」）

---

#### 8. Table（若有比較表格）

```json
{
  "@type": "Table",
  "@id": "{{CANONICAL_URL}}#table",
  "about": "{{TABLE_SUBJECT}}",
  "description": "{{TABLE_DESCRIPTION}}"
}
```

**適用條件**：報告含比較表格（如框架比較、法規對照）

---

### 條件式 Schema 動態判斷規則

| Schema | 關鍵字/特徵偵測 | 優先級 |
|--------|----------------|--------|
| **FAQPage** | 明確的 Q&A 段落、「常見問題」標題 | 低（不強制） |
| **ItemList** | 「前 N 大」「排行」「TOP」+ 編號清單 | 中 |
| **Table** | `<table>` 標籤、數據比較表 | 中 |

---

## 二、SGE/AEO 標記規範

### HTML Class 標記（5 種）

| 標記 | CSS Class | data 屬性 | 用途 | 範例 |
|------|-----------|----------|------|------|
| **關鍵答案** | `.key-answer` | `data-question="搜尋問句"` | 每個 H2 開頭的直接答案 | `<p class="key-answer" data-question="NIST CSF 2.0 有什麼改變">NIST CSF 2.0 新增 Govern 功能...</p>` |
| **重點摘要** | `.key-takeaway` | - | 報告核心要點（2-3 個） | `<div class="key-takeaway">重點：...</div>` |
| **數據亮點** | `.data-highlight` | - | 重要數據標示 | `<span class="data-highlight">影響 87% 的關鍵基礎設施</span>` |
| **行動建議** | `.actionable-steps` | - | 可執行的建議清單 | `<ol class="actionable-steps">...</ol>` |
| **比較表格** | `.comparison-table` | - | 結構化比較資訊 | `<table class="comparison-table">...</table>` |

### .key-answer 使用規則

1. **每個 H2 段落開頭**應有一個 `.key-answer`（若該段落可回答特定問題）
2. **必須包含 data-question 屬性**，值為該段落回答的搜尋問句
3. **內容必須是直接答案**，不超過 2 句話

```html
<h2>NIST CSF 2.0 框架更新</h2>
<p class="key-answer" data-question="NIST CSF 2.0有什麼新功能">
  NIST CSF 2.0 新增 <strong>Govern 治理功能</strong>，將網路安全風險管理提升至組織治理層級。
</p>
```

### Speakable 選擇器（7 個）

```json
"speakable": {
  "cssSelector": [
    ".article-summary",
    ".speakable-content",
    ".key-takeaway",
    ".key-answer",
    ".data-highlight",
    ".actionable-steps li",
    ".expert-quote"
  ]
}
```

---

## 三、風險與責任報告專用欄位

### articleSection 對應表

| Mode | articleSection 值 |
|------|------------------|
| rule_change_brief | 規則變動快報 |
| ai_governance_landscape | AI 治理趨勢 |
| ai_implementation_guide | AI 實作指引 |
| supply_chain_security | 供應鏈安全 |
| critical_infrastructure_resilience | 關鍵基礎設施韌性 |
| cybersecurity_compliance | 資安合規 |
| executive_summary | 高階決策摘要 |

### keywords 建議格式

```
風險管理, {{主要框架}}, {{法規名稱}}, {{年份}}, {{特定議題}}
```

範例：
```
風險管理, NIST CSF, EU AI Act, 2026, 供應鏈安全, 合規框架
```

---

## 四、SEO 檢查清單

### 關鍵字優化

- [ ] 標題（H1/title）包含核心關鍵字（框架、法規、時間）
- [ ] 第一段（前 100 字）包含關鍵字
- [ ] H2 標題自然融入關鍵字
- [ ] 包含 3-5 個 LSI 語意相關詞

### 結構優化

- [ ] H1 唯一且包含關鍵字
- [ ] H2 數量 3-6 個
- [ ] 段落長度 100-300 字

### 連結優化

- [ ] 內部連結 3+ 個（連到相關報告）
- [ ] 外部權威連結 2+ 個（NIST、EUR-Lex 等官方來源）
- [ ] 無斷裂連結

### 數據來源標示

- [ ] 所有數據標明來源（NIST、EU、CSA 等）
- [ ] 數據時間點明確（如「2026 年第 12 週」）

---

## 五、Meta 標籤規範

### 基本標籤

```html
<title>{{TITLE}}（60字內，含關鍵字）</title>
<meta name="description" content="{{DESCRIPTION}}（155字內，含關鍵字）" />
<link rel="canonical" href="{{CANONICAL_URL}}" />
```

### Open Graph 標籤

```html
<meta property="og:title" content="{{TITLE}}" />
<meta property="og:description" content="{{DESCRIPTION}}" />
<meta property="og:image" content="{{OG_IMAGE}}" />
<meta property="og:url" content="{{CANONICAL_URL}}" />
<meta property="og:type" content="article" />
<meta property="og:site_name" content="Risk & Responsibility Intelligence" />
<meta property="article:published_time" content="{{PUBLISHED_DATE}}" />
<meta property="article:modified_time" content="{{MODIFIED_DATE}}" />
<meta property="article:author" content="AI 風險與責任分析師" />
```

### Twitter Card 標籤

```html
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="{{TITLE}}" />
<meta name="twitter:description" content="{{DESCRIPTION}}" />
<meta name="twitter:image" content="{{OG_IMAGE}}" />
```

---

## 六、JSON-LD 整合格式

所有 Schema 必須使用 `@graph` 整合：

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    { "@type": "WebPage", ... },
    { "@type": "Article", ... },
    { "@type": "Person", ... },
    { "@type": "Organization", ... },
    { "@type": "BreadcrumbList", ... }
  ]
}
</script>
```

### @id 互相連結規則

| Schema | @id 格式 | 被引用於 |
|--------|----------|---------|
| WebPage | `{{URL}}#webpage` | Article.mainEntityOfPage |
| Article | `{{URL}}#article` | - |
| Person | `https://risk.weiqi.kids/about#ai-analyst` | Article.author（固定值） |
| Organization | `https://risk.weiqi.kids/#organization` | Article.publisher（固定值） |
| ItemList | `{{URL}}#itemlist` | - |
| Table | `{{URL}}#table` | - |

---

## 七、驗證方式

### Google Rich Results Test

將完成的 JSON-LD 貼入以下工具驗證：
https://search.google.com/test/rich-results

### 預期通過項目

- [ ] Article
- [ ] BreadcrumbList
- [ ] ItemList（若適用）

---

## 八、常見錯誤清單

| 錯誤 | 說明 | 修正方式 |
|------|------|---------|
| 缺少 speakable | WebPage 沒有 speakable 欄位 | 加入 7 個 cssSelector |
| @id 格式錯誤 | 沒有使用 `#` 分隔符 | 使用 `{{URL}}#type` 格式 |
| 日期格式錯誤 | 沒有使用 ISO 8601 | 使用 YYYY-MM-DD 格式 |
| 缺少數據來源 | 報告數據沒有標明來源 | 加入來源標示 |
| description 過長 | 超過 155 字 | 精簡到 155 字內 |

---

## 附錄：快速參考卡

### 必填 Schema 清單（5 種）
1. WebPage（含 Speakable）
2. Article（含 SearchAction）
3. Person（AI 分析師 — 固定值）
4. Organization（固定值）
5. BreadcrumbList

### 條件式 Schema 清單（3 種）
1. FAQPage（若有 Q&A）
2. ItemList（若有排序清單）
3. Table（若有比較表格）

### SGE 標記清單
1. `.key-answer`（含 data-question）
2. `.key-takeaway`
3. `.data-highlight`
4. `.actionable-steps`
5. `.comparison-table`
