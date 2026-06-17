---
layout: report
last_modified_at: 2026-06-17
title: "2026-W25 Supply Chain Security"
parent: "Supply Chain Security"
nav_order: 75

seo:
  title: "2026-W25 供應鏈安全趨勢 | SSDF 1.2、EU 制裁與盡職調查"
  description: "本週追蹤 23 項供應鏈安全動態，涵蓋 NIST SSDF 1.2、IR 8536 供應鏈追溯性草案、歐盟對俄影子船隊與對伊朗雙用途出口管制制裁、IoT 製造商指引與 ISO/IEC 25706 SPDM。"
  date_published: "2026-06-17"
  date_modified: "2026-06-17"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "盡職調查"
    - "出口管制"
    - "EU 制裁"
    - "影子船隊"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/2026-W13-supply-chain-security/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W25-cybersecurity-compliance/"
  faq:
    - question: "2026-W25 有哪些重要的供應鏈安全動態？"
      answer: "2026-W25 追蹤 23 項供應鏈安全動態，重點包括 NIST SSDF 1.2（SP 800-218r1）公開徵詢、NIST IR 8536 供應鏈追溯性元框架第二版草案、歐盟對俄「影子船隊」41 艘船舶港口禁令與海事服務禁止、歐盟對伊朗雙用途出口管制與資產凍結制裁擴大，以及 IoT 製造商指引（IR 8259r1）與 ISO/IEC 25706 SPDM 硬體驗證標準。"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "NIST SSDF 1.2（SP 800-218r1 Rev.1）目前處於公開徵詢階段（截止 2026-01-30），尚未生效，但要求軟體生產者與採購方將安全開發實務整合進 SDLC，並透過採購流程傳遞安全要求，回應 Executive Order 14306。屬建議性質（recommended），對聯邦系統可能轉為強制。"
    - question: "歐盟對俄羅斯影子船隊的制裁如何影響供應鏈？"
      answer: "歐盟 Regulation (EU) 2025/2618 與 Decision (CFSP) 2025/2617 將 41 艘船舶列入制裁清單，要求成員國港口拒絕其入港並禁止提供加油、拖帶、貨物裝卸、維修等海事服務（2025-12-19 生效）。港口營運商與海事服務商須以 IMO 船舶編號比對制裁清單，否則面臨制裁曝險。此為強制性（mandatory）措施。"
    - question: "EU 對伊朗的出口管制有何變化？"
      answer: "Regulation (EU) 2026/271 將對伊朗的出口禁令擴及無人機（UAV）與飛彈研製所用的 10 類組件，包含含能材料、電子元件、工具機、感測器、導航系統與航太組件。EU 出口商須對 Annex II 受管制品項進行篩查並更新出口管制合規程序。此為強制性（mandatory）措施。"
---

# Supply Chain Security Trends — 2026-W25 {: .no_toc }

<div class="key-takeaway">
本週重點：軟體供應鏈側，NIST SSDF 1.2（SP 800-218r1）與 IR 8536 供應鏈追溯性元框架皆處於公開徵詢/草案階段，尚未生效，回應 Executive Order 14306；實體與制裁側，歐盟對俄「影子船隊」41 艘船舶實施港口禁令與海事服務禁止，並擴大對伊朗無人機/飛彈組件的雙用途出口管制與資產凍結（皆為強制性、directly_applicable）；硬體供應鏈則有 IoT 製造商指引（IR 8259r1）與 ISO/IEC 25706 SPDM 設備驗證標準。軟體供應鏈規範多為建議性草案，而歐盟制裁/出口管制為立即生效的合規義務，兩者性質須嚴格區分。
</div>

> **報告週期**：2026-06-11 至 2026-06-17
>
> 本期追蹤 23 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準、CISA KEV。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。部分歐盟制裁/CFSP 類來源為 RSS 降級萃取，細節以 EUR-Lex 正式公告為準。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 23 個權威來源（NIST、EUR-Lex、ISO、CISA 等） |
| 資料時間 | 2025-05-13 ~ 2026-02-03 |

