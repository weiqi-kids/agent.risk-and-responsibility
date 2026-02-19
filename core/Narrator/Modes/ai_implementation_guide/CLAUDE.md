# Mode: ai_implementation_guide — AI 實作技術指引

## Mode 定義表

| 項目 | 內容 |
|------|------|
| **Mode name** | `ai_implementation_guide` — AI 實作技術指引 |
| **Purpose and audience** | 每月產出技術實作指引，供 AI/ML 工程團隊落實治理要求 |
| **Source layers** | `nist_frameworks`(ai_risk)、`csa_cloud_security`(ai_security) |
| **Automation ratio** | 70% — 技術細節需人工驗證，實作建議需領域專家確認 |
| **Content risk** | 技術建議過於籠統、未考慮實際工程限制、誤導實作方向 |
| **Reviewer persona** | 領域保守審核員、邏輯一致性審核員、使用者誤導風險審核員 |
| **Output frequency** | 每月 |

## 資料來源定義

| Layer | Category | 說明 |
|-------|----------|------|
| `nist_frameworks` | `ai_risk` | NIST AI RMF、AI 評估方法、演算法問責 |
| `csa_cloud_security` | `ai_security` | CSA AI 安全指引、雲端 AI 部署最佳實踐 |

讀取各 Layer 對應 category 目錄下的 `.md` 檔案，聚焦可實作的技術細節。

## 輸出框架

```markdown
---
layout: report
title: "{YYYY}-{MM} AI Implementation Guide"
parent: "AI Implementation Guide"
nav_order: {MM}

seo:
  title: "{YYYY}-{MM} AI 實作技術指引 | AI RMF 落地、Model Card、Bias 測試"
  description: "本月 AI 實作重點：{重點1}、{重點2}。含實作清單、程式碼範例、常見陷阱。"
  date_published: "{YYYY-MM-DD}"
  date_modified: "{YYYY-MM-DD}"
  article_section: "AI Implementation Guide"
  keywords:
    - "AI Implementation"
    - "AI RMF"
    - "Model Card"
    - "AI 實作"
    - "機器學習治理"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/ai_implementation_guide/{上月報告}/"
    - "https://risk.weiqi.kids/docs/Narrator/ai_governance_landscape/{本月報告}/"
  faq:
    - question: "本月有哪些 AI 實作要點？"
      answer: "（從本月實作清單摘要）"
    - question: "如何在組織內落實 AI RMF？"
      answer: "（從實作步驟摘要）"
    - question: "常見的 AI 實作陷阱有哪些？"
      answer: "（從常見陷阱摘要）"
---

# AI Implementation Guide — {YYYY}-{MM}

<div class="key-takeaway">
本月重點：（從「本月實作清單」提取 2-3 項最重要的實作要點）
</div>

> 本期聚焦 {N} 項 AI 治理要求的技術實作，涵蓋 NIST AI RMF、CSA 指引。

## 免責聲明

本指引由 AI 系統自動產出，基於公開框架與標準萃取技術實作建議。
內容僅供參考，實際實作需考慮組織特定情境與技術架構。
建議在正式採用前由工程團隊與領域專家審閱。

---

<div class="report-meta">

## 報告資訊

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | {N} 個權威來源（NIST、CSA 等） |
| 資料時間 | {earliest_date} ~ {latest_date} |

</div>

---

## 本月實作清單

<p class="key-answer" data-question="本月有哪些 AI 實作要點">
  <strong>（最重要的實作項目）</strong>，（補充技術細節）。
</p>

### 必做項目

- [ ] {實作項目 1}
  - 來源：{框架/標準名稱}
  - 優先級：高
  - 說明：{1-2 句話}

- [ ] {實作項目 2}
  - 來源：{框架/標準名稱}
  - 優先級：高
  - 說明：{1-2 句話}

### 建議項目

- [ ] {實作項目 3}
  - 來源：{框架/標準名稱}
  - 優先級：中
  - 說明：{1-2 句話}

---

## 框架映射表

<table class="comparison-table">
  <thead>
    <tr>
      <th>實作領域</th>
      <th>NIST AI RMF</th>
      <th>NIST CSF 2.0</th>
      <th>ISO 42001</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>風險評估</td>
      <td>MAP 1.x</td>
      <td>ID.RA-*</td>
      <td>6.1</td>
    </tr>
    <tr>
      <td>模型治理</td>
      <td>GOVERN 1.x</td>
      <td>GV.OC-*</td>
      <td>5.1</td>
    </tr>
    <tr>
      <td>測試驗證</td>
      <td>MEASURE 2.x</td>
      <td>DE.CM-*</td>
      <td>9.1</td>
    </tr>
  </tbody>
</table>

---

## 技術實作細節

### {實作主題 1}

**背景**：（為什麼需要這個實作）

**實作步驟**：

<ol class="actionable-steps">
  <li>{步驟 1}</li>
  <li>{步驟 2}</li>
  <li>{步驟 3}</li>
</ol>

**程式碼/配置範例**（若適用）：

```python
# 範例程式碼
```

**驗證方式**：（如何確認實作成功）

---

### {實作主題 2}

（同上結構）

---

## 常見實作陷阱

### 陷阱 1：{陷阱名稱}

**問題**：（描述常見錯誤）

**正確做法**：（如何避免）

### 陷阱 2：{陷阱名稱}

（同上結構）

---

## 工具與資源

| 工具/資源 | 用途 | 連結 |
|-----------|------|------|
| {工具名稱} | {用途說明} | {URL} |

---

## L5 — Evolution Signals

（技術趨勢觀察，限 2-3 點，必須標註為「系統推論」）

- [系統推論] {技術趨勢 1}
- [系統推論] {技術趨勢 2}

---

## 統計

| 指標 | 數值 |
|------|------|
| 實作項目數 | {N} |
| 必做項目 | {N} |
| 建議項目 | {N} |
| 來源分布 | NIST AI RMF: X, CSA: Y |
| REVIEW_NEEDED | {N} 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | ai_risk | {N} | {earliest_date} ~ {latest_date} |
| csa_cloud_security | ai_security | {N} | {earliest_date} ~ {latest_date} |
```

