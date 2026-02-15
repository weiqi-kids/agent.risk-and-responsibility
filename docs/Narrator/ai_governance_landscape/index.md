---
layout: default
title: AI Governance Landscape
nav_order: 3
has_children: true
---

# AI Governance Landscape — 2026-02

<div class="key-takeaway">
本月重點：EU AI Act 勘誤明確線上空間不適用（directly_applicable）、EuroHPC 擴展至 AI Gigafactories 投資 41.2 億歐元強化技術主權、NIST 發布首個 AI 網路安全框架配置檔草案（NISTIR 8596）、CSA 連續發布 Agentic AI 治理指引標誌 AI 代理治理成為獨立領域。
</div>

> 本期追蹤 30 項 AI 治理動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規，以及 CSA 雲端安全、ISO 標準與 SANS 威脅情報等延伸來源。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

1. **歐盟 AI Act 勘誤發布** — EU 於 2026-01-13 發布 Regulation (EU) 2024/1689 勘誤，明確排除線上空間適用範圍，修正原條文錯誤描述。此次勘誤具實質影響，原文誤將線上空間納入適用範圍，修正後明確「線上空間不在適用範圍內，因其並非實體空間」。（來源：EU，rule_type: amendment，enforcement: mandatory，binding_force: directly_applicable）

2. **歐盟 AI Gigafactories 建立框架** — Council Regulation (EU) 2026/150 修正 EuroHPC Joint Undertaking，擴展至 AI gigafactories 與量子運算基礎設施，新增會員國 17% 資本支出共同出資要求，聯盟出資增至 41.2 億歐元。（來源：EU，rule_type: amendment，enforcement: mandatory）

3. **NIST AI 網路安全框架草案發布** — NIST 於 2025-12-16 發布 NISTIR 8596 草案「Draft NIST Guidelines Rethink Cybersecurity for the AI Era」，為首個整合 CSF 與 AI RMF 的 AI 網路安全框架配置檔，涵蓋三大領域：保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊。（來源：NIST，rule_type: draft，status: public_comment）

4. **Agentic AI 治理框架湧現** — CSA 發布多項 Agentic AI 治理指引，包括「Agentic Trust Framework」建立 AI 代理專用 Zero Trust 架構、「MAESTRO to CI/CD Pipeline」將威脅模型整合至開發流程、以及「Levels of Autonomy」分級治理框架。（來源：CSA，rule_type: guidance，enforcement: recommended）

5. **非人類身分治理成為焦點** — CSA 與 Oasis Security 調查顯示 79% IT 專業人員認為無法有效防禦非人類身分（NHI）攻擊，78% 缺乏 AI 身分創建政策。（來源：CSA，rule_type: guidance）

---

## 區域動態比較

### 美國（NIST）

**NIST Frameworks（6 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| Draft NIST Guidelines Rethink Cybersecurity for the AI Era | 2025-12-16 | NISTIR 8596 | public_comment | 首個 AI 網路安全框架配置檔，整合 CSF 與 AI RMF |
| NIST Launches Centers for AI in Manufacturing and Critical Infrastructure | 2025-12-22 | — | final | 新設兩個 AI 經濟安全中心（$20M MITRE + $70M Manufacturing USA） |
| Lessons Learned: Tool Use in Agent Systems | 2025-08-05 | — | final | AI 代理工具標準化分類法（七種方法） |
| NCCoE Cyber AI Profile: Securing AI System Components | 2025-08-05 | CSF 2.0 Core | public_comment | AI 系統元件安全工作坊 |
| NCCoE Cyber AI Profile: Conducting AI-enabled Cyber Defense | 2025-08-19 | — | final | AI 驅動資安防禦工作坊 |
| NCCoE Cyber AI Profile: Thwarting AI-enabled Cyber Attacks | 2025-09-02 | — | final | 對抗 AI 驅動網路攻擊工作坊 |

### 美國（CSA Cloud Security Alliance）

本期 CSA 發布 15 項 AI 安全治理指引，成為最活躍的指引來源：

| 文件 | 日期 | Category | 重點 |
|------|------|----------|------|
| Applying MAESTRO to Real-World Agentic AI Threat Models | 2026-02-03 | ai_security | 將 MAESTRO 七層架構整合至 CI/CD 流程 |
| Time-to-Trust Survey | 2026-02-03 | identity | IAM 架構需擴展以容納 AI 代理 |
| Agentic Trust Framework (ATF) | 2026-01-29 | ai_security | 首個 AI 代理零信任治理規範 |
| Leveling Up Autonomy in Agentic AI | 2026-01-26 | ai_security | AI 自主性層級分類與治理 |
| 79% of IT Pros Feel Ill-Equipped to Prevent NHI Attacks | 2026-01-26 | identity | CSA/Oasis 調查：NHI 防禦能力不足 |
| From Security to Proof of AI Trust | 2026-01-13 | ai_security | AI 信任證明機制設計 |

### 歐盟

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| Corrigendum to AI Act (EU) 2024/1689 R(02) | 2026-01-13 | CELEX:32024R1689R(02) | amendment | directly_applicable | 明確排除線上空間適用範圍 |
| Council Regulation (EU) 2026/150 | 2026-01-23 | CELEX:32026R0150 | amendment | directly_applicable | 擴展 EuroHPC 至 AI gigafactories，41.2 億歐元 |

---

## L5 — Evolution Signals

1. [系統推論] **AI 代理治理成為獨立領域** — 本期 CSA 連續發布 Agentic Trust Framework、MAESTRO CI/CD 整合、Leveling Up Autonomy、Non-Human Identity Governance 等指引，顯示 AI 代理（Agentic AI）已從 AI 治理的子議題，演化為需要專門框架的獨立領域。

2. [系統推論] **美歐在 AI 基礎設施投資呈現分歧策略** — 歐盟透過 EuroHPC 修正案建立「AI gigafactories」集中式投資框架（41.2 億歐元），強調技術主權與戰略自主；美國 NIST 則採分散式策略，發布 NISTIR 8596 草案聚焦框架整合（CSF + AI RMF）。

3. [系統推論] **AI 風險管理從「合規導向」轉向「信任證明」** — CSA「From Security to Proof of AI Trust」提出從安全到信任證明的典範轉移，配合 ISO/IEC 12792:2025 AI 透明度分類標準的發布，顯示全球 AI 治理正從「符合框架要求」轉向「可驗證的信任證明」。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | CSA: 15, NIST Frameworks: 6, NIST Insights: 4, EU: 3, ISO: 1, SANS: 1 |
| rule_type 分布 | guidance: 18, amendment: 3, draft: 1, new: 2, corrigendum: 1, unknown: 5 |
| enforcement_signal 分布 | recommended: 19, mandatory: 3, informational: 3, unknown: 5 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security, identity, compliance, best_practices | 15 | 2026-01-06 ~ 2026-02-03 |
| nist_frameworks | ai_risk | 6 | 2025-08-05 ~ 2025-12-22 |
| nist_cybersecurity_insights | ai_risk, workforce, supply_chain | 4 | 2024-09-19 ~ 2025-09-30 |
| eu_regulations | ai_governance, critical_infrastructure | 3 | 2026-01-13 ~ 2026-01-27 |
| iso_standards | other | 1 | 2025-11-11 |
| sans_isc | threat_analysis | 1 | 2026-02-02 |

---

*報告產出時間：2026-02-15*
