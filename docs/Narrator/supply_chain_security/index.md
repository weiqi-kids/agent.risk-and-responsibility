---
layout: default
title: Supply Chain Security
nav_order: 4
has_children: true
---

# Supply Chain Security Trends — 2026-W06

> **報告週期**：2026-02-02 至 2026-02-08
>
> 本期追蹤 18 項供應鏈安全動態，涵蓋 NIST 框架與歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **SSDF 1.2 版公開徵詢**（美國，revision）— NIST SP 800-218r1 安全軟體開發框架更新至 1.2 版，新增改進實務作法、任務與範例，對軟體供應商與採購方建立共同語彙，enforcement_signal 為 mandatory。

2. **歐盟擴大對俄制裁船隊名單**（歐盟，mandatory）— Council Regulation (EU) 2025/2618 新增 41 艘從事運輸竊取烏克蘭穀物與石油產品的船隻至制裁清單，港口當局與海運服務商須立即更新篩查系統並拒絕服務。

3. **無森林砍伐商品盡職調查義務簡化與延後**（歐盟，revision）— Regulation (EU) 2025/2650 修訂 2023/1115，主要應用日期延後至 2026-12-30，微小型初級生產者可提交「一次性簡化聲明」取代完整盡職調查，下游企業須在系統中註冊並保留供應鏈資訊。

4. **供應鏈追溯性元框架第二版草案**（美國，draft）— NIST IR 8536 進入第二次公開徵求意見，擴展製造業供應鏈可見性與追溯性管理責任。

5. **生態設計與建材法規技術修正**（歐盟，corrigendum）— Regulation (EU) 2024/1781（永續產品生態設計框架）發布更正文件，釐清 Digital Product Passport 要求與關注物質術語。

---

## 區域動態比較

### 美國（NIST）

本週 NIST 有 4 項供應鏈相關動態：

| 框架/指引 | 文件編號 | 狀態 | 重點變動 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment | 擴充安全軟體開發實務，強調漏洞根因分析與供應商溝通詞彙標準化 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈追溯性與可見性管理責任擴展 |
| **PQC 遷移映射白皮書** | — | draft | 新增後量子密碼學遷移能力與風險框架文件映射指引 |
| **軟體開發安全指南** | — | public_comment | NIST 聯盟發布軟體開發生命週期安全實踐責任標準 |

**重點觀察**：

- **SSDF 1.2**（2025-12-17）：這是本週期最重要的 NIST 更新。SSDF 1.2 版擴充安全軟體開發框架，新增改進的實務作法、任務與範例，協助組織減少已發布軟體的漏洞數量。特別強調建立採購方與供應商間的共同語彙，強化軟體供應鏈透明度。enforcement_signal 標記為 mandatory。

- **NIST IR 8536**（2025-07-31）：製造業供應鏈追溯性元框架進入第二次公開草案階段，顯示 NIST 持續迭代優化。影響製造組織、供應鏈管理者、資安專業人員與採購團隊。

- **軟體開發安全指南草案**（2025-07-30）：NIST 聯盟發布新的軟體開發安全指南草案，建立軟體開發生命週期中安全實踐的責任標準。

- **PQC Migration 白皮書**（2025-09-18）：後量子密碼學遷移能力與風險框架文件映射指引，影響 CISO、加密系統管理員與風險管理人員。

### 歐盟

本週歐盟有 14 項供應鏈相關動態：

**制裁合規動態**

| 法規 | 目標區域 | 新增制裁對象 | binding_force | 生效日期 |
|------|----------|--------------|---------------|----------|
| Regulation (EU) 2025/2618 | 俄羅斯 | 41 艘船隻 | directly_applicable | 2025-12-19 |
| Decision (CFSP) 2025/2617 | 俄羅斯 | 41 艘船隻 | directly_applicable | 2025-12-19 |
| Implementing Regulation (EU) 2025/1982 | 伊朗 | 43 名個人、60 個實體 | directly_applicable | 2025-09-29 |

**供應鏈盡職調查**

| 法規 | 範圍 | 重點變動 |
|------|------|---------|
| Regulation (EU) 2025/2650 | 無森林砍伐商品 | 主要應用日期延後至 2026-12-30；微小型初級生產者簡化聲明路徑 |
| Corrigendum 32023R1115R(04) | 無森林砍伐商品 | 地理座標精度要求至少六位小數；畜牧設施追蹤術語澄清 |

**產品合規與永續設計**

| 法規 | 範圍 | 重點變動 |
|------|------|---------|
| Corrigendum 32024R1781R(04) | 永續產品生態設計 | Digital Product Passport 要求語言修正；關注物質術語釐清 |
| Corrigendum 32024R3110R(01) | 建材行銷 | 強制門檻適用範圍釐清（放入市場 vs. 特定用途） |

