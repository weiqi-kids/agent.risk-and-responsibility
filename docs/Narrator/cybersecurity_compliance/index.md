---
layout: default
title: Cybersecurity Compliance
nav_order: 6
has_children: true
---

# Cybersecurity Compliance Updates — 2026-W07

<div class="key-takeaway">
本期重點：ISO/IEC TS 27103:2026 發布網路安全框架整合指引、NIST SSDF 1.2 安全軟體開發框架公開徵詢、AI 網路安全框架 NISTIR 8596 草案進入最終徵詢階段、SP 800-53 修補管理控制項持續強化。
</div>

> 本期追蹤 50 項資安合規動態，涵蓋 NIST 框架、NIST 洞察、ISO 標準、CISA KEV、CSA 雲端安全。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的資安合規動態">
  <strong>ISO/IEC TS 27103:2026 於 2026-02-06 發布</strong>，提供網路安全框架整合運用 ISO/IEC 標準的最新指引，協助組織將國際標準對應至 NIST CSF 等框架（國際/recommended）。
</p>

### 1. ISO/IEC TS 27103:2026 網路安全框架整合指引發布 [國際/revision]

ISO 於 2026-02-06 發布 ISO/IEC TS 27103:2026，更新如何在網路安全框架中整合運用 ISO/IEC 標準的指引，取代舊版 Technical Specification 72437。此技術規範協助組織將 ISO/IEC 27000 系列標準對應至 NIST CSF 等網路安全框架，提供跨標準的整合路徑。

### 2. ISO/IEC 25706:2026 安全協定與資料模型標準發布 [國際/new]

ISO 於 2026-02-03 發布 ISO/IEC 25706:2026，建立資訊技術安全協定與資料模型（SPDM）收集標準。此為 ISO/IEC JTC 1 技術委員會制定的第一版標準，屬於 ICS 35.030 資訊安全領域，為硬體安全通訊協定提供標準化基礎。

### 3. NIST SSDF 1.2 安全軟體開發框架公開徵詢 [美國/revision]

NIST 於 2025-12-17 發布 Secure Software Development Framework (SSDF) Version 1.2 草案，新增與改善安全軟體開發實務、任務與範例，擴展軟體生產者與採購者在整個軟體開發生命週期中降低漏洞風險的指引。此為回應 Executive Order 14306 強化國家網路安全的配套措施。

### 4. NISTIR 8596 AI 網路安全框架草案 [美國/draft]

NIST 於 2025-12-16 發布首個 AI 網路安全框架配置檔草案（NISTIR 8596），整合 CSF 與 AI RMF，要求組織在採用 AI 時必須同步發展網路安全策略。涵蓋三大領域：保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊。公開意見徵詢已於 2026-01-30 截止。

### 5. CISA KEV 漏洞修復義務 [美國/mandatory]

CISA 於 2026-01-22 將 CVE-2025-31125（Vite Vitejs 存取控制不當漏洞）加入已知被利用漏洞目錄。聯邦機構須於 2026-02-12 前完成修復。此漏洞影響明確暴露開發伺服器的應用程式，顯示攻擊面已擴展至開發環境。

<blockquote class="expert-quote">
  「ISO/IEC TS 27103 提供如何將 ISO 和 IEC 標準應用於網路安全框架的指引，協助組織在既有框架基礎上整合國際標準要求。」
  <cite>ISO/IEC JTC 1/SC 27</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

**安全軟體開發**
- **SSDF Version 1.2**（document_id: NIST SSDF 1.2, status: public_comment）
  - 擴展安全軟體開發實務、任務與範例
  - 強化軟體生產者與採購者漏洞風險緩解指引
  - enforcement_signal: recommended

**AI 與網路安全整合**
- **NISTIR 8596**（document_id: NISTIR 8596, status: draft）
  - 首個 AI 網路安全配置檔，整合 CSF 與 AI RMF
  - 涵蓋保護 AI 系統、AI 強化防禦、抵禦 AI 攻擊
  - 公開意見徵詢已截止（2026-01-30）
  - enforcement_signal: recommended

**軟體修補管理**
- **SP 800-53 Release 5.2.0**（document_id: SP 800-53 Rev. 5.2.0, status: final）
  - 回應 Executive Order 14306 強化國家網路安全
  - 新增 SA-15、SI-02(07)、SA-24 控制項
  - enforcement_signal: mandatory（聯邦機構依 FISMA 須遵循）

**勒索軟體風險管理**
- **NIST IR 8374 Revision 1**（document_id: NIST IR 8374 Rev 1, status: public_comment）
  - 勒索軟體風險管理框架對齊 CSF 2.0
  - 擴展防禦、偵測、復原責任結構
  - enforcement_signal: recommended

### 歐盟

本期無歐盟資安法規動態。

### 國際標準組織（ISO）

**網路安全框架整合**
- **ISO/IEC TS 27103:2026**（revision，2026-02-06 發布）
  - 更新網路安全框架中 ISO/IEC 標準整合指引
  - 取代舊版 Technical Specification 72437
  - enforcement_signal: recommended

**安全協定標準**
- **ISO/IEC 25706:2026**（new，2026-02-03 發布）
  - 安全協定與資料模型（SPDM）收集標準
  - ICS 35.030 資訊安全領域
  - enforcement_signal: recommended

---

## 控制措施對照

