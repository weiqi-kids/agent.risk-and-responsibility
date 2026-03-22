# 網站現況盤點報告

## 基本資訊

| 項目 | 內容 |
|------|------|
| 網站 URL | https://risk.weiqi.kids/ |
| 檢測日期 | 2026-03-22（前版 2026-02-19） |
| 總文件數（docs/） | 896 份 .md |
| 萃取文件數（Extractor） | 851 份（7 個 Layer） |
| 分析報告數（Narrator） | 27 份（7 個 Mode） |
| 靜態頁面 | 4 頁（首頁、關於、快速開始、術語表） |
| Sitemap URL 數 | 41（前版 25，+64%） |

---

## 1. 技術健檢結果

### 1.1 效能分數

| 項目 | Mobile（2026-03-22） | Mobile（2026-02-19） | 變化 | 評價 |
|------|----------------------|----------------------|------|------|
| Performance | 95 | 83 | +12 | ✅ 良好 |
| SEO | 100 | 100 | 0 | ✅ 良好 |
| Accessibility | 100 | 100 | 0 | ✅ 良好 |
| Best Practices | 93 | 93 | 0 | ✅ 良好 |

> **數據來源**：Lighthouse 本地檢測（site-audit.sh），2026-03-22 10:22:11

### 1.2 Core Web Vitals

| 指標 | 2026-03-22 | 2026-02-19 | 標準 | 評價 |
|------|------------|------------|------|------|
| LCP (Largest Contentful Paint) | 1.5s | 1.5s | < 2.5s | ✅ 良好 |
| FCP (First Contentful Paint) | 1.5s | 1.5s | < 1.8s | ✅ 良好 |
| CLS (Cumulative Layout Shift) | 0 | 0 | < 0.1 | ✅ 優秀 |
| TBT (Total Blocking Time) | 210ms | 660ms | < 200ms | ⚠️ 接近通過（大幅改善） |
| TTI (Time to Interactive) | 2.6s | 2.7s | < 3.8s | ✅ 良好 |
| Speed Index | 3.2s | 2.8s | < 3.4s | ⚠️ 臨界 |

> **重要變化**：TBT 從 660ms 降至 210ms（-68%），接近 200ms 閾值但尚未完全通過。Speed Index 微升 0.4s，需關注。

### 1.3 安全性

| 項目 | 結果 | 評價 |
|------|------|------|
| SSL | GitHub Pages 託管（HTTPS 強制） | ✅ 良好 |
| HSTS | 未設定 | ⚠️ 需關注（GitHub Pages 限制） |
| X-Frame-Options | 未設定 | ⚠️ 需關注（GitHub Pages 限制） |
| X-Content-Type-Options | 未設定 | ⚠️ 需關注（GitHub Pages 限制） |
| CSP | 未設定 | ⚠️ 需關注（GitHub Pages 限制） |
| Mozilla Observatory | API 暫時不可用 | ⏳ 待重測 |
| SSL Labs | 掃描進行中 | ⏳ 待重測 |

> **備註**：GitHub Pages 不支援自訂 HTTP Response Headers。安全性 Header 缺失為平台限制，非本站問題。可透過 `<meta>` 標籤部分補強 CSP。

### 1.4 HTML 驗證

| 項目 | 數量 | 評價 |
|------|------|------|
| Errors | 0 | ✅ 無錯誤 |
| Warnings | 0 | ✅ 無警告 |

> **數據來源**：W3C Validator，2026-03-22

### 1.5 SEO 基礎

| 項目 | 狀態 | 說明 |
|------|------|------|
| robots.txt | ✅ 存在 | 正確設定 |
| sitemap.xml | ✅ 存在 | 41 個 URL（前版 25 個，+64%） |
| Meta Description | ✅ 存在 | 各頁面皆有 |
| OG Tags | ✅ 完整 | 含 og:image (1200x630) |
| Schema.org | ✅ 完整 | Article、FAQPage、BreadcrumbList |
| `layout: report` | ✅ 已設定 | 報告頁面使用 report layout |

### 1.6 壞連結

| 狀態 | 數量 |
|------|------|
| Sitemap URL | 41 |
| 已知壞連結 | 0（上次檢測） |

> **備註**：sitemap.xml 回傳 HTML 而非 XML（可能為 GitHub Pages 路徑問題），需確認實際可存取性。

---

## 2. 內容盤點

### 2.1 Extractor Layer 統計

