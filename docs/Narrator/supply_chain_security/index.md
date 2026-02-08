---
layout: default
title: Supply Chain Security
nav_order: 4
has_children: true
---

# Supply Chain Security Trends — 2026-W06

> **報告週期**：2026-02-02 至 2026-02-08
>
> 本期追蹤 16 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規與 ISO 標準。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **歐盟永續產品生態設計框架技術修正**（歐盟，amendment）— Regulation (EU) 2024/1781 的 Corrigendum 於 2026-02-04 生效，釐清受關注物質術語、數位產品護照要求與標籤顯示規定。對製造商、進口商、經銷商的供應鏈透明度義務進行技術澄清。enforcement_signal 為 mandatory。

2. **伊朗彈道飛彈與無人機計畫制裁擴大**（歐盟，expanded）— Council Implementing Regulation (EU) 2026/262 於 2026-01-29 生效，新增 4 名個人與 6 個實體至制裁名單，涵蓋導彈組件採購、無人機製造與港口代理服務。影響與伊朗有業務往來的供應鏈營運商。

3. **ISO/IEC 25706:2026 安全協議與資料模型發布**（ISO，new）— SPDM（Security Protocol and Data Model）標準於 2026-02-03 發布，為設備間安全身份驗證與資料交換提供標準化框架，影響硬體供應鏈安全驗證。

4. **蘇丹制裁擴大至供應鏈相關人權盡職調查**（歐盟，expanded）— Council Decision (CFSP) 2026/254 新增 7 名涉及 El Fasher 暴行與 Gezirah State 系統性侵害的官員，強化衝突地區供應鏈人權盡職調查義務。

5. **SSDF 1.2 版公開徵詢期截止**（美國，revision）— NIST SP 800-218r1 安全軟體開發框架更新至 1.2 版公開徵求意見期於 2026-01-30 截止，預期後續將進入最終版本發布流程。

---

## 區域動態比較

### 美國（NIST）

本週期 NIST 供應鏈相關動態以既有框架進展為主：

| 框架/指引 | 文件編號 | 狀態 | 重點內容 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment（徵詢期 2026-01-30 截止） | 安全軟體開發實務擴充，漏洞根因分析與供應商溝通詞彙標準化 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈追溯性與可見性管理責任擴展 |
| **安全修補控制措施** | SP 800-53 Release 5.2.0 | public_comment | 軟體韌性、開發者測試、安全日誌、修補部署責任分工 |
| **PQC 遷移映射白皮書** | — | draft | 後量子密碼學遷移能力與風險框架文件映射指引 |
| **軟體開發安全指南** | — | public_comment | NIST 聯盟軟體開發生命週期安全實踐責任標準 |
| **IoT 製造商基礎活動** | IR 8259（修訂中） | public_comment | 物聯網產品製造商上市前後應執行的安全活動 |

### 歐盟

本週歐盟有 8 項供應鏈相關動態：

**制裁合規動態**

| 法規 | 目標區域 | 新增制裁對象 | 生效日期 | binding_force |
|------|----------|--------------|----------|---------------|
| Regulation (EU) 2026/262 | 伊朗 | 4 人 + 6 實體（彈道飛彈與 UAV 計畫） | 2026-01-29 | directly_applicable |
| Decision (CFSP) 2026/254 | 蘇丹 | 7 名涉及人權侵害的官員 | 2026-01-29 | directly_applicable |

**產品合規與永續設計**

| 法規 | 範圍 | 重點變動 | binding_force |
|------|------|---------|---------------|
| Regulation (EU) 2024/1781 Corrigendum | 永續產品生態設計 | 數位產品護照要求、受關注物質術語、標籤顯示規定技術修正 | directly_applicable |
| Directive 2008/119/EG Corrigendum | 畜牧動物福利 | 小牛粗飼料年齡門檻澄清（德文版修正） | requires_transposition |
| Regulation (EU) 2024/3110 Corrigendum | 建材行銷 | 強制與自願門檻適用範圍澄清 | directly_applicable |
| Regulation (EU) 2024/1938 Corrigendum | 人源物質品質安全 | 跨成員國快速警報觸發門檻修正 | directly_applicable |

### ISO 國際標準

本週 ISO 發布 2 項供應鏈相關標準：

