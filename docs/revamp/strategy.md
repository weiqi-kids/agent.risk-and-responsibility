# 改版策略計劃書

> 制定日期：2026-03-22（更新版，前版 2026-02-19）

---

## 執行摘要

| 項目 | 內容 |
|------|------|
| 改版目標 | 建立內容可信度（E-E-A-T）、穩定產出管線、建立使用者留存機制、強化差異化優勢 |
| 改版範圍 | 3 個新增頁面/功能、6 個頁面修改、5 個技術/流程優化 |
| 分期數量 | 3 個階段 |
| 預計 KPI | TBT < 200ms、7/7 Mode 穩定產出、REVIEW_NEEDED < 10 份、RSS 訂閱啟用、關鍵字排名前 20 |

### 與前版策略的重大差異

| 項目 | 前版（2026-02-19） | 本版（2026-03-22） | 原因 |
|------|--------------------|--------------------|------|
| TBT 狀態 | 660ms（嚴重問題） | 210ms（接近通過） | 已大幅改善，從 P0 降為 P0 最後一哩 |
| 策略重心 | 技術修復 + E-E-A-T | 內容品質 + 信任建設 + 產出穩定 | 技術效能已改善，重心應轉向內容面 |
| 分期數量 | 2 個階段 | 3 個階段 | 新增問題（資料源斷裂、REVIEW_NEEDED）需獨立階段處理 |
| 新增問題 | 無 | eu_regulations 斷裂、45 份 REVIEW_NEEDED、W10-W11 中斷 | 一個月內出現的新問題 |
| Performance 分數 | 83 | 95 | +12 分，效能優化成效顯著 |

---

## 1. 改版範圍

### 1.1 範圍總覽

| 類型 | 數量 | 頁面/項目列表 |
|------|------|----------|
| 新增 | 3 | 方法論說明頁面、RSS Feed、跨框架比較表頁面 |
| 大改 | 3 | 報告模板（審核標記 + 合規時程）、首頁（導航優化 + 訂閱入口）、About 頁（E-E-A-T 強化） |
| 優化 | 5 | TBT 最後 10ms 優化、eu_regulations 資料源修復、REVIEW_NEEDED 批次清理、Mode 產出管線修復、iso_standards 分類細化 |
| 刪除 | 0 | 無（但 eu_regulations 中 120 份低關聯性制裁決議建議降低權重或歸檔） |

### 1.2 排除範圍

以下項目不在本次改版範圍：

| 項目 | 排除原因 |
|------|----------|
| 合規自評互動工具 | 開發成本高，需要前端框架，延後至未來版本 |
| 視覺化圖表（Sankey 圖等） | 需要 D3.js 等前端依賴，延後至 Phase 3 後評估 |
| 多語言支援（日/韓/全英） | 優先級 P2，需要持續翻譯維護成本 |
| Email 訂閱服務 | 需要後端服務或第三方整合（Buttondown），先以 RSS 滿足需求 |
| PDF 自動化產出 | 先以 RSS 建立留存機制；PDF 延後至 Phase 3 |
| 前端語意搜尋介面 | 需要額外前端開發和 Qdrant API 暴露，延後評估 |

---

## 2. 優先級排序

### 2.1 Impact-Effort 矩陣

| 項目 | Impact | Effort | 象限 | 優先級 |
|------|--------|--------|------|--------|
| S1 加入審核者標記 + 方法論頁面 | 高 | 低 | Quick Win | P0 |
| S2 TBT 最後 10ms 優化 | 高 | 中 | Quick Win | P0 |
| S3 修復 Mode 產出管線（7/7 穩定） | 高 | 中 | Major Project | P0 |
| S4 修復 eu_regulations 資料源 | 高 | 中 | Major Project | P0 |
| S5 REVIEW_NEEDED 批次清理 | 高 | 中 | Major Project | P0 |
| S6 RSS/Atom Feed | 高 | 低 | Quick Win | P1 |
| S7 報告加入合規時程/行動期限 | 高 | 中 | Major Project | P1 |
| S8 首頁導航優化 + 訂閱入口 | 中 | 低 | Quick Win | P1 |
| S9 About 頁 E-E-A-T 強化 | 中 | 低 | Quick Win | P1 |
| S10 跨框架比較表頁面 | 中 | 中 | Major Project | P1 |
| S11 iso_standards 分類細化 | 低 | 中 | Fill In | P2 |
| S12 eu_regulations 低關聯性內容降權 | 低 | 低 | Fill In | P2 |
| S13 責任追蹤專題頁面 | 中 | 高 | Consider Later | P2 |
| S14 動態目錄（Sticky TOC） | 低 | 低 | Fill In | P2 |

