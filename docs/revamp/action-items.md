# 改版行動項目清單

> 產出日期：2026-03-22（更新版，前版 2026-02-19）
> 來源：Revamp 完整分析流程（6 階段 + Final Review）

---

## P0 必須修正

**影響**：阻礙核心價值主張或嚴重影響可信度和系統穩定性

| # | 項目 | 來源 | 具體行動 | 階段 | 驗收標準 |
|---|------|------|----------|------|----------|
| 1 | **加入審核者標記 + 方法論頁面** | G1, S1 | (1) 報告模板加入 `.report-meta` 區塊（產出方式、審核狀態、資料來源、方法論連結）；(2) 新增 `/methodology/` 頁面說明 L1-L4 萃取邏輯和三級品質控制機制 | Phase 1 | 所有新報告有審核標記；/methodology/ 可正常存取 |
| 2 | **TBT 最後 10ms 優化（210ms → <200ms）** | G3, S2 | 依序嘗試：(A) lunr.js 延遲載入（`defer`）；(B) 評估替換為 Pagefind；(C) 移除非必要 JS | Phase 1 | TBT < 200ms（Lighthouse 本地測試） |
| 3 | **修復 Mode 產出管線（7/7 穩定）** | G2, S3 | (1) 確認 Qdrant 連線和 collection 正常；(2) 檢查 ai_governance_landscape / ai_implementation_guide 的 CLAUDE.md 搜尋關鍵字；(3) 執行一次完整流程驗證 7/7 可產出；(4) 建立執行監控告警 | Phase 1 | 7/7 Mode 連續 2 次成功執行 |
| 4 | **修復 eu_regulations 資料源** | G8, S4 | (1) 排查 EUR-Lex RSS URL 有效性；(2) 檢查回傳格式變更；(3) 備援：CELLAR/SPARQL API 或 OJ 直接抓取；(4) URL 正規化為 `/EN/TXT` | Phase 1 | fetch.sh 可取得新資料且連續 2 週穩定 |
| 5 | **REVIEW_NEEDED 批次清理** | G9, S5 | (1) 列出 45 份文件；(2) Extractor 15 份逐一審核（低關聯性→歸檔，品質問題→修正）；(3) Narrator 30 份逐一審核（ai_governance_landscape 優先處理）；(4) 建立清理紀錄 | Phase 1 | REVIEW_NEEDED < 10 份 |

---

## P1 建議改善

**影響**：明顯提升使用者體驗或限制成長的問題

| # | 項目 | 來源 | 具體行動 | 階段 | 驗收標準 |
|---|------|------|----------|------|----------|
| 6 | **RSS/Atom Feed** | G5, S6 | (1) _config.yml 加入 jekyll-feed；(2) head_custom.html 加入 `<link rel="alternate">`；(3) 確認僅含 Narrator 報告（排除 Extractor） | Phase 2 | /feed.xml 可在 Feedly/Inoreader 正常訂閱 |
| 7 | **報告加入合規時程/行動期限** | G4, S7 | (1) 新增「行動時程」區塊（即時/30 天/90 天）；(2) Mode CLAUDE.md 加入 effective_date、compliance_deadline 萃取邏輯；(3) 推論性期限標註 `[系統推論]` | Phase 2 | >= 3 個 Mode 報告含行動時程 |
| 8 | **首頁導航優化 + 訂閱入口** | G6, S8 | (1) 快速導覽表格新增「最新一期」欄位；(2) 加入 RSS 訂閱按鈕區塊；(3) 選用：加入「本週重點」區塊 | Phase 2 | 首頁有 RSS 入口；所有連結可正常運作 |
| 9 | **About 頁 E-E-A-T 強化** | S9 | (1) 新增「為什麼選擇我們」4 子區塊；(2) 新增「系統運作流程」簡化版；(3) 新增維護者資訊（誠實呈現 AI+人工混合模式） | Phase 2 | 4 個新區塊完成；方法論連結有效 |
| 10 | **跨框架比較表頁面** | G12, S10 | (1) 新增 /framework-comparison/；(2) 框架概述表格（6+ 框架）；(3) 跨框架比較矩陣（8+ 面向）；(4) 行動建議 + FAQ（3-5 題 FAQPage Schema） | Phase 3 | 頁面上線；SEO 規格完整 |
| 11 | **GA / Search Console 設定** | Final Review 發現 | (1) 在 GitHub Pages 設定 GA tracking code；(2) 設定 Search Console 驗證；(3) 建立 KPI 追蹤基線 | Phase 2 | GA 可追蹤流量；Search Console 可查看搜尋表現 |
| 12 | **執行監控告警** | Final Review 發現 | (1) 建立 GitHub Actions workflow 或 cron 檢查；(2) 每次「執行完整流程」後驗證 7/7 Mode 產出；(3) eu_regulations fetch 結果非空檢查 | Phase 1 | 監控 workflow 可偵測產出中斷 |
| 13 | **W10-W11 處理決策** | Final Review 發現 | 明確決定：(A) 補產 W10-W11 報告以維持連續性；或 (B) 在報告索引中標註缺口原因，誠實呈現系統中斷歷史 | Phase 1 | 決策已記錄於策略文件中 |

