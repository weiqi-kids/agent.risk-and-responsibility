---
layout: report
title: "2026-W12 Critical Infrastructure Resilience"
parent: "Critical Infrastructure"
nav_order: 12
last_modified_at: 2026-03-22

seo:
  title: "2026-W12 關鍵基礎設施韌性 | 歐盟網路攻擊制裁、ISO 能源韌性框架"
  description: "本週追蹤 12 項關鍵基礎設施韌性動態，涵蓋歐盟網路攻擊制裁新規、ISO 22366 能源韌性框架、NIST IoT 安全方向工作坊、歐洲防衛工業計畫及能源基礎設施法規更新。"
  date_published: "2026-03-22"
  date_modified: "2026-03-22"
  article_section: "Critical Infrastructure Resilience"
  keywords:
    - "Critical Infrastructure"
    - "ICS Security"
    - "OT Security"
    - "CER Directive"
    - "基礎設施韌性"
    - "Cyber Sanctions"
    - "Energy Resilience"
    - "IoT Security"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/critical_infrastructure_resilience/2026-W09-critical-infrastructure-resilience/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W12-cybersecurity-compliance/"
  faq:
    - question: "2026-W12 有哪些重要的基礎設施韌性動態？"
      answer: "2026-W12 追蹤 12 項關鍵動態，重點包括歐盟通過 Regulation (EU) 2026/589 對五名網路攻擊威脅行為者實施制裁、ISO 發布 ISO 22366:2026 能源韌性框架、NIST 啟動 IoT 資安方向工作坊，以及歐盟防衛工業計畫 EDIP 生效。"
    - question: "OT 安全團隊需要注意哪些新要求？"
      answer: "NIST 持續推動 IoT 資安指引更新（NISTIR 8259、SP 800-213），並於 2026 年 3 月 31 日舉辦 Future Directions Workshop 徵集意見。OT 安全團隊應關注 NIST SP 1334 可攜式儲存媒體風險指引（仍在公開評論階段）以及 Transit Cybersecurity Framework 社群剖面進展。"
    - question: "歐盟在關鍵基礎設施保護方面有何最新進展？"
      answer: "歐盟本期重點包括：Regulation (EU) 2026/589 擴大網路攻擊制裁名單（針對中國與伊朗行為者）、Directive (EU) 2026/706 擴展能源計量設備規範至電動車充電設施，以及 Regulation (EU) 2025/2643 建立歐洲防衛工業計畫（EDIP）。"
    - question: "ISO 22366:2026 對能源基礎設施有何影響？"
      answer: "ISO 22366:2026 是首部專門針對能源韌性的國際標準，由 ISO/TC 292 制定，為組織在自然或人為破壞事件後降低衝擊並達成『更好地重建』目標提供框架與原則，適用於能源供應網絡管理者、基礎設施工程師及緊急應變管理者。"
---

# Critical Infrastructure Resilience — 2026-W12 {: .no_toc }

<div class="key-takeaway">
本週重點：歐盟通過 Regulation (EU) 2026/589 擴大網路攻擊制裁名單，制裁五名威脅行為者（含中國與伊朗行為者）保護關鍵基礎設施；ISO 發布首部能源韌性框架 ISO 22366:2026；NIST 啟動 IoT 資安計畫 Future Directions Workshop 徵集下一步方向意見。
</div>

> 本期追蹤 12 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準。

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
| 資料來源 | 12 個權威來源（NIST、EUR-Lex、ISO 等） |
| 資料時間 | 2025-07-15 ~ 2026-03-20 |

</div>

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>歐盟通過 Regulation (EU) 2026/589 擴大網路攻擊制裁名單</strong>，針對五名威脅行為者（包含兩名中國個人及一名伊朗行為者）實施資產凍結與旅行禁令，以保護歐盟關鍵基礎設施免受國家支持的網路攻擊。
</p>

1. **Regulation (EU) 2026/589 — 網路攻擊制裁擴大（2026-03-16, regulation, mandatory）**
   歐盟理事會通過實施法規，將兩名中國個人及三個實體（含伊朗網路行為者）列入制裁名單，這些行為者對歐盟關鍵基礎設施發動重大網路攻擊。法規具直接適用效力，自 2026-03-16 生效。

2. **ISO 22366:2026 — 能源韌性框架與原則（2026-01-08, new, recommended）**
   ISO/TC 292 發布首部專門針對能源韌性的國際標準，為組織在自然或人為破壞事件後降低衝擊並達成「更好地重建」目標提供框架。涵蓋能源供應網絡的社會面與技術面考量。

