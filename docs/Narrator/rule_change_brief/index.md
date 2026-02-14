---
layout: default
title: Rule Change Brief
nav_order: 2
has_children: true
---

# Rule Change Brief — 2026-W07

> 本期追蹤 50 項框架與標準變動，涵蓋 nist_frameworks、nist_cybersecurity_insights、eu_regulations、iso_standards。

## 免責聲明

本簡報由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本期重點

1. **ISO/IEC TS 27103:2026 發布** — 新版技術規範提供組織在網路安全框架中整合運用 ISO/IEC 標準的實務指引，取代舊版標準（ID 72437）。對正在實施 ISO 27001、NIST CSF 或其他網路安全框架的組織具重要參考價值。rule_type: revision，enforcement_signal: recommended，發布日期 2026-02-06。

2. **歐盟生態設計法規勘誤（Regulation (EU) 2024/1781R(04)）** — 修正定義、授權法令條款、關注物質術語、數位產品護照要求及標籤顯示要求。影響產品製造商、進口商、分銷商、授權代表。rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-04。

3. **歐洲數位身分框架勘誤（Regulation (EU) 2024/1183R(05)）** — 第 5 次勘誤，修正馬爾他語版本 Article 1(43)(c) 關於合格電子掛號傳遞服務的文法用語。rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-03。

4. **NIST SP 800-53 Rev. 5.2.0 持續影響** — 回應 Executive Order 14306 新增三項控制項：SA-15（事件紀錄標準化）、SI-02(07)（修補失敗根因分析）、SA-24（網路韌性設計），聯邦機構需依 FISMA 合規要求實作。enforcement_signal: mandatory。

5. **NIST Secure Software Development Framework (SSDF) 1.2 草案** — 安全軟體開發框架新版草案徵求公眾意見，強化供應鏈安全實務。status: public_comment，發布日期 2025-12-17。

---

## 按風險領域分析

### Cybersecurity

本期有 9 項資安相關變動：

- **NIST SP 800-53 Rev. 5.2.0** — 回應 Executive Order 14306，新增 SA-15（紀錄標準化）、SI-02(07)（修補失敗根因分析）、SA-24（網路韌性設計）三項控制項。聯邦機構需於系統安全計畫（SSP）中納入新控制項，實作時程依風險評估決定（通常 1-3 年）。document_id: SP 800-53 Rev. 5.2.0，status: final，enforcement_signal: mandatory。

- **NIST SP 1800-37 TLS 1.3 可視性指引** — 發布最終版實務指南，協助組織在部署 TLS 1.3 時維持網路流量可視性。document_id: SP 1800-37，status: final。

- **NIST Lightweight Cryptography Standard (Ascon)** — 最終版輕量級加密標準，適用於物聯網等資源受限裝置。status: final，發布日期 2025-08-13。

- **NIST IR 8374 勒索軟體風險管理** — CSF 2.0 社群配置檔草案，提供勒索軟體風險管理指引。status: public_comment。

- **NIST CMVP 白皮書** — 密碼模組驗證計畫白皮書，探討計畫改進方向。status: public_comment。

- **SUSHI@NIST 半導體安全研討會** — 2026-01-28 舉辦，啟動硬體安全框架開發，涵蓋硬體層威脅緩解、AI 整合系統保護、供應鏈保證等議題。status: planning，enforcement_signal: informational。

- **ISO/IEC TS 27103:2026** — 提供網路安全框架整合 ISO/IEC 標準的實務指引，取代舊版標準。rule_type: revision，status: final，enforcement_signal: recommended。

- **ISO/IEC 27566-1:2025 年齡驗證系統框架** — 建立年齡驗證系統框架，涵蓋隱私與安全特性，支援年齡相關資格決策。rule_type: new，status: final，發布日期 2025-12-12。

- **NIST CSF 2.0 小型企業快速入門指南** — 提供小型企業實施 Cybersecurity Framework 2.0 的簡化指引。status: final。

### AI Risk

本期有 4 項 AI 風險相關變動：

