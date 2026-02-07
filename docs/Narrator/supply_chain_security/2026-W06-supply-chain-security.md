---
layout: default
title: "Supply Chain Security — 2026-W06"
parent: Supply Chain Security
grand_parent: 報告總覽
---

# Supply Chain Security Trends — 2026-W06

> **報告週期**：2026-01-27 至 2026-02-06
>
> 本期追蹤 38 項供應鏈安全動態，涵蓋 NIST 框架與歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **SSDF 1.2 版公開徵詢進入倒數**（美國，revision）— NIST SP 800-218r1 因應 Executive Order 14306 更新安全軟體開發框架，新增改進實務作法、任務與範例，公開徵詢期至 2026-01-30 截止，對軟體供應商與採購方具 mandatory 效力。

2. **歐盟擴大對俄制裁船隊名單**（歐盟，amendment）— Council Regulation (EU) 2025/2618 新增 41 艘從事運輸竊取烏克蘭穀物與石油產品的船隻至制裁清單，港口當局與海運服務商須立即更新篩查系統並拒絕服務。

3. **無森林砍伐商品盡職調查義務簡化與延後**（歐盟，revision）— Regulation (EU) 2025/2650 修訂 2023/1115，主要應用日期延後至 2026-12-30，微小型初級生產者可提交「一次性簡化聲明」取代完整盡職調查，下游企業須在系統中註冊並保留供應鏈資訊至少 5 年。

4. **危機管理強制授權機制建立**（歐盟，new）— Regulation (EU) 2025/2645 授權歐盟委員會在宣布危機時對專利實施強制授權，影響製藥、醫療器材與半導體供應鏈，被授權人須支付適當報酬並禁止出口。

5. **生態設計與建材法規技術修正**（歐盟，corrigendum）— Regulation (EU) 2024/1781（永續產品生態設計框架）與 Regulation (EU) 2024/3110（建材行銷法規）發布更正文件，釐清 Digital Product Passport 要求與強制門檻合規規範。

---

## 區域動態比較

### 美國（NIST）

| 框架/指引 | 文件編號 | 狀態 | 重點變動 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment | 因應 EO 14306 擴充安全軟體開發實務，強調漏洞根因分析與供應商溝通詞彙標準化 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈追溯性與可見性管理責任擴展 |
| **PQC 遷移映射白皮書** | CSWP 48 | draft | 新增後量子密碼學遷移能力與風險框架文件映射指引 |
| **軟體開發安全指南** | — | public_comment | NIST 聯盟發布軟體開發生命週期安全實踐責任標準 |

### 歐盟

**制裁合規動態**

| 法規 | 目標區域 | 新增制裁對象 | binding_force | 生效日期 |
|------|----------|--------------|---------------|----------|
| Regulation (EU) 2025/2618 | 俄羅斯 | 41 艘船隻 | directly_applicable | 2025-12-19 |
| Regulation (EU) 2026/251 | 蘇丹 | 7 名個人 | directly_applicable | 2026-01-29 |
| Implementing Regulation (EU) 2025/2638 | 俄羅斯（人權） | 2 名個人 | directly_applicable | 2025-12-22 |
| Implementing Regulation (EU) 2026/87 | 瓜地馬拉 | 5 人資料更新 | directly_applicable | 2026-01-13 |

**供應鏈盡職調查**

| 法規 | 範圍 | 重點變動 |
|------|------|---------|
| Regulation (EU) 2025/2650 | 無森林砍伐商品 | 主要應用日期延後至 2026-12-30；微小型初級生產者簡化聲明路徑 |
| Corrigendum 32023R1115R(04) | 無森林砍伐商品 | 地理座標精度要求至少六位小數；畜牧設施追蹤術語從「bred」改為「maintained」 |

**產品合規與永續設計**

| 法規 | 範圍 | 重點變動 |
|------|------|---------|
| Corrigendum 32024R1781R(04) | 永續產品生態設計 | Digital Product Passport 要求語言修正；關注物質術語釐清 |
| Corrigendum 32024R3110R(01) | 建材行銷 | 強制門檻適用範圍釐清（放入市場 vs. 特定用途） |

**危機管理與供應鏈韌性**