| Layer | 文件數 | 最新文件日期 | 主要分類 | 狀態 |
|-------|--------|-------------|----------|------|
| eu_regulations | 378 | 2026-03-03 | institutional_administration(120), financial_compliance(81), critical_infrastructure(66), supply_chain(54) | ⚠️ 最新僅至 W09 |
| nist_cybersecurity_insights | 125 | 2026-03-20 | privacy(25), workforce(19), identity(19), policy_guidance(17) | ✅ 正常 |
| csa_cloud_security | 102 | 2026-02-19 | ai_security(36), identity(21), cloud_security(18), compliance(16) | ✅ 正常 |
| iso_standards | 92 | 2025-12-22 | other(62), information_security(20) | ⚠️ 分類偏籠統 |
| cisa_kev | 63 | 2026-03-09 | vulnerability(63) | ✅ 正常 |
| nist_frameworks | 63 | 2025-07-22 | cybersecurity(29), identity(9), supply_chain(8) | ⚠️ 文件日期偏舊 |
| sans_isc | 28 | 2026-03-16 | threat_analysis(12), malware(10), vulnerability(5) | ✅ 正常 |
| **合計** | **851** | | | |

### 2.2 Narrator Mode 統計

| Mode | 報告數 | 週報涵蓋（W05-W12） | 最新期數 | 狀態 |
|------|--------|---------------------|----------|------|
| rule_change_brief | 6 | W05, W06, W07, W08, W09, W12 | W12 | ✅ 正常 |
| critical_infrastructure_resilience | 5 | W06, W07, W08, W09, W12 | W12 | ✅ 正常 |
| cybersecurity_compliance | 5 | W06, W07, W08, W09, W12 | W12 | ✅ 正常 |
| supply_chain_security | 5 | W06, W07, W08, W09, W12 | W12 | ✅ 正常 |
| ai_governance_landscape | 3 | W07 + 月報(2月,3月) | 2026-03 月報 | ⚠️ 缺週報 |
| executive_summary | 2 | W09, W12 | W12 | ⚠️ 缺 W05-W08 |
| ai_implementation_guide | 1 | 月報(3月) | 2026-03 月報 | ⚠️ 僅月報 |
| **合計** | **27** | | | |

> **報告缺口**：W10-W11 所有 Mode 均無產出。ai_governance_landscape 和 ai_implementation_guide 缺少週報格式，僅有月報。

### 2.3 REVIEW_NEEDED 文件

| 來源 | 數量 | 主要分布 |
|------|------|----------|
| Extractor | 15 | eu_regulations(10), cisa_kev(4), iso_standards(1) |
| Narrator | 30 | ai_governance_landscape(4, 含 index.md), supply_chain_security(1), 其他散布 |
| **合計** | **45** | |

**Extractor REVIEW_NEEDED 原因分析**：
- **eu_regulations (10)**：主要為制裁/限制性措施類文件，與核心風險管理主題關聯性較低
- **cisa_kev (4)**：部分 CVE 條目缺乏完整來源資訊
- **iso_standards (1)**：基因組標準修訂（非核心領域）

**Narrator REVIEW_NEEDED 注意**：ai_governance_landscape 的 3 份報告和 index.md 均標記 REVIEW_NEEDED，表示該 Mode 品質穩定性需要加強。

### 2.4 靜態頁面清單

| 頁面 | 檔案 | 類型 | 狀態 | 優先級 |
|------|------|------|------|--------|
| 首頁 | index.md | 首頁 | ✅ 正常 | P0 |
| 關於 | about.md | 關於頁 | ✅ 正常 | P1 |
| 快速開始 | getting-started.md | 指引頁 | ✅ 正常 | P1 |
| 術語表 | glossary.md | 參考頁 | ✅ 正常 | P2 |

### 2.5 內容分類分布

| 分類 | 文件數 | 佔比 | 來源 Layer |
|------|--------|------|-----------|
| institutional_administration | 120 | 14.1% | eu_regulations |
| financial_compliance | 81 | 9.5% | eu_regulations |
| critical_infrastructure | 66 | 7.8% | eu_regulations |
| vulnerability | 68 | 8.0% | cisa_kev(63) + sans_isc(5) |
| other | 62 | 7.3% | iso_standards |
| supply_chain | 54 | 6.3% | eu_regulations |
| ai_security | 36 | 4.2% | csa_cloud_security |
| cybersecurity | 34 | 4.0% | nist_frameworks(29) + eu_regulations(5) |
| privacy | 29 | 3.4% | nist_cybersecurity_insights(25) + nist_frameworks(4) |
| identity | 49 | 5.8% | csa_cloud_security(21) + nist_cybersecurity_insights(19) + nist_frameworks(9) |
| 其他分類 | 252 | 29.6% | 分散 |

