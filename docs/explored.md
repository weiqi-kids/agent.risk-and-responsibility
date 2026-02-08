# 資料源探索紀錄

## 已採用

| 資料源 | 類型 | 對應 Layer | 採用日期 | 備註 |
|--------|------|-----------|----------|------|
| NIST Information Technology News | RSS | nist_frameworks | 2026-01-27 | 50 items, 涵蓋 SSDF、AI RMF、CSF 等框架動態 |
| NIST Cybersecurity Insights Blog | RSS | nist_cybersecurity_insights | 2026-01-27 | ~40 items, 資安專家分析文、政策評論、人才教育 |
| EUR-Lex Parliament & Council Legislation | RSS | eu_regulations | 2026-01-27 | 100 items, 歐洲議會與理事會立法行為（Regulation/Directive/Decision） |
| CISA Known Exploited Vulnerabilities | JSON | cisa_kev | 2026-02-08 | 每日更新，已知被利用漏洞清單，聯邦機構強制修補 |
| SANS ISC Handler's Diary | RSS | sans_isc | 2026-02-08 | 每日安全分析，威脅情報、漏洞分析、惡意軟體 |
| ISO Open Data Platform | CSV | iso_standards | 2026-02-08 | 80K+ 標準元資料，篩選 IT/安全/治理相關 |
| Cloud Security Alliance Blog | RSS | csa_cloud_security | 2026-02-08 | 雲安全最佳實踐、AI 安全、合規框架 |

## 評估中

| 資料源 | 類型 | URL | 語言 | 發現日期 | 狀態 | 下次評估 |
|--------|------|-----|------|----------|------|----------|
| UK Legislation | RSS | legislation.gov.uk | EN | 2026-01-27 | 按法規類型提供 feed | 待評估 |
| PCI SSC Blog | RSS | https://blog.pcisecuritystandards.org/rss.xml | EN | 2026-01-27 | 可用，支付安全標準 | 待評估 |
| Taiwan 法務部 | RSS | https://www.moj.gov.tw/ | ZH-TW | 2026-01-27 | 有 RSS，台灣法規動態 | 待評估 |

## 已排除

| 資料源 | 類型 | 排除原因 | 排除日期 | 重新評估時間 |
|--------|------|----------|----------|-------------|
| CISA RSS Alerts | RSS | 2025-05 停用，改用 email/JSON API | 2026-01-27 | 若恢復 RSS |
| ENISA RSS | RSS | 隨新網站停用 | 2026-01-27 | 若推出新 feed |
| NVD RSS | RSS | 2025-08 退役，改用 API | 2026-01-27 | N/A |
| NIST Cybersecurity Topic RSS | RSS | Feed 回傳空內容（0 items） | 2026-01-27 | 下次巡檢 |
| CSRC Publications RSS | RSS | 所有嘗試的 URL 回傳 404 | 2026-01-27 | 下次巡檢 |
