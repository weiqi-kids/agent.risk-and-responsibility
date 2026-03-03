---
layout: report
last_modified_at: 2026-03-03
title: "2026-W09 Critical Infrastructure Resilience"
parent: "Critical Infrastructure"
nav_order: 91

seo:
  title: "2026-W09 關鍵基礎設施韌性 | 俄羅斯能源進口禁令、CLAIR 相依性框架、NIST AI 中心"
  description: "本週追蹤 14 項關鍵基礎設施韌性動態，涵蓋歐盟俄羅斯天然氣與石油進口禁令、EU-瑞士碳排交易對齊、SANS CLAIR 基礎設施相依性框架及 NIST AI 經濟安全中心。"
  date_published: "2026-03-01"
  date_modified: "2026-03-03"
  article_section: "Critical Infrastructure Resilience"
  keywords:
    - "Critical Infrastructure"
    - "Russian Gas Phase-out"
    - "Energy Security"
    - "CLAIR Model"
    - "ICS Security"
    - "OT Security"
    - "Emissions Trading"
    - "基礎設施韌性"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/critical_infrastructure_resilience/2026-W08-critical-infrastructure-resilience"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W09-cybersecurity-compliance"
  faq:
    - question: "2026-W09 有哪些重要的基礎設施韌性動態？"
      answer: "2026-W09 週報追蹤 14 項關鍵基礎設施韌性動態，重點包括歐盟通過 Regulation (EU) 2026/261 逐步禁止俄羅斯天然氣與石油進口、EU-瑞士碳排交易系統對齊修正、SANS ISC 發布 CLAIR 基礎設施相依性映射框架，以及 NIST 新設 AI 經濟安全中心。"
    - question: "OT 安全團隊需要注意哪些新要求？"
      answer: "SANS ISC 發布 CLAIR 10 層框架強調 Level -1 公用事業層為最弱環節，OT 團隊需評估 AI 系統對感測器資料的依賴性與模型飄移風險。NIST 持續推動 Transit Cybersecurity Framework、OT 可攜式儲存媒體指引及 IoT 安全接入標準。"
    - question: "歐盟俄羅斯能源進口禁令的時程為何？"
      answer: "Regulation (EU) 2026/261 於 2026-02-03 生效，一般進口禁令於 2026-03-18 適用，LNG 禁令於 2026-04-25 生效，管線天然氣禁令於 2026-06-17 生效。長期合約最遲於 2027-09-30 到期。會員國須於 2026-03-01 前提交國家多元化計畫。"
    - question: "CLAIR 模型對基礎設施風險評估有何貢獻？"
      answer: "CLAIR 模型整合 Purdue 架構與 Zachman Framework 為 10 層相依性映射框架，涵蓋 Level -1（公用事業）至 Level 7（雲端/AI），揭示級聯故障傳播路徑與 AI 整合帶來的新型失效風險，強調地理相依性與雲端監控盲點。"
---

# Critical Infrastructure Resilience — 2026-W09 {: .no_toc }

<div class="key-takeaway">
本週重點：歐盟通過 Regulation (EU) 2026/261 建立俄羅斯天然氣與石油進口法律禁令框架，管線天然氣最遲 2026-06-17 全面禁止；SANS ISC 發布 CLAIR 10 層相依性映射框架揭示 AI 整合對基礎設施的級聯故障風險；NIST 新設兩個 AI 經濟安全中心聚焦製造業與關鍵基礎設施網路威脅防護。
</div>

> 本期追蹤 14 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、SANS ISC。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.6） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 14 個權威來源（NIST、EUR-Lex、SANS ISC 等） |
| 資料時間 | 2025-07-15 ~ 2026-02-25 |

</div>

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>歐盟通過 Regulation (EU) 2026/261 法律禁令框架</strong>，逐步禁止俄羅斯天然氣與石油進口，會員國須於 2026-03-01 前提交國家多元化計畫；SANS ISC 發布 CLAIR 基礎設施相依性框架；NIST 新設 AI 經濟安全中心。
</p>

1. **Regulation (EU) 2026/261 — 俄羅斯天然氣與石油進口禁令（2026-02-02, regulation, mandatory）**
   歐盟通過具直接適用效力的法規，建立俄羅斯天然氣與石油進口的法律禁令框架。管線天然氣自 2026-06-17 禁止、LNG 自 2026-04-25 禁止，長期合約最遲 2027-09-30 到期。會員國須建立事前授權制度、國家多元化計畫，並由海關機關每月向 Commission 報告進口數據。法規援引 WTO Article XXI 國家安全例外，明確界定能源安全為主權行為。
   來源：[EUR-Lex 32026R0261](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0261)

