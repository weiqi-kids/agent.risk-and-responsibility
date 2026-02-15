---
layout: report
title: "2026-W07 Supply Chain Security"
parent: "Supply Chain Security"
nav_order: 7

seo:
  title: "2026-W07 供應鏈安全趨勢 | SSDF 1.2、SBOM、盡職調查最新動態"
  description: "本週追蹤 15 項供應鏈安全動態，涵蓋 NIST SSDF 1.2 徵詢期截止、歐盟無森林砍伐商品盡職調查延期、ISO SPDM 標準發布。"
  date_published: "2026-02-15"
  date_modified: "2026-02-15"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "盡職調查"
    - "NIST IR 8536"
    - "ISO SPDM"
    - "數位產品護照"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/2026-W06-supply-chain-security/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W07-cybersecurity-compliance/"
  faq:
    - question: "2026-W07 有哪些重要的供應鏈安全動態？"
      answer: "2026-W07 重點包括 NIST SSDF 1.2 版（SP 800-218r1）公開徵詢期於 2026-01-30 截止、歐盟無森林砍伐商品盡職調查延期至 2026-12-30、NIST IR 8536 製造業供應鏈追溯性元框架持續推進，以及 ISO/IEC 25706:2026 SPDM 硬體安全驗證標準發布。"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "軟體供應商應關注 SSDF 1.2 版的強化要求，包括漏洞減少指標、安全開發實踐文件、根因分析報告與供應商溝通紀錄。採購方將要求供應商提供 SSDF 合規證明與 SBOM。"
    - question: "SBOM 相關義務有何變化？"
      answer: "依 SSDF 1.2 要求，軟體供應商須維護軟體物料清單（SBOM）並提供給採購方，SBOM 須涵蓋第三方元件、開源依賴與版本資訊。採購方須驗證供應商提供的 SBOM 完整性。"
    - question: "歐盟盡職調查義務有何變化？"
      answer: "Regulation (EU) 2025/2650 將無森林砍伐商品盡職調查義務的主要應用日期延後 12 個月至 2026-12-30。微小型初級生產者可提交一次性簡化聲明取代完整盡職調查，降低合規門檻。"
---

# Supply Chain Security Trends — 2026-W07

<div class="key-takeaway">
本週重點：NIST SSDF 1.2 版公開徵詢期截止，進入最終版本準備階段；歐盟無森林砍伐商品盡職調查延期至 2026-12-30；ISO/IEC 25706:2026 SPDM 硬體安全驗證標準發布，填補硬體層面供應鏈安全空白。
</div>

> **報告週期**：2026-02-09 至 2026-02-15
>
> 本期追蹤 15 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>NIST SSDF 1.2 版（SP 800-218r1）公開徵詢期已於 2026-01-30 截止</strong>，預期近期發布最終版本。此修訂受 Executive Order 14306 推動，軟體供應商應提前準備合規文件。
</p>

1. **SSDF 1.2 版徵詢期結束，進入最終版本準備階段**（美國，revision）— NIST SP 800-218r1 安全軟體開發框架 1.2 版公開徵求意見期已於 2026-01-30 截止，預期將進入最終版本發布流程。此次更新新增改進的實務作法與任務範例，受 Executive Order 14306 推動。

2. **歐盟無森林砍伐商品盡職調查延期至 2026 年底**（歐盟，revision，mandatory）— Regulation (EU) 2025/2650 修訂無森林砍伐商品盡職調查義務，主要應用日期延後 12 個月至 2026-12-30。微小型初級生產者可提交「一次性簡化聲明」取代完整盡職調查，降低合規門檻。

3. **歐盟永續產品生態設計框架技術修正**（歐盟，amendment，mandatory）— Regulation (EU) 2024/1781 Corrigendum 發布，澄清數位產品護照要求、受關注物質定義與標示顯示要求，影響產品製造商、進口商與經銷商。

4. **NIST IR 8536 製造業供應鏈追溯性元框架持續推進**（美國，draft）— NIST NCCoE 持續推進製造業供應鏈追溯性元框架第二版草案，強調透過可信任儲存庫（trusted repositories）實現產品來源驗證與供應鏈完整性評估。

5. **ISO SPDM 標準發布：硬體供應鏈安全驗證基準**（國際，new）— ISO/IEC 25706:2026（SPDM）於 2026-02-03 發布，為設備間安全身份驗證與資料交換提供標準化協議，填補硬體層面的供應鏈安全驗證空白。