### 2.2 優先級清單

#### P0 - 必須做

| ID | 項目 | 原因 | 來源 |
|----|------|------|------|
| S1 | 加入審核者標記 + 方法論說明頁面 | E-E-A-T 是 YMYL 內容的 Google 排名關鍵因素；本站是所有競品中唯一純 AI 產出的來源 | 差距分析 G1、競品分析（所有競品均有專家參與） |
| S2 | TBT 最後 10ms 優化（210ms → <200ms） | Core Web Vitals 通過閾值為 200ms，差 10ms 即可全面通過 | Discovery 健檢、差距分析 G3 |
| S3 | 修復 Mode 產出管線（7/7 穩定） | 定位文件承諾「7 份結構化報告」，目前僅 5/7 有週報；W10-W11 全部中斷 | 差距分析 G2、定位文件對齊檢查 |
| S4 | 修復 eu_regulations 資料源 | EUR-Lex RSS 自 W09 起無新資料；佔總文件數 44% 的最大 Layer 斷裂 | 差距分析 G8、Discovery 觀察 |
| S5 | REVIEW_NEEDED 批次清理 | 45 份未處理（Extractor 15 + Narrator 30）；ai_governance_landscape 全部報告標記 | 差距分析 G9、Discovery 內容盤點 |

#### P1 - 應該做

| ID | 項目 | 原因 | 來源 |
|----|------|------|------|
| S6 | RSS/Atom Feed | 所有權威來源（NIST、EUR-Lex）均提供 RSS；缺少訂閱是最大留存阻礙 | 差距分析 G5、競品分析 |
| S7 | 報告加入合規時程/行動期限 | 法遵主管最需要的資訊；從「知道發生什麼」提升至「知道該做什麼」 | 差距分析 G4、受眾需求分析 |
| S8 | 首頁導航優化 + 訂閱入口 | 改善角色導向連結路徑；整合 RSS 訂閱入口 | 差距分析 G6 |
| S9 | About 頁 E-E-A-T 強化 | 呈現完整方法論流程；突出「開源可審計」差異化優勢 | 競品分析差異化建議、差距分析 |
| S10 | 跨框架比較表頁面 | 受眾需要 NIST CSF 2.0 vs EU AI Act vs ISO 27001 對照；SEO 長尾關鍵字機會 | 差距分析 G12、競品分析機會 |

#### P2 - 可以做

| ID | 項目 | 原因 | 來源 |
|----|------|------|------|
| S11 | iso_standards 分類細化 | 92 份中 67% 歸類為 "other"，影響語意搜尋精度 | 差距分析 G14、Discovery 觀察 |
| S12 | eu_regulations 低關聯性內容降權 | 120 份 institutional_administration（制裁決議）稀釋搜尋結果 | Discovery 內容分析 |
| S13 | 責任追蹤專題頁面 | 獨特賣點（shift_type + affected_roles）目前隱藏在結構化資料中，使用者不易發現 | 差距分析 G10、競品分析差異化建議 |
| S14 | 動態目錄（Sticky TOC） | 提升長報告閱讀體驗 | 競品分析（UpGuard 動態目錄） |

---

## 3. 分期規劃

### Phase 1：信任建設與產出修復

| 項目 | 內容 |
|------|------|
| 目標 | 解決 E-E-A-T 可信度缺口，修復產出管線和資料源問題，通過 Core Web Vitals |
| 範圍 | S1, S2, S3, S4, S5 |
| 成功指標 | TBT < 200ms；7/7 Mode 可正常執行；REVIEW_NEEDED < 10 份；所有報告有審核標記 |
| 說明 | 本階段為最高優先級，聚焦於「先修復系統穩定性和可信度」。這是後續所有改版的基礎——沒有穩定的產出管線和使用者信任，任何體驗改善都無意義。 |

#### 包含項目

