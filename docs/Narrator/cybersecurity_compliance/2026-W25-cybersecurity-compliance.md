---
layout: report
title: "2026-W25 Cybersecurity Compliance"
parent: "Cybersecurity Compliance"
nav_order: 25
last_modified_at: 2026-06-17

seo:
  title: "2026-W25 資安合規動態 | ISO 15408、NVD 政策、CISA KEV 逾期漏洞"
  description: "本週追蹤 50 項資安合規動態，涵蓋 ISO/IEC 15408:2026 系列改版、NIST NVD 風險優先營運政策、CMVP 自動化草案、SP 800-53 強制控制項，以及 CISA KEV 兩項逾期修補漏洞。"
  date_published: "2026-06-17"
  date_modified: "2026-06-17"
  article_section: "Cybersecurity Compliance"
  keywords:
    - "Cybersecurity Compliance"
    - "ISO/IEC 15408"
    - "NIST NVD"
    - "CISA KEV"
    - "SP 800-53"
    - "資安合規"
    - "CMVP"
    - "ISO 27103"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W13-cybersecurity-compliance/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W25-rule-change-brief/"
  faq:
    - question: "2026-W25 有哪些重要的資安合規動態？"
      answer: "2026-W25 週報追蹤 50 項資安合規動態，重點包括 ISO/IEC 15408:2026 IT 安全評估準則系列（Part 1–5）與 ISO/IEC 18045:2026 改版發布、NIST NVD 改採風險優先模型重新定義 CVE 豐富化範圍、CMVP 密碼模組驗證自動化草案（NIST SP 1800-40B）公開意見，以及 CISA KEV 目錄中 CVE-2025-31125（Vite）與 CVE-2025-34026（Versa Concerto）兩項聯邦修補期限已逾期的漏洞。"
    - question: "NIST 與國際標準（ISO）的資安要求有何差異？"
      answer: "NIST 框架（CSF 2.0、SP 800 系列）以自願性為主，聯邦機構透過行政命令強制採用，部分控制項（如 SP 800-53 Rev. 5.2.0 的 SA-15、SI-02(07)、SA-24）對聯邦系統為強制；ISO/IEC 標準（如 27103、15408）屬國際自願性指引與評估準則，enforcement_signal 為 recommended，組織需自行對應採用。ISO/IEC TS 27103:2026 正是提供如何在網路安全框架中系統性整合 ISO 與 NIST 標準的指引。"
    - question: "CISA KEV 目錄的修補義務有何最新變化？"
      answer: "本期 CISA KEV 目錄收錄 CVE-2025-31125（Vite Vitejs 不當存取控制）與 CVE-2025-34026（Versa Concerto 不當身分驗證）兩項漏洞，依 BOD 22-01 兩者聯邦機構修補期限均為 2026-02-12，相對於資料日 2026-06-17 已逾期超過四個月。逾期未處置的機構須立即套用廠商緩解措施，若無法緩解則須停用該產品。"
---

# Cybersecurity Compliance Updates — 2026-W25 {: .no_toc }

<div class="key-takeaway">
本週重點：ISO/IEC 15408:2026 IT 安全評估準則系列（Part 1–5）與 ISO/IEC 18045:2026 全面改版發布，強化評估方法的客觀性、可重複性與可再現性；NIST NVD 改採「風險優先」營運模型，2026-03-01 前發布的 CVE 將標記為「Not Scheduled」，全球漏洞管理流程須重新評估對 NVD 豐富化資料的依賴；CISA KEV 目錄中 CVE-2025-31125（Vite）與 CVE-2025-34026（Versa Concerto）兩項漏洞聯邦修補期限（2026-02-12）已逾期。
</div>

> 本期追蹤 50 項資安合規動態，涵蓋 NIST 框架、NIST 洞察、ISO 標準、CISA KEV 與 CSA 雲端安全。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 50 個權威來源（NIST、ISO/IEC、CISA、CSA 等） |
| 資料時間 | 2024-02-28 ~ 2026-05-21 |

</div>