<blockquote class="expert-quote">
  「SSDF Version 1.2 introduces new and improved practices, tasks, and examples for secure software development, expanding guidance for software producers and acquirers to mitigate vulnerability risks throughout the software development lifecycle.」
  <cite>NIST</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 本週有哪些供應鏈安全動態">
  <strong>SSDF 1.2 版進入最終階段</strong>，SP 800-218r1 公開徵求意見期已截止，預期近期發布最終版本。軟體供應商應提前準備合規文件。
</p>

本週期 NIST 供應鏈相關動態以軟體開發安全框架進展為主：

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
      <td>安全軟體開發實務擴充，漏洞根因分析與供應商溝通詞彙標準化，受 EO 14306 推動</td>
    </tr>
    <tr>
      <td><strong>供應鏈追溯性元框架</strong></td>
      <td>NIST IR 8536</td>
      <td>public_comment（第二版草案）</td>
      <td>製造業可信任儲存庫、產品來源驗證、供應鏈完整性評估</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商基礎活動</strong></td>
      <td>IR 8259（修訂中）</td>
      <td>public_comment</td>
      <td>新增 Activity 0、分拆 Activity 3/4、上市前威脅建模、AI 功能治理</td>
    </tr>
    <tr>
      <td><strong>勒索軟體風險管理</strong></td>
      <td>IR 8374</td>
      <td>revision</td>
      <td>更新至 CSF 2.0 版本，擴展勒索軟體防禦與復原責任結構</td>
    </tr>
    <tr>
      <td><strong>軟體開發安全指南</strong></td>
      <td>—</td>
      <td>draft</td>
      <td>NIST 聯盟軟體開發生命週期安全實踐責任標準</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **SSDF 1.2 進入最終階段**：SP 800-218r1 公開徵求意見期已截止，預期近期發布最終版本。軟體供應商應提前準備合規文件，特別是漏洞減少指標、安全開發實踐文件與根因分析報告。

- **製造業供應鏈追溯性技術深化**：NIST IR 8536 強調可信任儲存庫機制，結合 IoT 製造商基礎活動（IR 8259）的威脅建模要求，顯示 NIST 正建立從設計到部署的完整供應鏈安全標準。

### 歐盟

<p class="key-answer" data-question="歐盟本週有哪些供應鏈安全動態">
  <strong>盡職調查時程調整</strong>：Regulation (EU) 2025/2650 將無森林砍伐商品盡職調查義務的主要應用日期延後 12 個月，給予業者更多準備時間。
</p>

本週期歐盟供應鏈相關法規動態聚焦於盡職調查義務調整與產品法規技術修正：

<table class="comparison-table">
  <thead>
    <tr>
      <th>法規</th>
      <th>文件編號</th>
      <th>類型</th>
      <th>重點內容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>無森林砍伐商品盡職調查</strong></td>
      <td>Regulation (EU) 2025/2650</td>
      <td>revision</td>
      <td>應用日期延後至 2026-12-30，簡化微小型初級生產者義務</td>
    </tr>
    <tr>
      <td><strong>無森林砍伐商品</strong></td>
      <td>Regulation (EU) 2023/1115 Corrigendum</td>
      <td>amendment</td>
      <td>地理座標精度、市場禁令條件用語、畜牧設施術語澄清</td>
    </tr>
    <tr>
      <td><strong>永續產品生態設計</strong></td>
      <td>Regulation (EU) 2024/1781 Corrigendum</td>
      <td>amendment</td>
      <td>數位產品護照要求、受關注物質定義、標示顯示要求澄清</td>
    </tr>
    <tr>
      <td><strong>建築產品行銷規則</strong></td>
      <td>Regulation (EU) 2024/3110 Corrigendum</td>
      <td>amendment</td>
      <td>強制性門檻值與自願性門檻值適用情境澄清</td>
    </tr>
    <tr>
      <td><strong>單次使用塑膠產品</strong></td>
      <td>Directive (EU) 2019/904 Corrigendum</td>
      <td>amendment</td>
      <td>生產者責任範圍澄清為「棄置廢棄物」而非所有「廢棄物」</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **盡職調查時程調整**：Regulation (EU) 2025/2650 將無森林砍伐商品盡職調查義務的主要應用日期延後 12 個月，給予業者更多準備時間。微小型初級生產者可透過簡化聲明降低合規負擔。

- **數位產品護照持續推進**：永續產品生態設計框架的技術修正顯示歐盟正積極釐清數位產品護照的實施細節，製造商與進口商應關注後續委任法規發展。

---

## 供應鏈責任矩陣

