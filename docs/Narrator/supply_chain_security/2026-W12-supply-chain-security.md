---
layout: report
last_modified_at: 2026-03-22
title: "2026-W12 Supply Chain Security"
parent: "Supply Chain Security"
nav_order: 88

seo:
  title: "2026-W12 供應鏈安全趨勢 | 歐盟建材法規勘誤、伊朗制裁擴大、SSDF 1.2 最終階段"
  description: "本週追蹤 12 項供應鏈安全動態，涵蓋歐盟建材法規勘誤釐清上市門檻、伊朗軍事支援制裁擴大出口管制、NIST SSDF 1.2 進入最終發布階段、供應鏈軟體漏洞持續被利用。"
  date_published: "2026-03-22"
  date_modified: "2026-03-22"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "盡職調查"
    - "建材法規"
    - "出口管制"
    - "軟體供應鏈漏洞"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/2026-W09-supply-chain-security/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W12-rule-change-brief/"
  faq:
    - question: "2026-W12 有哪些重要的供應鏈安全動態？"
      answer: "2026-W12 追蹤 12 項供應鏈安全動態，重點包括歐盟建材法規 Regulation (EU) 2024/3110 勘誤釐清強制性門檻要求、Council Regulation (EU) 2026/271 擴大伊朗軍事支援制裁涵蓋無人機與飛彈零組件出口管制、NIST SSDF 1.2 持續推進最終版本、多項供應鏈軟體漏洞被列入 CISA KEV。"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "SSDF 1.2（SP 800-218r1）公開徵詢期已截止，預期近期發布最終版本，軟體供應商須準備合規文件。SP 800-53 Release 5.2.0 草案新增修補管理控制，要求修補程式完整性驗證。多項供應鏈關鍵軟體（SolarWinds、GitLab、Vite）漏洞被列入 CISA KEV，供應商須加速修補。"
    - question: "歐盟建材法規勘誤對供應鏈有何影響？"
      answer: "Regulation (EU) 2024/3110 勘誤釐清 Recital 21，明確強制性門檻為產品進入內部市場的先決條件（不論用途），而自願性門檻僅適用於特定用途。建材製造商、經銷商與合規官須重新審視產品是否符合修正後的門檻要求。"
    - question: "伊朗制裁擴大對出口管制有什麼影響？"
      answer: "Council Regulation (EU) 2026/271 擴大對伊朗的出口禁令，新增十類軍事與無人機相關零組件（含能量材料、電子元件、機械工具、感測器、導航系統、航太零件），EU 出口商、海關與雙用途技術供應商須更新合規篩選清單。"
---

# Supply Chain Security Trends — 2026-W12 {: .no_toc }

<div class="key-takeaway">
本週重點：歐盟建材法規 Regulation (EU) 2024/3110 勘誤釐清強制性與自願性門檻區別，影響建材供應鏈上市合規判斷；Council Regulation (EU) 2026/271 擴大伊朗軍事支援制裁，新增十類零組件出口禁令，衝擊雙用途技術供應鏈；NIST SSDF 1.2 與 SP 800-53 修補管理控制持續推進；多項供應鏈關鍵軟體漏洞（SolarWinds、GitLab、Vite）被列入 CISA KEV，凸顯軟體供應鏈漏洞管理急迫性。
</div>

> **報告週期**：2026-03-16 至 2026-03-22
>
> 本期追蹤 12 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、CISA KEV。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 12 個權威來源（NIST、EUR-Lex、CISA 等） |
| 資料時間 | 2025-07-22 ~ 2026-03-06 |

</div>

---

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>歐盟建材法規勘誤釐清強制性門檻為產品上市先決條件</strong>，影響所有建材製造商與經銷商的合規判斷；伊朗制裁擴大新增十類零組件出口禁令，雙用途技術供應鏈須重新評估合規風險。
</p>

1. **歐盟建材法規勘誤：強制性門檻釐清（歐盟，amendment）**：Regulation (EU) 2024/3110 勘誤修正 Recital 21，明確強制性門檻（mandatory threshold levels）為產品進入內部市場的先決條件，不論產品用途；自願性門檻（voluntary threshold levels）僅適用於特定用途。此勘誤為 directly_applicable，已直接生效，建材製造商、經銷商與合規官須重新審視產品合規狀態。（[來源](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R3110R(01))）

