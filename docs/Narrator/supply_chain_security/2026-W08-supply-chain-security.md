---
layout: report
title: "2026-W08 Supply Chain Security"
parent: "Supply Chain Security"
nav_order: 8

seo:
  title: "2026-W08 供應鏈安全趨勢 | SSDF 1.2、IoT 製造商指引、供應鏈追溯性框架"
  description: "本週追蹤 9 項供應鏈安全動態，涵蓋 NIST SSDF 1.2 公開徵求意見、IR 8536 製造業供應鏈追溯性元框架、IoT 製造商網路安全指引修訂、歐盟制裁與人源物質安全標準。"
  date_published: "2026-02-18"
  date_modified: "2026-02-18"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "IoT 製造商"
    - "NIST IR 8536"
    - "PQC 遷移"
    - "供應鏈追溯性"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/2026-W07-supply-chain-security/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W08-cybersecurity-compliance/"
  faq:
    - question: "2026-W08 有哪些重要的供應鏈安全動態？"
      answer: "2026-W08 追蹤 9 項供應鏈安全動態，重點包括 NIST SSDF 1.2 版（SP 800-218r1）公開徵求意見、NIST IR 8536 製造業供應鏈追溯性元框架第二版草案、IoT 製造商網路安全指引（IR 8259）修訂，以及歐盟人源物質品質安全標準勘誤。"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "SSDF 1.2 版擴展軟體開發生命週期安全責任，軟體供應商需實施改進的安全開發實踐、漏洞根因分析，並準備提供 SBOM。採購方將要求供應商提供 SSDF 合規證明與安全開發文件。"
    - question: "SBOM 相關義務有何變化？"
      answer: "依 SSDF 1.2 要求，軟體生產者應建立並維護軟體組成清單（SBOM），支援漏洞追蹤與風險評估。製造業組織依 IR 8536 應建立供應鏈追溯性機制，確保元件來源可驗證。"
    - question: "IoT 製造商有哪些新的安全責任？"
      answer: "NIST IR 8259 修訂版擴大 pre-market 與 post-market 網路安全活動範圍，新增 Activity 0（整合威脅建模與初始風險評估），要求 IoT 製造商在產品開發初期即納入安全考量。"
    - question: "後量子密碼學遷移對供應鏈有何影響？"
      answer: "NIST CSWP 48 草案建立後量子密碼學遷移能力與風險框架文件的映射指引，CISO、加密系統管理員需評估 PQC 遷移專案能力與現有風險框架的對應關係。"
---

# Supply Chain Security Trends — 2026-W08

<div class="key-takeaway">
本週重點：NIST SSDF 1.2 版持續徵求公眾意見，擴展軟體供應商安全開發責任；IR 8536 製造業供應鏈追溯性元框架第二版草案推進，強化供應鏈可見性要求；IoT 製造商指引（IR 8259）修訂納入威脅建模新要求；歐盟對俄制裁擴大影響海事供應鏈。
</div>

> **報告週期**：2026-02-16 至 2026-02-22
>
> 本期追蹤 9 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>NIST SSDF 1.2 版（SP 800-218r1）持續公開徵求意見</strong>，引入新的安全軟體開發實踐、任務與範例，擴展軟體供應商與採購方在漏洞風險緩解方面的責任，受 Executive Order 14306 推動。
</p>

1. **SSDF 1.2 版公開徵求意見（美國 NIST，revision）**：NIST SP 800-218r1 修訂版引入改進的安全開發實踐，影響軟體生產者、開發者、採購方、聯邦機構及軟體供應鏈廠商。公開徵詢期已於 2026-01-30 截止，預期近期發布最終版本。

2. **製造業供應鏈追溯性元框架（美國 NIST，draft）**：NIST IR 8536 第二版公開草案聚焦製造業供應鏈可見性與追溯性管理，要求製造組織建立供應鏈追溯性機制，影響製造組織、供應鏈管理者、採購團隊。

3. **IoT 製造商網路安全指引修訂（美國 NIST，draft）**：IR 8259 修訂版新增 Activity 0（整合威脅建模與初始風險評估），擴大 pre-market 與 post-market 網路安全活動範圍，要求製造商在產品開發初期即納入安全考量。

4. **後量子密碼學遷移風險框架映射（美國 NIST，draft）**：CSWP 48 草案新增 PQC 遷移能力與風險框架文件的映射指引，CISO、加密系統管理員需評估遷移專案與現有框架的對應關係。

