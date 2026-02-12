# Cybersecurity Compliance Updates — 2026-W07

> 本期追蹤 50 項資安合規動態，涵蓋 NIST 框架、NIST 洞察、ISO 標準、CSA 雲端安全及 CISA 漏洞資訊。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **CISA 強制漏洞修補要求**：CVE-2026-24858 針對 Fortinet 多項產品的身份驗證繞過漏洞，聯邦機構須於 2026-01-30 前完成緩解措施（enforcement_signal: mandatory）。

2. **NIST SSDF 1.2 版公開徵求意見**：安全軟體開發框架進行重大修訂，新增改進的實務作法、任務與範例，建立採購方與供應商間的共同語彙（rule_type: revision, enforcement_signal: mandatory）。

3. **CSA 與 MITRE 合作整合雲端安全控制與攻擊者行為**：CSA CCM 控制措施與 MITRE ATT&CK 框架整合，協助雲端安全專業人員將標準化控制措施對應至攻擊者戰術與技術（2026-01-27）。

4. **ISO/IEC 27566-1:2025 年齡保證系統框架發布**：首版標準建立年齡保證系統框架，定義核心特性包括隱私與安全要求（rule_type: new）。

5. **NIST 隱私工程計畫慶祝資料隱私週**：闡述 2026 年隱私風險管理指引發展方向，持續與利害關係人社群合作（2026-01-27）。

---

## 區域動態比較

### 美國（NIST / CISA）

**NIST 框架動態（20 筆）**

| 文件 | 狀態 | 重點 |
|------|------|------|
| SSDF 1.2 | revision (公開徵求意見) | 安全軟體開發框架擴充，新增實務作法與範例 |
| NIST IR 8349 | final | IoT 裝置網路行為描述與 MUD 規範支援 |
| NIST IR 8523 | final | 刑事司法資訊系統多因素驗證實作要求 |
| CMVP White Paper | draft | 加密模組驗證計畫自動化流程 |
| NIST SP 800-232 | recommended | 輕量加密標準（Ascon-Based） |
| CSF 2.0 Govern Function | webinar | 深入探討 CSF 2.0 治理功能 |
| Transit Cybersecurity Framework | recommended | CSWP 51 交通運輸資安框架社群設定檔 |
| Mobile Drivers Licenses | draft | 行動駕照保證要求與隱私風險評估 |
| NCCoE IoT Secure Onboarding | final | IoT 安全上線出版物 |
| Cyber AI Profile | workshop series | AI 賦能網路防禦與攻擊防禦 |

**NIST Cybersecurity Insights（18 筆）**

重點議題涵蓋：
- CSF 2.0 小型企業快速入門指南（guidance）
- Cybersecurity and AI 整合指引（ai_risk）
- NICE Framework 更新擴展資安人才發展（revision）
- 國際資安與隱私合作進展（policy_guidance）
- 人本網路安全社群（HCC CoI）建立
- 隱私工程計畫與 AI 時代風險管理

**CISA 已知遭利用漏洞（1 筆）**

- **CVE-2026-24858**：Fortinet 多項產品身份驗證繞過漏洞
  - enforcement_signal: **mandatory**
  - 聯邦機構修補期限：2026-01-30
  - 受影響對象：使用 Fortinet 產品的組織、IT 管理員、網路基礎設施團隊

### 國際標準（ISO）

**ISO 標準（10 筆）**

| 標準編號 | 發布日期 | 主題 |
|----------|----------|------|
| ISO/IEC 27566-1:2025 | 2025-12-12 | 年齡保證系統框架 |
| ISO/IEC 27566-2 | 2026-01-16 | IT 安全符合性評估人員能力要求（測試與驗證） |
| ISO/IEC 27566-3 | 2025-11-19 | IT 安全符合性評估人員能力要求（評估與審查） |
| ISO/IEC 29134 Amd 1 | 2025-12-12 | 輕量加密修正案 |
| ISO TS SPDM | 2026-02-03 | 安全協定與資料模型集合 |
| ISO 27799 | 2025-12-18 | 醫療資訊學資訊安全控制 |
| ISO 22300 系列 | 2025-11-19 | 供應與價值鏈信任框架 |
| ISO 22396 | 2025-11-19 | 基礎設施韌性指引 |
| ISO 22399 | 2026-01-08 | 能源韌性框架與原則 |

### 雲端安全（CSA）

- **CSA-MITRE CTID 合作**（2026-01-27）
  - 整合 CSA Cloud Controls Matrix (CCM) 與 MITRE ATT&CK
  - 橋接標準化雲端安全控制與攻擊者戰術知識庫
  - 受影響對象：雲端安全專業人員、安全架構師、威脅情報分析師

---

## 控制措施對照

