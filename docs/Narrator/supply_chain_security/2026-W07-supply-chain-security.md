---
layout: default
title: "2026-W07"
parent: Supply Chain Security
nav_order: 1
---

# Supply Chain Security Trends — 2026-W07

> **報告週期**：2026-02-09 至 2026-02-15
>
> 本期追蹤 12 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、ISO 標準。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **SSDF 1.2 版徵詢期結束，進入最終版本準備階段**（美國，revision）— NIST SP 800-218r1 安全軟體開發框架 1.2 版公開徵求意見期已於 2026-01-30 截止，預期將進入最終版本發布流程。此次更新新增改進的實務作法與任務範例，受 Executive Order 14306 推動，enforcement_signal 為 mandatory。

2. **NIST IR 8536 製造業供應鏈追溯性元框架持續推進**（美國，draft）— NIST NCCoE 持續推進製造業供應鏈追溯性元框架第二版草案，強調透過可信任儲存庫（trusted repositories）實現產品來源驗證與供應鏈完整性評估。影響製造業者、關鍵基礎設施供應商與採購方。

3. **IoT 製造商基礎活動修訂：強化上市前威脅建模**（美國，revision）— NIST IR 8259 修訂版新增 Activity 0（程序澄清）並分拆 Activity 3/4，強調製造商須在產品上市前進行威脅建模，明確操作責任界線。公眾意見徵詢延長至 2025-12-10。

4. **ISO SPDM 標準發布：硬體供應鏈安全驗證基準**（國際，new）— ISO/IEC 25706:2026（SPDM）於 2026-02-03 發布，為設備間安全身份驗證與資料交換提供標準化協議，填補硬體層面的供應鏈安全驗證空白。

5. **PQC 遷移映射指引發布：後量子密碼學供應鏈準備**（美國，draft）— NIST CSWP 48 白皮書提供後量子密碼學遷移能力與風險框架文件的映射指引，要求組織評估加密演算法遷移計畫的供應鏈影響。

---

## 區域動態比較

### 美國（NIST）

本週期 NIST 供應鏈相關動態以軟體開發安全框架進展為主：

| 框架/指引 | 文件編號 | 狀態 | 重點內容 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment（徵詢期 2026-01-30 截止） | 安全軟體開發實務擴充，漏洞根因分析與供應商溝通詞彙標準化，受 EO 14306 推動 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業可信任儲存庫、產品來源驗證、供應鏈完整性評估 |
| **IoT 製造商基礎活動** | IR 8259（修訂中） | public_comment（延長至 2025-12-10） | 新增 Activity 0、分拆 Activity 3/4、上市前威脅建模、AI 功能治理 |
| **PQC 遷移映射白皮書** | CSWP 48 | draft | 後量子密碼學遷移能力與風險框架文件映射指引 |
| **軟體開發安全指南** | — | public_comment | NIST 聯盟軟體開發生命週期安全實踐責任標準 |

**重點觀察**：

- **SSDF 1.2 進入最終階段**：SP 800-218r1 公開徵求意見期已截止，預期近期發布最終版本。軟體供應商應提前準備合規文件，特別是漏洞減少指標、安全開發實踐文件與根因分析報告。

- **製造業供應鏈追溯性技術深化**：NIST IR 8536 強調可信任儲存庫機制，結合 IoT 製造商基礎活動（IR 8259）的威脅建模要求，顯示 NIST 正建立從設計到部署的完整供應鏈安全標準。

- **後量子密碼學遷移時程逼近**：CSWP 48 的發布反映供應鏈需開始評估 PQC 遷移影響，特別是涉及加密元件的軟體與硬體供應商。

### 歐盟

本週期 Qdrant 語意搜尋未取得歐盟供應鏈相關法規動態。上週（W06）主要動態包括：

- 伊朗彈道飛彈/無人機計畫制裁擴大（Regulation (EU) 2026/262）
- 永續產品生態設計框架技術修正（Regulation (EU) 2024/1781 Corrigendum）
- 蘇丹人權制裁擴大（Decision (CFSP) 2026/254）

建議持續關注歐盟供應鏈盡職調查指令（CSDDD）與數位產品護照後續發展。

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法（徵詢期截止）、漏洞根因分析、SBOM 揭露 | 數位產品護照資訊揭露（持續） | SSDF 進入最終版本準備階段 |
| **採購方** | 要求供應商提供 SSDF 合規證明、威脅建模文件 | 制裁篩查義務（持續） | 供應商評估標準強化 |
| **系統整合商** | 供應鏈追溯性機制（IR 8536）、PQC 遷移能力評估、SPDM 合規 | — | 追溯性與加密遷移雙軌並進 |
| **製造商** | 上市前威脅建模（IR 8259）、供應鏈可見性、AI 功能治理 | 永續設計受關注物質申報（持續） | 威脅建模成為強制要求 |
| **IoT 產品製造商** | IR 8259 修訂版基礎活動、EOL 安全政策、部署者責任釐清 | EU CRA 準備（預期） | 責任界線明確化 |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體開發者、軟體開發組織、軟體採購方、供應鏈安全管理者 | expanded | 擴充安全軟體開發框架至 1.2 版，新增改進的實務作法、任務與範例，建立採購方與供應商間的共同語彙 |
| NIST | NIST IR 8536 | 製造業者、關鍵基礎設施供應商、供應鏈管理軟體提供者、採購方 | expanded | 將供應鏈管理從追蹤（tracking）延伸至完整的可追溯性（traceability），要求建立跨組織產品來源記錄機制 |
| NIST | IR 8259（修訂中） | IoT 產品製造商、嵌入式系統開發團隊、產品安全部門、系統整合商 | expanded | 新增 Activity 0、分拆 Activity 3/4、強化上市前威脅建模、整合 AI 功能治理期望 |
| NIST | CSWP 48 | CISO、加密系統管理員、風險管理人員、系統架構師 | new | 新增後量子密碼學遷移能力與風險框架文件之間的映射指引責任 |
| NIST | 軟體開發安全指南 | 軟體開發者、軟體架構師、DevSecOps 團隊、開源維護者 | new | 新的軟體開發安全指南草案建立了軟體開發生命週期中安全實踐的責任標準 |
| ISO | ISO/IEC 25706:2026 | 硬體製造商、設備安全驗證團隊、採購評估人員 | new | SPDM 安全協議與資料模型標準發布，設備間安全身份驗證標準化 |
| ISO | ISO 22373:2025 | 供應鏈管理者、品質保證團隊、稽核人員 | new | 建立供應與價值鏈可信任性的通用框架 |

