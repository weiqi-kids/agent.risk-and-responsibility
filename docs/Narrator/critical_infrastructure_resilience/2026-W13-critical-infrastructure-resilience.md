---
layout: report
title: "2026-W13 Critical Infrastructure Resilience"
parent: "Critical Infrastructure"
nav_order: 13
last_modified_at: 2026-03-23

seo:
  title: "2026-W13 關鍵基礎設施韌性 | CLAIR 模型、ReArm Europe、IoT 安全方向"
  description: "本週追蹤 14 項關鍵基礎設施韌性動態，涵蓋 SANS CLAIR 基礎設施相依性模型、歐盟 ReArm Europe 防衛投資計畫、NIST IoT 安全方向工作坊、ISO 防護庇護所標準及能源計量系統擴展。"
  date_published: "2026-03-23"
  date_modified: "2026-03-23"
  article_section: "Critical Infrastructure Resilience"
  keywords:
    - "Critical Infrastructure"
    - "ICS Security"
    - "OT Security"
    - "CLAIR Model"
    - "基礎設施韌性"
    - "ReArm Europe"
    - "IoT Security"
    - "Energy Resilience"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/critical_infrastructure_resilience/2026-W12-critical-infrastructure-resilience/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W13-cybersecurity-compliance/"
  faq:
    - question: "2026-W13 有哪些重要的基礎設施韌性動態？"
      answer: "2026-W13 追蹤 14 項關鍵動態，重點包括 SANS ISC 提出 CLAIR 模型整合 Purdue 架構與 Zachman Framework 為 10 層基礎設施相依性映射框架、歐盟 ReArm Europe 計畫提供防衛相關投資激勵、NIST IoT 安全計畫 Future Directions Workshop 持續徵集意見，以及 ISO/TS 22359-2:2026 發布防護庇護所保護設備標準。"
    - question: "OT 安全團隊需要注意哪些新要求？"
      answer: "SANS ISC 發布的 CLAIR 模型揭示 AI 整合帶來的新型級聯失效風險，OT 安全團隊應關注 Level -1 公用事業層的韌性監控。NIST SP 1334 可攜式儲存媒體風險指引與 Transit Cybersecurity Framework 社群剖面仍在公開評論階段，建議積極提交意見。"
    - question: "歐盟在關鍵基礎設施保護方面有何最新進展？"
      answer: "歐盟本週重點包括：Regulation (EU) 2025/2653 ReArm Europe 計畫提供跨預算防衛投資激勵、Regulation (EU) 2026/589 網路攻擊制裁持續生效、Directive (EU) 2026/706 能源計量設備擴展至 EV 充電與氫能設施、Regulation (EU) 2025/2434 歐洲海事安全局職能擴展。"
    - question: "CLAIR 模型對關鍵基礎設施安全有何意義？"
      answer: "CLAIR 模型由 SANS ISC 提出，將 Purdue 架構與 Zachman Framework 整合為 10 層映射框架，識別 AI 整合帶來的新型失效風險，強調最弱環節（Level -1 公用事業層）的韌性監控需求，為 OT/ICS 安全團隊提供系統性的相依性分析工具。"
---

# Critical Infrastructure Resilience — 2026-W13 {: .no_toc }

<div class="key-takeaway">
本週重點：SANS ISC 提出 CLAIR 模型將 Purdue 架構與 Zachman Framework 整合為 10 層關鍵基礎設施相依性映射框架，揭示 AI 整合帶來的新型級聯失效風險；歐盟 Regulation (EU) 2025/2653 ReArm Europe 計畫提供跨預算防衛投資激勵強化歐洲防衛供應鏈；NIST IoT 安全計畫 Future Directions Workshop 持續徵集下一代指引方向意見。
</div>

> 本期追蹤 14 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準、SANS ISC。

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
| 資料來源 | 14 個權威來源（NIST、EUR-Lex、ISO、SANS ISC 等） |
| 資料時間 | 2025-07-15 ~ 2026-03-20 |

</div>

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>SANS ISC 提出 CLAIR 模型整合 Purdue 架構與 Zachman Framework 為 10 層關鍵基礎設施相依性映射框架</strong>，揭示 AI 整合帶來的新型級聯失效風險，強調最弱環節（Level -1 公用事業層）的韌性監控需求。
</p>

