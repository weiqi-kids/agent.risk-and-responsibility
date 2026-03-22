# 內容規格書總覽

> 制定日期：2026-03-22（更新版，前版 2026-02-19）

---

## 規格書清單

| 頁面/項目 | 優先級 | 階段 | 狀態 | 來源 |
|------|--------|------|------|------|
| S1：審核者標記 + 方法論頁面 | P0 | Phase 1 | 待執行 | 策略 S1 |
| S2：TBT 最後 10ms 優化 | P0 | Phase 1 | 待執行 | 策略 S2 |
| S3：Mode 產出管線修復 | P0 | Phase 1 | 待執行 | 策略 S3 |
| S4：eu_regulations 資料源修復 | P0 | Phase 1 | 待執行 | 策略 S4 |
| S5：REVIEW_NEEDED 批次清理 | P0 | Phase 1 | 待執行 | 策略 S5 |
| S6：RSS/Atom Feed | P1 | Phase 2 | 待執行 | 策略 S6 |
| S7：報告加入合規時程 | P1 | Phase 2 | 待執行 | 策略 S7 |
| S8：首頁導航優化 + 訂閱入口 | P1 | Phase 2 | 待執行 | 策略 S8 |
| S9：About 頁 E-E-A-T 強化 | P1 | Phase 2 | 待執行 | 策略 S9 |
| S10：跨框架比較表頁面 | P1 | Phase 3 | 待執行 | 策略 S10 |
| S11：iso_standards 分類細化 | P2 | Phase 3 | 待執行 | 策略 S11 |
| S12：eu_regulations 低關聯性內容降權 | P2 | Phase 3 | 待執行 | 策略 S12 |
| S13：責任追蹤專題頁面 | P2 | Phase 3 | 待執行 | 策略 S13 |
| S14：動態目錄（Sticky TOC） | P2 | Phase 3 | 待執行 | 策略 S14 |

---

## 共用寫作指南

### 品牌語氣

| 維度 | 規格 | 範例 |
|------|------|------|
| 正式度 | 專業正式 | 使用「本報告」而非「這份報告」 |
| 專業度 | 保留專業術語 | NIST CSF、EU AI Act、DORA（不需解釋基礎概念） |
| 情感 | 理性中立 | 避免「令人擔憂」「重大突破」等情緒詞 |
| 人稱 | 使用「本系統」「報告」 | 避免「我」「我們」 |
| 不確定性 | 明確標註 | 推論標註 `[系統推論]`，未審核標註 `[REVIEW_NEEDED]` |

### 共用用語規範

| 使用 | 避免 |
|------|------|
| 本報告 | 這份報告 |
| 法規變動 | 法律改變 |
| enforcement_signal | 執行信號（保留英文欄位名） |
| 系統推論 | AI 猜測 |
| 合規期限 | 截止日期 |
| 責任歸屬 | 責任分配 |
| 結構化萃取 | AI 抓取 |
| 權威來源 | 官方來源（部分非官方但仍具權威性） |

### 共用格式規範

| 項目 | 規格 |
|------|------|
| 段落長度 | 最多 4 行 |
| 句子長度 | 最多 40 字（中文）/ 25 words（英文） |
| 列表使用 | 超過 3 項時使用列表 |
| 強調方式 | 粗體用於關鍵詞、欄位名用 `code` 標記 |
| 日期格式 | YYYY-MM-DD（ISO 8601） |
| 週期格式 | YYYY-WXX（如 2026-W12） |

---