| 標準 | 編號 | 發布日期 | 範圍 |
|------|------|----------|------|
| 安全協議與資料模型（SPDM） | ISO/IEC 25706:2026 | 2026-02-03 | 設備間安全身份驗證與資料交換協議標準化 |
| 可信任供應與價值鏈框架 | ISO 22373:2025 | 2025-11-19 | 建立供應與價值鏈可信任性的通用框架 |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法（徵詢期截止）、漏洞根因分析 | 數位產品護照資訊揭露（Reg. 2024/1781） | SSDF 進入最終版本準備階段 |
| **採購方** | 要求供應商提供 SSDF 合規證明 | 伊朗/蘇丹制裁篩查義務擴大 | 制裁合規篩查範圍擴大 |
| **系統整合商** | 供應鏈追溯性機制（IR 8536）、PQC 遷移能力評估 | 建材採購確認強制門檻合規 | 追溯性技術要求持續發展 |
| **製造商** | 供應鏈可見性、組件追蹤日誌、IoT 安全活動 | 生態設計受關注物質申報、人源物質授權 | 永續設計與安全義務整合 |
| **金融機構** | — | 伊朗制裁實體資產凍結、交易禁令 | 新增 10 個制裁對象篩查 |
| **港口/海運營運商** | — | 伊朗港口代理服務禁令、UAV 貨運監控 | 供應鏈物流制裁執法強化 |

---

## 責任變動追蹤表格

| 來源 | 文件 | 影響角色 | 變動類型 | 變動摘要 |
|------|------|---------|---------|---------|
| EU | Regulation (EU) 2026/262 | 金融機構、海運商、港口代理、採購方 | expanded | 新增 4 人 + 6 實體至伊朗彈道飛彈/UAV 制裁名單，涵蓋電子元件供應商、導彈推進劑採購商、港口代理 |
| EU | Decision (CFSP) 2026/254 | 金融機構、成員國邊境管制、供應鏈盡職調查團隊 | expanded | 新增 7 名蘇丹人權侵害責任人至制裁名單 |
| EU | Regulation (EU) 2024/1781 Corrigendum | 產品製造商、進口商、經銷商、合規官 | clarified | 數位產品護照要求、受關注物質術語、標籤顯示規定技術澄清 |
| EU | Regulation (EU) 2024/1938 Corrigendum | 人源物質機構、歐盟 SoHO 平台營運者 | clarified | 跨成員國快速警報觸發門檻從「一個或多個」修正為「多於一個」 |
| EU | Regulation (EU) 2024/3110 Corrigendum | 建材製造商、經銷商 | clarified | 強制與自願門檻適用範圍澄清 |
| EU | Regulation (EU) 2026/249 | 商業漁船、休閒漁業 | new | 2026-2028 漁業配額與六個月商業鰻魚禁漁期 |
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、開發者、採購方、聯邦機構、供應鏈供應商 | expanded | 安全開發實踐擴展，徵詢期 2026-01-30 截止 |
| NIST | NIST IR 8536 | 製造組織、供應鏈管理者、資安專業人員、合規官、採購團隊 | expanded | 製造業供應鏈追溯性元框架第二次公開草案 |
| ISO | ISO/IEC 25706:2026 | 硬體製造商、設備安全驗證團隊 | new | SPDM 安全協議與資料模型標準發布 |
| ISO | ISO 22373:2025 | 供應鏈管理者、品質保證團隊 | new | 可信任供應與價值鏈框架 |

---

## 義務與舉證要求

### 新增義務摘要

**制裁合規義務**（歐盟）：
- 金融機構須對伊朗制裁名單新增的 4 人 + 6 實體執行資產凍結與交易禁令
- 港口營運商須拒絕為 Sahara Thunder、Asia Marine Crown Agency 等實體提供服務
- 蘇丹制裁名單新增 7 名個人的資產凍結與旅行禁令

**產品合規義務**（歐盟）：
- 依 Regulation (EU) 2024/1781 澄清後的要求提供數位產品護照
- 受關注物質申報遵循修正後的術語規範
- 建材製造商區分強制與自願門檻的適用場景

**軟體供應鏈義務**（NIST，待最終版本）：
- 依 SSDF 1.2 實施安全軟體開發實務
- 將安全實踐整合至組織使用的各 SDLC 模型
- 透過軟體採購流程傳達安全要求