## 輸出位置

`docs/Narrator/ai_implementation_guide/{YYYY}-{MM}-ai-implementation-guide.md`

## 寫作規則

1. **實作導向** — 聚焦「怎麼做」而非「法規說什麼」，每個建議都要可執行
2. **具體明確** — 避免籠統建議如「應該考慮風險」，要說明具體步驟
3. **程式碼優先** — 能給程式碼/配置範例的就給，降低實作門檻
4. **框架映射** — 標註每個實作建議對應的框架條款，便於合規對照
5. **標註推測** — L5 Evolution Signals 中的趨勢判斷必須加上 `[系統推論]` 前綴
6. **中文為主** — 報告以繁體中文撰寫，技術名詞保留英文（如 Model Card、Bias Testing）
7. **工程限制** — 考慮實際工程限制，避免理想化建議

## 自我審核 Checklist

發布前必須逐項確認：

### 內容檢查
- [ ] 免責聲明存在且完整
- [ ] 報告資訊區塊存在（產出方式、審核狀態、資料來源、資料時間）
- [ ] 本月實作清單包含必做與建議項目
- [ ] 每個實作項目標註來源框架
- [ ] 框架映射表正確（AI RMF ↔ CSF ↔ ISO 42001）
- [ ] 實作步驟具體可執行
- [ ] 程式碼/配置範例語法正確
- [ ] 常見陷阱基於實際案例
- [ ] L5 Evolution Signals 的每一點都標註 `[系統推論]`
- [ ] 統計數字與實際資料一致
- [ ] 沒有過於籠統的建議

### SEO 檢查（參照 `core/Narrator/seo-integration.md`）
- [ ] `layout: report`
- [ ] `seo.title` 不超過 60 字且包含關鍵字
- [ ] `seo.description` 不超過 155 字
- [ ] `seo.keywords` 包含 5-8 個關鍵字
- [ ] `seo.related_articles` 包含至少 2 個相關報告 URL
- [ ] `seo.faq` 包含 3-5 個 Q&A
- [ ] 報告開頭有 `.key-takeaway`
- [ ] 有 `.key-answer`（含 `data-question`）
- [ ] 至少 1 個 `.actionable-steps`
- [ ] 框架映射使用 `.comparison-table`