---

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的資安合規動態">
  <strong>ISO/IEC 15408:2026 IT 安全評估準則系列（Part 1–5）與 ISO/IEC 18045:2026 全面改版發布</strong>（國際，revision，recommended），同步 NIST NVD 改採風險優先營運模型，重新定義 CVE 豐富化範圍，全球漏洞管理流程須調整對 NVD 資料的依賴。
</p>

1. **ISO/IEC 15408:2026「Common Criteria」系列全面改版**（國際，revision，recommended）
   - ISO/IEC JTC 1/SC 27 發布 ISO/IEC 15408 第 1–5 部分第 2 版及配套評估方法 ISO/IEC 18045:2026，更新 IT 安全評估準則框架。
   - 第 4 部分（ISO/IEC 15408-4:2026）強調評估方法與活動須符合客觀、可重複、可再現的標準化要求，影響評估機構、認證方案營運者與評估方法撰寫者。
   - 來源：ISO/IEC 15408-1~5:2026、ISO/IEC 18045:2026（status：final）。

2. **NIST NVD 改採「風險優先」CVE 豐富化模型**（美國，revision，informational）
   - NIST 國家漏洞資料庫（NVD）重新定義豐富化範圍：聯邦機構與 CISA KEV 目錄中的 CVE 優先處理，2026-03-01 前發布的 CVE 標記為「Not Scheduled」。
   - 依賴 NVD enrichment 的組織須重新評估漏洞管理流程；新優先處理標準自 2026-04-15 生效。為營運政策變更公告（無正式出版編號），enforcement_signal 為 informational。
   - 來源：[NIST Updates NVD Operations to Address Record CVE Growth](https://www.nist.gov/news-events/news/2026/04/nist-updates-nvd-operations-address-record-cve-growth)。

3. **CISA KEV 兩項漏洞聯邦修補期限已逾期**（美國，new，mandatory）
   - CVE-2025-31125（Vite Vitejs 不當存取控制）與 CVE-2025-34026（Versa Concerto 不當身分驗證）依 BOD 22-01 修補期限均為 2026-02-12，相對資料日 2026-06-17 已逾期逾四個月。
   - 聯邦機構須立即套用廠商緩解措施，無法緩解者須停用產品（詳見「KEV 逾期漏洞處置」）。

4. **CMVP 密碼模組驗證自動化草案公開意見**（美國，draft / public_comment，recommended）
   - NIST NCCoE 發布 NIST SP 1800-40B（草案），推動密碼模組驗證流程自動化，要求供應商、測試實驗室與驗證機構採用標準化提交協定與雲端原生基礎設施。公開意見截止日 2026-06-01。
   - 來源：[Automation of the NIST Cryptographic Module Validation Program](https://www.nist.gov/news-events/news/2026/04/new-publication-automation-nist-cryptographic-module-validation-program)。

5. **ISO/IEC TS 27103:2026 框架整合指引取代舊版**（國際，revision，recommended）
   - 提供組織在網路安全框架中系統性採用 ISO/IEC 標準的實務指引，取代舊版標準（ID 72437），對同時實施 ISO 27001 與 NIST CSF 的組織具參考價值。
   - 來源：ISO/IEC TS 27103:2026（status：final）。

<blockquote class="expert-quote">
  「NVD 採用風險優先模型重新定義 CVE 豐富化範圍——聯邦機構與 CISA KEV 目錄中的 CVE 優先處理，其餘 CVE 的豐富化時程將視資源調整。」
  <cite>NIST National Vulnerability Database (NVD) Program, 2026-04-15</cite>
</blockquote>

---

## 區域動態比較

<p class="key-answer" data-question="美國與國際的資安框架本週有哪些動態">
  美國端 NIST 以 NVD 營運政策變更、CMVP 自動化草案與 SP 800-53 Rev. 5.2.0 強制控制項為主；國際端 ISO/IEC 集中於 15408 評估準則系列與 27103 框架整合指引的改版。本期 Qdrant 結果未涵蓋 eu_regulations Layer 資料。
</p>

### 美國（NIST / CISA）

**框架、控制措施與營運政策**

| 文件 | 狀態 | 主要變動 |
|------|------|----------|
| NVD 營運政策變更 | final（informational） | 改採風險優先模型，2026-03-01 前 CVE 標記「Not Scheduled」 |
| NIST SP 1800-40B | draft / public_comment | CMVP 密碼模組驗證自動化（意見截止 2026-06-01） |
| NIST SP 800-53 Rev. 5.2.0 | final（mandatory，聯邦） | SA-15、SI-02(07)、SA-24 三項控制項，回應 EO 14306 |
| NIST IR 8576（Transit Profile） | draft / public_comment | 交通運輸業 CSF 2.0 社群配置文件（意見截止 2026-02-23） |
| NIST IR 8374 Rev.1 | public_comment | 勒索軟體風險管理 CSF 2.0 社群檔案 |
| NIST IR 8349 | final | IoT 設備網路行為特徵化方法學 |
| CISA KEV（CVE-2025-31125 / -34026） | final（mandatory） | 兩項漏洞修補期限 2026-02-12（已逾期） |

> NIST 框架原則上為自願性（CSF、SP 800 系列），但 SP 800-53 對聯邦資訊系統運營者具強制性；CISA KEV 依 BOD 22-01 對聯邦行政機構（FCEB）具強制修補義務。

### 國際（ISO/IEC）

| 文件 | 狀態 | 主要變動 |
|------|------|----------|
| ISO/IEC 15408-1~5:2026 | final（recommended） | IT 安全評估準則（Common Criteria）系列第 2 版改版 |
| ISO/IEC 18045:2026 | final（recommended） | 配套評估方法（Methodology）改版 |
| ISO/IEC TS 27103:2026 | final（recommended） | 網路安全框架整合 ISO/IEC 標準指引，取代舊版 |
| ISO/IEC 25831-1:2026 | final（new） | 新增資安相關標準（SC 27） |
| ISO/IEC 19823-10/21/22:2026 | final（revision） | 相關標準改版 |

> 上述 ISO/IEC 標準均由 ISO/IEC JTC 1/SC 27 制定，enforcement_signal 為 recommended（國際自願性指引與評估準則），組織須自行對應採用，非法律強制。

### 歐盟

本期 Qdrant 語意搜尋結果未涵蓋 eu_regulations Layer 的資料。歐盟資安合規動態（NIS2 Directive 會員國轉換進度、ENISA 指引、Cyber Resilience Act 實施）請參閱獨立的 EU 法規報告。

---

## KEV 逾期漏洞處置

<p class="key-answer" data-question="本週 CISA KEV 有哪些逾期未修補的漏洞">
  本期 CISA KEV 目錄收錄兩項漏洞——CVE-2025-31125（Vite）與 CVE-2025-34026（Versa Concerto），依 BOD 22-01 聯邦修補期限均為 2026-02-12，相對資料日 2026-06-17 兩者皆已逾期超過四個月，須立即依廠商指引套用緩解措施。
</p>

| CVE | 廠商 / 產品 | 漏洞類型 | 修補期限（BOD 22-01） | 狀態（相對 2026-06-17） | 勒索軟體利用 |
|-----|-------------|----------|------------------------|--------------------------|--------------|
| CVE-2025-31125 | Vite / Vitejs | 不當存取控制（暴露非允許檔案） | 2026-02-12 | ⚠️ 已逾期 | Unknown |
| CVE-2025-34026 | Versa / Concerto（SD-WAN） | 不當身分驗證（可存取管理端點） | 2026-02-12 | ⚠️ 已逾期 | Unknown |

**處置要求（依 CISA KEV 與 BOD 22-01）**：
- 依廠商指引於修補期限前套用緩解措施（兩項均已逾期，須立即補做）。
- 雲端服務遵循適用的 BOD 22-01 指引。
- 若無可用緩解措施，須停用該產品。

來源：[CISA Known Exploited Vulnerabilities Catalog — CVE-2025-31125](https://www.cisa.gov/known-exploited-vulnerabilities-catalog#CVE-2025-31125)、[CVE-2025-34026](https://www.cisa.gov/known-exploited-vulnerabilities-catalog#CVE-2025-34026)。

---

## 控制措施對照

<table class="comparison-table">
  <thead>
    <tr>
      <th>控制領域</th>
      <th>NIST 對應</th>
      <th>ISO / EU 對應</th>
      <th>變動摘要</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>日誌管理</td>
      <td>SP 800-53 SA-15（強制，聯邦）</td>
      <td>ISO/IEC 27001 A.8.15 / NIS2 Art.21(2)(g)</td>
      <td>安全事件記錄格式標準化（SP 800-53 Rev. 5.2.0）</td>
    </tr>
    <tr>
      <td>修補管理 / 漏洞處置</td>
      <td>SP 800-53 SI-02(07)（強制）+ CISA KEV / BOD 22-01</td>
      <td>ISO/IEC 27001 A.8.8 / NIS2 Art.21(2)(e)</td>
      <td>修補失敗根因分析；KEV 兩項漏洞逾期</td>
    </tr>
    <tr>
      <td>韌性設計</td>
      <td>SP 800-53 SA-24（強制）</td>
      <td>ISO/IEC 27001 A.5.30 / NIS2 Art.21(2)(c)</td>
      <td>預期、承受、回應、復原能力</td>
    </tr>
    <tr>
      <td>安全評估 / 認證</td>
      <td>SP 800-53 CA-2 / CA-8</td>
      <td>ISO/IEC 15408:2026 + ISO/IEC 18045:2026</td>
      <td>Common Criteria 系列改版，強調客觀、可重複、可再現</td>
    </tr>
    <tr>
      <td>密碼模組驗證</td>
      <td>CMVP（SP 1800-40B 草案）/ FIPS 140-3</td>
      <td>ISO/IEC 19790</td>
      <td>驗證流程自動化（公開意見截止 2026-06-01）</td>
    </tr>
    <tr>
      <td>框架整合</td>
      <td>NIST CSF 2.0</td>
      <td>ISO/IEC TS 27103:2026</td>
      <td>提供 ISO/IEC 標準整合至網路安全框架的指引</td>
    </tr>
  </tbody>
</table>

> EU 對應欄位中的 NIS2 條文映射為跨框架對照參考，本期無對應 eu_regulations Layer 來源資料佐證其最新變動。

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | NVD 營運政策變更 | 資安人員、CNA、聯邦機構、軟體供應商 | clarified | NVD 改採風險優先模型，2026-03-01 前 CVE 標記「Not Scheduled」，依賴 NVD 豐富化的流程須調整 |
| NIST | SP 1800-40B（CMVP 自動化草案） | 密碼模組供應商、測試實驗室、驗證機構、聯邦機構 | new | 驗證流程自動化，須採用標準化提交協定與雲端原生基礎設施 |
| NIST | SP 800-53 Rev. 5.2.0 | 聯邦系統運營者、軟體開發者、系統管理者 | expanded | 新增 SA-15、SI-02(07)、SA-24，責任由被動修補擴展至主動韌性設計（回應 EO 14306） |
| NIST | IR 8576（Transit Profile，草案） | 交通運輸機構、OT/IT 安全管理者 | new | 交通運輸業專屬 CSF 2.0 社群配置文件（自願、風險基礎） |
| CISA | KEV CVE-2025-31125 / -34026 | 使用 Vite、Versa Concerto 的組織、IT/資安團隊 | new | 新增強制修補義務，期限 2026-02-12（已逾期） |
| ISO/IEC | ISO/IEC 15408-4:2026 | IT 安全評估人員、評估方法撰寫者、認證方案營運者 | clarified | 強化評估方法的客觀性、可重複性與可再現性要求 |
| ISO/IEC | ISO/IEC TS 27103:2026 | CISO、網路安全架構師、合規/風險管理人員 | clarified | 更新框架中整合運用 ISO/IEC 標準的指引，取代舊版 |

---

## 義務與舉證要求

<p class="key-answer" data-question="本週新增哪些資安合規義務與舉證要求">
  本期新增義務集中於漏洞處置（CISA KEV 兩項漏洞須於 2026-02-12 前緩解，已逾期）、漏洞管理流程調整（因應 NVD 風險優先模型）、SP 800-53 三項強制控制項實作，以及安全評估須符合 ISO/IEC 15408:2026 改版後的客觀、可重複、可再現要求。
</p>

### 新增義務摘要
- **漏洞修補義務（強制）**：聯邦機構須於 2026-02-12 前依廠商指引緩解 CVE-2025-31125 與 CVE-2025-34026，無法緩解則停用產品（CISA KEV / BOD 22-01）。
- **漏洞管理流程調整義務**：使用 NVD 的組織須重新評估依賴 NVD enrichment 的流程；需特定 CVE 豐富化者可去函 nvd@nist.gov 請求優先處理（informational）。
- **安全控制實施義務（強制，聯邦）**：聯邦系統須實作 SP 800-53 Rev. 5.2.0 之 SA-15、SI-02(07)、SA-24（回應 EO 14306）。
- **評估方法合規義務（recommended）**：IT 安全評估須遵循 ISO/IEC 15408:2026 與 ISO/IEC 18045:2026 改版後的方法規範。
- **意見回饋（自願）**：CMVP 自動化草案（SP 1800-40B）意見截止 2026-06-01；Transit Profile（IR 8576）意見截止 2026-02-23。

### 舉證要求摘要
- ISO/IEC 標準採用評估報告、網路安全框架對應矩陣、標準整合實施計畫與稽核記錄（ISO/IEC TS 27103:2026）。
- 評估方法文件符合 15408 第 2 版框架要求、評估活動記錄具可重複性與可驗證性（ISO/IEC 15408-4:2026 / 18045:2026）。
- SP 800-53 控制項：安全事件電子記錄格式、軟體更新失敗根本原因調查與行動計畫。
- CISA KEV：依 BOD 22-01 留存緩解措施套用或產品停用之佐證。

---

## L5 — Evolution Signals

- [系統推論] **漏洞管理正從「集中式資料庫豐富化」轉向「風險優先分流」**：NVD 改採風險優先模型、優先處理 KEV 與聯邦 CVE，推測組織將更倚賴 CISA KEV 與廠商通報作為修補優先序的主要依據，而非單一 NVD enrichment 來源。

- [系統推論] **資安認證評估標準進入同步改版週期**：ISO/IEC 15408 全系列（Part 1–5）與 18045 於 2026 年同步發布第 2 版，推測 Common Criteria 認證方案營運者與評估實驗室將面臨 12–24 個月的方法遷移期。

- [系統推論] **合規驗證流程持續自動化**：CMVP 密碼模組驗證自動化草案（SP 1800-40B）顯示，推測 NIST 正將「結構化測試證據 + 標準化提交協定 + 雲端原生基礎設施」模式逐步推廣至其他驗證計畫，以追上創新速度。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| 來源分布 | NIST Frameworks: 19, NIST Insights: 17, ISO Standards: 11, CISA KEV: 2, CSA Cloud Security: 1 |
| rule_type 分布 | guidance: 16, revision: 15, draft: 10, new: 3, final: 1, event: 1 |
| enforcement_signal 分布 | recommended: 29, informational: 13, mandatory: 3 |
| KEV 逾期漏洞 | 2（CVE-2025-31125、CVE-2025-34026） |
| REVIEW_NEEDED | 1 筆 |

> rule_type 與 enforcement_signal 分布為各來源 .md 之欄位掃描結果（部分項目未填或欄位命名差異，總數可能與 50 略有出入）。

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | cybersecurity, ai_risk, supply_chain | 19 | 2025-07-28 ~ 2026-05-21 |
| nist_cybersecurity_insights | cybersecurity, ai_risk, workforce, privacy 等 | 17 | 2024-02-28 ~ 2026-05-04 |
| iso_standards | information_security | 11 | 2026-02-06 ~ 2026-05-19 |
| cisa_kev | vulnerability | 2 | 2026-01-22 |
| csa_cloud_security | cloud_security | 1 | 2026-01-27 |

> 備註：本期 Qdrant 語意搜尋結果未涵蓋 eu_regulations Layer 的資料，歐盟資安合規動態請參閱獨立的 EU 法規報告。CISA KEV 與 ISO 標準補足了漏洞處置與國際評估準則面向。

---

*報告產出：Narrator Mode - cybersecurity_compliance*
*資料擷取時間點：2026-06-17*