1. **CLAIR 模型 — 關鍵基礎設施相依性映射框架（2026-02-25, guidance, final）**
   SANS ISC 發布 CLAIR 模型（ISC Diary 32748），整合 Purdue 架構與 Zachman Framework 為 10 層映射框架，識別 AI 整合帶來的新型失效風險。該模型強調 Level -1 公用事業層為整體基礎設施的最弱環節，需要持續韌性監控。適用於 OT/ICS 安全團隊與企業架構師。

2. **Regulation (EU) 2025/2653 — ReArm Europe 防衛投資激勵（2026-01-14, revision, mandatory）**
   歐盟通過 ReArm Europe 計畫，跨預算提供防衛相關投資激勵，涵蓋防衛產業 SME、雙用途技術開發商及運輸與數位基礎設施。自 2025-12-23 生效，具直接適用效力。

3. **NIST IoT Cybersecurity Program — Future Directions Workshop（2026-03-20, guidance, public_comment）**
   NIST 宣布 2026-03-31 舉辦兩日工作坊，持續徵集利害關係人意見以擴展 IoT 資安指引（NISTIR 8259、SP 800-213），範圍涵蓋新興技術、部署情境與實體安全影響。

4. **ISO/TS 22359-2:2026 — 防護庇護所保護設備標準（2026-03-05, new, recommended）**
   ISO/TC 292 發布首版防護庇護所保護設備技術規格，為窗戶組件等保護設備建立技術要求，適用於建築師、安全設施規劃人員與防護庇護所建設單位。

5. **Regulation (EU) 2026/589 — 網路攻擊制裁持續生效（2026-03-16, new, mandatory）**
   歐盟對五名網路攻擊威脅行為者（含中國與伊朗行為者）的資產凍結與旅行禁令持續生效。直接適用法規，保護歐盟關鍵基礎設施免受國家支持的網路攻擊。

<blockquote class="expert-quote">
  「The CLAIR model synthesizes the Purdue architecture and the Zachman Framework into a 10-level mapping framework, revealing new failure risks introduced by AI integration and emphasizing resilience monitoring at the weakest link — Level -1 utilities.」
  <cite>SANS Internet Storm Center (ISC Diary 32748)</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="美國在關鍵基礎設施保護方面有何進展">
  <strong>NIST 持續推動 IoT 資安指引的下一階段發展</strong>，透過 Future Directions Workshop 徵集意見，並維持多項關鍵基礎設施指引的公開評論程序。
</p>

- **NIST IoT Cybersecurity Program**（NISTIR 8259, SP 800-213）：2026-03-31 舉辦 Future Directions Workshop，公開徵集意見。五年來 IoT 資安指引持續擴展，從製造商基礎活動建議發展為涵蓋聯邦採購與部署情境的完整生態系。（status: public_comment）
- **NIST SP 1334 — OT 環境可攜式儲存媒體風險**：持續在公開評論階段，針對 OT/ICS 環境中 USB 等可攜式儲存媒體的網路安全風險提供指引。（status: public_comment）
- **NIST CSWP 51 — Transit Cybersecurity Framework**：社群剖面仍在公開評論階段，為公共運輸系統建立網路安全框架。（status: public_comment）
- **聯邦 IoT 基礎設施投資**：NIST 研究指出聯邦 IoT 基礎設施投資可產生 10-20 倍回報。（status: final）
- **NIST IR 8374 — 勒索軟體風險管理**：CSF 2.0 社群剖面持續在公開評論階段，為組織提供勒索軟體風險管理框架。（status: draft）

### 歐盟

<p class="key-answer" data-question="歐盟在關鍵基礎設施保護方面有何最新進展">
  <strong>歐盟本期在防衛投資、網路安全制裁、能源基礎設施法規及海事安全四大面向同步推進</strong>，強化跨領域的關鍵基礎設施保護。
</p>