2. **CLAIR Model — 關鍵基礎設施相依性映射框架（2026-02-25, guidance, informational）**
   SANS ISC 發布 CLAIR 模型，整合 Purdue 架構與 Zachman Framework 為 10 層相依性映射框架（Level -1 公用事業至 Level 7 雲端/AI），揭示 AI 整合帶來的級聯故障風險。案例研究：北維吉尼亞州電壓波動同時觸發 60 個資料中心斷電，產生 1,500 MW 電力過剩，展示 Level -1 擾動如何導致多層連鎖失效。
   來源：[SANS ISC Diary 32748](https://isc.sans.edu/diary/rss/32748)

3. **Council Decision (EU) 2026/181 — EU-瑞士碳排交易系統對齊（2026-01-26, Council Decision, mandatory）**
   建立歐盟在 EU-瑞士溫室氣體排放交易聯結協議聯合委員會中的談判立場，修正 Annex I 以對齊 Directive (EU) 2023/958 與 2023/959。瑞士工業裝置須遵守 4.3%（2024-2027）與 4.4%（2028 起）的線性減量因子，航空業自 2025 年起須進行非 CO2 效應監測與報告。
   來源：[EUR-Lex 32026D0181](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026D0181)

4. **NIST AI 經濟安全中心 — 製造業與關鍵基礎設施（2025-12-22, new, informational）**
   NIST 新設兩個 AI 經濟安全中心，透過 2,000 萬美元 MITRE 合作夥伴計畫及即將啟動的 7,000 萬美元 Manufacturing USA 計畫，開發 AI 代理工具以提升製造業生產力並強化關鍵基礎設施網路威脅防護，呼應 White House 2025 年 7 月 America's AI Action Plan。
   來源：[NIST News](https://www.nist.gov/news-events/news/2025/12/nist-launches-centers-ai-manufacturing-and-critical-infrastructure)

5. **運輸領域勘誤 — 車輛檢驗指令用語標準化（2026-02-03, corrigendum, mandatory）**
   Directive 2014/45/EU（定期車輛檢驗）與 Directive 2014/47/EU（商用車輛路邊檢驗）同步發布第 8 次勘誤，統一檢驗中心、檢驗證書用語，修正制動系統檢驗程序技術語言。此次修正不涉及英文版本。
   來源：[EUR-Lex 32014L0045R(08)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32014L0045)、[EUR-Lex 32014L0047R(08)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32014L0047)

<blockquote class="expert-quote">
  「This Regulation constitutes a sovereign act of the Union, establishing clear legal prohibitions with direct legal effect and no discretion for Member States, invoking the security exception under Article XXI of the GATT 1994.」
  <cite>Regulation (EU) 2026/261, Recitals</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 本週有哪些基礎設施韌性相關更新">
  <strong>NIST 新設 AI 經濟安全中心</strong>聚焦製造業與關鍵基礎設施，IoT 安全接入最終指引持續適用，Transit Cybersecurity Framework 與 OT 可攜式儲存媒體指引仍在徵詢中。
</p>

**新動態**：
- **NIST AI 經濟安全中心（2025-12-22, final）**：透過 MITRE 合作開發 AI 代理工具，分別聚焦製造業生產力與關鍵基礎設施網路威脅防護，呼應 America's AI Action Plan Pillars I & II
- **聯邦 IoT 基礎設施投資報告（NIST.GCR.25-059, 2025-09-02, final）**：研究發現聯邦 IoT 基礎設施投資可產生 10-20 倍回報，識別 11 個戰略投資領域

**持續追蹤**：
- **NCCoE IoT Secure Onboarding Publications（SP 1800-36, CSWP 42, NISTIR 8350, 2025-11-25, final）**：IoT 設備安全接入信任機制與憑證管理流程
- **NIST CSWP 51 — Transit Cybersecurity Framework Community Profile（2025-08-20, draft）**：公共運輸業者網路安全態勢指南
- **NIST SP 1334 — OT 環境可攜式儲存媒體指引（2025-07-15, draft）**：工業控制系統 USB 裝置管理標準
- **IR 8259 修訂版**：IoT 製造商活動範圍擴展，新增 Activity 0（威脅建模與初始風險評估）

### 歐盟

<p class="key-answer" data-question="歐盟本週有哪些基礎設施韌性相關立法">
  <strong>俄羅斯能源進口禁令為本週最重大立法</strong>，同步推進 EU-瑞士碳排交易對齊與運輸/環境領域技術勘誤。
</p>

**能源領域**：
- **Regulation (EU) 2026/261（2026-02-02, regulation, directly_applicable）**：逐步禁止俄羅斯天然氣（管線 2026-06-17、LNG 2026-04-25）與石油進口，建立事前授權制度與國家多元化計畫
- **Council Decision (EU) 2026/181（2026-01-26, decision, directly_applicable）**：EU-瑞士碳排交易系統 Annex I 修正，對齊加速減碳軌跡

**運輸領域**：
- **Directive 2014/45/EU Corrigendum（2026-02-03, corrigendum, requires_transposition）**：定期車輛檢驗用語標準化
- **Directive 2014/47/EU Corrigendum（2026-02-03, corrigendum, requires_transposition）**：商用車輛路邊檢驗用語標準化

**環境領域**：
- **Regulation (EU) 2024/573 Corrigendum（2026-02-04, corrigendum, directly_applicable）**：含氟溫室氣體法規修正，將固定式冷凍設備適用門檻從「等於 12 kW」修正為「至多 12 kW」，擴大受規範設備範圍

**其他（跨領域）**：
- **SANS ISC CLAIR Model（2026-02-25, guidance, informational）**：非歐盟立法，但其 10 層框架對歐盟 CER Directive 下的關鍵實體相依性評估具參考價值

---

## 基礎設施領域矩陣

<table class="comparison-table">
  <thead>
    <tr>
      <th>領域</th>
      <th>美國要求</th>
      <th>歐盟要求</th>
      <th>本週變動</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>能源</td>
      <td>NIST AI 中心聚焦基礎設施防護（informational）</td>
      <td>俄羅斯天然氣/石油進口禁令；EU-瑞士 ETS 對齊加速減碳</td>
      <td>Regulation (EU) 2026/261; Council Decision (EU) 2026/181</td>
    </tr>
    <tr>
      <td>電信</td>
      <td>無新要求</td>
      <td>無新要求</td>
      <td>無</td>
    </tr>
    <tr>
      <td>金融</td>
      <td>無新要求</td>
      <td>碳排交易市場監管強化（MIFID II、MAR 適用）</td>
      <td>Council Decision (EU) 2026/181 碳市場整合</td>
    </tr>
    <tr>
      <td>運輸</td>
      <td>Transit Cybersecurity Framework（draft）</td>
      <td>車輛檢驗指令用語標準化（corrigendum）</td>
      <td>Directive 2014/45/EU, 2014/47/EU 第 8 次勘誤</td>
    </tr>
    <tr>
      <td>水務</td>
      <td>無新要求</td>
      <td>無新要求</td>
      <td>無（上週飲用水指令勘誤已納入 W08）</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

<p class="key-answer" data-question="本週有哪些責任變動需要關注">
  <strong>歐盟能源進口禁令帶來最大幅度的責任轉移</strong>，會員國、進口商與海關機關均承擔新義務；CLAIR 框架則為 OT 安全團隊提出新的相依性評估責任。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| EU | Regulation (EU) 2026/261 | Member States, 能源進口商, 海關/授權機關, ACER, Commission | new | 建立俄羅斯天然氣與石油進口禁令框架，含事前授權與國家多元化計畫 |
| EU | Council Decision (EU) 2026/181 | EU/瑞士工業裝置, 航空業者, 碳市場監管機關 | expanded | EU-瑞士 ETS 對齊，加速減碳軌跡（4.3%/4.4% 線性減量） |
| EU | Directive 2014/45/EU Corrigendum | 檢驗中心, 車輛所有人, 會員國車輛安全機關 | clarified | 定期車輛檢驗用語標準化 |
| EU | Directive 2014/47/EU Corrigendum | 路邊檢驗機關, 商用車輛營運商 | clarified | 商用車輛路邊檢驗用語標準化 |
| EU | Regulation (EU) 2024/573 Corrigendum | 冷凍設備製造商, 安裝/維護業者 | restricted | 含氟溫室氣體適用門檻擴大（至多 12 kW） |
| SANS ISC | CLAIR Model (ISC Diary 32748) | CI Security Officers, OT/ICS Teams, Enterprise Architects | new | 10 層相依性映射框架，揭示 AI 整合級聯故障風險 |
| NIST | AI 經濟安全中心 | AI developers, 製造業, CI operators | new | 新設兩中心聚焦製造業 AI 與 CI 網路威脅防護 |
| NIST | NIST.GCR.25-059 IoT 投資報告 | Federal agencies, IoT manufacturers | new | 聯邦 IoT 基礎設施投資 10-20x ROI 研究 |
| NIST | NCCoE IoT Secure Onboarding | IoT manufacturers, network administrators | final | IoT 安全接入信任機制與憑證管理（持續適用） |
| NIST | Transit Cybersecurity Framework | Transit operators, IT/OT teams | draft | 公共運輸業者網路安全態勢指南（持續徵詢） |
| NIST | SP 1334 OT Portable Storage | ICS administrators, OT engineers | draft | OT 環境 USB 裝置管理標準（持續徵詢） |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="本週新增了哪些基礎設施韌性義務">
  <strong>歐盟俄羅斯能源進口禁令帶來最全面的新義務</strong>，涵蓋進口事前授權、國家多元化計畫、供應鏈文件與月度報告。
</p>

**歐盟能源進口禁令（Regulation (EU) 2026/261）**：
- 會員國須於 **2026-03-01** 前建立天然氣與石油國家多元化計畫
- 進口商須於天然氣進入 EU 海關領土前**至少一個月**提交合約與來源資訊
- 海關/授權機關每月向 Commission 報告進口量、入境點、合約夥伴
- **ACER** 於 **2026-07-01** 和 **2027-07-01** 發布俄羅斯天然氣合約與多元化影響報告
- 會員國須於 **2028-02-04** 前通知 Commission 罰則條款
- 建立「有效、比例且具嚇阻力」的罰則

**EU-瑞士碳排交易對齊（Council Decision (EU) 2026/181）**：
- 瑞士工業裝置須遵守加速線性減量因子（2024-2027: 4.3%, 2028+: 4.4%）
- 航空業者自 2025 年起須進行非 CO2 效應監測與報告
- 碳市場監管機關須確保 MIFID II 與 MAR 的跨境執行

**CLAIR 框架建議義務（SANS ISC，informational）**：
- 採用 10 層框架對基礎設施進行相依性映射（Level -1 至 Level 7）
- 建立 Level -1（公用事業層）的監控與韌性控制
- 評估 AI 系統對感測器資料品質的依賴性與模型飄移風險

**含氟溫室氣體修正（Regulation (EU) 2024/573 Corrigendum）**：
- 額定容量「至多 12 kW」的固定式冷凍設備納入含氟溫室氣體限制範圍

### 舉證要求摘要

| 領域 | 舉證項目 |
|------|----------|
| 能源進口 | 合約締結日期/期間/合約數量、當事方 EORI 號碼、LNG 液化地點與首次裝載港、混合來源分離證明 |
| 碳排交易 | 年度排放驗證報告、監測計畫、認可驗證機構報告、額度繳回文件 |
| 基礎設施相依性 | 相依性映射紀錄（實體/網路/地理/邏輯）、AI 系統資料品質評估 |
| 冷凍設備 | 額定容量文件、冷媒類型與 GWP 規格、安裝維護紀錄 |
| 車輛檢驗 | 使用標準化用語之檢驗證書、Annex I 合規之制動系統檢驗紀錄 |

---

## L5 — Evolution Signals

<p class="key-answer" data-question="關鍵基礎設施韌性的未來趨勢是什麼">
  能源去俄化法制化標誌歐盟將地緣政治風險轉化為法律義務的決心，AI 與基礎設施的整合加速凸顯級聯故障新風險。
</p>

- [系統推論] **能源安全從政策走向法律禁令**：Regulation (EU) 2026/261 將歐盟的能源去俄化政策正式法制化，援引 WTO 國家安全例外條款，建立「無會員國裁量空間」的直接適用禁令。這一模式可能擴散至其他戰略依賴領域（如關鍵礦物、半導體），組織應預先評估供應鏈中的地緣政治集中度風險

- [系統推論] **AI 整合基礎設施催生新型級聯故障路徑**：SANS ISC CLAIR 模型與 NIST AI 經濟安全中心的設立共同指向 AI 與關鍵基礎設施深度整合的趨勢。CLAIR 揭示 AI 對感測器資料品質的依賴性與模型飄移風險將成為新的失效模式，而 NIST 的回應是透過專責中心建立技術評估機制。OT 安全團隊需將 AI 系統的可靠性納入風險評估範疇

- [系統推論] **碳市場跨境整合加速監管複雜度**：EU-瑞士 ETS 對齊要求（4.3%/4.4% 線性減量因子）與非 CO2 效應監測義務，顯示碳定價機制正快速跨越國境。受 ETS 約束的工業裝置與航空業者面臨跨司法管轄區的合規義務堆疊

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 14 |
| 來源分布 | NIST Frameworks: 6, NIST Insights: 2, EU Regulations: 5, SANS ISC: 1 |
| rule_type 分布 | new: 2, final: 2, draft: 3, guidance: 3, amendment/corrigendum: 4 |
| enforcement_signal 分布 | mandatory: 6, recommended: 2, informational: 6 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure | 4 | 2025-07-15 ~ 2025-11-25 |
| nist_frameworks | ai_risk | 2 | 2025-08-05 ~ 2025-12-22 |
| nist_cybersecurity_insights | supply_chain / critical_infrastructure | 2 | 2024-11-21 ~ 2025-05-13 |
| eu_regulations | critical_infrastructure | 5 | 2026-01-26 ~ 2026-02-04 |
| sans_isc | threat_analysis | 1 | 2026-02-25 |
