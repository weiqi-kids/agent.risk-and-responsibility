# 內容規格書總覽

> 制定日期：2026-02-19

---

## 規格書清單

| 頁面/項目 | 優先級 | 階段 | 狀態 |
|------|--------|------|------|
| S1：報告模板審核標記 | P0 | Phase 1 | 待執行 |
| S2：TBT 優化 | P0 | Phase 1 | 待執行 |
| S6：About 頁強化 | P1 | Phase 1 | 待執行 |
| S3：RSS Feed | P1 | Phase 2 | 待執行 |
| S4：首頁導航優化 | P1 | Phase 2 | 待執行 |
| S5：PDF 下載 | P1 | Phase 2 | 待執行 |

---

## 共用寫作指南

### 品牌語氣

| 維度 | 規格 | 範例 |
|------|------|------|
| 正式度 | 專業正式 | 使用「本報告」而非「這份報告」 |
| 專業度 | 保留專業術語 | NIST CSF、EU AI Act（不需解釋） |
| 情感 | 理性中立 | 避免「令人擔憂」「重大突破」等情緒詞 |
| 人稱 | 使用「本系統」「報告」 | 避免「我」「我們」 |

### 共用用語規範

| 使用 | 避免 |
|------|------|
| 本報告 | 這份報告 |
| 法規變動 | 法律改變 |
| enforcement_signal | 執行信號（保留英文欄位名） |
| 系統推論 | AI 猜測 |

---