**供應鏈追溯義務**（國際）：
- ISO 22373:2025 可信任供應鏈框架的實施（recommended）
- ISO/IEC 25706:2026 SPDM 協議用於設備間安全驗證（recommended）

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 伊朗制裁合規 | 制裁篩查系統更新紀錄、交易拒絕紀錄、港口服務拒絕紀錄 | EU Reg. 2026/262 |
| 蘇丹制裁合規 | 資產凍結執行紀錄、入境拒絕紀錄 | EU Decision 2026/254 |
| 永續產品合規 | 數位產品護照文件、受關注物質申報、標籤合規證明 | EU Reg. 2024/1781 Corrigendum |
| 建材合規 | 強制門檻測試報告、符合性聲明 | EU Reg. 2024/3110 Corrigendum |
| 人源物質 | 跨成員國事故報告、快速警報啟動紀錄 | EU Reg. 2024/1938 Corrigendum |
| 軟體供應鏈 | SSDF 實踐整合至 SDLC 的文件紀錄（待最終版本） | NIST SP 800-218r1 |
| 硬體安全驗證 | SPDM 協議實施文件（recommended） | ISO/IEC 25706:2026 |

---

## L5 — Evolution Signals

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 歐盟制裁執法正從「被動篩查」轉向「主動供應鏈穿透」

伊朗制裁名單新增的實體類型（港口代理、船舶管理、前台公司）顯示歐盟正瞄準制裁規避的物流與金融中介環節。Sahara Thunder 作為「import-export front for Iran's Ministry of Defence」被列名，表明制裁執法正深入供應鏈的每一環節。供應鏈營運商需強化對業務夥伴最終受益人的盡職調查。

### [系統推論] 數位產品護照正成為歐盟永續供應鏈的核心基礎設施

Regulation (EU) 2024/1781 Corrigendum 雖為技術修正，但其涵蓋「digital product passport requirements」與「substances of concern terminology」的澄清，顯示數位產品護照的實施細節正在精煉化。這預示數位產品護照將從概念走向落地，成為歐盟供應鏈透明度的強制要求。

### [系統推論] ISO SPDM 標準可能成為硬體供應鏈安全驗證的國際基準

ISO/IEC 25706:2026（SPDM）的發布，為設備間安全身份驗證與資料交換提供了標準化協議。在 NIST SSDF 強調軟體供應鏈安全的同時，SPDM 填補了硬體層面的安全驗證空白。這可能促使監管機構與採購方將 SPDM 合規納入硬體供應商評估標準。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 16 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 1, EU Regulations: 8, ISO Standards: 2 |
| rule_type 分布 | amendment/clarified: 5, expanded: 2, new: 4, draft: 3, revision: 2 |
| enforcement_signal 分布 | mandatory: 9, recommended: 7 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 5 | 2025-07-30 ~ 2025-12-17 |
| nist_cybersecurity_insights | supply_chain | 1 | 2025-09-30 |
| eu_regulations | supply_chain | 8 | 2026-01-28 ~ 2026-02-04 |
| iso_standards | other | 2 | 2025-11-19 ~ 2026-02-03 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [Council Implementing Regulation (EU) 2026/262 - Iran Sanctions](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0262) | EU | 2026-01-29 |
| [Council Decision (CFSP) 2026/254 - Sudan Sanctions](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32026D0254) | EU | 2026-01-29 |
| [Regulation (EU) 2024/1781 Corrigendum - Ecodesign](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1781R(04)) | EU | 2026-02-04 |
| [Regulation (EU) 2024/1938 Corrigendum - SoHO](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1938R(03)) | EU | 2026-01-30 |
| [Regulation (EU) 2024/3110 Corrigendum - Construction Products](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R3110R(01)) | EU | 2026-01-28 |
| [Council Regulation (EU) 2026/249 - Fishing Opportunities 2026-2028](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32026R0249) | EU | 2026-01-30 |
| [ISO/IEC 25706:2026 - SPDM](https://www.iso.org/standard/91251.html) | ISO | 2026-02-03 |
| [ISO 22373:2025 - Trustworthy Supply Chains](https://www.iso.org/standard/50276.html) | ISO | 2025-11-19 |
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [IoT Product Manufacturers Foundational Activities](https://www.nist.gov/blogs/cybersecurity-insights/sharpening-focus-product-requirements-and-cybersecurity-risks-updating) | NIST | 2025-09-30 |

---

*報告產出時間：2026-02-08*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security vendor risk）*