**其他技術性勘誤**

- Regulation (EU) 2024/1938（人源物質品質安全）：澄清授權要求與快速警報觸發條件
- Regulation (EU) 2015/757 與 2023/957（海運排放監測）：術語修正（reasonable certainty → appropriate assurance）
- Directive (EU) 2019/883（港口廢棄物接收）：貨物殘留分類術語修正
- Directive (EU) 2022/1999（危險品運輸檢查）：術語標準化（inspection report → control checklist）

**危機管理**

| 法規 | 機制 | 影響領域 |
|------|------|---------|
| Regulation (EU) 2025/2645 | 危機期間專利強制授權 | 製藥、醫療器材、半導體（資料不完整） |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、漏洞根因分析、與採購方建立共同詞彙 | 依產品類別可能需提供 Digital Product Passport | SSDF 強制性提升 |
| **採購方** | 要求供應商提供 SSDF 合規證明、維護供應商通訊紀錄 | 盡職調查聲明、供應鏈資訊保留 | 盡職調查義務向下游延伸 |
| **系統整合商** | 供應鏈追溯性機制（IR 8536）、PQC 遷移能力評估 | 建材採購確認強制門檻合規 | 追溯性技術要求趨同 |
| **製造商** | 供應鏈可見性、組件追蹤日誌 | 無森林砍伐聲明（含六位小數地理座標）、生態設計合規 | 環境盡職調查成為常態 |
| **金融機構** | — | 制裁篩查即時更新、資產凍結執行、交易監控紀錄 | 制裁名單擴充（伊朗 +103 項指定） |
| **海運營運商** | — | 船舶制裁篩查（+41 艘船舶）、排放驗證術語更新 | 影子船隊執法強化 |

---

## 責任變動追蹤表格

| 來源 | 文件 | 影響角色 | 變動類型 | 變動摘要 |
|------|------|---------|---------|---------|
| NIST | NIST IR 8536 | manufacturing organizations, supply chain managers, cybersecurity professionals, compliance officers, procurement teams | expanded | 製造業供應鏈追溯性的元框架進入第二次公開草案，擴展了組織在供應鏈可見性和追溯性管理方面的責任範圍 |
| NIST | Software Development Security Guidelines | software developers, software architects, DevSecOps teams, software vendors, open source maintainers, quality assurance teams | new | 新的軟體開發安全指南草案建立了軟體開發生命週期中安全實踐的責任標準 |
| NIST | SSDF 1.2 | Software developers, software development organizations, software acquirers, procurement teams, supply chain security managers | expanded | 擴充安全軟體開發框架至 1.2 版，新增改進的實務作法、任務與範例，協助組織減少已發布軟體的漏洞數量並建立採購方與供應商間的共同語彙 |
| NIST | PQC Migration White Paper | CISO, 加密系統管理員, 風險管理人員, 系統架構師, 合規稽核人員 | new | 新增後量子密碼學遷移能力與風險框架文件之間的映射指引責任 |
| EU | Regulation (EU) 2025/2650 | 商品操作者、貿易商、下游企業、微小型初級生產者 | clarified | 修訂無森林砍伐商品盡職調查義務，主要應用日期延後 12 個月至 2026 年 12 月 30 日，簡化微小型初級生產者的合規程序 |
| EU | Regulation (EU) 2025/2618 | Port authorities, maritime transport service providers, customs authorities | expanded | 港口管理機構與海運服務供應商須對 41 艘新增制裁船舶執行禁止措施 |
| EU | Regulation (EU) 2024/1781 Corrigendum | Product manufacturers, importers, distributors, authorized representatives | clarified | 技術性修正澄清生態設計法規的 Digital Product Passport 要求與關注物質術語 |
| EU | Implementing Regulation (EU) 2025/1982 | 金融機構、貿易商、制裁篩查系統操作者 | expanded | 伊朗制裁名單大幅擴大，新增 43 名個人與 60 個實體 |
| EU | Regulation (EU) 2024/1938 Corrigendum | SoHO establishments, competent authorities, EU SoHO Platform operators | clarified | 澄清人源物質機構授權要求與快速警報觸發條件 |
| EU | Regulation (EU) 2024/3110 Corrigendum | manufacturers of construction products, distributors | clarified | 澄清強制性與自願性門檻適用範圍 |

---

## 義務與舉證要求

### 新增義務摘要

**SBOM / 軟體供應鏈相關義務**：
- 依 SSDF 1.2 實施安全軟體開發實務，減少已發布軟體的漏洞數量
- 建立採購方與供應商間的共同語彙，提升供應鏈透明度
- 進行漏洞根因分析，建立可追溯的安全開發流程