## S1：報告模板審核標記

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | 所有 /docs/Narrator/*/*.html |
| 類型 | 修改現有模板 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 來源 | 策略計劃 S1 |

### 內容規格

#### 新增區塊：報告元資訊

**位置**：免責聲明下方、本期重點上方

**HTML 結構**：

```html
<div class="report-meta">
  <h3>報告資訊</h3>
  <table>
    <tr>
      <td>產出方式</td>
      <td>AI 自動產出（Claude Opus 4.5）</td>
    </tr>
    <tr>
      <td>審核狀態</td>
      <td><span class="badge badge-reviewed">已通過自動審核</span></td>
    </tr>
    <tr>
      <td>審核依據</td>
      <td>CLAUDE.md 自我審核 Checklist</td>
    </tr>
    <tr>
      <td>資料來源</td>
      <td>{N} 個權威來源（NIST、EUR-Lex、CISA 等）</td>
    </tr>
    <tr>
      <td>資料時間</td>
      <td>{date_range}</td>
    </tr>
  </table>
</div>
```

**樣式規格**：

| 元素 | 規格 |
|------|------|
| .report-meta | 背景色：淺灰 #f5f5f5、邊框：1px solid #ddd |
| .badge-reviewed | 背景色：綠色 #28a745、文字：白色 |
| 表格 | 無框線、列高 1.5em |

**文案規格**：

| 欄位 | 規格 |
|------|------|
| 審核狀態 | 固定文字：「已通過自動審核」 |
| 審核依據 | 固定文字：「CLAUDE.md 自我審核 Checklist」 |
| 資料來源 | 動態：從 JSONL 計算來源數量 |
| 資料時間 | 動態：顯示資料涵蓋的日期範圍 |

### 實作方式

修改 `core/Narrator/CLAUDE.md`，在報告模板中加入此區塊。

### 檢查清單

- [ ] 區塊位置正確（免責聲明下方）
- [ ] 表格顯示完整
- [ ] Badge 樣式正確
- [ ] 資料來源數量正確

---

## S2：TBT 優化

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | 全站 |
| 類型 | 技術優化 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 目標 | TBT < 200ms |

### 技術規格

#### 優化策略

1. **延遲載入非關鍵 JS**
   - Just the Docs 主題的搜尋功能延遲載入
   - mermaid.js（如有）延遲載入

2. **移除未使用 JS**
   - 檢查 _includes 目錄的 JS 引用
   - 移除不需要的功能

3. **CSS 優化**
   - 內聯關鍵 CSS
   - 延遲載入非關鍵 CSS

#### 實作方式

修改 `_includes/head_custom.html` 或對應檔案，加入：

```html
<script defer src="{{ '/assets/js/search.js' | relative_url }}"></script>
```

### 驗收標準

- [ ] Lighthouse TBT < 200ms
- [ ] Performance 分數 >= 90
- [ ] 頁面功能正常

---

## S6：About 頁強化

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | /about/ |
| 類型 | 優化 |
| 所屬階段 | Phase 1 |
| 優先級 | P1 |

### 內容規格

#### 新增區塊：為什麼選擇我們

**位置**：現有內容下方

**內容大綱**：

```markdown
## 為什麼選擇 Risk & Responsibility Intelligence

### 開源透明

本專案完全開源，所有原始碼公開於 GitHub。
您可以檢視資料萃取邏輯、報告產出流程，確保資訊的可追溯性。

[![GitHub](badge-url)](repo-url)

### 獨特的責任追蹤分類

我們提供競品未見的「責任變動追蹤」功能：

| 欄位 | 說明 |
|------|------|
| shift_type | 責任轉移類型（擴大、縮小、新增） |
| affected_roles | 受影響的角色清單 |
| shift_summary | 變動摘要 |

### 多法規整合

一站式追蹤跨框架法規變動：

- NIST（CSF、SP 800 系列）
- EU（AI Act、DORA）
- ISO（27001、27701）
- CISA 警報
```

**文案規格**：

| 元素 | 規格 |
|------|------|
| 標題 | H2：為什麼選擇 Risk & Responsibility Intelligence |
| 小標題 | H3：開源透明、獨特的責任追蹤分類、多法規整合 |
| 段落長度 | 每段 2-3 句 |
| GitHub Badge | 使用 shields.io 產生 |

### 檢查清單

- [ ] 三個小標題區塊都已加入
- [ ] GitHub Badge 連結正確
- [ ] 表格顯示正確
- [ ] 法規清單完整

---

## S3：RSS Feed

### 基本資訊

| 項目 | 規格 |
|------|------|
| 類型 | 新增功能 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |

### 技術規格

**使用 Jekyll 插件**：jekyll-feed

**_config.yml 設定**：

```yaml
plugins:
  - jekyll-feed

feed:
  path: feed.xml
  posts_limit: 20
```

**輸出位置**：/feed.xml

**RSS 內容**：

| 欄位 | 來源 |
|------|------|
| title | 報告標題 |
| link | 報告 URL |
| pubDate | 報告日期 |
| description | Key Takeaway 內容 |

### 檢查清單

- [ ] feed.xml 可正常存取
- [ ] RSS Reader 可正常訂閱
- [ ] 內容包含最新 20 篇報告

---

## S4：首頁導航優化

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | / |
| 類型 | 修改 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |

### 內容規格

**修改區塊**：快速導覽表格

**現況**：

| 對象 | 推薦報告 |
|------|---------|
| 企業決策者 | Executive Summary（長 URL） |

**改版後**：

| 對象 | 推薦報告 | 最新一期 |
|------|---------|----------|
| 企業決策者 | [Executive Summary](/docs/Narrator/executive_summary/) | [本週報告](最新 URL) |

**新增元素**：

- RSS 訂閱按鈕（連結到 /feed.xml）
- 「最新一期」欄位直接連到最新報告

### 檢查清單

- [ ] 表格新增「最新一期」欄位
- [ ] 所有連結可正常運作
- [ ] RSS 訂閱按鈕顯示

---

## S5：PDF 下載

### 基本資訊

| 項目 | 規格 |
|------|------|
| 類型 | 新增功能 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |

### 技術規格

**Phase 2 實作方式（手動）**：

1. 每週手動將 Executive Summary 轉為 PDF
2. 上傳至 /assets/pdf/ 目錄
3. 在報告頁加入下載連結

**報告頁新增元素**：

```html
<a href="/assets/pdf/2026-W08-executive-summary.pdf" class="btn btn-download">
  下載 PDF 版本
</a>
```

**未來自動化方向**：

- 使用 Puppeteer 自動產生 PDF
- 整合至 GitHub Actions

### 檢查清單

- [ ] 至少一份報告有 PDF 下載
- [ ] 下載連結可正常運作
- [ ] PDF 格式正確、可閱讀