5. **歐盟對俄制裁擴大：海事供應鏈禁令（歐盟，mandatory）**：Council Decision (CFSP) 2025/2617 新增 41 艘船舶的港口禁入令與海事服務禁止，影響港口主管機關、海事服務商、船舶營運商。

<blockquote class="expert-quote">
  「SSDF Version 1.2 introduces new and improved practices, tasks, and examples for secure software development, expanding guidance for software producers and acquirers to mitigate vulnerability risks throughout the software development lifecycle.」
  <cite>NIST</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 本週有哪些供應鏈安全動態">
  <strong>SSDF 1.2 版進入最終階段</strong>，SP 800-218r1 公開徵求意見期已截止；IR 8536 製造業供應鏈追溯性元框架持續推進；IR 8259 IoT 製造商指引納入威脅建模新要求。
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
      <td>public_comment（徵詢期 2026-01-30 截止）</td>
      <td>安全軟體開發實務擴充，漏洞根因分析，受 EO 14306 推動</td>
    </tr>
    <tr>
      <td><strong>供應鏈追溯性元框架</strong></td>
      <td>NIST IR 8536</td>
      <td>public_comment（第二版草案）</td>
      <td>製造業供應鏈可見性與追溯性管理，元件來源驗證</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商基礎活動</strong></td>
      <td>IR 8259（修訂中）</td>
      <td>draft / public_comment</td>
      <td>新增 Activity 0（威脅建模），擴大 pre-market/post-market 活動</td>
    </tr>
    <tr>
      <td><strong>軟體開發安全指南</strong></td>
      <td>—</td>
      <td>draft</td>
      <td>NIST 聯盟軟體開發生命週期安全實踐責任標準</td>
    </tr>
    <tr>
      <td><strong>PQC 遷移風險框架映射</strong></td>
      <td>CSWP 48</td>
      <td>draft</td>
      <td>後量子密碼學遷移能力與風險框架映射指引</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **SSDF 1.2 進入最終階段**：SP 800-218r1 公開徵求意見期已截止，預期近期發布最終版本。軟體供應商應提前準備合規文件，特別是漏洞減少指標、安全開發實踐文件與根因分析報告。

- **製造業供應鏈追溯性標準深化**：IR 8536 第二版草案強調供應鏈可見性與追溯性，結合 IoT 製造商基礎活動（IR 8259）的威脅建模要求，顯示 NIST 正建立從設計到部署的完整供應鏈安全標準。

- **IoT 產品安全責任擴展**：IR 8259 修訂版將修訂納入近五年的產業反饋，新增 Activity 0 整合威脅建模，從單一裝置擴展至整體 IoT 產品生態系（含 app、閘道器、後端）。

### 歐盟

<p class="key-answer" data-question="歐盟本週有哪些供應鏈安全動態">
  <strong>海事供應鏈制裁擴大</strong>：Council Decision 2025/2617 新增 41 艘船舶禁令，港口主管機關與海事服務商須執行入港禁止與服務禁令。
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
      <td><strong>對俄制裁擴大</strong></td>
      <td>Council Decision (CFSP) 2025/2617</td>
      <td>directly_applicable</td>
      <td>41 艘船舶港口禁入令，禁止提供海事服務</td>
    </tr>
    <tr>
      <td><strong>人源物質品質安全標準勘誤</strong></td>
      <td>Regulation (EU) 2024/1938 Corrigendum</td>
      <td>directly_applicable</td>
      <td>釐清 SoHO 機構授權要求與快速警報觸發條件</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **海事供應鏈制裁執行**：Council Decision 2025/2617 針對參與運輸烏克蘭遭竊物資、規避制裁或從事「影子艦隊」操作的 41 艘船舶，要求會員國執行港口禁入與海事服務禁止。港口主管機關須驗證船舶身份，海事服務商（加油、拖曳、貨物裝卸、維修）須拒絕為列入名單船舶提供服務。

- **人源物質供應鏈追溯**：Regulation (EU) 2024/1938 勘誤釐清人源物質（SoHO）機構的授權要求範圍，以及 EU SoHO Platform 快速警報的觸發條件（影響「多於一個」會員國時觸發，而非「一個或多個」）。

---

## 供應鏈責任矩陣