| 控制領域 | NIST 對應 | ISO 對應 | 變動摘要 |
|----------|-----------|----------|----------|
| 存取控制 | NIST IR 8523 (MFA for CJIS) | ISO/IEC 27566 系列 | 新增刑事司法系統 MFA 要求；IT 安全評估人員能力標準化 |
| 軟體開發安全 | SSDF 1.2 | — | 擴充安全開發實務作法與採購語彙 |
| 加密控制 | SP 800-232 (Ascon), CMVP | ISO/IEC 19790 | 輕量加密標準最終版；加密模組驗證自動化 |
| IoT 安全 | IR 8349, NCCoE IoT Onboarding | — | 裝置網路行為描述標準化；安全上線最終指引 |
| 隱私保護 | Privacy Engineering Program | ISO/IEC 27566-1 (age assurance) | 隱私風險管理持續發展；年齡保證系統框架 |
| 韌性管理 | Transit CSF Profile (CSWP 51) | ISO 22396, 22399 | 交通運輸資安框架；基礎設施與能源韌性標準 |
| 身分驗證 | SP 800-63B Supplement (Passkeys) | — | 同步式驗證器過渡期指引 |
| 漏洞管理 | — | — | CVE-2026-24858 強制修補（Fortinet） |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_summary |
|------|------|---------------|---------------|
| NIST | SSDF 1.2 | Software developers, software development organizations, software acquirers, procurement teams, supply chain security managers | 擴充安全軟體開發框架，建立採購方與供應商間的共同語彙 |
| NIST | IR 8349 | IoT device manufacturers, developers, network operators, cloud providers, network administrators | IoT 裝置製造商與網路管理者需採用標準化方法描述裝置網路行為 |
| NIST | IR 8523 | 刑事司法資訊系統管理員, 執法機關 IT 人員, 身分驗證架構師 | 新增刑事司法資訊系統多因素驗證實作要求 |
| NIST | CMVP White Paper | 加密模組開發者, CMVP 驗證實驗室, 產品安全工程師, 聯邦機構採購人員 | 新增加密模組驗證計畫自動化流程的支援與實作責任 |
| NIST | Mobile DL Resources | 數位身分驗證人員, 州政府 DMV 管理者, 行動應用開發者, 隱私保護官 | 新增行動駕照保證要求與隱私風險評估實作指引 |
| NIST | NICE Framework | cybersecurity_workforce, educators, employers, workforce_development_professionals | NICE 框架更新，新增工作角色與能力領域 |
| CISA | CVE-2026-24858 | Organizations using Fortinet products, IT administrators, security teams | 聯邦機構須於 2026-01-30 前完成 Fortinet 漏洞修補 |
| CSA | CCM-ATT&CK Integration | Cloud Security Professionals, Security Architects, Threat Intelligence Analysts | 整合雲端安全控制與攻擊者行為知識庫 |
| ISO | ISO/IEC 27566 系列 | 資訊安全管理人員, CISO, 合規人員, ISO 標準實施人員 | IT 安全符合性評估人員能力要求標準化 |

---

## 義務與舉證要求

### 新增義務摘要

**強制性義務（mandatory）**
- **CVE-2026-24858 修補**：使用 Fortinet 產品的聯邦機構須於 2026-01-30 前完成緩解措施
- **SSDF 1.2 合規**：軟體開發組織需依據更新後的框架建立安全開發實務

**建議性義務（recommended）**
- IoT 裝置製造商採用 MUD 規範描述裝置網路行為（IR 8349）
- 刑事司法資訊系統實施多因素驗證（IR 8523）
- 採用輕量加密標準 Ascon（SP 800-232）
- 組織參考 CSA CCM-ATT&CK 整合指引評估雲端安全控制

**資訊性指引（informational）**
- CSF 2.0 小型企業快速入門指南
- 隱私工程計畫持續發展方向
- 國際資安標準化工作進展

### 舉證要求摘要

| 領域 | 舉證要求 |
|------|----------|
| 軟體開發 | SSDF 1.2 符合性紀錄、安全開發生命週期文件 |
| IoT 安全 | 裝置網路行為描述文件、MUD 規範實作紀錄 |
| 身分驗證 | MFA 實施紀錄、驗證系統稽核日誌（CJIS 環境） |
| 漏洞管理 | Fortinet 產品修補紀錄與時程證明 |
| ISO 符合性 | ISO 標準符合性稽核報告、管理系統文件 |

---

## L5 — Evolution Signals

- [系統推論] **AI 與資安框架整合加速**：NIST 同時推進 CSF 與 AI RMF 整合 profiles，建立 Cyber AI Profile workshop 系列，顯示 AI 賦能資安（AI for cybersecurity）與 AI 系統保護（security for AI）正成為框架發展雙主軸。

- [系統推論] **軟體供應鏈安全責任標準化**：SSDF 1.2 版公開徵求意見，強調建立「採購方與供應商間的共同語彙」，顯示軟體供應鏈安全正從技術指引轉向可稽核的責任分配機制。

- [系統推論] **輕量加密與硬體安全標準趨勢**：SP 800-232 Ascon 標準、SUSHI@NIST 硬體安全倡議、ISO 輕量加密修正案等動態，反映物聯網與嵌入式系統安全需求推動加密標準演進。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| 來源分布 | NIST Frameworks: 20, NIST Insights: 18, ISO Standards: 10, CSA: 1, CISA KEV: 1 |
| rule_type 分布 | guidance: 11, new: 10, draft: 3, final: 2, revision: 2, amendment: 1, 其他/空值: 21 |
| enforcement_signal 分布 | recommended: 22, informational: 9, mandatory: 2, 空值/null: 17 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | cybersecurity, ai_risk, identity, supply_chain, critical_infrastructure | 20 | 2025-07-30 ~ 2026-01-28 |
| nist_cybersecurity_insights | cybersecurity, ai_risk, workforce, policy_guidance, identity, privacy | 18 | 2024-02-28 ~ 2026-01-27 |
| iso_standards | information_security, other | 10 | 2025-11-19 ~ 2026-02-03 |
| csa_cloud_security | cloud_security | 1 | 2026-01-27 |
| cisa_kev | vulnerability | 1 | 2026-01-27 |