| ID | 項目 | 類型 | 優先級 | 具體行動 |
|----|------|------|--------|----------|
| S1 | 審核者標記 + 方法論頁面 | 修改 + 新增 | P0 | (1) 報告模板加入審核元資訊區塊；(2) 新增 `/methodology/` 頁面說明 L1-L4 四層萃取邏輯 |
| S2 | TBT 最後 10ms 優化 | 優化 | P0 | 診斷 lunr.js 搜尋索引大小；評估替換為 Pagefind 或延遲載入 |
| S3 | Mode 產出管線修復 | 優化 | P0 | 排查 ai_governance_landscape 和 ai_implementation_guide 的 Qdrant 查詢/產出邏輯；確保 7/7 可執行；建立執行監控 |
| S4 | eu_regulations 資料源修復 | 優化 | P0 | 排查 EUR-Lex RSS feed URL 和回傳內容；評估 CELLAR API 作為備援；修復 fetch.sh |
| S5 | REVIEW_NEEDED 批次清理 | 優化 | P0 | 逐一審核 45 份文件；低關聯性（制裁決議）確認後消除標記或歸檔；修正 ai_governance_landscape 報告品質問題 |

#### Phase 1 依賴關係

```
S4 修復 eu_regulations ─→ S5 清理 REVIEW_NEEDED（部分 REVIEW 因資料源問題產生）
S3 修復 Mode 管線 ─→ S5 清理 Narrator REVIEW_NEEDED
S1 審核者標記 ─→ 獨立，可平行執行
S2 TBT 優化 ─→ 獨立，可平行執行
```

### Phase 2：使用者留存與體驗改善

| 項目 | 內容 |
|------|------|
| 目標 | 建立使用者回訪機制，提升內容可行動性，改善導航體驗 |
| 範圍 | S6, S7, S8, S9 |
| 成功指標 | RSS Feed 可正常訂閱；報告含合規時程區塊；首頁有 RSS 入口；About 頁有方法論區塊 |
| 前提 | Phase 1 完成（系統穩定產出 + 審核標記就緒） |

#### 包含項目

| ID | 項目 | 類型 | 優先級 | 具體行動 |
|----|------|------|--------|----------|
| S6 | RSS/Atom Feed | 新增 | P1 | 使用 jekyll-feed 外掛；確認 GitHub Pages 支援；在首頁和導航列加入 RSS 圖示 |
| S7 | 報告加入合規時程 | 修改 | P1 | 在 Mode CLAUDE.md 中加入合規 deadline/effective_date 萃取邏輯；報告模板新增「行動時程」區塊 |
| S8 | 首頁導航優化 | 修改 | P1 | 精簡角色導向連結；加入「本週報告」動態區塊（連結到最新一期）；整合 RSS 訂閱入口 |
| S9 | About 頁 E-E-A-T 強化 | 修改 | P1 | 新增「為什麼選擇我們」區塊；新增「系統運作流程」區塊；強化「開源可審計」差異化訊息；加入 GitHub badge |

#### Phase 2 依賴關係

```
S6 RSS Feed ─→ S8 首頁（整合訂閱入口）
S1 審核標記（Phase 1）─→ S9 About 頁（呈現審核流程）
S7 合規時程 ─→ 獨立，可平行執行
```

### Phase 3：差異化強化與品質精進

| 項目 | 內容 |
|------|------|
| 目標 | 強化獨特賣點（跨框架比較、責任追蹤），精進資料品質 |
| 範圍 | S10, S11, S12, S13, S14 |
| 成功指標 | 跨框架比較表頁面上線；iso_standards "other" 比例 < 30%；責任追蹤專題頁面上線 |
| 前提 | Phase 2 完成（留存機制就緒） |

#### 包含項目

| ID | 項目 | 類型 | 優先級 | 具體行動 |
|----|------|------|--------|----------|
| S10 | 跨框架比較表頁面 | 新增 | P1 | 產出 NIST CSF 2.0 vs EU AI Act vs ISO 27001 對照表；SEO 佈局搶佔長尾關鍵字 |
| S11 | iso_standards 分類細化 | 優化 | P2 | 擴充分類 enum（information_security, quality_management, environmental, energy 等）；重新歸類 62 份 "other" 文件 |
| S12 | eu_regulations 低關聯性內容降權 | 優化 | P2 | 在 fetch 階段加入過濾條件排除制裁決議；或在 Qdrant 中降低 institutional_administration 類別權重 |
| S13 | 責任追蹤專題頁面 | 新增 | P2 | 獨立出 Responsibility Tracker 頁面，匯總 shift_type + affected_roles 資料；優化 "responsibility attribution framework" SEO |
| S14 | 動態目錄（Sticky TOC） | 優化 | P2 | 利用 Just the Docs 的 TOC 設定，調整為 sticky sidebar 模式 |