---

## P2 可考慮

**影響**：錦上添花的優化，可提升差異化優勢

| # | 項目 | 來源 | 具體行動 | 階段 | 驗收標準 |
|---|------|------|----------|------|----------|
| 14 | **iso_standards 分類細化** | G14, S11 | (1) 擴充 category enum（information_security, privacy, ai_governance 等 9 類）；(2) 重新歸類 62 份 "other" 文件；(3) 更新 Qdrant payload | Phase 3 | "other" 佔比 < 30% |
| 15 | **eu_regulations 低關聯性內容降權** | S12 | (1) fetch.sh 加入過濾條件（制裁決議排除）；(2) 現有 120 份 institutional_administration 歸檔至 archived/ | Phase 3 | 新 fetch 不再擷取制裁決議；搜尋品質改善 |
| 16 | **責任追蹤專題頁面** | G10, S13 | (1) 新增 /responsibility-tracker/；(2) 按 shift_type 和 affected_roles 分類呈現；(3) SEO 佈局搶佔 "responsibility attribution framework" | Phase 3 | 頁面上線；SEO 規格完整 |
| 17 | **動態目錄（Sticky TOC）** | S14 | (1) CSS sticky 設定；(2) 桌面版 sidebar TOC 固定；(3) 手機版摺疊式 TOC | Phase 3 | TOC 隨捲動固定；TBT 不增加 |
| 18 | **品牌訊息 fallback 方案** | Final Review 發現 | 若 S3 修復後仍無法實現 7/7 週報，準備替代品牌訊息：「5 份週報 + 2 份月報」 | Phase 1 後評估 | 品牌訊息與實際產出一致 |
| 19 | **nist_frameworks 資料源排查** | Final Review 發現 | 檢查 nist_frameworks fetch.sh 是否正常抓取（最新文件為 2025-07-22，8 個月前）；在修復 S4 時順便排查 | Phase 1 | 確認 fetch.sh 運作正常或記錄 NIST 本身發布頻率低的結論 |
| 20 | **安全性 HTTP Headers 補強** | Discovery 發現 | 透過 `<meta>` 標籤部分補強 CSP（GitHub Pages 不支援自訂 HTTP Response Headers） | Phase 2 | `<meta http-equiv="Content-Security-Policy">` 已設定 |

---

## 執行順序建議

```
Phase 1（信任建設 + 產出修復）
├── 平行執行：
│   ├── #1 審核標記 + 方法論頁面
│   ├── #2 TBT 最後 10ms 優化
│   └── #13 W10-W11 處理決策
├── 診斷後執行：
│   ├── #3 Mode 產出管線修復
│   ├── #4 eu_regulations 資料源修復
│   └── #19 nist_frameworks 排查（順便）
├── 依賴 #3 #4：
│   └── #5 REVIEW_NEEDED 批次清理
└── 完成後：
    └── #12 執行監控告警

Phase 2（使用者留存 + 體驗改善）
├── 平行執行：
│   ├── #6 RSS Feed
│   ├── #7 合規時程
│   ├── #9 About 頁強化
│   ├── #11 GA / Search Console
│   └── #20 CSP meta 標籤
└── 依賴 #6：
    └── #8 首頁導航 + 訂閱入口

Phase 3（差異化強化）
├── 平行執行：
│   ├── #10 跨框架比較表
│   ├── #14 iso_standards 分類
│   ├── #15 eu_regulations 降權
│   ├── #16 責任追蹤專題
│   └── #17 動態目錄
└── 評估：
    └── #18 品牌訊息 fallback（如需要）
```

---

## 摘要統計

| 優先級 | 項目數 | 重點項目 |
|--------|--------|----------|
| **P0** | 5 | 審核標記+方法論、TBT 優化、Mode 修復、eu_reg 修復、REVIEW_NEEDED 清理 |
| **P1** | 8 | RSS Feed、合規時程、首頁導航、About E-E-A-T、跨框架比較、GA 設定、監控告警、W10-W11 決策 |
| **P2** | 7 | iso 分類、eu_reg 降權、責任追蹤專題、Sticky TOC、品牌 fallback、nist 排查、CSP 補強 |
| **合計** | **20** | |

---

## 數據來源

| 來源 | 用途 | 日期 |
|------|------|------|
| positioning.md | 品牌承諾和改版目標 | 2026-03-22 |
| discovery.md | 技術效能和內容盤點數據 | 2026-03-22 |
| competitive.md | 競品差距和借鏡做法 | 2026-03-22 |
| analysis.md | 差距清單 G1-G14 | 2026-03-22 |
| strategy.md | 策略項目 S1-S14 和分期規劃 | 2026-03-22 |
| content-spec.md | 規格書檢查和驗收標準 | 2026-03-22 |
| final-review.md | 整合驗收發現的額外問題 | 2026-03-22 |