3. **NIST IoT Cybersecurity Program — Future Directions Workshop（2026-03-20, guidance, public_comment）**
   NIST 宣布將於 2026-03-31 舉辦兩日工作坊，徵集利害關係人意見以擴展 IoT 資安指引（NISTIR 8259、SP 800-213），範圍涵蓋新興技術、部署情境與實體安全影響。

4. **Directive (EU) 2026/706 — 能源計量設備擴展（2026-03-20, expanded, mandatory）**
   擴展 Directive 2014/32/EU 範圍，涵蓋電動車充電設備、氫能與替代燃料加注機、冷卻用熱能計量表及智慧電表。成員國須於 2028-04-10 前完成轉置。

5. **Regulation (EU) 2025/2643 — 歐洲防衛工業計畫 EDIP（2025-12-29, new, mandatory）**
   建立 2025-2027 年歐洲防衛工業計畫框架，提供共同採購行動與工業強化行動的財務支持，包含烏克蘭防衛產業支援機制。具直接適用效力。

<blockquote class="expert-quote">
  「The EU expands its cyber-sanctions list by adding two Chinese individuals and three entities responsible for significant cyber-attacks against Union critical infrastructure.」
  <cite>Council Implementing Regulation (EU) 2026/589</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="美國在關鍵基礎設施保護方面有何進展">
  <strong>NIST 積極推動 IoT 資安指引的下一階段發展</strong>，透過 Future Directions Workshop 徵集意見，擴展至新興技術與實體安全影響面向。
</p>

- **NIST IoT Cybersecurity Program**（NISTIR 8259, SP 800-213）：2026-03-31 舉辦 Future Directions Workshop，公開徵集意見。五年來 IoT 資安指引持續擴展，從製造商基礎活動建議發展為涵蓋聯邦採購與部署情境的完整生態系。（status: public_comment）
- **NIST SP 1334 — OT 環境可攜式儲存媒體風險**：持續在公開評論階段，針對 OT/ICS 環境中 USB 等可攜式儲存媒體的網路安全風險提供指引。（status: public_comment）
- **NIST CSWP 51 — Transit Cybersecurity Framework**：社群剖面仍在公開評論階段，為公共運輸系統建立網路安全框架。（status: public_comment）
- **聯邦 IoT 基礎設施投資**：NIST 研究指出聯邦 IoT 基礎設施投資可產生 10-20 倍回報。（status: final）

### 歐盟

<p class="key-answer" data-question="歐盟在關鍵基礎設施保護方面有何最新進展">
  <strong>歐盟本期在網路安全制裁、能源基礎設施法規及防衛工業計畫三大面向同步推進</strong>，強化跨領域的關鍵基礎設施保護。
</p>

- **Regulation (EU) 2026/589 — 網路攻擊制裁**（2026-03-16）：直接適用法規，擴大制裁名單涵蓋攻擊歐盟關鍵基礎設施的中國與伊朗行為者。（binding_force: directly_applicable）
- **Directive (EU) 2026/706 — 能源計量設備**（2026-03-20）：擴展計量指令範圍至 EV 充電設備與替代燃料設施，轉置期限 2028-04-10。（binding_force: requires_transposition）
- **Regulation (EU) 2025/2643 — EDIP 防衛工業計畫**（2025-12-29）：建立防衛產品可用性與供應保障框架，直接適用。（binding_force: directly_applicable）
- **Regulation (EU) 2025/2434 — 歐洲海事安全局**（2025-12-29）：EMSA 職能擴展至去碳化與數位化轉型治理，直接適用。（binding_force: directly_applicable）
- **Directive (EU) 2025/2647 — 能源效率指令修訂**（2026-01-16）：強化成員國與企業節能義務。（binding_force: requires_transposition）[REVIEW_NEEDED — WebFetch 失敗，具體修訂內容待確認]
- **Council Decision (EU) 2026/69 / 2026/70 — Energy Community 決議**：涉及能源共同體部長級會議立場與環境法規對齊。
- **Directive (EU) 2020/2184 勘誤**（2026-01-29）：飲用水品質指令第六次勘誤。

---

## 基礎設施領域矩陣

<p class="key-answer" data-question="各基礎設施領域本週有何變動">
  <strong>能源領域變動最為密集</strong>，涵蓋 ISO 能源韌性框架、歐盟能源計量設備擴展、能源效率指令修訂及 Energy Community 決議。
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
      <td>能源計量設備擴展（EV 充電、氫能）；能源效率指令修訂；Energy Community 對齊</td>
      <td>Directive (EU) 2026/706; Directive (EU) 2025/2647; Council Decision (EU) 2026/69, 2026/70; ISO 22366:2026</td>
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
      <td>網路攻擊制裁（資產凍結義務）</td>
      <td>Regulation (EU) 2026/589</td>
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
  <strong>歐盟網路攻擊制裁擴大金融機構與實體的凍結義務</strong>，ISO 能源韌性框架則為能源供應網絡管理者新增韌性工程責任。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| EU | Regulation (EU) 2026/589 | 成員國、金融機構、相關實體 | expanded | 擴大制裁名單，新增五名網路攻擊威脅行為者的資產凍結與旅行禁令義務 |