- **NISTIR 8596 AI 網路安全框架草案** — 首個 AI 網路安全框架配置檔，涵蓋保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊三大領域。與超過 6,500 名社群成員經一年利害關係人參與開發。document_id: NISTIR 8596，status: public_comment，徵求意見截止日期 2026-01-30。

- **Corrigendum to Council Regulation (EU) 2024/1732 on EuroHPC AI Initiative** — 修正愛沙尼亞語版本術語，將「artificial intelligence factory」改為「artificial intelligence facility」。rule_type: amendment，enforcement_signal: informational，發布日期 2026-01-27。

- **NIST AI 網路安全計畫啟動** — 2024 年 9 月宣布在 AI 時代管理網路安全與隱私風險的新計畫。

- **NIST 整合 AI 與既有資安指引** — 說明如何將 AI 風險管理整合至既有 NIST 網路安全指引體系。

### Privacy

本期有 3 項隱私相關變動：

- **Corrigendum to Regulation (EU) 2024/1183 on European Framework for Digital Identity** — 第 5 次勘誤，修正馬爾他語版本 Article 1(43)(c) 關於合格電子掛號傳遞服務的文法用語。此為 eIDAS 修訂法規的勘誤，影響數位身分框架與合格信任服務的互通性要求。document_id: CELEX:32024R1183R(05)，rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-03。

- **Corrigendum to Regulation (EU) 2024/1347 on international protection standards** — 修正五項技術性錯誤，包括住宿條件用語（從「相同條件」改為「等效條件」）及生效日期更正（2026-06-12）。rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-01-22。

- **Regulation (EU) 2025/2033 - Corrigendum (03)** — 第 3 次勘誤，rule_type: amendment，enforcement_signal: mandatory。[REVIEW_NEEDED — WebFetch 失敗，需人工確認原法規內容]

### Supply Chain

本期有 5 項供應鏈相關變動：

- **Corrigendum to Regulation (EU) 2024/1781 on ecodesign requirements** — 修正生態設計法規定義、授權法令條款、關注物質術語、數位產品護照要求及標籤顯示要求。受影響角色包括產品製造商、進口商、分銷商、授權代表、成員國市場監督機關。document_id: CELEX:32024R1781R(04)，rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-04。

- **Corrigendum to Regulation (EU) 2024/3110 on Construction Products** — 釐清強制門檻值為產品進入內部市場之條件（不論用途），自願門檻值則適用於特定用途。document_id: CELEX:32024R3110R(01)，rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-01-28。

- **NIST SSDF Version 1.2 草案** — 安全軟體開發框架 1.2 版公開徵求意見，強化軟體供應鏈安全實務。status: public_comment，發布日期 2025-12-17。

- **NIST IR 8536 供應鏈追溯框架** — 製造元框架第二次公開草案，提供供應鏈追溯能力建構指引。status: public_comment。

- **NIST 軟體開發安全聯盟** — 組建聯盟推動軟體開發安全指引改進。

### Identity

本期有 4 項身分認證相關變動：

- **NIST IR 8523 刑事司法系統多因素認證** — 最終版發布，提供刑事司法資訊系統多因素認證指引。document_id: NIST IR 8523，status: final，發布日期 2025-09-03。

- **NIST 數位身分指引 Revision 4 網路研討會** — 2025-08-20 舉辦公開網路研討會，說明數位身分指引第 4 版修訂方向。

- **NIST 臉部照片變形偵測指引** — 協助組織偵測臉部照片變形攻擊（morphing），防止身分詐欺。status: final，發布日期 2025-08-18。

- **NIST 同步認證器補充指引** — 將同步認證器（syncable authenticators）納入數位身分指引，支援新型認證技術。

### Critical Infrastructure

本期有 3 項關鍵基礎設施相關變動：

- **Corrigendum to Directive 2014/47/EU on technical roadside inspections** — 標準化術語，將「testing station」改為「inspection center」，「inspection report」改為「inspection certificate」。涵蓋十個章節的術語一致性修正。document_id: CELEX:32014L0047R(08)，rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-03。