| 法規 | 機制 | 影響領域 |
|------|------|---------|
| Regulation (EU) 2025/2645 | 危機期間專利強制授權 | 製藥、醫療器材、半導體 |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、漏洞根因分析、與採購方建立共同詞彙 | 依產品類別可能需提供 Digital Product Passport | SSDF 強制性提升 |
| **採購方** | 要求供應商提供 SSDF 合規證明、維護供應商通訊紀錄 | 盡職調查聲明、供應鏈資訊保留（至少 5 年） | 盡職調查義務向下游延伸 |
| **系統整合商** | 供應鏈追溯性機制（IR 8536）、PQC 遷移能力評估 | 建材採購確認強制門檻合規；危機期間可能被指定為強制授權被許可人 | 追溯性技術要求趨同 |
| **製造商** | 供應鏈可見性、組件追蹤日誌 | 無森林砍伐聲明（含六位小數地理座標）、生態設計合規 | 環境盡職調查成為常態 |
| **金融機構** | — | 制裁篩查即時更新、資產凍結執行、交易監控紀錄 | 制裁名單擴充頻率增加 |
| **海運營運商** | — | 船舶制裁篩查、排放驗證 | 影子船隊執法重心轉移 |

---

## 責任變動追蹤表格

| 來源 | 文件 | 影響角色 | 變動類型 | 變動摘要 | 生效日期 |
|------|------|---------|---------|---------|---------|
| NIST | SP 800-218r1 | 軟體開發商、採購方、供應鏈安全管理者 | expanded | 擴充 SSDF 至 1.2 版，新增 EO 14306 要求的實務作法與範例 | 徵詢截止 2026-01-30 |
| NIST | NIST IR 8536 | 製造業組織、供應鏈經理、合規人員 | expanded | 製造業供應鏈追溯性元框架第二版草案 | 公開徵詢中 |
| NIST | CSWP 48 | CISO、加密系統管理員、風險管理人員 | new | PQC 遷移能力與風險框架文件映射指引 | 草案階段 |
| EU | 32025R2618 | 港口當局、海運服務商、穀物/石油貿易商 | expanded | 41 艘船隻納入制裁，港口禁入與服務禁止 | 2025-12-19 |
| EU | 32025R2650 | 農產品操作者、貿易商、微小型初級生產者 | clarified | 無森林砍伐盡職調查延後並簡化，下游資訊保留義務 | 主要條款 2026-12-30 |
| EU | 32025R2645 | 專利權人、製造商、海關機關 | expanded | 危機強制授權機制建立，專利權人喪失排他控制 | 2025-12-30 |
| EU | 32026R0251 | 金融機構、成員國主管機關 | expanded | 蘇丹制裁新增 7 名個人 | 2026-01-29 |
| EU | 32024R1781R(04) | 產品製造商、進口商、經銷商 | clarified | Digital Product Passport 與標示要求語言修正 | 2026-02-04 |
| EU | 32024R3110R(01) | 建材製造商、經銷商 | clarified | 強制門檻適用範圍釐清 | 2026-01-28 |
| EU | 32023R1115R(04) | 商品操作者、畜牧業者 | clarified | 地理座標精度（六位小數）與畜牧設施追蹤術語澄清 | 適用原法規時程 |

---

## 義務與舉證要求

### 美國（NIST 框架）

| 框架/指引 | 新增義務 | 舉證要求 | 強制程度 |
|----------|---------|---------|---------|
| **SSDF v1.2** | 實施新版實務作法與任務；減少已發布軟體漏洞；進行漏洞根因分析；依 EO 14306 建立供應商溝通共同詞彙 | 漏洞減少指標、安全開發實務文件、根因分析報告、供應商溝通紀錄 | mandatory |
| **IR 8536 供應鏈追溯性** | 實施供應鏈追溯性機制；建立製造流程可見性；維護組件追蹤日誌 | 供應鏈追溯文件、製造流程紀錄、組件追蹤日誌、稽核軌跡 | recommended |
| **CSWP 48 PQC 遷移** | 評估 PQC 遷移能力與風險框架對應關係；確保加密演算法遷移計畫符合映射指引 | PQC 遷移能力評估文件、風險框架映射表、加密演算法盤點清單 | recommended |

### 歐盟

