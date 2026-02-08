---
layout: default
title: Cybersecurity Compliance
nav_order: 6
has_children: true
---

# Cybersecurity Compliance Updates — 2026-W06

> **報告週期**: 2026-02-02 至 2026-02-08
> **產出日期**: 2026-02-08
> **資料來源**: NIST Frameworks, NIST Cybersecurity Insights, ISO Standards, CISA KEV, CSA Cloud Security
> **追蹤動態**: 50 項

---

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統趨勢分析，尚未經人工驗證。

---

## 本週重點

### 1. NIST 發布 AI 時代網路安全草案指引（NISTIR 8596）[美國/draft]

NIST 於 2025-12-16 發布首個 AI 網路安全框架配置檔草案，要求組織在採用 AI 時必須同步發展網路安全策略，涵蓋三大領域：保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊。此草案由超過 6,500 位社群成員參與制定，公開意見徵詢至 2026-01-30，與現有 CSF 製造業、金融業、電信業配置檔並列。

### 2. 安全軟體開發框架 SSDF 1.2 版本公開徵詢意見 [美國/revision]

NIST 於 2025-12-17 發布 SSDF Version 1.2 草案，新增與改善安全軟體開發實務、任務與範例，擴展軟體生產者與採購者在整個軟體開發生命週期中降低漏洞風險的指引。

### 3. SP 800-53 控制項修訂：軟體修補程式安全控制 [美國/draft/mandatory]

NIST 回應行政命令 14306「Sustaining Select Efforts to Strengthen the Nation's Cybersecurity」，發布 SP 800-53 Release 5.2.0 控制項修訂草案，新增軟體韌性、開發者測試、安全日誌記錄、最小權限控制、部署管理、軟體完整性驗證等要求。此為 mandatory 層級，組織需明確界定組織與開發者間的修補管理責任分工。

### 4. IoT 安全接入最終出版物發布 [美國/final]

NIST 於 2025-11-25 發布三份 IoT 安全接入最終出版物（CSWP 42、NISTIR 8350、SP 1800-36），經歷四年與產業夥伴合作，要求在 IoT 設備連接網路前建立信任機制並提供唯一網路憑證，透過可擴展自動化的信任網路層接入方式管理設備完整生命週期。

### 5. ISO/IEC 25706:2026 安全協定與資料模型標準發布 [國際/final]

ISO 於 2026-02-03 發布 ISO/IEC 25706:2026，建立資訊技術安全協定與資料模型（SPDM）收集標準。此為 ISO/IEC JTC 1 技術委員會制定的第一版標準。

### 6. CISA KEV 新增兩項關鍵漏洞修復義務 [美國/mandatory]

CISA 於 2026-01-22 將 CVE-2025-31125（Vite Vitejs）與 CVE-2025-34026（Versa Concerto）加入已知被利用漏洞目錄。聯邦機構須於 **2026-02-12** 前完成修復。

### 7. CSA 與 MITRE 合作建立雲端安全控制對照 [國際/guidance]

Cloud Security Alliance 與 MITRE CTID 於 2026-01-27 發布合作成果，將 CSA CCM 控制項對應至 MITRE ATT&CK 框架。

---

## 區域動態比較（美國/歐盟/國際）

| 面向 | 美國（NIST/CISA） | 歐盟（EU） | 國際（ISO/CSA） |
|------|------------------|-----------|----------------|
| **本週主要動態** | NISTIR 8596、SSDF 1.2、SP 800-53、IoT 接入、CISA KEV | 本期無動態 | ISO/IEC 25706:2026、CSA-MITRE 合作 |
| **AI 網路安全** | 首個 AI 網路安全配置檔草案 | — | — |
| **軟體供應鏈** | SP 800-53 R5.2.0（mandatory）、SSDF 1.2 | — | — |
| **IoT 安全** | CSWP 42/NISTIR 8350/SP 1800-36（final） | — | — |
| **漏洞修復** | CVE-2025-31125, CVE-2025-34026（2026-02-12 期限） | — | — |
| **雲端安全** | — | — | CSA CCM 對照 MITRE ATT&CK |
| **安全標準** | — | — | ISO/IEC 25706:2026 SPDM 標準 |

---

## 控制措施對照表

| 控制領域 | NIST 對應 | EU 對應 | 變動摘要 |
|----------|-----------|---------|----------|
| AI 網路安全 | NISTIR 8596（CSF + AI RMF 整合） | — | 建立首個 AI 網路安全配置檔（draft） |
| 軟體更新管理 | SP 800-53 Release 5.2.0 | — | 新增安全日誌格式、完整性驗證、責任分工控制（mandatory/draft） |
| 安全軟體開發 | SSDF Version 1.2 | — | 擴展生產者與採購者漏洞風險緩解指引（revision） |
| 勒索軟體防禦 | NIST IR 8374 Rev. 1 對齊 CSF 2.0 | — | 擴展偵測/回應/復原控制 |
| IoT 安全接入 | CSWP 42, NISTIR 8350, SP 1800-36 | — | 建立信任機制、唯一憑證、生命週期管理（final） |
| 輕量級密碼學 | SP 800-232 Ascon 系列 | — | 資源受限裝置標準化加密（final） |
| TLS 可視性 | SP 1800-37 | — | TLS 1.3 加密環境下安全監控解決方案（final） |
| 漏洞修復 | CISA KEV | — | CVE-2025-31125, CVE-2025-34026 強制修復（2026-02-12 期限） |
| 雲端安全 | — | — | CSA CCM 對照 MITRE ATT&CK |
| 安全協定 | — | ISO/IEC 25706:2026 | SPDM 收集標準（final） |