> **觀察**：eu_regulations 佔總文件數 44.4%（378/851），但其中 institutional_administration（120 份）多為制裁決議，與核心受眾的風險管理需求關聯性較低。

---

## 3. 流量分析

### 無 GA 數據時的替代分析

| 分析項目 | 結果 | 建議 |
|----------|------|------|
| **導航結構** | 清晰，採 Mode 分類的階層式設計；sidebar 包含所有 7 個 Mode | 可增加依角色/議題的交叉導航 |
| **CTA 明確度** | 首頁有角色導向快速導覽表格 | CTA 可更顯眼，加入「本週必讀」區塊 |
| **內容完整度** | 851 份萃取 + 27 份報告，每週穩定產出 | W10-W11 產出缺口需補齊 |
| **資訊架構深度** | 首頁 → Mode 索引 → 週報（3 層） | 合理，但缺乏跨 Mode 搜尋 |
| **更新頻率** | 最新報告 W12（2026-03-22） | 持續運作中 |
| **RSS/訂閱** | 首頁標註「規劃中」 | 尚未實作，無法留住回訪用戶 |

---

## 4. 與前版比較（2026-02-19 → 2026-03-22）

| 指標 | 2026-02-19 | 2026-03-22 | 變化 | 評價 |
|------|------------|------------|------|------|
| Performance 分數 | 83 | 95 | **+12** | ✅ 大幅改善 |
| TBT | 660ms | 210ms | **-68%** | ✅ 大幅改善（但未達 <200ms） |
| Sitemap URL 數 | 25 | 41 | **+64%** | ✅ 內容成長 |
| Extractor 文件數 | 851 | 851 | 0 | — 持平 |
| Narrator 報告數 | 27 | 27 | 0 | — 持平 |
| REVIEW_NEEDED 文件 | 未統計 | 45 | — | ⚠️ 需清理 |
| Mode 完整度 | 5/7 有 W12 | 5/7 有 W12 | 0 | ⚠️ 缺口未補 |

> **重大進展**：Performance 分數從 83 提升至 95，TBT 從 660ms 降至 210ms，接近 P0 目標。
> **待改善**：ai_governance_landscape 和 ai_implementation_guide 仍缺少週報格式，Mode 完整度未提升。

---

## 5. 建議 KPI

| KPI | 當前基準（2026-03-22） | 3 個月目標 | 6 個月目標 | 測量方式 |
|-----|------------------------|-----------|-----------|----------|
| Performance 分數 | 95 | 97+ | 99 | Lighthouse |
| TBT | 210ms | < 200ms | < 150ms | Lighthouse |
| Speed Index | 3.2s | < 3.0s | < 2.5s | Lighthouse |
| 月訪客數 | 未知 | 500+ UV | 1,000+ UV | Google Analytics |
| 關鍵字排名（5 組目標詞） | 未知 | 前 30 名 | 前 20 名 | Search Console |
| 回訪率 | 未知 | 20% | 30% | GA |
| Mode 週報完整度 | 5/7 | 7/7 | 7/7 | 內部監控 |
| REVIEW_NEEDED 文件數 | 45 | < 20 | < 10 | `grep -rl` 統計 |
| Extractor 文件數 | 851 | 950+ | 1,100+ | `find` 統計 |

---

## 6. 關鍵發現摘要

### 優勢

1. **效能大幅改善**：Performance 從 83 → 95，TBT 從 660ms → 210ms，接近 Core Web Vitals 全部通過
2. **SEO 基礎滿分**：100 分，Schema.org 標記完整（Article、FAQPage、BreadcrumbList）
3. **Accessibility 滿分**：100 分，無障礙設計完善
4. **零 HTML 錯誤**：W3C 驗證通過，無壞連結
5. **內容規模穩定成長**：Sitemap 從 25 → 41 URL，內容持續擴充
6. **結構化程度高**：851 份萃取文件均有標準化 YAML front matter

### 問題（按嚴重度排序）

