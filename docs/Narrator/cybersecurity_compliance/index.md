---
layout: default
title: Cybersecurity Compliance
nav_order: 6
has_children: true
---

# Cybersecurity Compliance Updates — 2026-W07

> **報告週期**: 2026-02-09 至 2026-02-15
> **產出日期**: 2026-02-13
> **資料來源**: NIST Frameworks, NIST Cybersecurity Insights, ISO Standards, CISA KEV, CSA Cloud Security
> **追蹤動態**: 50 項

---

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統趨勢分析，尚未經人工驗證。

---

## 本週重點

### 1. CISA 強制漏洞修補要求：CVE-2026-24858 [美國/mandatory]

CVE-2026-24858 針對 Fortinet 多項產品的身份驗證繞過漏洞，聯邦機構須於 **2026-01-30** 前完成緩解措施。受影響對象包括使用 Fortinet 產品的組織、IT 管理員及網路基礎設施團隊。

### 2. NIST SSDF 1.2 版公開徵求意見 [美國/revision/mandatory]

安全軟體開發框架進行重大修訂，新增改進的實務作法、任務與範例，建立採購方與供應商間的共同語彙，協助組織減少已發布軟體的漏洞數量。

### 3. CSA 與 MITRE 合作整合雲端安全控制與攻擊者行為 [國際/guidance]

CSA CCM 控制措施與 MITRE ATT&CK 框架整合，協助雲端安全專業人員將標準化控制措施對應至攻擊者戰術與技術知識庫（2026-01-27）。

### 4. ISO/IEC 27566-1:2025 年齡保證系統框架發布 [國際/new]

首版標準建立年齡保證系統框架，定義核心特性包括隱私與安全要求，適用於需要年齡相關資格決策的系統。

### 5. NIST 隱私工程計畫慶祝資料隱私週 [美國/informational]

闡述 2026 年隱私風險管理指引發展方向，持續與利害關係人社群合作，協助各規模組織發展隱私保護實務（2026-01-27）。

---

## 區域動態比較（美國/歐盟/國際）

| 面向 | 美國（NIST/CISA） | 歐盟（EU） | 國際（ISO/CSA） |
|------|------------------|-----------|----------------|
| **本週主要動態** | SSDF 1.2、CVE-2026-24858、Privacy Week | 本期無動態 | ISO/IEC 27566、CSA-MITRE 合作 |
| **軟體供應鏈** | SSDF 1.2（mandatory/revision） | — | — |
| **漏洞修復** | CVE-2026-24858 Fortinet（2026-01-30 期限） | — | — |
| **雲端安全** | — | — | CSA CCM 對照 MITRE ATT&CK |
| **隱私保護** | Privacy Engineering Program 2026 方向 | — | ISO/IEC 27566-1 年齡保證框架 |
| **資安人員能力** | — | — | ISO/IEC 27566-2/3 評估人員能力 |
| **韌性標準** | — | — | ISO 22396、22399 基礎設施韌性 |

---

## 控制措施對照表

| 控制領域 | NIST 對應 | ISO 對應 | 變動摘要 |
|----------|-----------|----------|----------|
| 存取控制 | NIST IR 8523 (MFA for CJIS) | ISO/IEC 27566 系列 | 新增刑事司法系統 MFA 要求；IT 安全評估人員能力標準化 |
| 軟體開發安全 | SSDF 1.2 | — | 擴充安全開發實務作法與採購語彙 |
| 加密控制 | SP 800-232 (Ascon), CMVP | ISO/IEC 19790 | 輕量加密標準最終版；加密模組驗證自動化 |
| IoT 安全 | IR 8349, NCCoE IoT Onboarding | — | 裝置網路行為描述標準化；安全上線最終指引 |
| 隱私保護 | Privacy Engineering Program | ISO/IEC 27566-1 (age assurance) | 隱私風險管理持續發展；年齡保證系統框架 |
| 韌性管理 | Transit CSF Profile (CSWP 51) | ISO 22396, 22399 | 交通運輸資安框架；基礎設施與能源韌性標準 |
| 身分驗證 | SP 800-63B Supplement (Passkeys) | — | 同步式驗證器過渡期指引 |
| 漏洞管理 | CISA KEV | — | CVE-2026-24858 強制修補（Fortinet） |

---

## 責任變動追蹤表格

| 變動類型 | 影響角色 | 來源文件 | 狀態 | 優先級 |
|----------|----------|----------|------|--------|
| **擴展** | 軟體開發者、開發組織、採購者、供應鏈安全經理 | SSDF 1.2 | Revision | 高 |
| **新增** | 使用 Fortinet 產品的組織、IT 管理員、網路團隊 | CVE-2026-24858 | Final | **緊急** |
| **新增** | IoT 製造商、開發者、網路管理員、雲端供應商 | IR 8349 | Final | 中 |
| **新增** | 刑事司法系統管理員、執法機關 IT、身分驗證架構師 | IR 8523 | Final | 中 |
| **新增** | 加密模組開發者、CMVP 實驗室、聯邦採購人員 | CMVP White Paper | Draft | 中 |
| **新增** | 數位身分驗證人員、DMV 管理者、行動應用開發者 | Mobile DL Resources | Draft | 中 |
| **擴展** | 資安人才、教育者、雇主、人資專業人員 | NICE Framework | Revision | 中 |
| **新增** | 雲端安全專業人員、安全架構師、威脅情報分析師 | CSA CCM-ATT&CK | Guidance | 中 |
| **新增** | 資訊安全管理人員、CISO、合規人員 | ISO/IEC 27566 系列 | Final | 中 |

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

### 舉證要求摘要

| 義務領域 | 舉證要求 |
|----------|----------|
| 軟體開發 | SSDF 1.2 符合性紀錄、安全開發生命週期文件 |
| IoT 安全 | 裝置網路行為描述文件、MUD 規範實作紀錄 |
| 身分驗證 | MFA 實施紀錄、驗證系統稽核日誌（CJIS 環境） |
| 漏洞管理 | Fortinet 產品修補紀錄與時程證明 |
| ISO 符合性 | ISO 標準符合性稽核報告、管理系統文件 |

---

## L5 — Evolution Signals

### [系統推論] AI 與資安框架整合加速

NIST 同時推進 CSF 與 AI RMF 整合 profiles，建立 Cyber AI Profile workshop 系列，顯示 AI 賦能資安（AI for cybersecurity）與 AI 系統保護（security for AI）正成為框架發展雙主軸。

### [系統推論] 軟體供應鏈安全責任標準化

SSDF 1.2 版公開徵求意見，強調建立「採購方與供應商間的共同語彙」，顯示軟體供應鏈安全正從技術指引轉向可稽核的責任分配機制。

### [系統推論] 輕量加密與硬體安全標準趨勢

SP 800-232 Ascon 標準、SUSHI@NIST 硬體安全倡議、ISO 輕量加密修正案等動態，反映物聯網與嵌入式系統安全需求推動加密標準演進。

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
| eu_regulations | cybersecurity | 0 | — |

---

*報告產出：Narrator Mode - cybersecurity_compliance*
*資料擷取時間點：2026-02-13*