- **NIST IR 8259 物聯網裝置製造商網路安全修訂** — 修訂物聯網裝置製造商基礎網路安全活動指引，自 2024 年 11 月研討會後啟動修訂程序。status: revision in progress。

- **NIST 物聯網網路安全指引演進** — 回顧五年來物聯網網路安全指引的演進歷程，說明從 NIST IR 8259 到現行版本的發展脈絡。

---

## 責任變動追蹤

| 文件 | affected_roles | shift_type | shift_summary |
|------|---------------|------------|---------------|
| ISO/IEC TS 27103:2026 | CISO、網路安全架構師、合規管理人員、風險管理人員 | clarified | 更新網路安全框架整合 ISO/IEC 標準的指引，取代舊版標準 |
| Regulation (EU) 2024/1781R(04) Ecodesign | 產品製造商、進口商、分銷商、授權代表、市場監督機關、歐盟執委會 | clarified | 修正定義、授權法令條款、關注物質術語、數位產品護照要求、標籤顯示要求 |
| Regulation (EU) 2024/1183R(05) Digital Identity | 合格電子掛號傳遞服務提供者、符合性評鑑機構、成員國數位身分主管機關、eIDAS 服務提供者 | clarified | 修正馬爾他語版本合格電子掛號傳遞服務術語 |
| Directive 2014/47/EUR(08) Roadside Inspections | 路邊檢查機關、商用車輛營運商、技術檢驗中心、成員國執法機關 | clarified | 標準化檢驗中心、貨物固定、檢驗證書術語 |
| NIST SP 800-53 Rev. 5.2.0 | 聯邦機構資訊系統、軟體開發商（聯邦供應商）、系統整合商與維運團隊 | expanded | 新增 SA-15（紀錄標準化）、SI-02(07)（根因分析）、SA-24（韌性設計）三項控制項 |
| ISO 19135:2026 | 資訊註冊管理員、資料治理專員、地理資訊系統管理員、資訊架構師 | expanded | 擴展資訊註冊框架，強化註冊表管理能力需求與治理流程，取代兩個舊版標準 |
| Council Regulation (EU) 2024/1732R(02) | AI 新創企業、EuroHPC 計畫參與者、成員國高效能運算基礎設施管理機關 | clarified | 修正 AI 設施術語（factory → facility） |
| Regulation (EU) 2024/3110R(01) Construction Products | 建築產品製造商、分銷商、行銷商、成員國監管機構 | clarified | 釐清強制門檻值與自願門檻值適用範圍 |

---

## L5 — Evolution Signals

- [系統推論] ISO/IEC TS 27103:2026 的發布顯示國際標準組織正積極提供框架整合指引，協助組織在 NIST CSF、ISO 27001 等多框架環境中建立一致的控制措施對應，降低多框架合規的重複工作負擔。

- [系統推論] NISTIR 8596 AI 網路安全框架草案的徵求意見期已截止（2026-01-30），預計近期發布最終版。此框架將成為首個整合 AI 採用與網路安全策略的官方指引，組織應提前評估現有網路安全架構對 AI 系統的覆蓋程度。

- [系統推論] 歐盟持續發布 2024 年通過法規的勘誤（eIDAS 修訂、生態設計、建築產品、數位身分等），顯示正處於法規實施前的密集文本校正階段。多項勘誤涉及語言版本修正，反映跨 27 國語言一致性的挑戰。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| rule_type 分布 | amendment: 12, new: 6, revision: 5, draft: 4, final: 10, 其他/未標註: 13 |
| enforcement_signal 分布 | mandatory: 15, recommended: 18, informational: 8, 未標註: 9 |
| REVIEW_NEEDED | 2 筆 |

---

## 資料來源

| Layer | 筆數 | 時間範圍 |
|-------|------|----------|
| nist_frameworks | 18 | 2025-07-22 ~ 2025-12-17 |
| nist_cybersecurity_insights | 7 | 2024-02-26 ~ 2025-05-22 |
| eu_regulations | 12 | 2026-01-16 ~ 2026-02-04 |
| iso_standards | 13 | 2025-11-19 ~ 2026-02-06 |

---

*報告產出時間：2026-02-14*