---

## 責任變動追蹤表格

| 變動類型 | 影響角色 | 來源文件 | 狀態 | 優先級 |
|----------|----------|----------|------|--------|
| **新增** | AI 採用組織、資安專業人員、企業領導 | NISTIR 8596 | Draft | 高 |
| **擴展** | 軟體生產者、開發者、採購者、聯邦機構 | SSDF Version 1.2 | Revision | 高 |
| **擴展** | 系統管理員、安全團隊、軟體開發者、修補部署組織 | SP 800-53 Release 5.2.0 | Draft | 高 |
| **新增** | 使用 Vite Vitejs / Versa Concerto 的組織 | CISA KEV | Final | **緊急** |
| **擴展** | 資安團隊、事件回應團隊、風險管理人員、備份管理員 | NIST IR 8374 Rev. 1 | Public Comment | 中 |
| **新增** | IoT 製造商、嵌入式開發者、醫療裝置製造商 | SP 800-232 | Final | 中 |
| **新增** | 網路安全工程師、SOC 分析師、網路管理員 | SP 1800-37 | Final | 中 |
| **新增** | IoT 製造商、網路管理員、IoT 部署團隊 | CSWP 42 / NISTIR 8350 / SP 1800-36 | Final | 中 |
| **新增** | 雲端安全專業人員、威脅情報分析師 | CSA CCM-ATT&CK | Guidance | 中 |
| **新增** | 安全協定實施人員 | ISO/IEC 25706:2026 | Final | 中 |

---

## 義務與舉證要求

### 新增義務摘要

**AI 網路安全義務**
- 在採用 AI 時同步制定網路安全策略
- 保護組織基礎設施內的 AI 系統
- 使用 AI 強化防禦性網路安全作業
- 建立對抗 AI 驅動網路攻擊的韌性

**軟體修補程式管理義務**
- 實施安全可靠修補程式部署控制
- 建立軟體韌性措施與開發者測試協議
- 明確界定組織與軟體開發者間的角色責任
- 修補相關事件進行根本原因分析

### 舉證要求摘要

| 義務領域 | 舉證要求 |
|----------|----------|
| AI 網路安全 | AI 網路安全策略文件、AI 系統安全評估、AI 驅動威脅韌性措施 |
| 軟體修補程式 | 部署管理程序、軟體完整性驗證紀錄、責任矩陣、根本原因分析報告 |
| IoT 安全接入 | 信任建立協議、憑證發放日誌、裝置生命週期管理文件 |
| 輕量級密碼學 | 密碼學實作文件、側通道攻擊抵抗測試報告 |

---

## L5 — Evolution Signals

### [系統推論] AI 與網路安全整合將成為 2026 年監管主軸

NISTIR 8596 草案的發布標誌著 AI 網路安全正式進入框架化階段。結合 CSF 與 AI RMF 的配置檔模式，預示未來監管將要求組織在 AI 採用決策中納入網路安全考量，而非事後補強。

### [系統推論] 軟體供應鏈安全從建議轉向強制

SP 800-53 Release 5.2.0 回應行政命令 14306 的快速修訂，以及 SSDF 1.2 的同步更新，顯示美國政府正將軟體供應鏈安全從 recommended 推向 mandatory。

### [系統推論] IoT 安全標準生態系進入成熟期

三份 IoT 安全接入最終出版物的發布，加上輕量級密碼學標準定案，形成完整的 IoT 安全標準生態系。製造商應預期未來採購規格將援引這些標準。

### [系統推論] 漏洞修復時限持續壓縮

CISA KEV 的兩項新增漏洞（CVE-2025-31125, CVE-2025-34026）均要求於三週內修復。攻擊面已擴展至開發工具鏈與 SD-WAN 基礎設施。

### [系統推論] 控制措施與攻擊技術對照成為標準實務

CSA 與 MITRE 的合作標誌著安全控制措施評估從「符合性檢查」轉向「威脅導向驗證」。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| 來源分布 | NIST Frameworks: 25, NIST Insights: 15, ISO Standards: 6, CISA KEV: 2, CSA Cloud Security: 2 |
| rule_type 分布 | guidance: 14, new: 8, draft: 6, final: 5, revision: 3, amendment: 2, event: 2, 其他: 10 |
| enforcement_signal 分布 | recommended: 20, informational: 12, mandatory: 4, 未標註: 14 |
| REVIEW_NEEDED | 2 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | cybersecurity, ai_risk, critical_infrastructure, supply_chain, identity | 25 | 2025-07-15 ~ 2026-01-28 |
| nist_cybersecurity_insights | cybersecurity, ai_risk, workforce, policy_guidance, privacy | 15 | 2024-02-28 ~ 2026-01-27 |
| iso_standards | information_security, other | 6 | 2025-11-19 ~ 2026-02-03 |
| cisa_kev | vulnerability | 2 | 2026-01-22 |
| csa_cloud_security | cloud_security | 2 | 2026-01-20 ~ 2026-01-27 |
| eu_regulations | cybersecurity | 0 | — |

---

*報告產出：Narrator Mode - cybersecurity_compliance*
*資料擷取時間點：2026-02-08*
