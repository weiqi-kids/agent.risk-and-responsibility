---
layout: default
title: Supply Chain Security
nav_order: 14
has_children: true
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

本週期 NIST 供應鏈相關動態以軟體開發安全框架進展為主：

| 框架/指引 | 文件編號 | 狀態 | 重點內容 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment（徵詢期 2026-01-30 截止） | 安全軟體開發實務擴充，漏洞根因分析，受 EO 14306 推動 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈可見性與追溯性管理，元件來源驗證 |
| **IoT 製造商基礎活動** | IR 8259（修訂中） | draft / public_comment | 新增 Activity 0（威脅建模），擴大 pre-market/post-market 活動 |
| **軟體開發安全指南** | — | draft | NIST 聯盟軟體開發生命週期安全實踐責任標準 |
| **PQC 遷移風險框架映射** | CSWP 48 | draft | 後量子密碼學遷移能力與風險框架映射指引 |

**重點觀察**：

- **SSDF 1.2 進入最終階段**：SP 800-218r1 公開徵求意見期已截止，預期近期發布最終版本。軟體供應商應提前準備合規文件，特別是漏洞減少指標、安全開發實踐文件與根因分析報告。

- **製造業供應鏈追溯性標準深化**：IR 8536 第二版草案強調供應鏈可見性與追溯性，結合 IoT 製造商基礎活動（IR 8259）的威脅建模要求，顯示 NIST 正建立從設計到部署的完整供應鏈安全標準。

- **IoT 產品安全責任擴展**：IR 8259 修訂版將修訂納入近五年的產業反饋，新增 Activity 0 整合威脅建模，從單一裝置擴展至整體 IoT 產品生態系（含 app、閘道器、後端）。

### 歐盟

本週期歐盟供應鏈相關法規動態聚焦於制裁執行與人源物質追溯：

| 法規 | 文件編號 | binding_force | 重點內容 |
|-----|---------|---------------|---------|
| **對俄制裁擴大** | Council Decision (CFSP) 2025/2617 | directly_applicable | 41 艘船舶港口禁入令，禁止提供海事服務 |
| **人源物質品質安全標準勘誤** | Regulation (EU) 2024/1938 Corrigendum | directly_applicable | 釐清 SoHO 機構授權要求與快速警報觸發條件 |

**重點觀察**：

- **海事供應鏈制裁執行**：Council Decision 2025/2617 針對參與運輸烏克蘭遭竊物資、規避制裁或從事「影子艦隊」操作的 41 艘船舶，要求會員國執行港口禁入與海事服務禁止。港口主管機關須驗證船舶身份，海事服務商（加油、拖曳、貨物裝卸、維修）須拒絕為列入名單船舶提供服務。

- **人源物質供應鏈追溯**：Regulation (EU) 2024/1938 勘誤釐清人源物質（SoHO）機構的授權要求範圍，以及 EU SoHO Platform 快速警報的觸發條件（影響「多於一個」會員國時觸發，而非「一個或多個」）。

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、漏洞根因分析、SBOM 揭露、安全開發生命週期管理 | — | SSDF 進入最終版本準備階段，責任持續擴展 |
| **採購方** | 要求供應商提供 SSDF 合規證明、威脅建模文件、SBOM 驗證 | 供應鏈來源驗證 | 供應商評估標準強化 |
| **系統整合商** | 供應鏈追溯性機制（IR 8536）、元件來源驗證 | — | 追溯性標準持續深化 |
| **IoT 製造商** | 上市前威脅建模（IR 8259 Activity 0）、產品生態系安全、EOL 安全政策 | — | 威脅建模成為標準要求 |
| **港口主管機關** | — | 對制裁名單船舶執行入港禁令（Decision 2025/2617） | 制裁執行責任擴大 |
| **海事服務商** | — | 禁止為制裁名單船舶提供加油、拖曳、維修等服務 | 服務對象驗證責任新增 |
| **CISO/加密管理員** | PQC 遷移能力評估、風險框架對應（CSWP 48） | — | 後量子遷移責任新增 |

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