</div>

---

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>NIST SSDF 1.2（SP 800-218r1）公開徵詢進行中，軟體供應鏈安全實務持續擴充但尚未生效</strong>（美國 NIST，revision／public_comment）；同期歐盟對俄「影子船隊」41 艘船舶實施強制港口禁令與海事服務禁止，並擴大對伊朗雙用途出口管制（歐盟，mandatory／directly_applicable）。
</p>

1. **NIST SSDF 1.2 公開徵詢（美國 NIST，revision／public_comment）**：SP 800-218r1（Revision 1）新增與改進安全軟體開發實務、任務與範例，要求軟體生產者與採購方將安全實務整合進各 SDLC 模型，並透過採購流程傳遞安全要求，回應 Executive Order 14306。公開徵詢期至 2026-01-30，**屬建議性質（recommended），尚未生效**。

2. **NIST IR 8536 供應鏈追溯性元框架第二版草案（美國 NIST，draft／public_comment）**：由 NIST NCCoE 發布，擴展製造業組織在供應鏈可見性與追溯性管理的責任範圍，要求建立製造流程可視性與追溯紀錄。**仍為草案，enforcement_signal 為 recommended**。

3. **歐盟對俄「影子船隊」41 艘船舶制裁（歐盟，amendment／directly_applicable）**：Regulation (EU) 2025/2618 與 Decision (CFSP) 2025/2617 將 41 艘船舶列入 Annex XLII／XVI，要求成員國港口拒絕入港並禁止提供海事服務（加油、拖帶、貨物裝卸、維修），針對運送遭竊烏克蘭穀物/石油與規避制裁的不規則航運行為，2025-12-19 生效，**強制性（mandatory）**。

4. **歐盟對伊朗雙用途出口管制與資產凍結擴大（歐盟，amendment／directly_applicable）**：Regulation (EU) 2026/271 將對伊朗出口禁令擴及無人機/飛彈研製的 10 類組件（含能材料、電子元件、工具機、感測器、導航系統、航太組件）；2026/262、2026/267 增列受制裁個人與實體並施加資產凍結。EU 出口商與金融機構須更新篩查系統，**皆為強制性（mandatory）**。

5. **硬體與 IoT 供應鏈指引（美國 NIST／國際 ISO，draft／recommended）**：NIST IR 8259 Revision 1（第二版草案）擴大 IoT 製造商售前/售後活動，新增威脅建模與初始風險評估（Activity 0）；ISO/IEC 25706:2026 SPDM 標準（confidence 中，WebFetch 降級）為硬體與韌體設備建立身份驗證與安全通訊協定。**皆為建議性質**。

<blockquote class="expert-quote">
  「SSDF Version 1.2 引入新的與改進的實務、任務與範例，擴展對軟體生產者與採購方的指引，以在整個軟體開發生命週期中減輕弱點風險。」
  <cite>NIST, Secure Software Development Framework (SSDF) Version 1.2（SP 800-218r1，公開徵詢）</cite>
</blockquote>

---

## 區域動態比較

<p class="key-answer" data-question="美國與歐盟本週的供應鏈安全要求有何不同">
  美國（NIST）本週動態集中於<strong>軟體與硬體供應鏈的自願性框架草案</strong>（SSDF 1.2、IR 8536、IR 8259r1，皆為 public_comment/draft、recommended）；歐盟則為<strong>立即生效的強制性制裁與出口管制</strong>（對俄影子船隊、對伊朗雙用途出口管制，directly_applicable、mandatory）。兩者法律性質與生效狀態截然不同，不可混為一談。
</p>

### 美國（NIST）