<p class="key-answer" data-question="供應鏈各角色有哪些責任變化">
  <strong>軟體供應商責任擴展</strong>：SSDF 1.2 進入最終版本準備階段，採購方將開始要求供應商提供 SSDF 合規證明與威脅建模文件。IoT 製造商需在產品開發初期納入安全考量。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>角色</th>
      <th>美國（NIST）要求</th>
      <th>歐盟要求</th>
      <th>本週變動趨勢</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>軟體供應商</strong></td>
      <td>SSDF 1.2 實務作法、漏洞根因分析、SBOM 揭露、安全開發生命週期管理</td>
      <td>—</td>
      <td>SSDF 進入最終版本準備階段，責任持續擴展</td>
    </tr>
    <tr>
      <td><strong>採購方</strong></td>
      <td>要求供應商提供 SSDF 合規證明、威脅建模文件、SBOM 驗證</td>
      <td>供應鏈來源驗證</td>
      <td>供應商評估標準強化</td>
    </tr>
    <tr>
      <td><strong>系統整合商</strong></td>
      <td>供應鏈追溯性機制（IR 8536）、元件來源驗證</td>
      <td>—</td>
      <td>追溯性標準持續深化</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商</strong></td>
      <td>上市前威脅建模（IR 8259 Activity 0）、產品生態系安全、EOL 安全政策</td>
      <td>—</td>
      <td>威脅建模成為標準要求</td>
    </tr>
    <tr>
      <td><strong>港口主管機關</strong></td>
      <td>—</td>
      <td>對制裁名單船舶執行入港禁令（Decision 2025/2617）</td>
      <td>制裁執行責任擴大</td>
    </tr>
    <tr>
      <td><strong>海事服務商</strong></td>
      <td>—</td>
      <td>禁止為制裁名單船舶提供加油、拖曳、維修等服務</td>
      <td>服務對象驗證責任新增</td>
    </tr>
    <tr>
      <td><strong>CISO/加密管理員</strong></td>
      <td>PQC 遷移能力評估、風險框架對應（CSWP 48）</td>
      <td>—</td>
      <td>後量子遷移責任新增</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、軟體開發者、軟體採購方、聯邦機構、軟體供應鏈廠商 | expanded | SSDF 1.2 版引入新的實務作法、任務與範例，擴大漏洞風險緩解指引 |
| NIST | NIST IR 8536 | 製造業組織、供應鏈管理者、資安專業人員、合規官、採購團隊 | expanded | 製造業供應鏈追溯性元框架擴展供應鏈可見性與追溯性管理責任 |
| NIST | IR 8259（修訂中） | IoT 製造商、產品安全工程師、IoT 生態系統開發者 | expanded | 新增 Activity 0（威脅建模），擴大 pre-market/post-market 活動範圍 |
| NIST | CSWP 48 | CISO、加密系統管理員、風險管理人員、系統架構師 | new | 新增後量子密碼學遷移能力與風險框架映射指引責任 |
| EU | Council Decision (CFSP) 2025/2617 | 港口主管機關、海事服務商、船舶營運商、海關 | expanded | 對 41 艘船舶執行港口禁入與海事服務禁止 |
| EU | Regulation (EU) 2024/1938 Corrigendum | SoHO 機構、主管機關、EU SoHO Platform 營運者 | clarified | 釐清授權要求範圍與快速警報觸發條件 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="SBOM 相關義務有何變化">
  <strong>SBOM 成為軟體供應鏈標準要求</strong>：依 SSDF 1.2 要求，軟體供應商須維護軟體物料清單並提供給採購方，涵蓋第三方元件、開源依賴與版本資訊。
</p>

**SBOM 相關義務**：
- 依 SSDF 1.2 要求，軟體生產者應建立並維護軟體物料清單（SBOM），支援漏洞追蹤與風險評估
- SBOM 須涵蓋第三方元件、開源依賴與版本資訊
- 採購方須驗證供應商提供的 SBOM 完整性

**安全開發義務**：
- SSDF 1.2：軟體生產者須將安全實踐整合至各 SDLC 模型
- 透過軟體採購流程傳達安全要求
- 依 Executive Order 14306 處理軟體漏洞風險緩解建議

**供應鏈追溯義務**：
- IR 8536：製造業組織須建立供應鏈追溯性機制，確保元件來源可驗證
- 須維護供應鏈元件追蹤紀錄與稽核軌跡
- 須建立製造流程可見性

**IoT 產品安全義務**：
- IR 8259 修訂版：製造商須在產品開發初期納入威脅建模與初始風險評估（Activity 0）
- 須考量完整產品架構（含 app、閘道器、後端），而非僅硬體裝置本身
- 須整合 CSF 2.0、隱私框架、SSDF 於 IoT 產品開發流程
- 須提前規劃產品生命週期終止的資安支援策略

