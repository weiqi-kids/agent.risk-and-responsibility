---
layout: default
title: "2026-W06"
parent: Supply Chain Security
nav_order: 1
---

# Supply Chain Security Trends — 2026-W06

> **報告週期**：2026-02-02 至 2026-02-08
>
> 本期追蹤 12 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察與歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **SSDF 1.2 版公開徵詢**（美國，revision）— NIST SP 800-218r1 安全軟體開發框架更新至 1.2 版，新增改進實務作法、任務與範例，對軟體供應商與採購方建立共同語彙。公開徵求意見至 2026-01-30 截止。

2. **歐盟無森林砍伐商品盡職調查義務簡化**（歐盟，revision）— Regulation (EU) 2025/2650 修訂 2023/1115，主要應用日期延後 12 個月至 2026-12-30，微小型初級生產者可提交「一次性簡化聲明」取代完整盡職調查。

3. **供應鏈追溯性元框架第二版草案**（美國，draft）— NIST IR 8536 進入第二次公開徵求意見，擴展製造業供應鏈可見性與追溯性管理責任。

4. **SP 800-53 安全修補控制措施草案**（美國，draft）— 因應 Executive Order 14306，NIST 新增軟體修補部署的安全控制要求，明確劃分組織與軟體開發者的責任界線。enforcement_signal 為 mandatory。

5. **歐盟危機管理強制授權機制**（歐盟，new）— Regulation (EU) 2025/2645 建立歐盟層級的智慧財產權強制授權框架，供危機期間確保關鍵產品供應使用。

---

## 區域動態比較

### 美國（NIST）

本週 NIST 有 5 項供應鏈相關動態：

| 框架/指引 | 文件編號 | 狀態 | 重點變動 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment | 擴充安全軟體開發實務，強調漏洞根因分析與供應商溝通詞彙標準化 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈追溯性與可見性管理責任擴展 |
| **安全修補控制措施** | SP 800-53 Release 5.2.0 | public_comment | 軟體韌性、開發者測試、安全日誌、修補部署責任分工 |
| **PQC 遷移映射白皮書** | — | draft | 新增後量子密碼學遷移能力與風險框架文件映射指引 |
| **軟體開發安全指南** | — | public_comment | NIST 聯盟發布軟體開發生命週期安全實踐責任標準 |

**重點觀察**：

- **SSDF 1.2**（2025-12-17）：本週期最重要的 NIST 更新。SSDF 1.2 版擴充安全軟體開發框架，新增改進的實務作法、任務與範例，回應 Executive Order 14306 關於軟體漏洞風險緩解的要求。影響軟體生產者、開發者、採購方、聯邦機構、軟體供應鏈供應商。

- **SP 800-53 Release 5.2.0**（2025-07-22）：新增軟體修補部署的安全控制，包含軟體韌性、開發者測試、安全日誌、最小權限控制等要求，明確劃分組織與開發者在修補管理的責任界線。enforcement_signal 為 mandatory。

- **NIST IR 8536**（2025-07-31）：製造業供應鏈追溯性元框架進入第二次公開草案階段，由 NIST NCCoE 發布。影響製造組織、供應鏈管理者、資安專業人員與採購團隊。

- **IoT 製造商基礎活動**（2025-09-30）：NIST 正在修訂 IR 8259，更新物聯網產品製造商在產品上市前後應執行的安全活動，聚焦產品需求與資安風險。

### 歐盟

本週歐盟有 6 項供應鏈相關動態：

**供應鏈盡職調查**

| 法規 | 範圍 | 重點變動 | binding_force |
|------|------|---------|---------------|
| Regulation (EU) 2025/2650 | 無森林砍伐商品 | 主要應用日期延後至 2026-12-30；微小型初級生產者簡化聲明路徑 | directly_applicable |
| Regulation (EU) 2025/2645 | 危機管理強制授權 | 建立歐盟層級智財權強制授權框架 | directly_applicable |

**產品合規與永續設計**

| 法規 | 範圍 | 重點變動 |
|------|------|---------|
| Corrigendum 32024R3110R(01) | 建材行銷 | 強制門檻適用範圍釐清（放入市場 vs. 特定用途） |
| Corrigendum 32024R1938R(03) | 人源物質品質安全 | 澄清授權要求與快速警報觸發條件 |
| Corrigendum 32015R0757R(02) | 海運排放監測 | 術語修正（reasonable certainty → appropriate assurance） |