<p class="key-answer" data-question="供應鏈各角色有哪些責任變化">
  <strong>軟體供應商責任擴大</strong>：SSDF 1.2 進入最終版本準備階段，採購方將開始要求供應商提供 SSDF 合規證明與威脅建模文件。
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
      <td>SSDF 1.2 實務作法（徵詢期截止）、漏洞根因分析、SBOM 揭露</td>
      <td>數位產品護照資訊揭露（持續）</td>
      <td>SSDF 進入最終版本準備階段</td>
    </tr>
    <tr>
      <td><strong>採購方</strong></td>
      <td>要求供應商提供 SSDF 合規證明、威脅建模文件</td>
      <td>供應鏈盡職調查資訊保留</td>
      <td>供應商評估標準強化</td>
    </tr>
    <tr>
      <td><strong>系統整合商</strong></td>
      <td>供應鏈追溯性機制（IR 8536）、SPDM 合規</td>
      <td>—</td>
      <td>追溯性標準進入草案階段</td>
    </tr>
    <tr>
      <td><strong>製造商</strong></td>
      <td>上市前威脅建模（IR 8259）、供應鏈可見性</td>
      <td>永續設計受關注物質申報、建築產品門檻值</td>
      <td>威脅建模成為標準要求</td>
    </tr>
    <tr>
      <td><strong>農產品操作者/貿易商</strong></td>
      <td>—</td>
      <td>無森林砍伐盡職調查（延期至 2026-12-30）</td>
      <td>應用日期延後，準備時間增加</td>
    </tr>
    <tr>
      <td><strong>塑膠產品生產者</strong></td>
      <td>—</td>
      <td>棄置廢棄物生產者責任（Directive 2019/904）</td>
      <td>責任範圍澄清</td>
    </tr>
    <tr>
      <td><strong>IoT 產品製造商</strong></td>
      <td>IR 8259 修訂版基礎活動、EOL 安全政策、部署者責任釐清</td>
      <td>EU CRA 準備（預期）</td>
      <td>責任界線明確化</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、軟體開發者、軟體採購方、聯邦機構、軟體供應鏈廠商 | expanded | SSDF 1.2 版引入新的實務作法、任務與範例，擴大對軟體生產者與採購方的漏洞風險緩解指引 |
| NIST | NIST IR 8536 | 製造業組織、供應鏈管理者、資安專業人員、合規官、採購團隊 | expanded | 製造業供應鏈追溯性元框架擴展供應鏈可見性與追溯性管理責任範圍 |
| NIST | IR 8259（修訂中） | IoT 設備製造商、IoT 設備客戶、資安工程師 | expanded | 將修訂 IR 8259 納入近五年的產業反饋與實務經驗 |
| NIST | IR 8374 | 資安團隊、事件回應團隊、風險管理官、IT 管理員、備份管理員 | expanded | 勒索軟體風險管理框架更新至 CSF 2.0 版本，擴展防禦與復原責任 |
| EU | Regulation (EU) 2025/2650 | 農產品操作者、貿易商、下游企業、微小型初級生產者 | modified | 修訂盡職調查義務，應用日期延後至 2026-12-30，簡化微小型初級生產者義務 |
| EU | Regulation (EU) 2024/1781 Corrigendum | 產品製造商、進口商、經銷商、授權代表、會員國市場監管機構 | clarified | 澄清數位產品護照要求、受關注物質定義、標示顯示要求 |
| EU | Regulation (EU) 2023/1115 Corrigendum | 農產品操作者、貿易商、畜牧場經營者 | clarified | 地理座標精度、市場禁令條件用語、畜牧設施術語澄清 |
| EU | Directive (EU) 2019/904 Corrigendum | 會員國、單次使用塑膠產品生產者、漁具製造商、廢棄物管理機關 | clarified | 澄清生產者責任適用於「棄置廢棄物」而非所有「廢棄物」 |
| ISO | ISO/IEC 25706:2026 (SPDM) | 硬體製造商、設備安全驗證團隊、採購評估人員 | new | SPDM 安全協議與資料模型標準發布，設備間安全身份驗證標準化 |
| ISO | ISO 22373:2025 | 供應鏈管理者、品質保證團隊、稽核人員 | new | 建立供應與價值鏈可信任性的通用框架 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="SBOM 相關義務有何變化">
  <strong>SBOM 成為軟體供應鏈標準要求</strong>：依 SSDF 1.2 要求，軟體供應商須維護軟體物料清單並提供給採購方，涵蓋第三方元件、開源依賴與版本資訊。
</p>

**SBOM 相關義務**：
- 依 SSDF 1.2 要求，軟體供應商須維護軟體物料清單（SBOM）並提供給採購方
- SBOM 須涵蓋第三方元件、開源依賴與版本資訊
- 採購方須驗證供應商提供的 SBOM 完整性