| ISO | ISO 22366:2026 | 能源供應網絡管理者、基礎設施工程師、緊急應變管理者 | new | 首次建立組織能源韌性框架與原則 |
| EU | Directive (EU) 2026/706 | 計量設備製造商、經銷商、合規評估機構 | expanded | 擴展計量指令範圍至 EV 充電設備與替代燃料設施 |
| EU | Regulation (EU) 2025/2643 | 成員國採購單位、防衛產業製造商、歐洲防衛署 | new | 建立 EDIP 框架，新增共同採購與工業強化行動義務 |
| EU | Regulation (EU) 2025/2434 | 成員國海事主管機關、船運公司、港口管理局 | expanded | EMSA 擴展至去碳化與數位轉型治理 |
| NIST | NISTIR 8259 / SP 800-213 | IoT 裝置製造商、聯邦機構、產品安全從業人員 | expanded | 擴展 IoT 資安指引至新興技術與部署情境 |

---

## 義務與舉證要求

<p class="key-answer" data-question="本週有哪些新增義務與舉證要求">
  <strong>歐盟新增網路攻擊制裁合規義務</strong>，要求金融機構與實體確認交易對象未列入制裁名單；ISO 22366:2026 建議組織建立能源韌性框架實施記錄。
</p>

### 新增義務摘要

- **制裁合規義務**：金融機構與實體須確認交易對象未列入 Regulation (EU) 2026/589 制裁名單，違反者面臨資產凍結執行（mandatory）
- **能源韌性框架實施**：組織應採用 ISO 22366:2026 韌性工程與管理原則，涵蓋能源供應網絡的社會面與技術面（recommended）
- **計量設備合規**：EV 充電設備、氫能加注機等製造商須於 2028-10-10 前符合 Directive (EU) 2026/706 要求（mandatory，轉置期限 2028-04-10）
- **防衛產業協調**：參與 EDIP 計畫的企業須符合共同採購行動資格條件（mandatory）

### 舉證要求摘要

- 制裁名單篩查記錄與合規報告
- 能源韌性框架實施記錄、破壞事件應對計畫及復原目標文件
- 計量設備合規評估證書
- EDIP 共同採購參與資格文件

---

## L5 — Evolution Signals

<p class="key-answer" data-question="關鍵基礎設施韌性的未來趨勢是什麼">
  <strong>[系統推論] 歐盟正將網路安全從防禦性治理轉向主動制裁工具</strong>，同時能源基礎設施的數位化帶來新的計量與安全合規需求。
</p>

- [系統推論] 歐盟網路攻擊制裁機制日趨成熟，從 NIS2 的被動防禦義務擴展至主動制裁外國威脅行為者，未來可能成為常態化的關鍵基礎設施保護工具。Regulation (EU) 2026/589 明確點名中國與伊朗行為者，顯示地緣政治考量正深度嵌入基礎設施保護策略。

- [系統推論] 能源基礎設施的數位轉型（EV 充電、智慧電表、氫能設施）正產生新的計量合規與資安介面。Directive (EU) 2026/706 的範圍擴展與 ISO 22366:2026 的發布，反映出能源韌性從傳統供應安全擴展至涵蓋數位化基礎設施的全面韌性。

- [系統推論] NIST IoT 資安計畫的 Future Directions Workshop 暗示下一代指引將超越裝置層級，延伸至部署情境與實體安全影響，可能與 OT/ICS 安全指引（SP 1334）形成更緊密的互補關係。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 12 |
| 來源分布 | NIST Frameworks: 3, NIST Insights: 1, EU Regulations: 7, ISO: 1 |
| rule_type 分布 | new: 4, expanded: 1, draft: 2, guidance: 1, revision: 1, Council Decision: 2, amendment: 1 |
| enforcement_signal 分布 | mandatory: 7, recommended: 2, informational: 1, public_comment: 2 |
| REVIEW_NEEDED | 1 筆（Directive (EU) 2025/2647 — WebFetch 失敗） |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure | 3 | 2025-07-15 ~ 2025-09-02 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2026-03-20 |
| eu_regulations | critical_infrastructure | 5 | 2025-12-29 ~ 2026-01-29 |
| eu_regulations | cybersecurity | 1 | 2026-03-16 |
| eu_regulations | digital_market | 1 | 2026-03-20 |
| iso_standards | other | 1 | 2026-01-08 |