**制裁合規動態**

| 法規 | 目標區域 | 新增制裁對象 | 生效日期 |
|------|----------|--------------|----------|
| Decision (CFSP) 2025/2617 | 俄羅斯 | 41 艘船隻 | 2025-12-19 |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、漏洞根因分析、SP 800-53 修補責任分工 | 依產品類別可能需提供 Digital Product Passport | SSDF 責任擴展、修補責任明確化 |
| **採購方** | 要求供應商提供 SSDF 合規證明、軟體採購安全要求溝通 | 盡職調查聲明、供應鏈資訊保留 | 採購方安全要求溝通責任強化 |
| **系統整合商** | 供應鏈追溯性機制（IR 8536）、PQC 遷移能力評估 | 建材採購確認強制門檻合規 | 追溯性技術要求趨同 |
| **製造商** | 供應鏈可見性、組件追蹤日誌、IoT 安全活動（IR 8259） | 無森林砍伐聲明、人源物質授權 | 環境與安全盡職調查整合 |
| **海運營運商** | — | 船舶制裁篩查（+41 艘船舶）、排放驗證術語更新 | 影子船隊執法強化 |

---

## 責任變動追蹤表格

| 來源 | 文件 | 影響角色 | 變動類型 | 變動摘要 |
|------|------|---------|---------|---------|
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、開發者、採購方、聯邦機構、供應鏈供應商 | expanded | 新增安全開發實踐，擴展軟體生命週期責任，建立採購方與供應商共同語彙 |
| NIST | SP 800-53 Release 5.2.0 | 聯邦機構、軟體開發者、部署組織、安全運維團隊 | expanded | 新增修補部署安全控制，明確組織與開發者角色分工，enforcement_signal 為 mandatory |
| NIST | NIST IR 8536 | 製造組織、供應鏈管理者、資安專業人員、合規官、採購團隊 | expanded | 製造業供應鏈追溯性的元框架進入第二次公開草案，擴展供應鏈可見性管理責任 |
| NIST | PQC Migration White Paper | CISO、加密系統管理員、風險管理人員、系統架構師 | new | 新增後量子密碼學遷移能力與風險框架文件映射指引 |
| NIST | Software Development Security Guidelines | 軟體開發者、DevSecOps 團隊、開源維護者 | new | 建立軟體開發生命週期安全實踐責任標準 |
| EU | Regulation (EU) 2025/2650 | 商品操作者、貿易商、下游企業、微小型初級生產者 | simplified | 簡化無森林砍伐商品盡職調查義務，主要應用日期延後至 2026-12-30 |
| EU | Regulation (EU) 2025/2645 | 智財權持有人、潛在被授權人、歐盟執委會、海關 | new | 建立歐盟層級危機管理強制授權框架 |
| EU | Decision (CFSP) 2025/2617 | 港口管理機關、海事服務商、船舶營運商、海關 | expanded | 新增 41 艘船舶制裁，擴大海事服務禁令 |
| EU | Regulation (EU) 2024/3110 Corrigendum | 建築產品製造商、經銷商、合規官員 | clarified | 澄清強制與自願門檻適用範圍 |

---

## 義務與舉證要求

### 新增義務摘要

**SBOM / 軟體供應鏈相關義務**：
- 依 SSDF 1.2 實施安全軟體開發實務
- 將安全實踐整合至組織使用的各 SDLC 模型
- 透過軟體採購流程傳達安全要求
- 回應 Executive Order 14306 關於軟體漏洞風險緩解的要求

**修補管理義務**（SP 800-53 Release 5.2.0）：
- 建立修補與更新的安全部署程序
- 實施軟體韌性措施與開發者測試協議
- 部署具最小權限的安全日誌
- 驗證更新部署期間的軟體完整性
- 文件化組織與開發者間的角色分工

**供應鏈追溯性義務**（NIST IR 8536）：
- 實施與元框架對齊的供應鏈追溯機制
- 建立製造流程可見性
- 維護供應鏈組件追溯紀錄