**盡職調查義務**：
- 歐盟：農產品操作者與貿易商須執行無森林砍伐商品盡職調查（應用日期 2026-12-30）
- 微小型初級生產者可提交「一次性簡化聲明」取代完整盡職調查
- 下游操作者和交易者需在系統中註冊並保留供應鏈資訊
- 美國：IoT 製造商須在上市前執行威脅建模（threat modeling）
- 製造商須識別已知弱點與失效模式
- 須建立產品生命週期風險管理機制

**透明度報告義務**：
- 依 NIST IR 8536 要求，製造商須建立跨組織的產品來源記錄機制
- 須支援利害關係人跨組織查詢可追溯性資料
- 歐盟數位產品護照要求產品資訊數位化揭露

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 軟體供應鏈 | 漏洞減少指標、安全開發實踐文件、根因分析報告、供應商溝通紀錄 | NIST SP 800-218r1 |
| 供應鏈追溯性 | 產品來源驗證文件、可信任儲存庫存取紀錄、供應鏈完整性評估報告 | NIST IR 8536 |
| IoT 產品安全 | 威脅建模報告、已知弱點清單、操作責任矩陣、EOL 安全政策 | NIST IR 8259 |
| 無森林砍伐商品 | 地理座標資料、供應鏈來源證明、盡職調查聲明書 | Regulation (EU) 2023/1115, 2025/2650 |
| 永續產品 | 數位產品護照資料、受關注物質申報、標示合規文件 | Regulation (EU) 2024/1781 |
| 硬體安全驗證 | SPDM 協議實施文件、設備身份驗證紀錄 | ISO/IEC 25706:2026 |

---

## L5 — Evolution Signals

<p class="key-answer" data-question="供應鏈安全的未來趨勢是什麼">
  <strong>軟體供應鏈透明度正從建議轉向強制</strong>：SSDF 1.2 版受 Executive Order 14306 推動，軟體供應商將面臨強制性合規要求。
</p>

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 軟體供應鏈透明度正從「建議」轉向「強制」

SSDF 1.2 版受 Executive Order 14306 推動，公開徵求意見期已截止。這意味著與美國聯邦政府有業務往來的軟體供應商將面臨強制性合規要求。結合 SBOM 揭露的日益普及，軟體供應鏈透明度正從最佳實務轉變為法定義務。

### [系統推論] 歐盟供應鏈盡職調查義務延期反映實施挑戰

Regulation (EU) 2025/2650 將無森林砍伐商品盡職調查義務的應用日期延後 12 個月，顯示業者在地理座標蒐集、供應鏈資訊系統建置等方面面臨實施挑戰。簡化微小型初級生產者義務的措施，反映監管機構正平衡環境目標與商業可行性。

### [系統推論] 製造業供應鏈可追溯性將成為採購評估標準要項

NIST IR 8536 的可信任儲存庫概念，結合 IoT 製造商基礎活動的威脅建模要求，顯示監管機構正推動從設計到部署的完整供應鏈可見性。關鍵基礎設施部門（能源、國防、醫療）的採購方可能率先將 IR 8536 合規納入供應商評估標準。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 15 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 2, EU Regulations: 5, ISO Standards: 2, CSA Cloud Security: 1 |
| rule_type 分布 | revision: 4, amendment: 4, draft: 3, new: 2, guidance: 2 |
| enforcement_signal 分布 | mandatory: 5, recommended: 9, informational: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 20 | 2024-02-26 ~ 2026-02-06 |
| nist_cybersecurity_insights | supply_chain | 20 | 2024-02-28 ~ 2025-12-22 |
| eu_regulations | supply_chain | 20 | 2019-04-17 ~ 2026-02-04 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [Regulation (EU) 2025/2650 Deforestation Due Diligence](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2650) | EU | 2026-01-15 |
| [Regulation (EU) 2024/1781 Ecodesign Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1781) | EU | 2026-02-04 |
| [Regulation (EU) 2023/1115 Deforestation Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32023R1115R(04)) | EU | 2026-01-14 |
| [IoT Product Manufacturers Foundational Activities](https://www.nist.gov/blogs/cybersecurity-insights/sharpening-focus-product-requirements-and-cybersecurity-risks-updating) | NIST | 2025-09-30 |
| [ISO/IEC 25706:2026 - SPDM](https://www.iso.org/standard/91251.html) | ISO | 2026-02-03 |
| [ISO 22373:2025 - Trustworthy Supply Chains](https://www.iso.org/standard/50276.html) | ISO | 2025-11-19 |

---

*報告產出時間：2026-02-15*
*資料查詢方式：Qdrant 語意搜尋（queries: NIST supply chain security SSDF SBOM C-SCRM, NIST cybersecurity insights supply chain, EU supply chain due diligence）*