| 控制領域 | NIST 對應 | ISO 對應 | 變動摘要 |
|----------|-----------|----------|----------|
| 框架整合 | CSF 2.0 | ISO/IEC TS 27103:2026 | 更新 ISO/IEC 標準與網路安全框架整合指引 |
| 安全軟體開發 | SSDF Version 1.2 | — | 擴展生產者與採購者漏洞風險緩解指引 |
| AI 網路安全 | NISTIR 8596（CSF + AI RMF） | — | 首個 AI 網路安全配置檔草案 |
| 修補管理 | SP 800-53 SA-15, SI-02(07), SA-24 | — | 新增修補失敗根因分析、事件紀錄標準化、網路韌性設計 |
| 勒索軟體防護 | IR 8374（CSF 2.0 Profile） | — | 對齊 CSF 2.0 框架結構 |
| 安全協定 | — | ISO/IEC 25706:2026 | SPDM 收集標準第一版 |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| ISO | ISO/IEC TS 27103:2026 | 資安標準實施人員、合規人員、資安架構師 | revised | 更新網路安全框架整合 ISO/IEC 標準的指引 |
| ISO | ISO/IEC 25706:2026 | 硬體安全工程師、安全協定實施人員 | new | 發布 SPDM 收集標準第一版 |
| NIST | SSDF Version 1.2 | 軟體生產者、開發者、採購者、聯邦機構、供應鏈廠商 | expanded | 擴展安全軟體開發實務與漏洞風險緩解 |
| NIST | NISTIR 8596 | AI 採用組織、資安專業人員、企業領導、AI 整合決策者 | new | 建立首個 AI 網路安全框架配置檔 |
| NIST | SP 800-53 Rev 5.2.0 | 聯邦機構系統管理員、軟體開發商、維運團隊 | expanded | 新增修補管理、韌性設計、紀錄標準化控制項 |
| CISA | CVE-2025-31125 | 使用 Vite Vitejs 且開發伺服器暴露於網路的組織 | new | 強制修復存取控制不當漏洞（期限 2026-02-12） |

---

## 義務與舉證要求

### 新增義務摘要

**框架整合（ISO/IEC TS 27103:2026）**
- 組織應參考最新指引對應 ISO/IEC 標準至所採用的網路安全框架
- 評估既有控制措施與國際標準要求的差距
- 更新標準對應文件以反映 2026 版本變更

**安全軟體開發（SSDF 1.2）**
- 實施新增與改善的安全軟體開發實務
- 軟體生產者需降低整個開發生命週期的漏洞風險
- 採購者需於採購規格中納入 SSDF 要求

**漏洞修復（CISA KEV）**
- 聯邦機構須於 2026-02-12 前修復 CVE-2025-31125
- 驗證開發伺服器未暴露於網路
- 更新 Vite Vitejs 至修補版本

### 舉證要求摘要

| 義務領域 | 舉證要求 |
|----------|----------|
| 框架整合 | 標準對應文件、差距分析報告、整合實施紀錄 |
| 安全軟體開發 | SSDF 實務實施紀錄、漏洞風險緩解措施文件、開發生命週期安全檢查點紀錄 |
| AI 網路安全 | AI 網路安全策略文件、AI 系統安全評估、防禦性 AI 能力實作 |
| 漏洞修復 | 修復驗證紀錄、修補程式部署文件、漏洞掃描結果 |

---

## L5 — Evolution Signals

### [系統推論] 國際標準與區域框架整合趨勢加速

ISO/IEC TS 27103:2026 的發布標誌著國際標準組織正積極建立與 NIST CSF 等區域框架的對應橋樑。組織未來將更容易在單一控制措施實作中同時滿足 ISO 27001 與 NIST CSF 要求，減少重複評估與稽核的負擔。

### [系統推論] AI 網路安全從概念進入標準化階段

NISTIR 8596 公開意見徵詢截止後，預計 2026 年上半年將發布最終版本。結合 NCCoE Cyber AI Profile 工作坊的持續進行，AI 網路安全將從概念討論進入可實施的框架階段。

### [系統推論] 漏洞修復時限持續壓縮，開發環境成為攻擊目標

CVE-2025-31125（Vite Vitejs）進入 CISA KEV，顯示攻擊者已將開發工具鏈納入攻擊面。前端開發工具的安全性不再僅是開發團隊的內部議題，而是組織安全態勢的一部分。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| 來源分布 | NIST Frameworks: 23, NIST Insights: 17, ISO Standards: 8, CSA Cloud Security: 1, CISA KEV: 1 |
| rule_type 分布 | guidance: 13, new: 7, draft: 8, revision: 5, amendment: 2, final: 1, null/其他: 14 |
| enforcement_signal 分布 | recommended: 23, informational: 10, mandatory: 3, null/未標註: 14 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | cybersecurity | 23 | 2025-07-15 ~ 2026-01-28 |
| nist_cybersecurity_insights | cybersecurity | 17 | 2024-02-28 ~ 2026-01-27 |
| iso_standards | information_security | 8 | 2025-11-19 ~ 2026-02-06 |
| csa_cloud_security | cloud_security | 1 | 2026-01-27 |
| cisa_kev | vulnerability | 1 | 2026-01-22 |
| eu_regulations | cybersecurity | 0 | — |

---

*報告產出：Narrator Mode - cybersecurity_compliance*
*資料擷取時間點：2026-02-15*