## S1：審核者標記 + 方法論頁面

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | (1) 所有 /docs/Narrator/*/*.html 報告頁面 (2) 新增 /methodology/ 頁面 |
| 類型 | 修改現有模板 + 新增頁面 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 來源 | 策略 S1、差距分析 G1 |

---

### S1-A：報告元資訊區塊（模板修改）

#### 1. 目標

##### 主要目標
提升 AI 產出報告的可信度，滿足 YMYL 類內容的 E-E-A-T 要求。

##### 次要目標
1. 讓使用者快速了解報告的產出和審核流程
2. 提供資料來源的可追溯性
3. 與方法論頁面形成交叉連結

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| 審核標記覆蓋率 | 100%（新產出報告） | 檢查所有 Narrator 報告 |
| 方法論連結有效 | 所有連結可達 | 自動連結檢查 |

#### 2. 目標受眾

##### 主要受眾

| 項目 | 說明 |
|------|------|
| 是誰 | 對 AI 產出持懷疑態度的 CISO 和法遵主管 |
| 來這頁的目的 | 閱讀週報，需要判斷可信度 |
| 進入方式 | 首頁導航 → Mode 報告、搜尋引擎直達 |
| 下一步期望 | 確認來源可靠後引用或轉發 |

##### 次要受眾

| 項目 | 說明 |
|------|------|
| 是誰 | Google 品質評估者 |
| 來這頁的目的 | 評估 YMYL 類內容品質 |

#### 3. 關鍵訊息

| 順序 | 訊息 | 呈現方式 |
|------|------|----------|
| 1 | 報告由 AI 產出，但經過規範化的自動審核流程 | 表格中「審核狀態」欄位 |
| 2 | 資料來自多個權威來源，非單一來源 | 表格中「資料來源」欄位 |
| 3 | 完整方法論公開透明可審計 | 「檢視方法論」連結 |

#### 4. 內容結構

##### 頁面區塊規劃

```
┌─────────────────────────────────────┐
│ 報告元資訊（新增）                     │
│ - 產出方式、審核狀態、資料來源、方法論連結 │
├─────────────────────────────────────┤
│ 免責聲明（現有）                       │
├─────────────────────────────────────┤
│ 報告內容（現有）                       │
└─────────────────────────────────────┘
```

**位置**：報告頁面最上方，免責聲明上方。

##### 區塊詳細規格

###### 區塊：報告元資訊

| 項目 | 規格 |
|------|------|
| 目的 | 建立報告可信度，滿足 E-E-A-T |
| 位置 | 頁面頂部（免責聲明上方） |
| 內容類型 | 結構化表格 |

**HTML 結構**：

```html
<div class="report-meta">
  <h3>報告資訊</h3>
  <table>
    <tr>
      <td>產出方式</td>
      <td>AI 自動產出（Claude Opus）+ 規範化自動審核</td>
    </tr>
    <tr>
      <td>審核狀態</td>
      <td><span class="badge badge-reviewed">已通過自動審核</span></td>
    </tr>
    <tr>
      <td>審核依據</td>
      <td>CLAUDE.md 自我審核 Checklist（<a href="/methodology/">檢視完整方法論 →</a>）</td>
    </tr>
    <tr>
      <td>資料來源</td>
      <td>{N} 個權威來源（NIST、EUR-Lex、CISA 等）</td>
    </tr>
    <tr>
      <td>資料時間</td>
      <td>{YYYY-WXX}（{YYYY-MM-DD} ~ {YYYY-MM-DD}）</td>
    </tr>
  </table>
</div>
```

**內容規格**：

| 元素 | 規格 | 範例/說明 |
|------|------|-----------|
| 產出方式 | 固定文字 | 「AI 自動產出（Claude Opus）+ 規範化自動審核」 |
| 審核狀態 | 動態 badge | 已通過：綠色 badge / REVIEW_NEEDED：橘色 badge |
| 審核依據 | 固定文字 + 連結 | 連結至 /methodology/ |
| 資料來源 | 動態計算 | 從 Qdrant 查詢結果統計不重複來源數 |
| 資料時間 | 動態 | 報告涵蓋的週期和日期範圍 |

**樣式規格**：

| 元素 | 規格 |
|------|------|
| `.report-meta` | 背景色 `#f5f5f5`、邊框 `1px solid #ddd`、圓角 `4px`、padding `16px`、margin-bottom `24px` |
| `.badge-reviewed` | 背景色 `#28a745`、文字白色、border-radius `4px`、padding `2px 8px`、font-size `0.875em` |
| `.badge-review-needed` | 背景色 `#fd7e14`、文字白色、同上尺寸 |
| 表格 | 無框線、列高 `1.8em`、第一欄寬度 `120px`、字色 `#666` |

**文案方向**：

- 語氣：客觀、透明——「這就是我們的做法，你可以檢視」
- 避免：行銷式的信任語言（不說「值得信賴」「業界領先」）
- 關鍵字：開源、可審計、結構化審核

#### 5. 實作方式

修改 `core/Narrator/CLAUDE.md` 報告模板，在免責聲明區塊上方加入報告元資訊區塊。各 Mode 的報告產出邏輯需動態填入資料來源數量和資料時間。

#### 6. 檢查清單

- [ ] 區塊位置正確（免責聲明上方）
- [ ] 表格 6 個欄位都有內容
- [ ] Badge 樣式正確（已審核綠色、REVIEW_NEEDED 橘色）
- [ ] 方法論連結 `/methodology/` 可正常到達
- [ ] 資料來源數量與實際 Qdrant 查詢結果一致
- [ ] 資料時間範圍正確

---

### S1-B：方法論說明頁面（新增）

#### 1. 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | /methodology/ |
| 頁面類型 | 靜態說明頁 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |

#### 2. 頁面目標

##### 主要目標
建立系統可信度，滿足 E-E-A-T 中的 Expertise 和 Trustworthiness。

##### 次要目標
1. 向懷疑者展示「AI 產出 ≠ 不可靠」的論據
2. 提供 GitHub 連結讓技術受眾可自行驗證
3. 搶佔「compliance intelligence methodology」SEO 長尾關鍵字

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| 頁面完成率 | 50%+ 到頁底 | GA 滾動追蹤 |
| GitHub 點擊率 | 5%+ 訪客點擊 | GA 事件追蹤 |
| 從報告元資訊的到訪 | 追蹤有多少從報告頁跳轉 | GA 來源頁分析 |

#### 3. 目標受眾

##### 主要受眾

| 項目 | 說明 |
|------|------|
| 是誰 | 對 AI 產出持懷疑態度的專業人員、Google 品質評估者 |
| 來這頁的目的 | 驗證系統可信度 |
| 進入方式 | 報告頁「檢視方法論 →」連結、About 頁面、搜尋引擎 |
| 下一步期望 | 確信後回到報告頁繼續閱讀，或到 GitHub 檢視原始碼 |

#### 4. 關鍵訊息

| 順序 | 訊息 | 呈現方式 |
|------|------|----------|
| 1 | 四層結構化萃取邏輯（L1-L4）完全公開 | 流程圖 + 各層說明 |
| 2 | 萃取規則可在 GitHub 上檢視和審計 | 連結至 GitHub repo |
| 3 | 品質控制機制多重把關 | 三級審核流程說明 |

#### 5. 內容結構

##### 頁面區塊規劃

```
┌─────────────────────────────────────┐
│ Hero：系統概述                        │
├─────────────────────────────────────┤
│ 資料來源：7 大權威來源                  │
├─────────────────────────────────────┤
│ 四層萃取邏輯（L1-L4）                  │
├─────────────────────────────────────┤
│ 品質控制機制                          │
├─────────────────────────────────────┤
│ 局限性與免責聲明                       │
├─────────────────────────────────────┤
│ 開源透明 + CTA                       │
└─────────────────────────────────────┘
```

##### 各區塊詳細規格

###### 區塊 1：系統概述

| 項目 | 規格 |
|------|------|
| 目的 | 讓使用者理解系統全貌 |
| 位置 | 頁面頂部 |
| 內容類型 | 文字 + 架構圖 |

**內容規格**：

| 元素 | 規格 | 範例/說明 |
|------|------|-----------|
| H1 | 最多 60 字元 | 「How It Works: Methodology」 |
| 副標題 | 最多 100 字 | 說明此頁面目的 |
| 架構圖 | Mermaid 或 ASCII 流程圖 | Extractor（7 Layer）→ Qdrant → Narrator（7 Mode）→ Reports |
| 內文 | 2-3 段，每段 3 句 | 系統定位、運作概述 |

**文案方向**：

```markdown
## How It Works

Risk & Responsibility Intelligence 是一套開源自動化合規情報系統。
本系統每週從 7 個權威來源擷取公開法規與框架資訊，
經過四層結構化萃取後，產出 7 份主題式分析報告。

以下說明完整的資料處理流程——所有邏輯皆公開於 GitHub，可自行檢視和審計。
```

###### 區塊 2：資料來源

| 項目 | 規格 |
|------|------|
| 目的 | 展示資料的權威性 |
| 位置 | 系統概述下方 |
| 內容類型 | 表格 |

**內容規格**：

| 元素 | 規格 | 範例/說明 |
|------|------|-----------|
| H2 | 固定文字 | 「資料來源」 |
| 來源表格 | 7 列 × 5 欄 | 來源名、機構、涵蓋範圍、更新頻率、文件數 |

**表格結構**：

```markdown
| Layer | 來源機構 | 涵蓋範圍 | 更新頻率 | 文件數量 |
|-------|----------|----------|----------|----------|
| nist_frameworks | NIST (美國) | CSF 2.0, SP 800 系列, AI RMF | 每週 | {N} 份 |
| eu_regulations | EUR-Lex (歐盟) | AI Act, DORA, NIS2 | 每週 | {N} 份 |
| cisa_alerts | CISA (美國) | 資安警報、ICS 公告 | 每週 | {N} 份 |
| iso_standards | ISO | 27001, 27701, 42001 | 每月 | {N} 份 |
| sans_isc | SANS ISC | 資安威脅分析 | 每週 | {N} 份 |
| csa_research | CSA | 雲端安全研究報告 | 每月 | {N} 份 |
| ai_frameworks | 多來源 | AI 治理框架 | 每月 | {N} 份 |
```

**文案方向**：

- 語氣：數據驅動——列出具體數字而非模糊描述
- 每個來源附上官方連結
- 說明選擇標準：權威性、公開性、持續更新、機器可讀

###### 區塊 3：四層萃取邏輯

| 項目 | 規格 |
|------|------|
| 目的 | 展示結構化程度和專業性 |
| 位置 | 資料來源下方 |
| 內容類型 | 流程圖 + 各層詳細說明 + 實例 |

**內容規格**：

| 元素 | 規格 | 範例/說明 |
|------|------|-----------|
| H2 | 固定文字 | 「四層結構化萃取」 |
| 流程圖 | Mermaid flowchart | L1 → L2 → L3 → L4 線性流程 |
| 各層說明 | H3 × 4 | 每層包含：定義、萃取欄位表格、實例 |

**各層內容要點**：

| 層級 | 名稱 | 說明 | 關鍵欄位 |
|------|------|------|----------|
| L1 | Rule Signal | 從原始來源識別法規/框架變動信號 | `rule_change_type`, `enforcement_signal`, `confidence` |
| L2 | Responsibility | 分析責任歸屬的變化 | `shift_type`, `affected_roles`, `shift_summary` |
| L3 | Risk Model | 評估風險模型影響 | `risk_category`, `impact_level`, `mitigation` |
| L4 | Obligation | 萃取具體義務和時程 | `obligation_type`, `deadline`, `applicable_scope` |

每層提供 1 個完整實例，展示從原始文字到結構化輸出的轉換過程。

###### 區塊 4：品質控制機制

| 項目 | 規格 |
|------|------|
| 目的 | 建立品質信任 |
| 位置 | 萃取邏輯下方 |
| 內容類型 | 三級審核流程圖 + 說明 |

**內容規格**：

| 元素 | 規格 | 範例/說明 |
|------|------|-----------|
| H2 | 固定文字 | 「品質控制機制」 |
| 三級審核 | 表格或流程圖 | Level 1 自動審核 → Level 2 REVIEW_NEEDED 標記 → Level 3 人工抽樣 |
| 觸發條件 | 列表 | REVIEW_NEEDED 的具體觸發條件（confidence < 0.7、關鍵欄位缺失等） |

**文案方向**：

```markdown
### Level 1：規範化自動審核

每份報告產出後，依據 CLAUDE.md 定義的自我審核 Checklist 逐項檢查：
- 所有必要欄位已填寫
- 來源 URL 可追溯
- confidence 分數在合理範圍
- 無「專業外觀」但無法驗證的聲明

### Level 2：REVIEW_NEEDED 標記

當自動審核發現以下情形，報告會被標記 [REVIEW_NEEDED]：
- confidence < 0.7 的關鍵判斷
- 原始來源無法確認
- 跨領域推論（超出單一框架範圍）

### Level 3：人工抽樣審核

標記為 REVIEW_NEEDED 的報告由維護者逐一審核；
所有報告每月進行隨機抽樣檢查。
```

###### 區塊 5：局限性與免責聲明

| 項目 | 規格 |
|------|------|
| 目的 | 誠實揭露提升可信度 |
| 位置 | 品質控制下方 |
| 內容類型 | 列表 |

**內容要點**：

- AI 系統可能產生不準確的萃取結果
- 不構成法律建議或合規認證
- 建議搭配人工專家判斷使用
- 不處理機密或付費資料源
- 更新頻率為週報/月報，非即時警報

###### 區塊 6：開源透明

| 項目 | 規格 |
|------|------|
| 目的 | 差異化——「唯一可審計的合規情報來源」 |
| 位置 | 頁面底部 |
| 內容類型 | 文字 + CTA |

**內容規格**：

| 元素 | 規格 | 範例/說明 |
|------|------|-----------|
| H2 | 固定文字 | 「開源透明」 |
| 內文 | 2 段 | 說明如何檢視和貢獻 |
| GitHub Badge | shields.io | ![GitHub](https://img.shields.io/github/stars/...) |
| 主要 CTA | 按鈕 | 「在 GitHub 上檢視完整原始碼 →」 |

#### 6. SEO 規格

| 項目 | 規格 | 字數限制 |
|------|------|----------|
| Title | How It Works: Methodology &#x7c; Risk & Responsibility Intelligence | 50-60 字元 |
| Meta Description | Learn how our open-source system extracts and structures compliance intelligence from 7 authoritative sources using a 4-layer extraction framework. Fully auditable on GitHub. | 150-160 字元 |
| H1 | How It Works: Methodology | — |
| 目標關鍵字 | 主要：compliance intelligence methodology / 次要：structured extraction framework, AI compliance automation, open source compliance | — |
| URL Slug | /methodology/ | — |

#### 7. 結構化資料 (Schema)

```json
{
  "@context": "https://schema.org",
  "@type": "TechArticle",
  "name": "How It Works: Methodology",
  "description": "Open-source methodology for structured extraction of compliance intelligence from 7 authoritative sources",
  "author": {
    "@type": "Organization",
    "name": "Risk & Responsibility Intelligence"
  },
  "isPartOf": {
    "@type": "WebSite",
    "name": "Risk & Responsibility Intelligence"
  }
}
```

#### 8. 檢查清單

- [ ] 6 個區塊都已完成
- [ ] 架構圖正確呈現
- [ ] L1-L4 各層都有實例
- [ ] GitHub 連結正確
- [ ] SEO title 和 meta description 符合字數限制
- [ ] 結構化資料已加入
- [ ] 報告頁面的「檢視方法論 →」連結可正常到達

---

## S2：TBT 最後 10ms 優化

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | 全站 |
| 類型 | 技術優化 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 目標 | TBT 從 210ms 降至 < 200ms |
| 來源 | 策略 S2、Discovery 健檢 |

### 技術規格

#### 診斷步驟

1. 執行 Lighthouse 取得 TBT 細項分解
2. 識別 Long Tasks（> 50ms 的 JS 執行）
3. 按 blocking time 排序，找出最大貢獻者

#### 優化策略（按優先級）

##### 策略 A：延遲載入 lunr.js 搜尋索引

| 項目 | 規格 |
|------|------|
| 問題 | Just the Docs 預設在頁面載入時建立搜尋索引，851+ 文件的索引可能是最大 TBT 貢獻者 |
| 行動 | 將搜尋相關 JS 改為 `defer` 或 `async` 載入 |
| 實作位置 | `_includes/head_custom.html` |
| 預期效果 | TBT 減少 20-50ms |

```html
<!-- 修改前 -->
<script src="{{ '/assets/js/search-data.json' | relative_url }}"></script>

<!-- 修改後 -->
<script defer src="{{ '/assets/js/search-data.json' | relative_url }}"></script>
```

##### 策略 B：評估替換為 Pagefind

| 項目 | 規格 |
|------|------|
| 問題 | lunr.js 在客戶端建立索引，文件數越多 TBT 越高 |
| 行動 | 評估 Pagefind（靜態搜尋方案，build time 建立索引，客戶端零 JS bundle 開銷） |
| 評估重點 | GitHub Pages 相容性、build step 整合、搜尋品質 |
| 預期效果 | TBT 可能減少 50-100ms |

##### 策略 C：移除非必要 JS

| 項目 | 規格 |
|------|------|
| 行動 | 檢查 `_includes/` 目錄，移除未使用的 JS 引用 |
| 檢查清單 | Mermaid.js（若未使用）、Google Analytics（若未設定）、其他第三方腳本 |
| 預期效果 | TBT 減少 10-30ms |

### 驗收標準

| 指標 | 目標 | 測量工具 |
|------|------|----------|
| TBT | < 200ms | Lighthouse CLI（本地） |
| Performance 分數 | >= 97 | Lighthouse CLI |
| 搜尋功能 | 正常運作 | 手動測試 |
| 首次載入時間 | 不退化 | Lighthouse FCP、LCP |

### 檢查清單

- [ ] Lighthouse 診斷報告已取得
- [ ] 至少執行一個優化策略
- [ ] TBT < 200ms
- [ ] Performance >= 97
- [ ] 所有頁面功能正常（搜尋、導航、深色模式）

---

## S3：Mode 產出管線修復

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | ai_governance_landscape、ai_implementation_guide 兩個 Mode |
| 類型 | 流程修復 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 目標 | 7/7 Mode 可正常執行並穩定產出 |
| 來源 | 策略 S3、差距分析 G2 |

### 問題診斷

| 問題 | 影響 | 根因假設 |
|------|------|----------|
| ai_governance_landscape 缺少 W10-W12 週報 | 定位文件承諾「7 份報告」未兌現 | Qdrant 查詢關鍵字可能不精確，或萃取資料不足 |
| ai_implementation_guide 缺少 W10-W12 週報 | 同上 | 同上或 Mode CLAUDE.md 搜尋關鍵字範圍太窄 |
| W10-W11 全部 Mode 中斷 | 連續兩週無產出 | 可能是系統層級問題（Qdrant 連線、API 配額等） |

### 修復步驟

| 步驟 | 行動 | 驗證方式 |
|------|------|----------|
| 1 | 確認 Qdrant 連線正常，collection 存在且有資料 | `qdrant_search` 測試查詢 |
| 2 | 檢查 ai_governance_landscape CLAUDE.md 搜尋關鍵字 | 比對查詢結果是否含相關文件 |
| 3 | 檢查 ai_implementation_guide CLAUDE.md 搜尋關鍵字 | 同上 |
| 4 | 執行一次完整流程，觀察 7/7 Mode 是否都能產出 | 報告輸出至 docs/Narrator/ |
| 5 | 建立監控——執行後確認每個 Mode 都有最新報告 | 自動化腳本或手動檢查 |

### 驗收標準

- [ ] 7/7 Mode 可成功執行完整流程
- [ ] ai_governance_landscape 產出品質不觸發 REVIEW_NEEDED
- [ ] ai_implementation_guide 產出品質不觸發 REVIEW_NEEDED
- [ ] 連續 2 次執行成功

---

## S4：eu_regulations 資料源修復

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | eu_regulations Layer（佔總文件數 44%，375 份） |
| 類型 | 資料源修復 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 目標 | EUR-Lex 資料源恢復正常擷取 |
| 來源 | 策略 S4、差距分析 G8 |

### 問題診斷

| 問題 | 現象 | 自 |
|------|------|-----|
| EUR-Lex RSS Feed 無新資料 | fetch.sh 執行成功但 JSONL 無新條目 | W09（2026-02-24） |

### 修復步驟

| 步驟 | 行動 | 備援方案 |
|------|------|----------|
| 1 | 檢查 EUR-Lex RSS URL 是否仍有效 | 嘗試不同 RSS endpoint |
| 2 | 檢查 RSS 回傳內容格式是否變更 | 更新 fetch.sh 解析邏輯 |
| 3 | 測試 CELLAR/SPARQL API 作為替代 | 修改 fetch.sh 使用 API |
| 4 | 測試 EUR-Lex OJ 直接抓取 | 建立新的抓取腳本 |

### 技術規格

**fetch.sh 修復或替代方案需滿足**：

| 項目 | 規格 |
|------|------|
| 輸出格式 | JSONL（與現有格式相容） |
| 必要欄位 | `title`, `url`, `date`, `description`, `source` |
| URL 格式 | 正規化為 `/EN/TXT` 格式（避免 `/AUTO` 重導向問題） |
| 過濾條件 | 排除純程序性文件（如排程公告），保留法規/決議/指令 |

### 驗收標準

- [ ] fetch.sh 可取得新資料（JSONL 有新條目）
- [ ] 新資料的 source_url 可正常存取
- [ ] 萃取流程可正常處理新資料
- [ ] 連續 2 週可穩定擷取

---

## S5：REVIEW_NEEDED 批次清理

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | 45 份文件（Extractor 15 份 + Narrator 30 份） |
| 類型 | 品質清理 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |
| 目標 | REVIEW_NEEDED 文件數 < 10 |
| 來源 | 策略 S5、差距分析 G9 |

### 清理流程

| 步驟 | 行動 | 處理方式 |
|------|------|----------|
| 1 | 列出所有含 `[REVIEW_NEEDED]` 的文件 | `grep -rl "REVIEW_NEEDED" docs/` |
| 2 | 分類：Extractor vs Narrator | 依目錄分組 |
| 3 | Extractor 文件逐一審核 | (a) 低關聯性（制裁決議）→ 確認後移除標記或歸檔；(b) 品質問題 → 修正內容後移除標記 |
| 4 | Narrator 文件逐一審核 | (a) 查明標記原因（資料不足/查詢不精確）；(b) 修正後重新產出或手動修正 |
| 5 | ai_governance_landscape 報告特別處理 | 所有報告都標記——需從根本修正查詢邏輯或品質判定標準 |

### 處理規則

| 情形 | 處理方式 |
|------|----------|
| 內容正確，標記過度保守 | 移除 `[REVIEW_NEEDED]` 標記 |
| 內容有小瑕疵但可修正 | 修正後移除標記 |
| 內容品質不足需重新產出 | 重新執行萃取或報告產出 |
| 低關聯性制裁決議（eu_regulations） | 歸檔或降低 Qdrant 權重 |

### 驗收標準

- [ ] REVIEW_NEEDED 文件數 < 10
- [ ] 清理後的文件內容品質通過自我審核 Checklist
- [ ] ai_governance_landscape 新產出的報告不再全部標記
- [ ] 已建立清理紀錄（哪些文件被修正/歸檔）

---

## S6：RSS/Atom Feed

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | /feed.xml |
| 類型 | 新增功能 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |
| 來源 | 策略 S6、差距分析 G5 |

### 1. 頁面目標

##### 主要目標
提供機器可讀的訂閱格式，降低使用者回訪摩擦。

##### 次要目標
1. 建立使用者留存機制
2. 與首頁訂閱入口（S8）串接
3. 符合所有權威來源（NIST、EUR-Lex）都提供 RSS 的業界慣例

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| Feed 可用性 | /feed.xml 回傳有效 Atom XML | RSS 驗證工具 |
| Feed 內容數 | 最新 20 篇報告 | 手動確認 |
| RSS 閱讀器訂閱 | 可正常訂閱 | Feedly/Inoreader 測試 |

### 2. 技術規格

#### _config.yml 設定

```yaml
plugins:
  - jekyll-feed

feed:
  path: feed.xml
  posts_limit: 20
```

#### HTML Head 標記

在 `_includes/head_custom.html` 加入：

```html
<link rel="alternate" type="application/atom+xml" title="Risk & Responsibility Intelligence Feed" href="{{ '/feed.xml' | absolute_url }}">
```

#### Feed 內容規格

| 欄位 | 來源 | 說明 |
|------|------|------|
| title | 報告標題（front matter `title`） | 如「W12 Rule Change Brief」 |
| link | 報告完整 URL | 絕對路徑 |
| published | 報告日期（front matter `date`） | ISO 8601 格式 |
| summary | `.key-takeaway` 區塊內容 | 報告開頭摘要 |
| author | 固定值 | Risk & Responsibility Intelligence |

#### 確認事項

| 項目 | 確認內容 |
|------|----------|
| GitHub Pages 相容性 | `jekyll-feed` 在 GitHub Pages 白名單中（已確認） |
| 報告格式 | Narrator 報告需設定為 Jekyll posts 或 pages with date |
| 排除頁面 | Extractor 文件不納入 feed，僅 Narrator 報告 |

### 3. 檢查清單

- [ ] `_config.yml` 已加入 jekyll-feed 設定
- [ ] `head_custom.html` 已加入 `<link rel="alternate">` 標記
- [ ] /feed.xml 可正常存取並回傳有效 Atom XML
- [ ] Feed 包含最新 20 篇 Narrator 報告
- [ ] RSS 閱讀器（Feedly 或 Inoreader）可正常訂閱
- [ ] Extractor 文件未被納入 Feed

---

## S7：報告加入合規時程

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | 所有 Narrator 報告（7 個 Mode） |
| 類型 | 修改模板 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |
| 來源 | 策略 S7、差距分析 G4 |

### 1. 目標

##### 主要目標
讓報告從「知道發生什麼」提升至「知道該做什麼、什麼時候做」。

##### 次要目標
1. 滿足法遵主管對合規期限追蹤的核心需求
2. 提升報告的可行動性，增加實用價值
3. 強化與商業競品的差異化（免費提供行動建議）

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| 合規時程區塊覆蓋率 | >= 3 個 Mode 的報告 | 檢查報告結構 |
| 行動項目具體度 | 每項含 who/what/when | 人工審核 |

### 2. 內容結構

#### 新增區塊：行動時程

**位置**：Key Takeaway 區塊下方、詳細分析上方

**結構**：

```markdown
## 行動時程 {.key-answer data-question="本週需要採取什麼行動？"}

### 即時關注（本週）
| 項目 | 行動 | 負責角色 | 來源 |
|------|------|----------|------|
| {變動標題} | {具體行動步驟} | {CISO/法遵/IT} | [{來源}](url) |

### 近期期限（30 天內）
| 項目 | 期限 | 行動 | 負責角色 |
|------|------|------|----------|
| {合規要求} | {YYYY-MM-DD} | {具體步驟} | {角色} |

### 中期規劃（90 天內）
| 項目 | 期限 | 行動 | 負責角色 |
|------|------|------|----------|
| {合規要求} | {YYYY-MM-DD} | {具體步驟} | {角色} |
```

#### 萃取邏輯更新

需在各 Mode CLAUDE.md 的搜尋邏輯和報告模板中加入：

| 新增欄位 | 來源 | 說明 |
|----------|------|------|
| `effective_date` | L4 Obligation 層 | 法規生效日 |
| `compliance_deadline` | L4 Obligation 層 | 合規截止日 |
| `transition_period` | L4 Obligation 層 | 過渡期長度 |
| `action_required` | 報告產出推論 | 建議行動（標註 `[系統推論]`） |

### 3. 文案方向

- 語氣：務實、直接——列出「誰、做什麼、何時完成」
- 避免：模糊的建議（如「應密切關注」→ 改為「IT 團隊應在 30 天內完成 X 控制措施的評估」）
- 不確定性：若期限為推論，標註 `[系統推論：基於過渡期推算]`

### 4. 檢查清單

- [ ] 行動時程區塊已加入報告模板
- [ ] 至少 3 個 Mode 的最新報告含行動時程
- [ ] 每個行動項都有 who/what/when
- [ ] 推論性期限已標註 `[系統推論]`
- [ ] 行動時程區塊有 `.key-answer` 標記

---

## S8：首頁導航優化 + 訂閱入口

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | / (index.md) |
| 類型 | 修改 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |
| 來源 | 策略 S8、差距分析 G6 |

### 1. 頁面目標

##### 主要目標
快速引導使用者找到所需報告，建立訂閱習慣。

##### 次要目標
1. 降低找到特定報告的時間成本
2. 整合 RSS 訂閱入口
3. 展示系統活躍度（最新更新時間）

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| 報告頁到達率 | 首頁訪客 > 60% 進入報告頁 | GA 事件追蹤 |
| RSS 訂閱按鈕點擊 | 追蹤點擊數 | GA 事件追蹤 |

### 2. 內容結構

#### 修改區塊：快速導覽表格

**現況**：

```markdown
| 對象 | 推薦報告 |
|------|---------|
| 企業決策者 | Executive Summary（長 URL 文字） |
```

**改版後**：

```markdown
| 對象 | 推薦報告 | 最新一期 |
|------|---------|----------|
| 企業決策者 | [Executive Summary](/docs/Narrator/executive_summary/) | [W12 報告](最新URL) |
| 資安主管 | [Rule Change Brief](/docs/Narrator/rule_change_brief/) | [W12 報告](最新URL) |
| AI 團隊 | [AI Governance Landscape](/docs/Narrator/ai_governance_landscape/) | [W12 報告](最新URL) |
| 法遵人員 | [Cybersecurity Compliance](/docs/Narrator/cybersecurity_compliance/) | [W12 報告](最新URL) |
| 供應鏈管理 | [Supply Chain Security](/docs/Narrator/supply_chain_security/) | [W12 報告](最新URL) |
| 基礎設施 | [Critical Infrastructure](/docs/Narrator/critical_infrastructure_resilience/) | [W12 報告](最新URL) |
```

**規格**：

| 元素 | 規格 |
|------|------|
| 表格 | 3 欄：對象、推薦報告、最新一期 |
| 連結文字 | 精簡——Mode 名稱即可 |
| 最新一期 | 動態指向最新報告（每次更新時手動或腳本更新） |

#### 新增區塊：訂閱入口

**位置**：快速導覽表格下方

**內容規格**：

```markdown
---

📡 **訂閱更新**

每週一早上，15 分鐘掌握全球合規動態。

[訂閱 RSS Feed](/feed.xml){: .btn .btn-primary }
```

**規格**：

| 元素 | 規格 |
|------|------|
| 標題 | 「訂閱更新」 |
| 描述 | 一句話說明價值主張（20 字內） |
| CTA | 按鈕樣式，連結 /feed.xml |
| 位置 | 快速導覽表格下方、分隔線後 |

#### 新增區塊：本週重點（選用）

**位置**：訂閱入口下方

**來源**：從 Executive Summary 的 Top 3 摘要自動抽取

**規格**：

| 元素 | 規格 |
|------|------|
| 標題 | 「本週重點」 |
| 內容 | 3 條 bullet points |
| 連結 | 各點連結至對應 Mode 報告 |
| 更新 | 每次 Mode 報告產出後更新 |

### 3. 檢查清單

- [ ] 快速導覽表格新增「最新一期」欄位
- [ ] 所有連結可正常運作
- [ ] RSS 訂閱按鈕連結至 /feed.xml
- [ ] 連結文字精簡、對象分類清楚
- [ ] 手機版本排版正常

---

## S9：About 頁 E-E-A-T 強化

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | /about/ |
| 類型 | 修改 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |
| 來源 | 策略 S9、競品分析差異化建議 |

### 1. 頁面目標

##### 主要目標
建立品牌信任，突出差異化優勢，補齊 E-E-A-T 短板。

##### 次要目標
1. 讓初次訪問者了解系統全貌後願意加入書籤
2. 與方法論頁面（S1-B）形成互補
3. 提供 GitHub 星標入口增加社群信號

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| About 頁停留時間 | > 60 秒 | GA |
| GitHub 連結點擊 | 追蹤 | GA 事件追蹤 |
| 從 About 頁進入報告 | > 30% 訪客 | GA 頁面流程 |

### 2. 內容結構

#### 新增區塊 A：為什麼選擇我們

**位置**：現有內容下方

**內容規格**：

```markdown
## 為什麼選擇 Risk & Responsibility Intelligence

### 開源透明

本專案完全開源，所有原始碼公開於 GitHub。
您可以檢視資料萃取邏輯、報告產出流程，確保資訊的可追溯性。

[![GitHub Stars](shields.io badge)](repo-url)

### 獨特的責任追蹤分類

本系統提供競品未見的「責任變動追蹤」功能：

| 欄位 | 說明 |
|------|------|
| `shift_type` | 責任轉移類型（擴大、縮小、新增、移轉） |
| `affected_roles` | 受影響的角色清單 |
| `shift_summary` | 變動摘要 |

### 多法規跨框架整合

一站式追蹤跨框架法規變動：

- **NIST**（CSF 2.0、SP 800 系列、AI RMF）
- **EU**（AI Act、DORA、NIS2）
- **ISO**（27001、27701、42001）
- **CISA** 資安警報
- **CSA** 雲端安全研究
- **SANS ISC** 威脅分析

### 完全免費

與商業法規追蹤服務（年費 $10K-$100K+）不同，
本系統完全免費使用，無訂閱費、無分級付費牆。
```

**文案規格**：

| 元素 | 規格 |
|------|------|
| H2 | 為什麼選擇 Risk & Responsibility Intelligence |
| H3 × 4 | 開源透明、獨特的責任追蹤分類、多法規跨框架整合、完全免費 |
| 段落長度 | 每段 2-3 句 |
| GitHub Badge | shields.io（stars count） |

#### 新增區塊 B：系統運作流程

**位置**：「為什麼選擇我們」下方

**內容規格**：

```markdown
## 系統運作流程

擷取 → 萃取 → 分析 → 報告

1. **擷取（Extractor）**：每週從 7 個權威來源自動擷取公開資訊
2. **萃取（4-Layer）**：透過 L1-L4 四層結構化萃取，轉化為結構化資料
3. **分析（Qdrant）**：語意搜尋找出跨來源的關聯和趨勢
4. **報告（Narrator）**：產出 7 份主題式分析報告

> 完整方法論：[How It Works →](/methodology/)
```

**文案規格**：

| 元素 | 規格 |
|------|------|
| H2 | 系統運作流程 |
| 流程步驟 | 4 步驟，numbered list |
| 詳細連結 | 指向 /methodology/ |
| 字數 | 總計 100-150 字 |

#### 新增區塊 C：維護者資訊

**位置**：系統運作流程下方

**內容規格**：

| 元素 | 規格 |
|------|------|
| H2 | 維護者 |
| 內容 | 維護者名稱、簡要背景描述 |
| 審核流程 | 說明人工抽樣審核的存在 |
| GitHub 連結 | 貢獻者頁面連結 |

**文案方向**：

- 誠實呈現「AI 產出 + 規範審核 + 人工抽樣」的混合模式
- 不過度包裝（不假稱有大型審核團隊）
- 強調開源社群可參與

### 3. CTA 規格

#### 主要 CTA

| 項目 | 規格 |
|------|------|
| 文案 | 「閱讀最新報告 →」 |
| 位置 | 頁面底部 |
| 連結目標 | /docs/Narrator/executive_summary/ |
| 樣式 | `.btn .btn-primary` |

#### 次要 CTA

| 項目 | 規格 |
|------|------|
| 文案 | 「在 GitHub 上追蹤專案」 |
| 位置 | GitHub Badge 旁 |
| 連結目標 | GitHub repo URL |

### 4. SEO 規格

| 項目 | 規格 | 字數限制 |
|------|------|----------|
| Title | About &#x7c; Risk & Responsibility Intelligence | 50-60 字元 |
| Meta Description | Open-source compliance intelligence system tracking 7 authoritative sources weekly. Free, transparent, and auditable on GitHub. | 150-160 字元 |
| H1 | 維持現有 | — |
| 目標關鍵字 | 主要：open source compliance intelligence / 次要：risk management automation, regulatory tracking tool | — |

### 5. 檢查清單

- [ ] 「為什麼選擇我們」4 個子區塊都已加入
- [ ] GitHub Badge 顯示正確
- [ ] 責任追蹤欄位表格正確
- [ ] 法規來源清單完整（7 個）
- [ ] 系統運作流程簡潔清楚
- [ ] 方法論連結可正常到達 /methodology/
- [ ] 維護者資訊誠實呈現
- [ ] CTA 連結正確

---

## S10：跨框架比較表頁面

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | /framework-comparison/ |
| 頁面類型 | 新增靜態頁面 |
| 所屬階段 | Phase 3 |
| 優先級 | P1 |
| 來源 | 策略 S10、差距分析 G12、競品分析機會 |

### 1. 頁面目標

##### 主要目標
提供跨框架合規要求的快速對照，搶佔 SEO 長尾關鍵字。

##### 次要目標
1. 滿足需同時遵循多框架的合規主管的核心需求
2. 展示本系統的多來源整合能力
3. 導流至各 Mode 的詳細報告

##### 成功指標

| 指標 | 目標值 | 測量方式 |
|------|--------|----------|
| 搜尋引擎排名 | 「NIST CSF vs ISO 27001」前 20 名 | Search Console |
| 頁面停留時間 | > 90 秒 | GA |
| 從此頁進入 Mode 報告 | > 40% | GA 頁面流程 |

### 2. 目標受眾

| 項目 | 說明 |
|------|------|
| 是誰 | 需要同時遵循多個框架的合規主管 |
| 來這頁的目的 | 快速了解不同框架的異同，規劃合規策略 |
| 進入方式 | 搜尋引擎（長尾關鍵字）、首頁導航 |
| 下一步期望 | 深入各框架的 Mode 報告 |

### 3. 內容結構

```
┌─────────────────────────────────────┐
│ Hero：框架比較總覽                     │
├─────────────────────────────────────┤
│ 框架概述表格                          │
├─────────────────────────────────────┤
│ 跨框架比較矩陣（按主題）               │
├─────────────────────────────────────┤
│ 重疊與差異分析                        │
├─────────────────────────────────────┤
│ 行動建議                             │
├─────────────────────────────────────┤
│ FAQ                                 │
└─────────────────────────────────────┘
```

#### 區塊 1：框架概述表格

**內容規格**：

```markdown
| 框架 | 發布機構 | 適用範圍 | 最新版本 | 強制性 |
|------|----------|----------|----------|--------|
| NIST CSF 2.0 | NIST (美國) | 所有組織（自願採用） | 2024-02 | 非強制（聯邦機構事實上必須遵循） |
| EU AI Act | 歐盟 | 在歐盟市場提供 AI 系統的組織 | 2024 | 強制 |
| ISO 27001:2022 | ISO | 任何組織（認證自願） | 2022 | 自願（但市場事實上要求） |
| NIST AI RMF | NIST (美國) | 使用 AI 的組織 | 2023-01 | 非強制 |
| DORA | 歐盟 | 金融機構 | 2025-01 生效 | 強制 |
| NIS2 | 歐盟 | 關鍵與重要實體 | 2024-10 轉置期限 | 強制 |
```

#### 區塊 2：跨框架比較矩陣

**按主題對照**（主要矩陣）：

```markdown
| 主題 | NIST CSF 2.0 | EU AI Act | ISO 27001 | DORA |
|------|-------------|-----------|-----------|------|
| 風險評估 | GV.RM | Art. 9 | A.8.2 | Art. 5-6 |
| 供應鏈管理 | GV.SC | Art. 28 | A.5.19-22 | Art. 28-30 |
| 事件回應 | RS + RC | Art. 62 | A.5.24-28 | Art. 17-23 |
| AI 治理 | (參見 AI RMF) | Art. 1-15 | - | - |
| 資料保護 | PR.DS | Art. 10 | A.8.10-12 | Art. 12 |
| 第三方管理 | GV.SC | Art. 28 | A.5.19-22 | Art. 28-30 |
```

**規格**：

| 元素 | 規格 |
|------|------|
| 比較面向 | 至少 8 個主要面向 |
| 條文引用 | 標註具體條文或控制措施編號 |
| 不適用 | 使用「-」標記 |
| 連結 | 各條文連結至該 Mode 的詳細分析 |

#### 區塊 3：行動建議

**內容規格**：

```markdown
## 如何同時滿足多個框架

### 以 NIST CSF 2.0 為基礎
NIST CSF 2.0 提供最全面的框架結構，可作為合規基礎...

### 映射矩陣
| NIST CSF 2.0 控制措施 | 同時滿足 | 額外需求 |
|----------------------|----------|----------|
| GV.RM-01 | ISO 27001 A.8.2, DORA Art.5 | EU AI Act Art.9（AI 特定） |
```

#### 區塊 4：FAQ

提供 3-5 個 FAQ，利用 FAQPage Schema 標記：

| 問題 | 回答要點 |
|------|----------|
| NIST CSF 2.0 和 ISO 27001 有什麼不同？ | 一個是框架（how），一個是標準（what）；NIST 免費，ISO 認證需付費 |
| 我的組織需要遵循哪些框架？ | 依所在地區、產業、是否使用 AI 判斷 |
| 可以同時滿足多個框架嗎？ | 可以，本頁提供映射矩陣 |

### 4. SEO 規格

| 項目 | 規格 | 字數限制 |
|------|------|----------|
| Title | Framework Comparison: NIST CSF 2.0 vs EU AI Act vs ISO 27001 | 50-60 字元 |
| Meta Description | Compare NIST CSF 2.0, EU AI Act, and ISO 27001 requirements side by side. Free cross-framework analysis with specific article and control mapping. | 150-160 字元 |
| H1 | Compliance Framework Comparison | — |
| 目標關鍵字 | 主要：NIST CSF vs ISO 27001 comparison / 次要：EU AI Act vs NIST AI RMF, compliance framework comparison | — |
| URL Slug | /framework-comparison/ | — |

### 5. 結構化資料

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is the difference between NIST CSF 2.0 and ISO 27001?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "..."
      }
    }
  ]
}
```

### 6. 檢查清單

- [ ] 框架概述表格完整（至少 6 個框架）
- [ ] 跨框架比較矩陣至少 8 個面向
- [ ] 條文引用正確
- [ ] 行動建議具體可執行
- [ ] FAQ 3-5 題
- [ ] SEO 規格完整
- [ ] 結構化資料正確
- [ ] 各條文連結可到達對應 Mode 報告

---

## S11：iso_standards 分類細化

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | iso_standards Layer（92 份文件） |
| 類型 | 資料品質優化 |
| 所屬階段 | Phase 3 |
| 優先級 | P2 |
| 目標 | "other" 分類佔比從 67% 降至 < 30% |
| 來源 | 策略 S11、差距分析 G14 |

### 分類規格

#### 擴充後的 category enum

| 分類值 | 說明 | 適用範例 |
|--------|------|----------|
| `information_security` | 資訊安全（27001, 27002, 27005） | ISO/IEC 27001:2022 |
| `privacy` | 隱私保護（27701） | ISO/IEC 27701:2019 |
| `ai_governance` | AI 治理（42001） | ISO/IEC 42001:2023 |
| `quality_management` | 品質管理（9001） | ISO 9001:2015 |
| `environmental` | 環境管理（14001） | ISO 14001:2015 |
| `risk_management` | 風險管理（31000） | ISO 31000:2018 |
| `cloud_security` | 雲端安全（27017, 27018） | ISO/IEC 27017:2015 |
| `business_continuity` | 營運持續（22301） | ISO 22301:2019 |
| `other` | 上述分類無法涵蓋 | 保留但應 < 30% |

**注意**：擴充 enum 需先與使用者確認，再寫入相應 Layer CLAUDE.md。

#### 實作步驟

| 步驟 | 行動 |
|------|------|
| 1 | 列出所有 category = "other" 的 iso_standards 文件（約 62 份） |
| 2 | 逐一檢視標題和內容，判斷正確分類 |
| 3 | 更新 .md 文件的 front matter category 欄位 |
| 4 | 更新 Qdrant 中的 payload |
| 5 | 更新 Layer CLAUDE.md 的 enum 定義 |

### 驗收標準

- [ ] category enum 已與使用者確認
- [ ] Layer CLAUDE.md 已更新
- [ ] "other" 分類佔比 < 30%
- [ ] 重新分類的文件 category 正確
- [ ] Qdrant payload 已同步更新

---

## S12：eu_regulations 低關聯性內容降權

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | eu_regulations Layer 中 120 份 institutional_administration 文件 |
| 類型 | 資料品質優化 |
| 所屬階段 | Phase 3 |
| 優先級 | P2 |
| 目標 | 降低制裁決議等低關聯性內容對搜尋結果的稀釋 |
| 來源 | 策略 S12、Discovery 內容分析 |

### 處理策略

| 方案 | 說明 | 優缺點 |
|------|------|--------|
| A：fetch 階段過濾 | 在 fetch.sh 加入標題/類別過濾條件 | 乾淨但可能誤刪 |
| B：Qdrant 降權 | 降低 `institutional_administration` 的搜尋權重 | 保留資料但需自訂搜尋邏輯 |
| C：歸檔 | 移至 `docs/Extractor/eu_regulations/archived/` | 保留但不影響搜尋 |

**建議方案**：A + C 組合

#### fetch.sh 過濾規則

| 過濾條件 | 動作 |
|----------|------|
| 標題含「COUNCIL DECISION (CFSP)」且為制裁相關 | 排除 |
| 標題含「restrictive measures」+ 人名/實體名 | 排除 |
| category = `institutional_administration` 且 confidence < 0.5 | 排除 |

### 驗收標準

- [ ] 過濾規則已加入 fetch.sh
- [ ] 現有 120 份低關聯性文件已歸檔
- [ ] Qdrant 中對應文件已移除或降權
- [ ] 新的 fetch 不再擷取同類內容
- [ ] 搜尋結果品質提升（人工抽樣 5 次查詢）

---

## S13：責任追蹤專題頁面

### 基本資訊

| 項目 | 規格 |
|------|------|
| 頁面 URL | /responsibility-tracker/ |
| 頁面類型 | 新增動態頁面 |
| 所屬階段 | Phase 3 |
| 優先級 | P2 |
| 來源 | 策略 S13、差距分析 G10、競品分析差異化建議 |

### 1. 頁面目標

##### 主要目標
將隱藏在結構化資料中的獨特賣點（責任追蹤）轉為使用者可見的價值。

##### 次要目標
1. 搶佔「responsibility attribution framework」SEO
2. 展示本系統獨有的 L2 Responsibility 層能力
3. 提供跨時間的責任歸屬演化趨勢

### 2. 內容結構

```
┌─────────────────────────────────────┐
│ Hero：什麼是責任追蹤                   │
├─────────────────────────────────────┤
│ 最新責任變動摘要（本月）               │
├─────────────────────────────────────┤
│ 按 shift_type 分類的變動列表          │
├─────────────────────────────────────┤
│ 按 affected_roles 分類的影響分析       │
├─────────────────────────────────────┤
│ 歷史趨勢                             │
├─────────────────────────────────────┤
│ 方法論說明 + FAQ                     │
└─────────────────────────────────────┘
```

#### 關鍵表格

**按 shift_type 分類**：

```markdown
| 變動類型 | 本月筆數 | 主要影響框架 | 範例 |
|----------|----------|-------------|------|
| 擴大 (expand) | {N} | EU AI Act, DORA | {簡要描述} |
| 新增 (new) | {N} | NIST CSF 2.0 | {簡要描述} |
| 移轉 (transfer) | {N} | ISO 27001 | {簡要描述} |
| 縮小 (reduce) | {N} | — | {簡要描述} |
```

**按 affected_roles 分類**：

```markdown
| 受影響角色 | 本月變動數 | 趨勢 | 主要變動 |
|-----------|-----------|------|---------|
| CISO | {N} | 責任擴大 | {描述} |
| DPO | {N} | 新增責任 | {描述} |
| AI PM | {N} | 新增責任 | {描述} |
| Board | {N} | 責任擴大 | {描述} |
```

### 3. SEO 規格

| 項目 | 規格 |
|------|------|
| Title | Responsibility Tracker: Who Is Accountable for What &#x7c; Risk & Responsibility Intelligence |
| Meta Description | Track how regulatory changes shift accountability across roles. Unique responsibility attribution framework covering NIST, EU AI Act, and ISO standards. |
| 目標關鍵字 | responsibility attribution framework, regulatory accountability tracker |
| URL Slug | /responsibility-tracker/ |

### 4. 檢查清單

- [ ] 頁面結構完整
- [ ] shift_type 分類表格正確
- [ ] affected_roles 分類表格正確
- [ ] 資料來源於 Qdrant 的 L2 Responsibility 層
- [ ] SEO 規格完整
- [ ] FAQ 包含 3-5 題

---

## S14：動態目錄（Sticky TOC）

### 基本資訊

| 項目 | 規格 |
|------|------|
| 影響範圍 | 所有長報告頁面 |
| 類型 | UI 優化 |
| 所屬階段 | Phase 3 |
| 優先級 | P2 |
| 來源 | 策略 S14、競品分析（UpGuard 動態目錄） |

### 技術規格

#### Just the Docs TOC 設定

| 項目 | 規格 |
|------|------|
| 啟用方式 | `_config.yml` 設定 `toc: true` + `toc_sticky: true`（如主題支援） |
| 替代方案 | 自訂 CSS：`.site-nav { position: sticky; top: 0; }` |
| 適用頁面 | H2 數量 >= 3 的報告頁面 |
| 桌面版 | Sidebar sticky TOC |
| 手機版 | 摺疊式 TOC（頁面頂部） |

#### CSS 規格

```css
/* Desktop: sticky sidebar TOC */
@media (min-width: 1024px) {
  .site-nav {
    position: sticky;
    top: 1rem;
    max-height: calc(100vh - 2rem);
    overflow-y: auto;
  }
}
```

### 驗收標準

- [ ] 桌面版 TOC 隨頁面捲動固定
- [ ] 手機版 TOC 可正常展開/摺疊
- [ ] 不影響現有頁面排版
- [ ] TBT 不因此增加（未引入新 JS）
- [ ] 長報告（如 Rule Change Brief）導航體驗改善

---

## 追溯表

| 規格項目 | 策略來源 | 差距分析來源 | 階段 |
|----------|----------|-------------|------|
| S1-A 審核標記 | 策略 S1 | G1（E-E-A-T） | Phase 1 |
| S1-B 方法論頁面 | 策略 S1 | G1（Expertise） | Phase 1 |
| S2 TBT 優化 | 策略 S2 | Discovery 健檢 | Phase 1 |
| S3 Mode 管線修復 | 策略 S3 | G2（5/7 缺口） | Phase 1 |
| S4 eu_regulations 修復 | 策略 S4 | G8（RSS 斷裂） | Phase 1 |
| S5 REVIEW_NEEDED 清理 | 策略 S5 | G9（45 份未審核） | Phase 1 |
| S6 RSS Feed | 策略 S6 | G5（無訂閱機制） | Phase 2 |
| S7 合規時程 | 策略 S7 | G4（缺行動期限） | Phase 2 |
| S8 首頁導航 | 策略 S8 | G6（導航不直覺） | Phase 2 |
| S9 About 頁 | 策略 S9 | 競品差異化建議 | Phase 2 |
| S10 跨框架比較 | 策略 S10 | G12（缺跨框架對照） | Phase 3 |
| S11 iso_standards 分類 | 策略 S11 | G14（67% other） | Phase 3 |
| S12 eu_regulations 降權 | 策略 S12 | Discovery 內容分析 | Phase 3 |
| S13 責任追蹤專題 | 策略 S13 | G10（獨特賣點不可見） | Phase 3 |
| S14 動態目錄 | 策略 S14 | 競品分析借鏡 | Phase 3 |

---

## 數據來源

| 來源 | 用途 | 日期 |
|------|------|------|
| strategy.md | 策略計劃書（S1-S14 優先級和行動） | 2026-03-22 |
| positioning.md | 品牌調性、受眾定義、差異化定位 | 2026-03-22 |
| analysis.md | 受眾旅程、資訊需求、差距清單 G1-G14 | 2026-03-22 |
| discovery.md | 技術效能數據、內容盤點統計 | 2026-03-22 |
| competitive.md | 競品優劣勢、差異化建議 | 2026-03-22 |
| 前版 content-spec.md | 2026-02-19 版內容規格作為基線 | 2026-02-19 |