**盡職調查義務**（歐盟）：
- 下游操作者和交易者必須在系統中註冊並保留供應鏈資訊
- 微小型初級生產者可提交一次性簡化聲明

**透明度報告義務**：
- 製造流程紀錄
- 組件追蹤日誌
- 追溯性稽核軌跡

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 軟體供應鏈 | SSDF 實踐整合至 SDLC 的文件紀錄、軟體採購安全要求紀錄、漏洞緩解措施紀錄 | NIST SP 800-218r1 |
| 修補管理 | 更新部署管理程序文件、軟體完整性驗證紀錄、組織與開發者角色分工矩陣、根因分析報告 | NIST SP 800-53 |
| 製造業追溯性 | 供應鏈追溯文件、製造流程紀錄、組件追蹤日誌、追溯稽核軌跡 | NIST IR 8536 |
| PQC 遷移 | PQC 遷移能力評估文件、風險框架映射表、加密演算法盤點清單 | NIST White Paper |
| 商品盡職調查 | 盡職調查聲明或簡化聲明、供應鏈資訊紀錄、系統註冊證明 | EU Regulation 2025/2650 |
| 制裁合規 | 制裁篩查系統更新紀錄、船舶進入拒絕紀錄、海事服務拒絕紀錄 | EU Decision 2025/2617 |

---

## L5 — Evolution Signals

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 軟體供應鏈責任歸屬正從「模糊共識」轉向「明確分工」

SP 800-53 Release 5.2.0 明確要求「delineate roles between organizations and developers for patch management」，配合 SSDF 1.2 建立採購方與供應商間的共同語彙，顯示美國正在建立更精細的軟體供應鏈責任分工機制。這將使責任追究更為明確，但也增加合約與文件負擔。

### [系統推論] 歐盟在供應鏈盡職調查領域呈現「務實調整」趨勢

無森林砍伐商品法規的適用日期延後與簡化機制，反映歐盟在維持法規目標的同時，回應產業界關於實施準備度的關切。但核心義務架構並未放寬，下游操作者仍須註冊並保留供應鏈資訊。這種「延後但不放棄」的模式可能成為歐盟處理產業適應期的標準做法。

### [系統推論] 製造業供應鏈追溯性正成為美國供應鏈安全政策的新焦點

NIST IR 8536 進入第二版草案，結合 IoT 製造商基礎活動（IR 8259）的更新，顯示 NIST 正在建立超越軟體層面的供應鏈可見性標準。這可能成為未來製造業供應商評估的基準，特別是涉及關鍵基礎設施的供應鏈。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 12 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 1, EU Regulations: 6 |
| rule_type 分布 | draft: 4, revision: 2, amendment: 3, new: 1, 未標註: 2 |
| enforcement_signal 分布 | mandatory: 6, recommended: 5, 未標註: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 5 | 2025-07-30 ~ 2025-12-17 |
| nist_cybersecurity_insights | supply_chain | 1 | 2025-09-30 |
| eu_regulations | supply_chain | 6 | 2025-12-18 ~ 2026-01-30 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [SP 800-53 Controls on Secure Patches](https://www.nist.gov/news-events/news/2025/07/draft-sp-800-53-controls-secure-and-reliable-patches-available-comment) | NIST | 2025-07-22 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [NIST Software Development Security Guidelines](https://www.nist.gov/news-events/news/2025/07/nist-consortium-and-draft-guidelines-aim-improve-security-software) | NIST | 2025-07-30 |
| [PQC Migration Mappings](https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs) | NIST | 2025-09-18 |
| [IoT Product Manufacturers Foundational Activities](https://www.nist.gov/blogs/cybersecurity-insights/sharpening-focus-product-requirements-and-cybersecurity-risks-updating) | NIST | 2025-09-30 |
| [Regulation (EU) 2025/2650 Deforestation](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2650) | EU | 2026-01-15 |
| [Regulation (EU) 2025/2645 Compulsory Licensing](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32025R2645) | EU | 2025-12-30 |
| [Council Decision (CFSP) 2025/2617](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025D2617) | EU | 2025-12-18 |
| [Regulation (EU) 2024/3110 Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R3110R(01)) | EU | 2026-01-28 |

---

*報告產出時間：2026-02-08*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security vendor risk）*