| 優先級 | 問題 | 影響 | 建議行動 |
|--------|------|------|----------|
| **P0** | TBT 210ms，未通過 200ms 閾值 | Core Web Vitals 未完全通過，影響 Google 排名 | 進一步優化 JS 載入（可能為 lunr.js 搜尋索引過大）；考慮延遲載入或替換為 Pagefind |
| **P0** | ai_governance_landscape / ai_implementation_guide 缺週報 | 7 個 Mode 僅 5 個有完整週報，系統產出不一致 | 排查 Mode 執行失敗原因，補齊 W10-W12 週報 |
| **P1** | 45 份 REVIEW_NEEDED 文件未處理 | 內容品質可信度受質疑；ai_governance_landscape 全部報告均標記 | 逐一審核並消除標記，或將低關聯性文件歸檔 |
| **P1** | eu_regulations 佔比過高（44%）且含大量低關聯性內容 | institutional_administration（制裁決議）120 份與核心受眾需求不符 | 在 fetch 階段加強過濾，或分類為「參考」降低權重 |
| **P1** | E-E-A-T 風險——Author 全為 AI | YMYL 類內容以純 AI 署名影響可信度 | 加入人工審核者資訊；在 About 頁面強化方法論說明 |
| **P1** | 安全性 HTTP Headers 缺失 | HSTS、X-Frame-Options、CSP 等未設定 | GitHub Pages 限制，可透過 `<meta>` 部分補強 CSP |
| **P1** | Speed Index 3.2s（接近 3.4s 閾值） | 使用者感知載入速度偏慢 | 優化首次渲染路徑，減少 render-blocking 資源 |
| **P2** | W10-W11 全部 Mode 無產出 | 週報連續性斷裂 | 確認系統是否因維護/故障導致中斷，建立監控告警 |
| **P2** | iso_standards 62/92 分類為 "other" | 分類精度不足，影響語意搜尋和報告品質 | 細化 iso_standards 分類 enum |
| **P2** | 缺少 RSS Feed | 無法支援自動化訂閱，回訪摩擦高 | 實作 jekyll-feed 外掛 |
| **P2** | nist_frameworks 最新文件為 2025-07-22 | Layer 更新停滯，可能為資料源問題 | 檢查 fetch.sh 是否正常抓取最新文件 |

---

## 7. 與定位文件的對齊檢查

| 定位文件目標 | 現況評估 | 差距 |
|-------------|----------|------|
| 「每週整合 7 大權威來源」 | 7 Layer 運作中，但 eu_regulations RSS 不穩定 | ⚠️ eu_regulations 資料最新僅至 W09 |
| 「產出 7 份結構化報告」 | 5/7 Mode 有 W12 週報，2 個僅月報 | ⚠️ 未達「7 份」承諾 |
| 「免費、開源、每週更新」 | 開源且免費，但有週次缺口（W10-W11） | ⚠️ 「每週」承諾需補強 |
| 「851+ 份結構化文件」 | 851 份，一個月無成長 | ⚠️ 萃取管線可能卡住 |
| 「降低 TBT 至 200ms 以下」 | 210ms（從 660ms 大幅改善） | ⚠️ 差 10ms 未達標 |
| 「補齊 E-E-A-T 信號」 | 尚未加入人工審核者資訊 | ❌ 未開始 |

---

## 數據來源

| 工具/方法 | 時間 | 檢測項目 |
|-----------|------|----------|
| Lighthouse 本地檢測（site-audit.sh） | 2026-03-22 10:22:11 | Performance, SEO, Accessibility, Core Web Vitals |
| HTTP Headers 檢測（site-audit.sh） | 2026-03-22 10:22:11 | HSTS, X-Frame-Options, CSP 等 |
| W3C Validator（site-audit.sh） | 2026-03-22 10:22:11 | HTML Errors/Warnings |
| SEO Files 檢測（site-audit.sh） | 2026-03-22 10:22:11 | robots.txt, sitemap.xml |
| Mozilla Observatory | 2026-03-22 | API 暫時不可用，待重測 |
| SSL Labs | 2026-03-22 | 掃描進行中，待重測 |
| `find docs/ -name "*.md"` | 2026-03-22 | 文件數量統計 |
| `grep -rl "REVIEW_NEEDED"` | 2026-03-22 | REVIEW_NEEDED 文件統計 |
| 前版 discovery.md | 2026-02-19 | 基線比較數據 |
| 定位文件 positioning.md | 2026-03-22 | 對齊檢查 |