| 法規 | 新增義務 | 舉證要求 | 強制程度 |
|-----|---------|---------|---------|
| **Regulation 2025/2650（無森林砍伐）** | 提交盡職調查聲明或簡化聲明；下游企業保留前一階段參考編號（至少 5 年）；非中小企業下游企業須在資訊系統中註冊 | 聲明文件（透過資訊系統）、供應鏈參考編號、註冊證明 | mandatory |
| **Regulation 2025/2645（強制授權）** | 被許可人支付適當報酬；維持製造數量紀錄並報告產能變動；確保產品可識別並限於歐盟內部市場；禁止出口 | 製造數量文件、產能變動資訊、產品識別標記 | mandatory |
| **Regulation 2024/1781（生態設計）** | 依產品類別提供 Digital Product Passport；遵循生態設計要求與標示規範 | Digital Product Passport 文件、生態設計合規紀錄、關注物質聲明 | mandatory |
| **制裁法規（俄羅斯/蘇丹/瓜地馬拉）** | 即時更新制裁篩查資料庫；凍結指定人員資產；禁止向受制裁對象提供資金或經濟資源；維持交易監控紀錄 | 制裁篩查日誌、資產凍結報告、交易監控紀錄、系統更新時戳 | mandatory |
| **Corrigendum 32023R1115R(04)** | 確保地理座標精度達六位小數；追蹤所有畜牧設施（不僅限於繁殖設施） | 地理座標紀錄、畜牧設施位置文件 | mandatory |

---

## L5 — Evolution Signals

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 軟體供應鏈責任正式化趨勢

SSDF 1.2 明確將 Executive Order 14306 納入框架，配合 NIST 軟體開發安全聯盟（Consortium）的推動，預計 2026 年下半年將形成更具強制性的軟體供應鏈安全採購要求。enforcement_signal 從 recommended 提升為 mandatory，顯示美國政府對軟體供應鏈安全的監管力度持續強化。供應商與採購方之間的責任分配將趨向標準化詞彙與可驗證的證據要求。

### [系統推論] 歐盟危機供應鏈韌性機制成形

Regulation 2025/2645 建立的強制授權機制標誌歐盟在危機期間介入供應鏈的法律工具成形。製藥、醫療器材與半導體供應商應預期在未來公衛或內部市場緊急狀態時，專利權可能被覆蓋。「最後手段」原則與自願授權優先的設計，可能驅動企業預先建立危機授權協議框架，以避免在危機期間喪失談判主導權。

### [系統推論] 歐盟制裁執法從「靜態名單」轉向「動態船隊追蹤」

本期多項制裁法規針對特定船隻（而非僅個人或實體）實施港口禁入與服務禁止，反映對俄羅斯影子船隊與制裁規避行為的執法重心轉移。供應鏈盡職調查需將海運環節納入更細緻的篩查範圍，特別是涉及穀物、石油等敏感商品的運輸。

### [系統推論] 產品追溯性要求跨域收斂

NIST IR 8536 的製造業供應鏈追溯性元框架與歐盟無森林砍伐法規的地理座標精度要求（六位小數），顯示美歐對產品追溯性的技術要求正在趨同。Digital Product Passport 與 SBOM 的交集將成為未來跨境供應鏈合規的關鍵整合點。

### [系統推論] 制裁合規成為供應鏈盡職調查常態組成

本週蘇丹、瓜地馬拉、俄羅斯三個制裁清單同時更新，反映地緣政治風險對供應鏈的持續滲透。供應鏈盡職調查框架需將制裁篩查從「一次性檢查」轉變為「持續監控」模式，並確保篩查系統能在法規生效日前完成資料庫更新。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 38 |
| 來源分布 | NIST Frameworks: 4, NIST Cybersecurity Insights: 0, EU Regulations: 34 |
| rule_type 分布 | new: 8, amendment: 11, revision: 4, draft: 2, corrigendum: 13 |
| enforcement_signal 分布 | mandatory: 32, recommended: 3, informational: 3 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 4 | 2025-07-30 ~ 2025-12-17 |
| nist_cybersecurity_insights | supply_chain | 0 | N/A |
| eu_regulations | supply_chain | 34 | 2019-04-17 ~ 2026-02-04 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [PQC Migration Mappings (CSWP 48)](https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs) | NIST | 2025-09-18 |
| [Regulation (EU) 2025/2650 Deforestation](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2650) | EU | 2026-01-15 |
| [Regulation (EU) 2025/2645 Compulsory Licensing](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2645) | EU | 2025-12-16 |
| [Regulation (EU) 2024/1781 Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1781R(04)) | EU | 2026-02-04 |
| [Regulation (EU) 2024/3110 Corrigendum](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R3110R(01)) | EU | 2026-01-28 |
| [Council Regulation (EU) 2025/2618 Russia Sanctions](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32025R2618) | EU | 2025-12-18 |
| [Council Regulation (EU) 2026/251 Sudan Sanctions](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32026R0251) | EU | 2026-01-29 |
| [Corrigendum 32023R1115R(04)](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32023R1115R(04)) | EU | 2026-01-14 |

---

*報告產出時間：2026-02-06*