2. **伊朗軍事支援制裁擴大：十類零組件出口禁令（歐盟，amendment）**：Council Regulation (EU) 2026/271 擴大對伊朗的出口管制，新增十類與無人機、飛彈開發相關的零組件禁令，涵蓋能量材料、電子元件、機械工具、感測器、導航系統與航太零件。EU 出口商、海關與雙用途技術供應商須更新篩選清單並強化盡職調查。（[來源](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32026R0271)）

3. **SSDF 1.2 持續推進最終版本（美國 NIST，revision）**：NIST SP 800-218r1 公開徵詢期已截止（截止日 2026-01-30），引入改進的安全開發實踐與漏洞根因分析要求，擴展軟體供應商與採購方的責任。受 Executive Order 14306 推動，預期近期發布最終版本。（[來源](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public)）

4. **供應鏈軟體漏洞持續被利用（美國 CISA，final）**：多項供應鏈關鍵軟體漏洞被列入 CISA Known Exploited Vulnerabilities（KEV）目錄，包括 SolarWinds Web Help Desk（CVE-2025-40551，反序列化漏洞）、GitLab CE/EE（CVE-2021-39935，SSRF 漏洞）、Vite（CVE-2025-31125，不當存取控制），凸顯軟體供應鏈漏洞管理的急迫性。（[來源](https://www.cisa.gov/known-exploited-vulnerabilities-catalog)）

5. **歐盟海事安全局擴權：供應鏈脫碳監管（歐盟，regulation）**：Regulation (EU) 2025/2434 擴大歐洲海事安全局（EMSA）職責，從傳統安全與污染監管擴展至海事脫碳轉型治理，影響航運公司、港口管理機關與船級社的合規架構。（[來源](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2434)）

<blockquote class="expert-quote">
  「強制性門檻為產品進入內部市場的先決條件，不論其用途為何；自願性門檻僅適用於特定用途。」
  <cite>Regulation (EU) 2024/3110 Corrigendum, Recital 21</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 本週有哪些供應鏈安全動態">
  <strong>SSDF 1.2 進入最終發布階段</strong>，SP 800-53 修補管理控制草案持續審議，IR 8536 製造業供應鏈追溯性元框架維持公開徵詢，多項供應鏈軟體漏洞被列入 CISA KEV。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>框架/指引</th>
      <th>文件編號</th>
      <th>狀態</th>
      <th>重點內容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>SSDF 1.2 版</strong></td>
      <td>SP 800-218r1</td>
      <td>public_comment（徵詢期已截止）</td>
      <td>安全軟體開發實務擴充，漏洞根因分析，受 EO 14306 推動</td>
    </tr>
    <tr>
      <td><strong>SP 800-53 修補管理控制</strong></td>
      <td>SP 800-53 Release 5.2.0</td>
      <td>draft / public_comment</td>
      <td>修補程式安全部署控制，組織與開發者責任劃分</td>
    </tr>
    <tr>
      <td><strong>供應鏈追溯性元框架</strong></td>
      <td>NIST IR 8536</td>
      <td>public_comment（第二版草案）</td>
      <td>製造業供應鏈可見性與追溯性管理，元件來源驗證</td>
    </tr>
    <tr>
      <td><strong>安全軟體開發實踐指引</strong></td>
      <td>SP 1800-44</td>
      <td>draft</td>
      <td>DevSecOps 安全軟體開發實踐聯盟指引</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商基礎活動</strong></td>
      <td>IR 8259（修訂中）</td>
      <td>draft / public_comment</td>
      <td>新增 Activity 0（威脅建模），擴大 pre-market/post-market 活動</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **SSDF 1.2 進入最終審議**：SP 800-218r1 公開徵詢期已於 2026-01-30 截止，預期近期發布最終版本。軟體供應商應提前準備合規文件，特別是漏洞減少指標、安全開發實踐文件與根因分析報告。此框架受 Executive Order 14306 推動，對聯邦採購合約的供應鏈安全要求影響深遠。

- **SP 1800-44 DevSecOps 指引**：NIST 與業界聯盟合作發布安全軟體開發（DevSecOps）實踐指引草案，為軟體供應鏈安全提供從開發到部署的實作參考，與 SSDF 1.2 形成互補。

- **供應鏈軟體漏洞被活躍利用**：SolarWinds Web Help Desk（CVE-2025-40551）、GitLab（CVE-2021-39935）、Vite（CVE-2025-31125）等供應鏈關鍵軟體漏洞被列入 CISA KEV，顯示軟體供應鏈攻擊面持續擴大，強化了 SSDF 與 SP 800-53 修補管理控制的政策必要性。

### 歐盟

<p class="key-answer" data-question="歐盟本週有哪些供應鏈安全動態">
  <strong>建材法規勘誤釐清上市門檻</strong>，伊朗制裁擴大出口管制範圍，海事安全局擴權納入脫碳轉型監管，人源物質法規勘誤持續生效。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>法規</th>
      <th>文件編號</th>
      <th>binding_force</th>
      <th>重點內容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>建材法規勘誤</strong></td>
      <td>Regulation (EU) 2024/3110 Corrigendum</td>
      <td>directly_applicable</td>
      <td>釐清強制性與自願性門檻區別，影響產品上市合規</td>
    </tr>
    <tr>
      <td><strong>伊朗制裁擴大</strong></td>
      <td>Council Regulation (EU) 2026/271</td>
      <td>directly_applicable</td>
      <td>新增十類零組件出口禁令，涵蓋無人機與飛彈零件</td>
    </tr>
    <tr>
      <td><strong>海事安全局擴權</strong></td>
      <td>Regulation (EU) 2025/2434</td>
      <td>directly_applicable</td>
      <td>EMSA 職責擴展至海事脫碳轉型，影響航運供應鏈</td>
    </tr>
    <tr>
      <td><strong>人源物質品質安全勘誤</strong></td>
      <td>Regulation (EU) 2024/1938 Corrigendum</td>
      <td>directly_applicable</td>
      <td>釐清 SoHO 機構授權要求與快速警報觸發條件</td>
    </tr>
    <tr>
      <td><strong>對俄制裁（海事）</strong></td>
      <td>Council Decision (CFSP) 2025/2617</td>
      <td>directly_applicable</td>
      <td>41 艘船舶港口禁入令，禁止提供海事服務</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **建材供應鏈合規門檻釐清**：Regulation (EU) 2024/3110 勘誤修正 Recital 21，明確區分強制性門檻（mandatory threshold levels）與自願性門檻（voluntary threshold levels）。強制性門檻為產品進入內部市場的先決條件，不論用途；自願性門檻僅適用於特定用途。此修正影響建材製造商、經銷商的產品合規判斷與供應鏈品質管控流程。

- **出口管制範圍擴大**：Council Regulation (EU) 2026/271 將伊朗軍事支援制裁擴展至十類零組件，涵蓋能量材料、電子元件、機械工具、感測器、導航系統與航太零件。雙用途技術供應鏈須更新合規篩選清單，出口商與海關須強化盡職調查。此法規為 directly_applicable，已直接生效。

- **海事供應鏈監管轉型**：Regulation (EU) 2025/2434 擴大 EMSA 職責範圍，從傳統安全與污染監管擴展至海事脫碳轉型治理。航運公司、港口管理機關與船級社須因應新的監管架構調整合規策略。

---

## 供應鏈責任矩陣

<p class="key-answer" data-question="供應鏈各角色有哪些責任變化">
  <strong>建材製造商新增門檻合規確認責任</strong>：須依勘誤修正後的門檻要求重新審視產品合規。雙用途技術供應商新增伊朗出口管制篩選責任。軟體供應商面臨 SSDF 1.2 與漏洞修補雙重壓力。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>角色</th>
      <th>美國要求</th>
      <th>歐盟要求</th>
      <th>本週變動趨勢</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>軟體供應商</strong></td>
      <td>SSDF 1.2 實務作法、修補程式完整性驗證（SP 800-53）、SBOM 揭露、DevSecOps（SP 1800-44）</td>
      <td>—</td>
      <td>SSDF 進入最終階段，KEV 漏洞凸顯修補急迫性</td>
    </tr>
    <tr>
      <td><strong>採購方</strong></td>
      <td>要求供應商提供 SSDF 合規證明、SBOM 驗證、威脅建模文件</td>
      <td>供應鏈來源驗證、建材門檻合規確認</td>
      <td>供應商評估標準持續強化</td>
    </tr>
    <tr>
      <td><strong>建材製造商/經銷商</strong></td>
      <td>—</td>
      <td>強制性門檻為上市先決條件（Regulation 2024/3110 勘誤）</td>
      <td>門檻要求釐清，合規判斷更明確</td>
    </tr>
    <tr>
      <td><strong>雙用途技術供應商</strong></td>
      <td>—</td>
      <td>伊朗出口禁令十類零組件篩選（Regulation 2026/271）</td>
      <td>出口管制範圍擴大</td>
    </tr>
    <tr>
      <td><strong>系統整合商</strong></td>
      <td>供應鏈追溯性機制（IR 8536）、元件來源驗證</td>
      <td>—</td>
      <td>追溯性標準持續深化</td>
    </tr>
    <tr>
      <td><strong>航運公司/港口管理機關</strong></td>
      <td>—</td>
      <td>EMSA 擴權合規（Regulation 2025/2434）、制裁船舶禁入（Decision 2025/2617）</td>
      <td>海事監管範圍擴大</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商</strong></td>
      <td>上市前威脅建模（IR 8259 Activity 0）、產品生態系安全</td>
      <td>—</td>
      <td>標準持續推進</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

<p class="key-answer" data-question="本週有哪些供應鏈責任變動">
  <strong>歐盟新增兩項重要責任變動</strong>：建材法規勘誤釐清門檻合規、伊朗制裁擴大出口管制。美國方面 SSDF 1.2 與修補管理控制持續推進。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| EU | Regulation (EU) 2024/3110 Corrigendum | 建材製造商、經銷商、合規官 | clarified | 釐清強制性門檻為產品上市先決條件，自願性門檻僅適用特定用途 |
| EU | Council Regulation (EU) 2026/271 | EU 出口商、海關、雙用途技術供應商、出口管制官 | expanded | 擴大對伊朗出口禁令，新增十類軍事與無人機零組件 |
| EU | Regulation (EU) 2025/2434 | 航運公司、港口管理機關、船級社、EMSA | expanded | 海事安全局職責擴展至脫碳轉型治理 |
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、軟體開發者、軟體採購方、聯邦機構 | expanded | SSDF 1.2 進入最終發布階段，擴大漏洞風險緩解責任 |
| NIST | SP 800-53 Release 5.2.0 | 聯邦機構（系統管理員、資安團隊）、軟體開發者 | expanded | 修補程式安全部署控制草案，劃分組織與開發者責任 |
| NIST | SP 1800-44 | 軟體開發團隊、DevSecOps 工程師、軟體供應商 | new | DevSecOps 安全軟體開發實踐聯盟指引 |
| NIST | NIST IR 8536 | 製造業組織、供應鏈管理者、合規官 | expanded | 製造業供應鏈追溯性元框架持續徵詢 |
| CISA | CISA KEV（多項供應鏈軟體漏洞） | IT 管理員、資安團隊、軟體採購方 | expanded | SolarWinds、GitLab、Vite 等供應鏈軟體漏洞被列入 KEV |
| EU | Regulation (EU) 2024/1938 Corrigendum | SoHO 機構、主管機關 | clarified | 釐清授權要求與快速警報觸發條件 |
| EU | Council Decision (CFSP) 2025/2617 | 港口主管機關、海事服務商 | expanded | 41 艘船舶港口禁入與海事服務禁止 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="SBOM 相關義務有何變化">
  <strong>SBOM 義務持續強化</strong>：SSDF 1.2 進入最終發布階段，軟體供應商須維護 SBOM 並支援漏洞追蹤。SP 800-53 修補管理控制要求修補程式完整性驗證，進一步強化軟體物料追蹤鏈。
</p>

**建材供應鏈合規義務（EU Regulation 2024/3110 勘誤）**：
- 建材製造商須確認產品符合強制性門檻要求方可進入內部市場
- 強制性門檻不因用途不同而豁免
- 自願性門檻僅適用於特定用途，經銷商須區分標示

**出口管制義務（EU Regulation 2026/271）**：
- 禁止出口十類伊朗軍事與無人機相關零組件
- 出口商須更新合規篩選清單，涵蓋能量材料、電子元件、機械工具、感測器、導航系統與航太零件
- 海關須強化貨物檢查與盡職調查

**SBOM 與軟體供應鏈義務**：
- 依 SSDF 1.2 要求，軟體生產者應建立並維護 SBOM，支援漏洞追蹤與風險評估
- SP 800-53 Release 5.2.0 草案要求修補程式完整性驗證
- CISA KEV 所列漏洞要求組織在指定期限內完成修補

**海事供應鏈義務（EU Regulation 2025/2434）**：
- EMSA 擴權後，航運公司須配合脫碳轉型監管要求
- 港口管理機關須因應新的監管架構調整合規程序

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 建材合規 | 產品門檻測試報告、合規聲明、用途分類文件 | EU Regulation 2024/3110 |
| 出口管制 | 出口篩選紀錄、盡職調查文件、終端使用者證明 | EU Regulation 2026/271 |
| 軟體供應鏈 | SSDF 實踐文件、SBOM、漏洞緩解措施、根因分析報告 | NIST SP 800-218r1 |
| 修補管理 | 修補程式測試驗證紀錄、完整性驗證日誌、部署時程 | NIST SP 800-53 5.2.0 |
| 供應鏈追溯性 | 追溯文件、製造流程紀錄、元件追蹤紀錄 | NIST IR 8536 |
| 漏洞修補 | KEV 漏洞修補完成紀錄、修補時程證明 | CISA KEV |
| 海事合規 | 脫碳合規文件、排放監控紀錄 | EU Regulation 2025/2434 |
| 制裁合規 | 船舶身份驗證紀錄、拒絕入港紀錄 | Council Decision 2025/2617 |

---

## L5 — Evolution Signals

<p class="key-answer" data-question="供應鏈安全的未來趨勢是什麼">
  <strong>供應鏈合規正從「產品品質」擴展至「地緣政治風險管理」</strong>：歐盟同時推動建材門檻釐清、伊朗制裁擴大與海事監管轉型，顯示供應鏈合規的範圍正快速擴大。
</p>

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 供應鏈合規範圍從「產品品質」擴展至「地緣政治風險管理」

歐盟在同一時期推動建材法規門檻釐清、伊朗制裁擴大出口管制、海事安全局擴權脫碳監管，顯示供應鏈合規已不僅止於產品品質與安全，更延伸至地緣政治風險、氣候轉型與制裁合規。供應鏈管理人員需建立跨領域合規監控能力，整合產品合規、出口管制與永續發展要求。

### [系統推論] 軟體供應鏈「漏洞被利用→框架強化」的正循環加速

SolarWinds、GitLab、Vite 等供應鏈關鍵軟體漏洞持續被列入 CISA KEV，同時 SSDF 1.2 與 SP 800-53 修補管理控制持續推進。實際攻擊事件正加速框架制定進程，形成「漏洞被利用 → 監管回應 → 框架強化 → 合規要求提升」的正循環。軟體供應商若未提前準備 SSDF 合規，將在最終版本發布後面臨較大的合規壓力。

### [系統推論] 歐盟「門檻釐清」模式將擴散至其他產品領域

Regulation (EU) 2024/3110 勘誤釐清強制性與自願性門檻的區別，此模式可能擴散至其他歐盟產品法規（如機械法規、玩具安全指令等），推動供應鏈合規從「模糊標準」走向「明確門檻」。製造商應關注類似勘誤對其他產品領域的潛在影響。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 12 |
| 來源分布 | NIST Frameworks: 4, NIST Cybersecurity Insights: 1, EU Regulations: 4, CISA KEV: 3 |
| rule_type 分布 | amendment: 4, draft: 3, revision: 2, new: 3 |
| enforcement_signal 分布 | mandatory: 5, recommended: 4, informational: 3 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 1 | 2025-07-31 |
| nist_frameworks | cybersecurity | 3 | 2025-07-22 ~ 2025-12-17 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2025-09-30 |
| eu_regulations | supply_chain | 2 | 2026-01-28 ~ 2026-01-30 |
| eu_regulations | financial_compliance | 2 | 2026-01-16 ~ 2026-01-30 |
| cisa_kev | vulnerability | 3 | 2026-01-22 ~ 2026-02-03 |

---

*報告產出時間：2026-03-22*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security vendor risk SBOM SSDF）*