- **Regulation (EU) 2025/2653 — ReArm Europe 計畫**（2026-01-14）：跨預算提供防衛相關投資激勵，涵蓋防衛產業 SME、雙用途技術開發商及運輸與數位基礎設施，直接適用。（binding_force: directly_applicable）
- **Regulation (EU) 2026/589 — 網路攻擊制裁**（2026-03-16）：直接適用法規，擴大制裁名單涵蓋攻擊歐盟關鍵基礎設施的中國與伊朗行為者。（binding_force: directly_applicable）
- **Directive (EU) 2026/706 — 能源計量設備**（2026-03-20）：擴展計量指令範圍至 EV 充電設備與替代燃料設施，轉置期限 2028-04-10。（binding_force: requires_transposition）
- **Regulation (EU) 2025/2434 — 歐洲海事安全局**（2026-01-16）：EMSA 職能擴展至去碳化與數位化轉型治理，直接適用。（binding_force: directly_applicable）
- **Council Decision (EU) 2026/69 — Energy Community 決議**（2026-01-16）：涉及能源共同體部長級會議立場。（binding_force: directly_applicable）
- **Council Decision (EU) 2026/70 — Energy Community 環境法對齊**（2026-01-19）：涉及能源共同體條約修訂以對齊環境法規。（binding_force: directly_applicable）
- **Directive (EU) 2020/2184 勘誤**（2026-01-29）：飲用水品質指令勘誤。

---

## 基礎設施領域矩陣

<p class="key-answer" data-question="各基礎設施領域本週有何變動">
  <strong>防衛與能源領域變動最為密集</strong>，歐盟 ReArm Europe 計畫為防衛供應鏈注入投資激勵，能源領域持續推動計量系統現代化與韌性框架建設。
</p>

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
      <td>IoT 基礎設施投資效益研究（final）</td>
      <td>能源計量設備擴展（EV 充電、氫能）；Energy Community 條約修訂</td>
      <td>Directive (EU) 2026/706; Council Decision (EU) 2026/69, 2026/70; ISO 22366:2026（持續）</td>
    </tr>
    <tr>
      <td>電信</td>
      <td>IoT 資安指引擴展中（public_comment）</td>
      <td>無新要求</td>
      <td>NIST IoT Future Directions Workshop</td>
    </tr>
    <tr>
      <td>金融</td>
      <td>無新要求</td>
      <td>網路攻擊制裁（資產凍結義務）；ReArm Europe 防衛投資激勵</td>
      <td>Regulation (EU) 2026/589; Regulation (EU) 2025/2653</td>
    </tr>
    <tr>
      <td>運輸</td>
      <td>Transit Cybersecurity Framework（draft, public_comment）</td>
      <td>歐洲海事安全局職能擴展</td>
      <td>Regulation (EU) 2025/2434</td>
    </tr>
    <tr>
      <td>水務</td>
      <td>無新要求</td>
      <td>飲用水品質指令勘誤</td>
      <td>Directive (EU) 2020/2184 勘誤</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

<p class="key-answer" data-question="本週有哪些責任變動">
  <strong>CLAIR 模型為 OT/ICS 安全團隊新增系統性相依性分析責任</strong>，ReArm Europe 計畫則為防衛產業與雙用途技術開發商建立投資激勵框架義務。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| SANS ISC | ISC Diary 32748 (CLAIR Model) | OT/ICS 安全團隊、企業架構師、風險管理團隊、AI 系統整合商 | new | 提出 10 層基礎設施相依性映射框架，揭示 AI 整合帶來的新型級聯失效風險 |
| EU | Regulation (EU) 2025/2653 | 防衛產業 SME、雙用途技術開發商、成員國採購單位 | revision | ReArm Europe 計畫跨預算提供防衛相關投資激勵 |
| EU | Regulation (EU) 2026/589 | 成員國、金融機構、相關實體 | expanded | 擴大制裁名單，新增五名網路攻擊威脅行為者的資產凍結與旅行禁令義務 |
| ISO | ISO/TS 22359-2:2026 | 建築師、安全設施規劃人員、防護庇護所建設單位 | new | 首次為硬化防護庇護所保護設備建立技術規格與要求 |
| EU | Directive (EU) 2026/706 | 計量設備製造商、經銷商、合規評估機構 | expanded | 擴展計量指令範圍至 EV 充電設備與替代燃料設施 |
| NIST | NISTIR 8259 / SP 800-213 | IoT 裝置製造商、聯邦機構、產品安全從業人員 | expanded | 擴展 IoT 資安指引至新興技術與部署情境 |