| 框架/指引 | 文件編號 | 狀態 | enforcement | 重點內容 |
|----------|---------|------|------------|---------|
| **SSDF 1.2 版** | SP 800-218r1 (Revision 1) | public_comment（截止 2026-01-30） | recommended | 安全軟體開發實務、任務與範例擴充；採購流程傳遞安全要求；回應 EO 14306 |
| **供應鏈追溯性元框架** | NIST IR 8536（第二版草案） | public_comment | recommended | 製造業供應鏈可見性與追溯性管理（NCCoE） |
| **軟體開發安全指南（聯盟）** | （未提供文件編號） | public_comment | recommended | SDLC 安全實務責任標準草案 |
| **IoT 製造商基礎活動** | NIST IR 8259 Revision 1（第二版草案） | public_comment | recommended | 新增 Activity 0（威脅建模/風險評估），強化售前售後資安溝通 |
| **SP 800-53 修補管理控制** | SP 800-53（草案） | draft | mandatory（聯邦系統） | 安全可靠修補部署控制；回應 EO 14306（含 supply_chain_risk 風險域） |

> **狀態提醒**：上述 NIST 軟體/IoT 供應鏈文件均處於 **public_comment 或 draft 階段，尚未成為已生效標準**；除 SP 800-53 修補控制因 EO 14306 對聯邦系統具強制信號外，其餘皆為建議性質。

### 歐盟

| 法規 | 文件編號 | binding_force | enforcement | 重點內容 |
|-----|---------|---------------|------------|---------|
| **對俄影子船隊（船舶禁令）** | Regulation (EU) 2025/2618 | directly_applicable | mandatory | 41 艘船舶列入 Annex XLII，港口禁令與海事服務禁止（2025-12-19 生效） |
| **對俄影子船隊（CFSP 決定）** | Decision (CFSP) 2025/2617 | directly_applicable | mandatory | 同步 41 艘船舶 Annex XVI；含遭竊穀物/文化財產與不規則航運 |
| **對伊朗雙用途出口管制** | Regulation (EU) 2026/271 | directly_applicable | mandatory | 擴大 10 類 UAV/飛彈組件出口禁令（Annex II） |
| **對伊朗制裁清單擴大** | Reg. (EU) 2026/262、2026/267 | directly_applicable | mandatory | 增列受制裁個人/實體，資產凍結與交易禁止 |
| **對伊朗制裁勘誤（實質擴充）** | Reg. (EU) 2025/1982 Corrigendum | directly_applicable | mandatory | Annex VIII/IX 增列 43 人 60 實體（核/飛彈、IRGC） |
| **Hamas/PIJ 制裁** | Reg. (EU) 2026/123 | directly_applicable | mandatory | 增列 1 人、移除 1 名已故者 |
| **人源物質品質安全勘誤** | Reg. (EU) 2024/1938 Corrigendum | directly_applicable | mandatory | 釐清 SoHO 機構授權範圍與快速警報門檻 |

> **註**：本週多數歐盟來源為制裁/CFSP 與出口管制措施。其供應鏈相關性主要體現在**出口管制篩查、海事服務盡職調查與制裁清單比對**；其中數筆於來源系統歸類為 `financial_compliance`，因兼具供應鏈盡職調查維度而納入本報告。部分項目為 RSS 降級萃取，細節以 EUR-Lex 為準。

---

## 供應鏈責任矩陣

<p class="key-answer" data-question="供應鏈各角色本週有哪些責任變化">
  本週<strong>軟體供應商</strong>面臨 SSDF 1.2 整合進 SDLC 的草案要求（建議性）；<strong>出口商與海事服務商</strong>則須履行歐盟強制盡職調查——對 41 艘制裁船舶與對伊朗 10 類受管制品項進行篩查（已生效）。
</p>