---

## 4. 頁面規劃

### 4.1 報告模板（S1：審核者標記 + S7：合規時程）

| 項目 | 內容 |
|------|------|
| 頁面 URL | 所有 /docs/Narrator/*/*.html |
| 類型 | 修改 |
| 所屬階段 | Phase 1（S1）+ Phase 2（S7） |
| 優先級 | P0（審核標記）、P1（合規時程） |

#### 頁面策略

| 項目 | 說明 |
|------|------|
| 頁面目標 | 提升報告可信度和可行動性 |
| 目標受眾 | CISO、法遵主管、AI PM |
| 關鍵訊息 | 1. AI 產出但經過審核流程 / 2. 有明確來源和方法論 / 3. 包含行動期限和建議 |
| 主要 CTA | 閱讀完整報告、訂閱 RSS |
| 次要 CTA | 檢視方法論、回報問題 |

#### 內容大綱

```
Phase 1 新增區塊：報告元資訊（放在免責聲明下方）

- 產出方式：AI 自動產出（Claude）
- 審核狀態：[已審核] / [待審核]
- 審核流程：CLAUDE.md 規範自動審核 + 人工抽樣審核
- 方法論連結：[檢視萃取邏輯 →]
- 資料來源：X 個權威來源
- 資料時間範圍：2026-WXX（YYYY-MM-DD ~ YYYY-MM-DD）

Phase 2 新增區塊：行動時程（放在 Key Takeaway 後）

- 即時行動項（本週需關注）
- 近期合規期限（30 天內）
- 中期合規時程（90 天內）
```

#### SEO 規劃

| 項目 | 內容 |
|------|------|
| 目標關鍵字 | 依各 Mode 的主題關鍵字 |
| Title | 維持現有 seo.title 規範（<= 60 字，含關鍵字） |
| Meta Description | 加入「經審核」「行動建議」等信任詞（<= 155 字） |

### 4.2 方法論說明頁面（S1：新增）

| 項目 | 內容 |
|------|------|
| 頁面 URL | /methodology/ |
| 類型 | 新增 |
| 所屬階段 | Phase 1 |
| 優先級 | P0 |

#### 頁面策略

| 項目 | 說明 |
|------|------|
| 頁面目標 | 建立系統可信度，滿足 E-E-A-T 中的 Expertise 和 Trustworthiness |
| 目標受眾 | 對 AI 產出持懷疑態度的專業人員、Google 品質評估者 |
| 關鍵訊息 | 1. 四層結構化萃取邏輯（L1-L4）完全公開 / 2. 萃取規則可在 GitHub 上檢視和審計 / 3. 品質控制機制（自動審核 + 人工抽樣 + REVIEW_NEEDED 標記） |
| 主要 CTA | 在 GitHub 上檢視萃取邏輯 |
| 次要 CTA | 回報問題或建議 |

#### 內容大綱

```
1. 系統概述
   - 內容：Risk & Responsibility Intelligence 的整體架構圖
   - 目的：讓使用者理解系統全貌

2. 資料來源
   - 內容：7 大權威來源清單、選擇標準、更新頻率
   - 目的：展示資料的權威性

3. 四層萃取邏輯（L1-L4）
   - 內容：L1 Rule Signal → L2 Responsibility → L3 Risk Model → L4 Obligation 的詳細說明和範例
   - 目的：展示結構化程度和專業性

4. 品質控制機制
   - 內容：自動審核規則、REVIEW_NEEDED 觸發條件、人工抽樣審核流程
   - 目的：建立品質信任

5. 局限性與免責聲明
   - 內容：AI 系統的局限性、不做什麼（不提供法律建議等）、建議搭配人工專家判斷
   - 目的：誠實揭露提升可信度

6. 開源透明
   - 內容：GitHub 連結、如何檢視/貢獻萃取邏輯
   - 目的：差異化——「我們是唯一可審計的合規情報來源」
```

#### SEO 規劃

| 項目 | 內容 |
|------|------|
| 目標關鍵字 | compliance intelligence methodology, structured extraction framework, AI compliance automation |
| Title | How It Works: Methodology | Risk & Responsibility Intelligence |
| Meta Description | Learn how our open-source system extracts and structures compliance intelligence from 7 authoritative sources using a 4-layer extraction framework. Fully auditable on GitHub. |

### 4.3 About 頁 E-E-A-T 強化（S9）

| 項目 | 內容 |
|------|------|
| 頁面 URL | /about/ |
| 類型 | 修改 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |

#### 頁面策略

| 項目 | 說明 |
|------|------|
| 頁面目標 | 建立品牌信任，突出差異化優勢 |
| 目標受眾 | 初次訪問者、考慮是否加入書籤/訂閱的使用者 |
| 關鍵訊息 | 1. 開源透明可審計 / 2. 7 來源跨框架整合 / 3. 獨創責任歸屬追蹤 |
| 主要 CTA | 檢視最新報告 |
| 次要 CTA | 在 GitHub 上追蹤專案 |

#### 內容大綱

```
新增/強化區塊：

1. 為什麼選擇我們
   - 開源透明：GitHub badge + 「所有萃取邏輯可檢視」
   - 獨特分類法：責任追蹤（shift_type + affected_roles）
   - 多法規整合：NIST + EU + ISO + CISA + CSA + SANS
   - 完全免費：與商業服務（$10K-$100K+/年）的對比

2. 系統運作流程（簡化版）
   - 擷取 → 萃取 → 分析 → 報告的視覺化流程
   - 連結到 /methodology/ 頁面了解完整細節

3. 維護者/審核者資訊
   - 負責人資訊和資歷摘要
   - 審核流程說明
   - GitHub 貢獻者清單
```

### 4.4 首頁導航優化（S8）

| 項目 | 內容 |
|------|------|
| 頁面 URL | / |
| 類型 | 修改 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |

#### 頁面策略

| 項目 | 說明 |
|------|------|
| 頁面目標 | 快速引導使用者找到所需報告，建立訂閱習慣 |
| 目標受眾 | 所有受眾（首次/回訪） |
| 關鍵訊息 | 1. 本週最新報告一鍵到達 / 2. 依角色/議題找到相關內容 / 3. 訂閱不錯過 |
| 主要 CTA | 閱讀本週 Executive Summary |
| 次要 CTA | 訂閱 RSS |

#### 內容大綱

```
修改區塊：

1. 快速導覽表格
   - 精簡連結文字
   - 加入「最新報告」直接連結（自動指向最新一期）
   - 醒目標示報告更新日期

2. 新增：訂閱區塊
   - RSS 訂閱按鈕（Atom feed URL）
   - 簡要說明：「每週一早上，15 分鐘掌握全球合規動態」

3. 新增：「本週重點」區塊
   - 從 Executive Summary 的 Top 3 摘要自動抽取
   - 引導深入閱讀各 Mode 報告
```

### 4.5 RSS/Atom Feed（S6）

| 項目 | 內容 |
|------|------|
| 頁面 URL | /feed.xml |
| 類型 | 新增 |
| 所屬階段 | Phase 2 |
| 優先級 | P1 |

#### 頁面策略

| 項目 | 說明 |
|------|------|
| 頁面目標 | 提供機器可讀的訂閱格式，降低使用者回訪摩擦 |
| 目標受眾 | 使用 RSS 閱讀器的專業人員 |
| 關鍵訊息 | 每週自動更新，無需手動回訪 |
| 主要 CTA | 將 feed URL 加入 RSS 閱讀器 |

#### 技術規劃

```
1. 使用 jekyll-feed 外掛自動產生 Atom feed
2. Feed 內容：Narrator 報告（7 個 Mode 的最新報告）
3. 在 <head> 加入 <link rel="alternate" type="application/atom+xml">
4. 確認 GitHub Pages 支援 jekyll-feed 外掛
```

### 4.6 跨框架比較表頁面（S10）

| 項目 | 內容 |
|------|------|
| 頁面 URL | /framework-comparison/ |
| 類型 | 新增 |
| 所屬階段 | Phase 3 |
| 優先級 | P1 |

#### 頁面策略

| 項目 | 說明 |
|------|------|
| 頁面目標 | 提供跨框架合規要求的快速對照，搶佔 SEO 長尾關鍵字 |
| 目標受眾 | 需要同時遵循多個框架的合規主管 |
| 關鍵訊息 | 1. 不同框架對相同合規要求的表述差異 / 2. 框架之間的重疊和獨特要求 / 3. 行動建議——如何同時滿足多個框架 |
| 主要 CTA | 閱讀各框架的詳細報告 |

#### 內容大綱

```
1. 框架總覽
   - NIST CSF 2.0、EU AI Act、ISO 27001、NIST AI RMF 的定位和適用範圍

2. 跨框架比較矩陣
   - 按主題（風險管理、治理、供應鏈、AI 治理）列出各框架要求
   - 標註重疊和差異

3. 行動建議
   - 如何以最小努力同時滿足多個框架
   - 框架選擇指南（依組織規模/產業/地區）
```

#### SEO 規劃

| 項目 | 內容 |
|------|------|
| 目標關鍵字 | NIST CSF vs ISO 27001 comparison, EU AI Act vs NIST AI RMF, compliance framework comparison |
| Title | Framework Comparison: NIST CSF 2.0 vs EU AI Act vs ISO 27001 |
| Meta Description | Compare NIST CSF 2.0, EU AI Act, and ISO 27001 requirements side by side. Free cross-framework analysis from 7 authoritative sources. |

---

## 5. 成功指標

### 整體 KPI

| 指標 | 當前基準（2026-03-22） | Phase 1 目標 | Phase 2 目標 | Phase 3 目標 |
|------|------------------------|--------------|--------------|--------------|
| TBT | 210ms | < 200ms | < 200ms | < 150ms |
| Performance 分數 | 95 | 97+ | 97+ | 99 |
| Mode 產出完整度 | 5/7 週報 | 7/7 可執行 | 7/7 穩定產出 4 週 | 7/7 穩定產出 12 週 |
| REVIEW_NEEDED 文件數 | 45 | < 10 | < 5 | 0 |
| 審核標記覆蓋率 | 0% | 100% 新報告 | 100% 所有報告 | 100% |
| eu_regulations 資料源 | 斷裂（W09 後無資料） | 恢復運作 | 穩定 4 週 | 穩定 12 週 |
| RSS 訂閱 | 不存在 | - | 功能啟用 | 追蹤訂閱數 |
| 月訪客數 | 未知 | 建立 GA 追蹤 | 500+ UV | 1,000+ UV |
| 關鍵字排名（5 組目標詞） | 未知 | 建立 Search Console | 前 30 名 | 前 20 名 |
| Extractor 文件數 | 851 | 900+ | 950+ | 1,100+ |

### 各階段驗收標準

#### Phase 1

- [ ] 所有新產出的報告頁面都有審核者標記區塊
- [ ] 方法論說明頁面（/methodology/）已上線
- [ ] TBT < 200ms（Lighthouse 本地測試）
- [ ] Performance 分數 >= 97
- [ ] 7/7 Mode 可正常執行完整流程（含 ai_governance_landscape、ai_implementation_guide）
- [ ] eu_regulations fetch.sh 可正常取得新資料
- [ ] REVIEW_NEEDED 文件數 < 10
- [ ] ai_governance_landscape 報告不再全部標記 REVIEW_NEEDED

#### Phase 2

- [ ] RSS/Atom Feed（/feed.xml）可正常訂閱
- [ ] 首頁有 RSS 訂閱入口
- [ ] 首頁「本週報告」區塊指向最新一期
- [ ] About 頁面有「為什麼選擇我們」和「系統運作流程」區塊
- [ ] 至少 3 個 Mode 的報告包含合規時程/行動期限區塊
- [ ] Google Analytics 追蹤已設定

#### Phase 3

- [ ] 跨框架比較表頁面（/framework-comparison/）已上線
- [ ] iso_standards "other" 分類佔比 < 30%
- [ ] eu_regulations 低關聯性內容已降權或歸檔
- [ ] 責任追蹤專題頁面已上線（如執行）
- [ ] 搜尋引擎收錄新增頁面

---

## 6. 風險與依賴

### 風險

| 風險 | 影響 | 機率 | 緩解措施 |
|------|------|------|----------|
| TBT 210→200ms 優化效果有限 | 無法完全通過 Core Web Vitals | 中 | 嘗試多種方案（延遲載入 lunr.js、替換為 Pagefind、移除非必要 JS）；即使未達 200ms，210ms 已是可接受範圍 |
| EUR-Lex RSS 永久失效 | eu_regulations Layer 無法恢復 | 低 | 備援方案：CELLAR API 或 OJ 直接抓取；考慮新增替代歐盟法規來源 |
| ai_governance_landscape / ai_implementation_guide 週報品質不足 | 勉強產出但標記大量 REVIEW_NEEDED | 中 | 評估是否將這兩個 Mode 調整為月報週期並更新品牌訊息（「5 份週報 + 2 份月報」）；確保品質優先於頻率 |
| Jekyll + GitHub Pages 限制 RSS 功能 | jekyll-feed 外掛受限 | 低 | jekyll-feed 是 GitHub Pages 白名單外掛，應無問題；若有限制，可手動產生 feed.xml |
| 新增頁面導致 TBT 回升 | 更多內容增加搜尋索引大小 | 中 | 監控每次部署後的 Lighthouse 分數；搜尋索引考慮排除低優先級頁面 |
| 人工審核標記形同虛設 | 使用者和 Google 識破非真實審核 | 中 | 確保審核標記反映真實流程——至少進行人工抽樣審核；誠實呈現「AI 產出 + 規範審核 + 人工抽樣」的混合模式 |

### 依賴

| 依賴項目 | 影響範圍 | 處理方式 |
|----------|----------|----------|
| jekyll-feed 外掛 | S6 RSS Feed | 確認 GitHub Pages 白名單支援；本地測試後部署 |
| EUR-Lex RSS/API 可用性 | S4 資料源修復 | 排查後若 RSS 失效，評估 CELLAR API 替代方案 |
| Mode CLAUDE.md 規範更新 | S1（審核標記）、S7（合規時程） | 需同步更新所有 7 個 Mode 的 CLAUDE.md 以加入新欄位 |
| Lighthouse / Pagefind 工具 | S2 TBT 優化 | 確認本地開發環境可正常執行 |
| Google Analytics 設定 | Phase 2 KPI 追蹤 | 需在 GitHub Pages 設定中加入 GA tracking code |
| GitHub Pages 自訂 Header | 安全性改善（非本次範圍但相關） | GitHub Pages 不支援自訂 HTTP Headers，安全性 Header 缺失為平台限制 |

---

## 7. 追溯表

將本計劃對應回前階段發現：

| 計劃項目 | 來源階段 | 來源 ID | 說明 |
|----------|----------|---------|------|
| S1 審核標記 + 方法論 | 差距分析 | G1 | E-E-A-T 可信度缺口——YMYL 類內容最大風險 |
| S2 TBT 優化 | Discovery | 健檢結果 | 210ms → <200ms，最後 10ms |
| S3 Mode 管線修復 | 差距分析 | G2 | 5/7 Mode 有週報，未兌現「7 份報告」承諾 |
| S4 eu_regulations 修復 | 差距分析 | G8 | EUR-Lex RSS 自 W09 起斷裂 |
| S5 REVIEW_NEEDED 清理 | 差距分析 | G9 | 45 份未處理，ai_governance_landscape 全標記 |
| S6 RSS Feed | 差距分析 | G5 | 無訂閱功能，留存機制缺失 |
| S7 合規時程 | 差距分析 | G4 | 缺少行動期限，降低可行動性 |
| S8 首頁導航 | 差距分析 | G6 | 導航不直覺，找報告成本高 |
| S9 About 頁強化 | 競品分析 | 差異化建議 #2 | 補齊 E-E-A-T 短板 |
| S10 跨框架比較表 | 差距分析 | G12 | 缺乏跨框架對照，SEO 長尾機會 |
| S10 跨框架比較表 | 競品分析 | 機會 #1 | UpGuard 框架比較表參考 |
| S11 iso_standards 分類 | 差距分析 | G14 | 67% 歸類為 "other" |
| S12 低關聯性內容降權 | Discovery | 內容分析 | 120 份制裁決議稀釋搜尋品質 |
| S13 責任追蹤專題 | 差距分析 | G10 | 獨特賣點不可見 |
| S13 責任追蹤專題 | 競品分析 | 差異化建議 #3 | 深耕獨特分類法 |
| S14 動態目錄 | 競品分析 | 借鏡做法 | UpGuard 動態目錄參考 |

---

## 數據來源

| 來源 | 分析方式 | 日期 |
|------|----------|------|
| 定位文件 positioning.md | 品牌承諾和差異化定位 | 2026-03-22 |
| 盤點報告 discovery.md | 技術效能、內容統計、REVIEW_NEEDED 計數 | 2026-03-22 |
| 競品分析 competitive.md | 競品優劣勢和差距識別 | 2026-03-22 |
| 差距分析 analysis.md | G1-G14 差距清單和優先級排序 | 2026-03-22 |
| 前版策略 strategy.md | 2026-02-19 版計劃書作為基線 | 2026-02-19 |
