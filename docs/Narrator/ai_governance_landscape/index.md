---
last_modified_at: 2026-06-17
layout: default
title: AI Governance Landscape
nav_order: 12
has_children: true
---

# AI Governance Landscape — 2026-06

<div class="key-takeaway">
本月重點：金融服務業正式從「AI 採用」轉向「自主系統治理」——CSA 調查顯示 62% 組織已部署 AI 代理、93% 授予某種自主權，但僅 10% 有安全計畫；CSA RiskRubric V2 將風險評估擴展至 MCP 伺服器與 AI 代理，以「過度代理性」取代「聲譽」維度；EU AI Act Article 14 人類監督要求將於 2026-08-02 強制執行，違規罰款最高 3,500 萬歐元或全球營收 7%；歐盟透過 Regulation 2026/150 投入 41.2 億歐元擴展 EuroHPC 至 AI Gigafactories。
</div>

> 本期追蹤 30 項 AI 治理動態，涵蓋 CSA 雲端安全（22 項）、歐盟法規（6 項）、NIST 框架（1 項）、ISO 標準（1 項）。

最新月報：[2026-06 AI Governance Landscape](2026-06-ai-governance-landscape.md)

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

1. **金融服務業治理轉向自主系統** — CSA Financial Services Working Group 於 2026-06-08 發布調查，金融業已從「AI 採用討論」轉向「自主系統治理」。62% 組織已部署 AI 代理、93% 授予某種自主權，85% 預期自主 AI 支付。（來源：CSA，美國產業，rule_type: guidance，enforcement: recommended）

2. **RiskRubric V2 擴展至 AI 代理與 MCP 伺服器** — CSA CSAI Foundation 於 2026-06-04 公告 RiskRubric V2（draft，預計 Q3 2026 發布），評估範圍從 AI 模型擴展至 MCP 伺服器與 AI 代理，並以「過度代理性」取代「聲譽」維度。（來源：CSA，美國產業，rule_type: revision，status: draft）

3. **EU AI Act Article 14 進入執行倒數** — EU AI Act（Regulation 2024/1689，directly_applicable）Article 14 人類監督要求將於 2026-08-02 強制執行，違規罰款最高 3,500 萬歐元或全球營收 7%。（來源：EU 法規 + CSA，歐盟，enforcement: mandatory）

4. **EuroHPC 擴展至 AI Gigafactories** — 歐盟透過 Council Regulation (EU) 2026/150（生效 2026-01-20，directly_applicable）將 EuroHPC 範圍擴大至 AI Gigafactories 與量子技術，財務承諾提高至最高 41.2 億歐元。（來源：EU 法規，歐盟，enforcement: mandatory）

5. **NIST 發布 AI 代理身分授權概念文件** — NIST NCCoE 於 2026-02-05 發布 AI 代理身分與授權概念文件（public_comment，截止 2026-04-02），要求對 AI 代理實施身分識別、授權、審計與不可否認性控制。（來源：NIST，美國，status: public_comment）

---

## 區域動態比較

### 美國（NIST）

**NIST Frameworks（1 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| Concept Paper — Software and AI Agent Identity and Authorization | 2026-02-05 | NCCoE Concept Paper | public_comment（截止 2026-04-02） | AI 代理身分識別、授權、審計與不可否認性控制 |

### 產業指引（CSA）

本期 CSA 發布 22 項 AI 安全治理指引，持續為最活躍的指引來源，聚焦金融與自主系統治理、AI 風險評估框架（RiskRubric V2、AIUC-1、ORCHIDEAS）、ISO 42001 與多框架合規、非人類身分與執行時治理四大主軸。

### 國際標準（ISO）

| 標準 | 發布日期 | Document ID | 重點 |
|------|----------|-------------|------|
| AI Transparency Taxonomy | 2025-11-11 | ISO/IEC 12792:2025 | AI 系統透明度分類法（自願性標準） |

### 歐盟

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| Corrigendum to AI Act (EU) 2024/1689 R(02) | 2026-01-13 | CELEX:32024R1689R(02) | corrigendum | directly_applicable | 明確排除線上空間適用範圍 |
| Council Regulation (EU) 2026/150 | 2026-01-19 | CELEX:32026R0150 | amendment | directly_applicable | 擴展 EuroHPC 至 AI Gigafactories，41.2 億歐元 |
| Corrigendum to (EU) 2024/1732 R(02) | 2026-01-27 | CELEX:32024R1732R(02) | corrigendum | binding_regulation | 術語更正：AI factory → facility |

**EU AI Act 關鍵時程**：2026-08-02 Article 14 開始強制執行（罰款最高 EUR 35M 或全球營收 7%）；2026-08-31 EuroHPC RRF 資金轉移截止。

---

## L5 — Evolution Signals

1. [系統推論] **AI 治理重心從「框架制定」轉向「執行時問責」** — CSA 金融業調查、NCCoE 代理身分概念文件、執行時授權系列均指向治理焦點從靜態框架移向 AI 代理運行時點的即時授權與可追溯性。

2. [系統推論] **美歐監管路徑分歧持續，但 2026-08 形成共同壓力臨界點** — 歐盟維持直接適用硬性立法（Article 14 於 2026-08-02 執行），美國 NIST 仍停留於 public_comment 指引，2026 年 8 月可能成為全球 AI 治理從「建議」轉向「強制」的共同轉折點。

3. [系統推論] **金融服務業成為 Agentic AI 治理的領先壓力測試場域** — 金融業 62% 部署率與 65% 認為需新授權模型的數據，顯示高度監管產業正率先面對自主 AI 的治理缺口。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | CSA: 22, EU: 6, NIST Frameworks: 1, ISO: 1 |
| rule_type 分布 | guidance: 18, amendment/corrigendum: 6, revision: 1, new: 1, regulation: 4 |
| enforcement_signal 分布 | recommended: 18, mandatory: 6, informational: 4, mixed: 2 |
| REVIEW_NEEDED | 2 筆（RiskRubric V2 相關，均為 draft 公告階段） |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security, compliance, identity, best_practices | 22 | 2026-01-06 ~ 2026-06-08 |
| eu_regulations | ai_governance, critical_infrastructure | 6 | 2026-01-13 ~ 2026-01-27 |
| nist_frameworks | identity | 1 | 2026-02-05 |
| iso_standards | other | 1 | 2025-11-11 |

---

*報告產出時間：2026-06-17*