**制裁合規義務**：
- Council Decision 2025/2617：會員國須禁止 41 艘列入名單船舶進入港口與水閘
- 須禁止為列入名單船舶提供加油、導航協助、拖曳、貨物裝卸、維修等海事服務
- 須使用 IMO 船舶登記驗證船舶身份

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 軟體供應鏈 | SSDF 實踐整合至 SDLC 文件、軟體採購安全要求紀錄、漏洞緩解措施 | NIST SP 800-218r1 |
| 供應鏈追溯性 | 供應鏈追溯文件、製造流程紀錄、元件追蹤紀錄、追溯性稽核軌跡 | NIST IR 8536 |
| IoT 產品安全 | 威脅建模報告、初始風險評估文件、EOL 安全政策 | NIST IR 8259 |
| PQC 遷移 | PQC 遷移能力評估文件、風險框架對應映射表、加密演算法盤點清單 | NIST CSWP 48 |
| 制裁合規 | IMO 船舶登記驗證紀錄、拒絕入港紀錄、服務拒絕紀錄 | Council Decision 2025/2617 |
| 人源物質 | 非 SoHO 機構授權文件、跨境事件報告、Platform 警報紀錄 | Regulation (EU) 2024/1938 |

---

## L5 — Evolution Signals

<p class="key-answer" data-question="供應鏈安全的未來趨勢是什麼">
  <strong>軟體供應鏈透明度正從建議轉向強制</strong>：SSDF 1.2 版受 Executive Order 14306 推動，軟體供應商將面臨強制性合規要求。
</p>

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 軟體供應鏈安全責任正從「產品交付」延伸至「完整生命週期管理」

SSDF 1.2 版與 IR 8259 修訂版均顯示此趨勢。軟體供應商與 IoT 製造商將需承擔從設計、開發、部署到生命週期終止的完整安全責任。採購方將開始要求供應商提供涵蓋全生命週期的安全保證文件。

### [系統推論] 製造業供應鏈可追溯性將成為採購評估標準要項

NIST IR 8536 的供應鏈追溯性元框架，結合 IoT 製造商基礎活動的威脅建模要求，顯示監管機構正推動從設計到部署的完整供應鏈可見性。關鍵基礎設施部門（能源、國防、醫療）的採購方可能率先將 IR 8536 合規納入供應商評估標準。

### [系統推論] 後量子密碼學遷移將成為供應鏈安全評估的新維度

CSWP 48 草案建立 PQC 遷移能力與風險框架的映射，顯示 NIST 正為組織的加密演算法遷移規劃提供標準化指引。未來採購方可能將供應商的 PQC 準備度納入供應鏈風險評估，特別是涉及長期機密資料的系統。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 9 |
| 來源分布 | NIST Frameworks: 4, NIST Cybersecurity Insights: 3, EU Regulations: 2 |
| rule_type 分布 | draft: 4, guidance: 2, revision: 1, amendment: 1, new: 1 |
| enforcement_signal 分布 | recommended: 7, mandatory: 2 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 4 | 2025-07-30 ~ 2025-12-17 |
| nist_cybersecurity_insights | supply_chain | 3 | 2024-11-21 ~ 2025-09-30 |
| eu_regulations | supply_chain | 2 | 2025-12-18 ~ 2026-01-30 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [NIST Consortium and Draft Guidelines - Software Development](https://www.nist.gov/news-events/news/2025/07/nist-consortium-and-draft-guidelines-aim-improve-security-software) | NIST | 2025-07-30 |
| [PQC Migration: Mappings to Risk Framework Docs](https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs) | NIST | 2025-09-18 |
| [Five Years Later: Evolving IoT Cybersecurity Guidelines](https://www.nist.gov/blogs/cybersecurity-insights/five-years-later-evolving-iot-cybersecurity-guidelines) | NIST | 2025-05-13 |
| [Sharpening the Focus - IoT Product Manufacturers](https://www.nist.gov/blogs/cybersecurity-insights/sharpening-focus-product-requirements-and-cybersecurity-risks-updating) | NIST | 2025-09-30 |
| [Council Decision (CFSP) 2025/2617](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025D2617) | EU | 2025-12-18 |
| [Regulation (EU) 2024/1938 Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1938R(03)) | EU | 2026-01-30 |

---

*報告產出時間：2026-02-18*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security SSDF SBOM vendor risk）*