---

## 義務與舉證要求

<p class="key-answer" data-question="本週有哪些新增義務與舉證要求">
  <strong>歐盟 ReArm Europe 計畫新增防衛投資激勵合規義務</strong>，CLAIR 模型建議 OT 安全團隊建立基礎設施相依性映射與 AI 整合風險評估文件。
</p>

### 新增義務摘要

- **防衛投資激勵合規**：參與 ReArm Europe 計畫的防衛產業 SME 與雙用途技術開發商須符合 Regulation (EU) 2025/2653 資格條件與報告義務（mandatory）
- **基礎設施相依性分析**：CLAIR 模型建議 OT/ICS 安全團隊建立 10 層相依性映射，識別 AI 整合帶來的級聯失效風險（recommended）
- **制裁合規義務**：金融機構與實體須持續確認交易對象未列入 Regulation (EU) 2026/589 制裁名單（mandatory）
- **計量設備合規**：EV 充電設備、氫能加注機等製造商須於 2028-10-10 前符合 Directive (EU) 2026/706 要求（mandatory，轉置期限 2028-04-10）
- **防護庇護所設備標準**：防護庇護所建設單位應採用 ISO/TS 22359-2:2026 技術規格（recommended）

### 舉證要求摘要

- ReArm Europe 計畫參與資格文件與防衛投資報告
- 基礎設施相依性映射報告與 AI 整合風險評估文件
- 制裁名單篩查記錄與合規報告
- 計量設備合規評估證書
- 防護庇護所保護設備符合性文件

---

## L5 — Evolution Signals

<p class="key-answer" data-question="關鍵基礎設施韌性的未來趨勢是什麼">
  <strong>[系統推論] AI 整合正為關鍵基礎設施引入新型級聯失效風險</strong>，傳統的分層防禦模型需要升級以涵蓋 AI 系統的相依性。
</p>

- [系統推論] CLAIR 模型的提出反映 OT/ICS 安全領域正從單純的網路安全防禦，擴展至涵蓋 AI 系統整合的全面相依性分析。隨著 AI 在基礎設施中的部署加速，傳統 Purdue 模型的層級分離假設正受到挑戰，Level -1 公用事業層作為最弱環節的風險將持續升高。

- [系統推論] 歐盟 ReArm Europe 計畫與 EDIP 的相繼推出，顯示歐洲正將防衛產業供應鏈韌性提升至關鍵基礎設施保護的核心議程。防衛產品的可用性與供應保障不再僅是國防議題，而是與能源、運輸、數位基礎設施的韌性緊密交織。

- [系統推論] NIST IoT 資安計畫的 Future Directions Workshop 與 SANS CLAIR 模型的同步出現，暗示下一代基礎設施安全標準將從「裝置安全」轉向「系統韌性」，涵蓋裝置間相依性、AI 輔助決策風險及級聯失效場景。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 14 |
| 來源分布 | NIST Frameworks: 3, NIST Insights: 2, EU Regulations: 7, ISO: 1, SANS ISC: 1 |
| rule_type 分布 | new: 3, draft: 2, guidance: 3, expanded: 1, revision: 1, Council Decision: 2, amendment: 1, corrigendum: 1 |
| enforcement_signal 分布 | mandatory: 7, recommended: 2, informational: 1, public_comment: 4 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure | 3 | 2025-07-15 ~ 2025-09-02 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2026-03-20 |
| nist_cybersecurity_insights | supply_chain | 1 | 2025-05-13 |
| eu_regulations | critical_infrastructure | 3 | 2026-01-16 ~ 2026-01-29 |
| eu_regulations | cybersecurity | 1 | 2026-03-16 |
| eu_regulations | digital_market | 1 | 2026-03-20 |
| eu_regulations | financial_compliance | 2 | 2026-01-14 ~ 2026-01-16 |
| eu_regulations | supply_chain | 1 | 2026-01-19 |
| iso_standards | other | 1 | 2026-03-05 |
| sans_isc | threat_analysis | 1 | 2026-02-25 |