| 角色 | 美國（NIST）要求 | 歐盟要求 | 變動趨勢 |
|------|-----------------|---------|----------|
| **軟體供應商** | SSDF 1.2 實務整合進 SDLC、修補完整性驗證（SP 800-53）、SBOM 相關（草案/建議） | — | SSDF 1.2 徵詢中，尚未生效 |
| **硬體/韌體/IoT 製造商** | IoT 基礎活動（IR 8259r1）、威脅建模（Activity 0） | — | IoT 指引強化售前/售後資安溝通（草案） |
| **採購方** | 透過採購流程傳遞 SSDF 安全要求、追溯性紀錄（IR 8536） | 受管制品項與制裁清單盡職調查 | 採購端責任向草案要求靠攏 |
| **出口商/貿易商** | — | 對伊朗 10 類受管制品項篩查、更新出口管制合規程序（強制） | 雙用途出口管制範圍擴大 |
| **港口/海事服務商** | — | 以 IMO 編號比對 41 艘制裁船舶、拒絕港口與海事服務（強制） | 影子船隊盡職調查義務新增 |
| **金融機構/合規官** | — | 制裁清單篩查、資產凍結、交易拒絕記錄（強制） | 制裁名單持續擴增 |
| **系統整合商** | 供應鏈追溯性（IR 8536）、修補管理（SP 800-53） | — | 追溯性管理草案推進 |

---

## 責任變動追蹤

<p class="key-answer" data-question="本週有哪些供應鏈責任變動">
  本週責任變動以 <strong>expanded</strong> 為主：NIST 軟體/IoT 框架擴展生產者與採購方的安全責任（草案），歐盟則擴大出口管制、海事服務與制裁篩查的強制義務（已生效）。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary（摘要） |
|------|------|---------------|------------|----------------------|
| NIST | SP 800-218r1（SSDF 1.2） | 軟體生產者、開發者、採購方、聯邦機構、供應鏈供應商 | expanded | 新增/改進安全軟體開發實務，擴展生產者與採購方指引（草案） |
| NIST | IR 8536 | 製造組織、供應鏈管理者、合規官、採購團隊 | expanded | 擴展供應鏈可見性與追溯性管理責任（第二版草案） |
| NIST | IR 8259 Revision 1 | IoT 製造商、產品安全團隊、供應鏈管理者 | expanded | 新增威脅建模與初始風險評估（Activity 0），原 Activity 3 拆分（草案） |
| NIST | SP 800-53（修補控制） | 系統管理員、修補/弱點管理團隊、變更管理 | expanded | 增補安全可靠修補部署控制（草案，含 supply_chain_risk） |
| EU | Reg. (EU) 2025/2618 + Dec. 2025/2617 | 港口當局、海事服務商、海關、船舶營運商 | expanded | 41 艘船舶港口禁令與海事服務禁止（強制，已生效） |
| EU | Reg. (EU) 2026/271 | EU 出口商、海關、雙用途技術供應商 | expanded | 擴大對伊朗 10 類 UAV/飛彈組件出口禁令（強制，已生效） |
| EU | Reg. (EU) 2026/262、2026/267 | 金融機構、制裁合規官、資產管理者 | expanded | 增列受制裁個人/實體，資產凍結與交易禁止（強制） |
| EU | Reg. (EU) 2024/1938 Corrigendum | SoHO 機構、主管當局、跨成員國醫療提供者 | clarified | 釐清 SoHO 機構授權範圍與跨國快速警報門檻（強制） |

---

## 義務與舉證要求

<p class="key-answer" data-question="本週新增哪些供應鏈義務與舉證要求">
  軟體側義務多為建議性草案（SSDF 1.2 整合、追溯性紀錄）；出口管制與制裁側則為強制性已生效義務，要求保留出口授權、品項分類、IMO 船舶比對與制裁篩查日誌等舉證文件。
</p>

### 新增義務摘要

**軟體供應鏈（美國，草案/建議）**
- 將 SSDF 1.2 安全開發實務整合進各 SDLC 模型，透過採購流程傳遞安全要求（SP 800-218r1）
- 建立製造流程可視性、維護供應鏈組件追溯紀錄（IR 8536）
- IoT 製造商於售前活動整合威脅建模與初始風險評估、透明揭露使用者操作責任（IR 8259r1）
- 實施安全可靠的修補部署與完整性驗證（SP 800-53，聯邦系統強制）

**出口管制與制裁（歐盟，強制，已生效）**
- 對伊朗禁止出口 Annex II 新增的 10 類含能材料、電子、工具機、感測器、導航與航太組件（2026/271）
- 對 41 艘制裁船舶拒絕港口入港並禁止提供加油、拖帶、貨物裝卸、維修等海事服務（2025/2618、2025/2617）
- 凍結受制裁個人/實體資產、禁止提供資金或經濟資源、更新制裁篩查系統（2026/262、2026/267、2025/1982 Corrigendum、2026/123）

