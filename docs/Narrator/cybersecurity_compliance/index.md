---
last_modified_at: 2026-06-17
layout: default
title: Cybersecurity Compliance
nav_order: 16
has_children: true
---

# Cybersecurity Compliance Updates — 2026-W25

<div class="key-takeaway">
本週重點：ISO/IEC 15408:2026 IT 安全評估準則系列（Part 1–5）與 ISO/IEC 18045:2026 全面改版發布，強化評估方法的客觀性、可重複性與可再現性；NIST NVD 改採「風險優先」營運模型，2026-03-01 前發布的 CVE 將標記為「Not Scheduled」，全球漏洞管理流程須重新評估對 NVD 豐富化資料的依賴；CISA KEV 目錄中 CVE-2025-31125（Vite）與 CVE-2025-34026（Versa Concerto）兩項漏洞聯邦修補期限（2026-02-12）已逾期。
</div>

> 本期追蹤 50 項資安合規動態，涵蓋 NIST 框架、NIST 洞察、ISO 標準、CISA KEV 與 CSA 雲端安全。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的資安合規動態">
  <strong>ISO/IEC 15408:2026 IT 安全評估準則系列（Part 1–5）與 ISO/IEC 18045:2026 全面改版發布</strong>（國際，revision，recommended），同步 NIST NVD 改採風險優先營運模型，重新定義 CVE 豐富化範圍，全球漏洞管理流程須調整對 NVD 資料的依賴。
</p>

1. **ISO/IEC 15408:2026「Common Criteria」系列全面改版**（國際，revision，recommended）
   - ISO/IEC JTC 1/SC 27 發布 ISO/IEC 15408 第 1–5 部分第 2 版及配套評估方法 ISO/IEC 18045:2026。
   - 第 4 部分強調評估方法與活動須符合客觀、可重複、可再現的標準化要求。

2. **NIST NVD 改採「風險優先」CVE 豐富化模型**（美國，revision，informational）
   - 聯邦機構與 CISA KEV 目錄中的 CVE 優先處理，2026-03-01 前發布的 CVE 標記為「Not Scheduled」。
   - 新優先處理標準自 2026-04-15 生效；依賴 NVD enrichment 的組織須重新評估漏洞管理流程。

3. **CISA KEV 兩項漏洞聯邦修補期限已逾期**（美國，new，mandatory）
   - CVE-2025-31125（Vite）與 CVE-2025-34026（Versa Concerto）修補期限均為 2026-02-12，已逾期逾四個月。

4. **CMVP 密碼模組驗證自動化草案公開意見**（美國，draft / public_comment，recommended）
   - NIST SP 1800-40B（草案）推動驗證流程自動化，公開意見截止日 2026-06-01。

5. **ISO/IEC TS 27103:2026 框架整合指引取代舊版**（國際，revision，recommended）
   - 提供組織在網路安全框架中系統性採用 ISO/IEC 標準的實務指引，取代舊版標準（ID 72437）。

<blockquote class="expert-quote">
  「NVD 採用風險優先模型重新定義 CVE 豐富化範圍——聯邦機構與 CISA KEV 目錄中的 CVE 優先處理，其餘 CVE 的豐富化時程將視資源調整。」
  <cite>NIST National Vulnerability Database (NVD) Program, 2026-04-15</cite>
</blockquote>

---

## KEV 逾期漏洞處置

| CVE | 廠商 / 產品 | 漏洞類型 | 修補期限（BOD 22-01） | 狀態（相對 2026-06-17） |
|-----|-------------|----------|------------------------|--------------------------|
| CVE-2025-31125 | Vite / Vitejs | 不當存取控制 | 2026-02-12 | ⚠️ 已逾期 |
| CVE-2025-34026 | Versa / Concerto（SD-WAN） | 不當身分驗證 | 2026-02-12 | ⚠️ 已逾期 |

逾期未處置的聯邦機構須立即套用廠商緩解措施，無法緩解則須停用該產品。

---

## L5 — Evolution Signals

- [系統推論] **漏洞管理正從「集中式資料庫豐富化」轉向「風險優先分流」**：NVD 改採風險優先模型，組織將更倚賴 CISA KEV 與廠商通報決定修補優先序。

- [系統推論] **資安認證評估標準進入同步改版週期**：ISO/IEC 15408 全系列與 18045 同步發布第 2 版，認證營運者與評估實驗室面臨方法遷移期。

- [系統推論] **合規驗證流程持續自動化**：CMVP 自動化草案顯示 NIST 正推廣「標準化提交協定 + 雲端原生基礎設施」驗證模式。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| 來源分布 | NIST Frameworks: 19, NIST Insights: 17, ISO Standards: 11, CISA KEV: 2, CSA Cloud Security: 1 |
| enforcement_signal 分布 | recommended: 29, informational: 13, mandatory: 3 |
| KEV 逾期漏洞 | 2 |
| REVIEW_NEEDED | 1 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | cybersecurity, ai_risk, supply_chain | 19 | 2025-07-28 ~ 2026-05-21 |
| nist_cybersecurity_insights | cybersecurity, ai_risk, workforce, privacy 等 | 17 | 2024-02-28 ~ 2026-05-04 |
| iso_standards | information_security | 11 | 2026-02-06 ~ 2026-05-19 |
| cisa_kev | vulnerability | 2 | 2026-01-22 |
| csa_cloud_security | cloud_security | 1 | 2026-01-27 |

> 備註：本期 Qdrant 語意搜尋結果未涵蓋 eu_regulations Layer 的資料，歐盟資安合規動態請參閱獨立的 EU 法規報告。

完整報告：[2026-W25 Cybersecurity Compliance](2026-W25-cybersecurity-compliance.md)

---

*報告產出：Narrator Mode - cybersecurity_compliance*
*資料擷取時間點：2026-06-17*