**盡職調查義務**：
- 操作者需提交「盡職調查聲明」或「簡化聲明」（針對低風險國家微小型初級生產者）
- 下游操作者和交易者必須收集並保留供應鏈前一階段的資訊
- 非中小企業的下游操作者和交易者須在資訊系統中註冊
- 地理座標精度需達至少六位小數

**透明度報告義務**：
- 實施供應鏈追溯機制，維護追溯紀錄（NIST IR 8536）
- 符合 Digital Product Passport 要求（EU 生態設計法規）
- 維護建築產品的強制性門檻合規紀錄

**制裁合規義務**：
- 更新制裁篩查系統以納入 41 艘新增船舶（俄羅斯制裁）
- 更新伊朗制裁篩查系統（新增 103 項指定）
- 禁止對制裁名單船舶提供港口進入與海運服務
- 凍結指定人員與實體資產

### 舉證要求摘要

| 領域 | 舉證要求 |
|------|----------|
| 軟體供應鏈 | 安全軟體開發生命週期文件、安全測試紀錄、漏洞管理流程、程式碼審查記錄、漏洞減少指標 |
| 製造業追溯性 | 供應鏈追溯文件、製造流程紀錄、組件追蹤日誌、追溯稽核軌跡 |
| 商品盡職調查 | 盡職調查聲明或簡化聲明、供應鏈資訊紀錄、地理定位資料（六位小數精度） |
| 生態設計合規 | Digital Product Passport 文件、生態設計合規紀錄、標籤與產品資訊材料、關注物質聲明 |
| 制裁合規 | 制裁篩查系統更新紀錄、船舶進入拒絕紀錄、資產凍結執行紀錄、交易監控日誌 |
| PQC 遷移 | PQC 遷移能力評估文件、風險框架映射表、加密演算法盤點清單 |

---

## L5 — Evolution Signals

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 軟體供應鏈透明度要求正從「自願採用」轉向「採購條件」

SSDF 1.2 強調建立採購方與供應商間的共同語彙，enforcement_signal 標記為 mandatory，顯示軟體安全開發實務將逐漸成為商業採購的先決條件，而非單純的最佳實踐建議。配合 NIST 軟體開發安全聯盟的推動，預計將形成更具強制性的軟體供應鏈安全採購標準。

### [系統推論] 歐盟正透過多項法規建構「供應鏈責任生態系」

從無森林砍伐商品盡職調查到生態設計 Digital Product Passport，歐盟正系統性地建立涵蓋環境、社會與資安面向的供應鏈責任框架。本週期內多項勘誤文件澄清技術性要求（如地理座標精度、關注物質術語），顯示實施細節正在逐步完善。組織需準備整合性合規策略。

### [系統推論] 制裁合規正成為供應鏈風險管理的核心組成

本週期內俄羅斯與伊朗制裁名單均大幅擴大（俄羅斯 +41 艘船舶、伊朗 +103 項指定），顯示地緣政治風險對供應鏈的影響持續加劇。制裁執法重心從「靜態名單」轉向「動態船隊追蹤」，組織需強化即時制裁篩查能力，將篩查從「一次性檢查」轉變為「持續監控」模式。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 18 |
| 來源分布 | NIST Frameworks: 4, NIST Cybersecurity Insights: 0, EU Regulations: 14 |
| rule_type 分布 | draft: 3, revision: 2, amendment: 5, corrigendum: 4, regulation: 1, unknown: 3 |
| enforcement_signal 分布 | mandatory: 13, recommended: 3, informational: 1, unknown: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 4 | 2025-07-30 ~ 2025-12-17 |
| nist_cybersecurity_insights | supply_chain | 0 | N/A |
| eu_regulations | supply_chain | 14 | 2019-04-17 ~ 2026-02-04 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [NIST Software Development Security Guidelines](https://www.nist.gov/news-events/news/2025/07/nist-consortium-and-draft-guidelines-aim-improve-security-software) | NIST | 2025-07-30 |
| [PQC Migration Mappings](https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs) | NIST | 2025-09-18 |
| [Regulation (EU) 2025/2650 Deforestation](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2650) | EU | 2026-01-15 |
| [Regulation (EU) 2025/2645 Compulsory Licensing](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2645) | EU | 2026-01-16 |
| [Regulation (EU) 2024/1781 Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1781R(04)) | EU | 2026-02-04 |
| [Regulation (EU) 2024/3110 Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R3110R(01)) | EU | 2026-01-28 |
| [Council Regulation (EU) 2025/2618 Russia Sanctions](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2618) | EU | 2025-12-18 |
| [Council Decision (CFSP) 2025/2617](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025D2617) | EU | 2025-12-18 |
| [Implementing Regulation (EU) 2025/1982 Iran Sanctions](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R1982R(01)) | EU | 2025-09-29 |
| [Corrigendum 32023R1115R(04)](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32023R1115R(04)) | EU | 2026-01-14 |

---

*報告產出時間：2026-02-07*