---

## 義務與舉證要求

### 新增義務摘要

**SBOM 相關義務**：
- 依 SSDF 1.2 要求，軟體供應商須維護軟體物料清單（SBOM）並提供給採購方
- SBOM 須涵蓋第三方元件、開源依賴與版本資訊
- 採購方須驗證供應商提供的 SBOM 完整性

**盡職調查義務**：
- IoT 製造商須在上市前執行威脅建模（threat modeling）
- 製造商須識別已知弱點與失效模式
- 須建立產品生命週期風險管理機制
- 須明確文件化操作責任與監督界線

**透明度報告義務**：
- 依 NIST IR 8536 要求，製造商須建立跨組織的產品來源記錄機制
- 須支援利害關係人跨組織查詢可追溯性資料
- 須建立資料真實性與完整性的驗證機制

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 軟體供應鏈 | 漏洞減少指標、安全開發實踐文件、根因分析報告、供應商溝通紀錄 | NIST SP 800-218r1 |
| 供應鏈追溯性 | 產品來源驗證文件、可信任儲存庫存取紀錄、供應鏈完整性評估報告 | NIST IR 8536 |
| IoT 產品安全 | 威脅建模報告、已知弱點清單、操作責任矩陣、EOL 安全政策 | NIST IR 8259 |
| PQC 遷移 | PQC 遷移能力評估文件、風險框架對應映射表、加密演算法盤點清單 | NIST CSWP 48 |
| 硬體安全驗證 | SPDM 協議實施文件、設備身份驗證紀錄 | ISO/IEC 25706:2026 |

---

## L5 — Evolution Signals

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 軟體供應鏈透明度正從「建議」轉向「強制」

SSDF 1.2 版受 Executive Order 14306 推動，enforcement_signal 已標記為 mandatory。這意味著與美國聯邦政府有業務往來的軟體供應商將面臨強制性合規要求。結合 SBOM 揭露的日益普及，軟體供應鏈透明度正從最佳實務轉變為法定義務。

### [系統推論] 製造業供應鏈可追溯性將成為採購評估標準要項

NIST IR 8536 的可信任儲存庫概念，結合 IoT 製造商基礎活動的威脅建模要求，顯示監管機構正推動從設計到部署的完整供應鏈可見性。關鍵基礎設施部門（能源、國防、醫療）的採購方可能率先將 IR 8536 合規納入供應商評估標準。

### [系統推論] 後量子密碼學遷移時程正在壓縮供應鏈準備時間

NIST CSWP 48 的發布反映 PQC 遷移已從「長期規劃」進入「近期執行」階段。涉及加密元件的軟體與硬體供應商需開始盤點現有加密演算法、評估遷移路徑，並與上下游供應鏈協調遷移時程。延遲準備可能導致供應鏈中斷風險。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 12 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 1, ISO Standards: 2, CSA Cloud Security: 3, CISA KEV: 1（供應鏈相關） |
| rule_type 分布 | draft: 3, revision: 2, new: 4, guidance: 3 |
| enforcement_signal 分布 | mandatory: 1, recommended: 10, informational: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 5 | 2025-07-30 ~ 2025-12-17 |
| nist_cybersecurity_insights | supply_chain | 1 | 2025-09-30 |
| iso_standards | other | 2 | 2025-11-19 ~ 2026-02-03 |
| csa_cloud_security | best_practices, cloud_security | 3 | 2026-01-13 ~ 2026-01-27 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [IoT Product Manufacturers Foundational Activities](https://www.nist.gov/blogs/cybersecurity-insights/sharpening-focus-product-requirements-and-cybersecurity-risks-updating) | NIST | 2025-09-30 |
| [PQC Migration Mappings White Paper](https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs) | NIST | 2025-09-18 |
| [NIST Consortium Software Development Guidelines](https://www.nist.gov/news-events/news/2025/07/nist-consortium-and-draft-guidelines-aim-improve-security-software) | NIST | 2025-07-30 |
| [ISO/IEC 25706:2026 - SPDM](https://www.iso.org/standard/91251.html) | ISO | 2026-02-03 |
| [ISO 22373:2025 - Trustworthy Supply Chains](https://www.iso.org/standard/50276.html) | ISO | 2025-11-19 |

---

*報告產出時間：2026-02-13*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security vendor risk）*