### 舉證要求摘要

- **軟體側**：SSDF 實務整合進 SDLC 的文件、採購安全要求紀錄、弱點緩解與修補完整性驗證日誌（NIST，草案）
- **出口管制側**：出口授權紀錄、雙用途品項分類文件、海關出口申報、合規程序更新紀錄（EU 2026/271）
- **海事側**：IMO 船舶登記比對紀錄、拒絕入港日誌、海事服務商拒絕服務證明、成員國執法行動報告（EU 2025/2618、2025/2617）
- **制裁側**：制裁清單比對與篩查日誌、資產凍結確認、交易拒絕文件、受益所有權查核（EU 多筆）

---

## L5 — Evolution Signals

<p class="key-answer" data-question="供應鏈安全的未來趨勢是什麼">
  軟體供應鏈規範持續向全 SDLC 治理與採購端傳遞擴展但仍停留在草案；歐盟本期施力點偏向地緣政治驅動的出口管制與海事制裁盡職調查；硬體層出現設備驗證標準化訊號。以下趨勢均為系統推論。
</p>

- **[系統推論]** 軟體供應鏈安全規範持續從「事後緩解」向「全 SDLC 治理與採購端傳遞」擴展（SSDF 1.2、IR 8536、IR 8259r1 均為 expanded），但本期相關文件仍停留在 public_comment/draft，**自願轉強制的時點尚未到來**。
- **[系統推論]** 歐盟供應鏈責任的主要施力點本期偏向**地緣政治驅動的出口管制與海事制裁盡職調查**（影子船隊船舶比對、雙用途品項篩查），而非傳統的人權/環境盡職調查指令；此分布可能反映本期資料偏向制裁/CFSP 類來源，不宜過度延伸為長期趨勢。
- **[系統推論]** 硬體/韌體供應鏈出現**設備層級驗證標準化**訊號（ISO/IEC 25706 SPDM、IoT IR 8259r1），但 SPDM 來源為 WebFetch 降級（confidence 中），其落地範圍尚待最終文件確認。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數（去重後不重複文件） | 23 |
| 來源分布 | EU Regulations: 12（supply_chain 8 / financial_compliance 7，去重後 9 篇 markdown / 約 7 份文件）、NIST Frameworks: 6、NIST Cybersecurity Insights: 2、ISO Standards: 1、CISA KEV: 6 |
| rule_type 分布 | revision: 2, amendment: 7, draft: 4, new: 6（含 CVE）, guidance: 1 |
| status 分布 | final: 多數 EU/CISA, public_comment/draft: 6（NIST 軟體/IoT） |
| enforcement_signal 分布 | mandatory: 多數 EU/CISA, recommended: 6（NIST 軟體/IoT 草案） |
| REVIEW_NEEDED | 0 筆（部分 EU 制裁來源為 RSS 降級，已於文中標註不確定性） |

> 註：來源 URL 計 30 筆，其中多筆為同一 CELEX 的 AUTO 與 EN/TXT 版本；去重後約 23 份不重複文件。

---

## 資料來源

| Layer | Category | 筆數（去重文件） | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 3 | 2025-07-30 ~ 2025-12-17 |
| nist_frameworks | cybersecurity | 2 | 2025-07-22 ~ 2025-07-28 |
| nist_cybersecurity_insights | supply_chain | 2 | 2025-05-13 ~ 2025-09-30 |
| eu_regulations | supply_chain | 4 | 2025-09-29 ~ 2026-01-30 |
| eu_regulations | financial_compliance | 5 | 2026-01-22 ~ 2026-01-30 |
| iso_standards | information_security | 1 | 2026-02-03 |
| cisa_kev | vulnerability | 6 | 2026-01-22 ~ 2026-02-03 |

---

*報告產出時間：2026-06-17*
