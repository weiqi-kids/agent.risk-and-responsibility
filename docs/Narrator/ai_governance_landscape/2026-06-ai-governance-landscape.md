---
layout: report
last_modified_at: 2026-06-17
title: "2026-06 AI Governance Landscape"
parent: "AI Governance Landscape"
nav_order: 94

seo:
  title: "2026-06 AI 治理全景 | 金融業治理轉向、EU AI Act 執行倒數"
  description: "2026 年 6 月 AI 治理月報：追蹤 30 項動態，涵蓋金融服務業從 AI 採用轉向自主系統治理、RiskRubric V2 代理風險評估、EU AI Act Article 14 將於 8 月執行、EuroHPC AI Gigafactories 擴展等重要更新。"
  date_published: "2026-06-17"
  date_modified: "2026-06-17"
  article_section: "AI Governance Landscape"
  keywords:
    - "AI Governance"
    - "Agentic AI Security"
    - "EU AI Act"
    - "AI 治理"
    - "ISO 42001"
    - "Non-Human Identity"
    - "RiskRubric"
    - "人工智慧風險管理"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/ai_governance_landscape/2026-03-ai-governance-landscape/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W25-rule-change-brief/"
  faq:
    - question: "2026 年 6 月有哪些重要的 AI 治理動態？"
      answer: "2026 年 6 月重點包括：金融服務業從 AI 採用討論轉向自主系統治理（CSA 調查顯示 62% 組織已部署 AI 代理、93% 授予某種自主權）；CSA RiskRubric V2 將評估範圍擴展至 MCP 伺服器與 AI 代理，以「過度代理性」取代「聲譽」維度；EU AI Act Article 14 人類監督要求將於 2026-08-02 開始執行，違規罰款最高 3,500 萬歐元或全球營收 7%；EuroHPC 透過 Regulation 2026/150 擴展至 AI Gigafactories（41.2 億歐元）。"
    - question: "美國與歐盟的 AI 監管有何差異？"
      answer: "歐盟採直接適用的硬性立法路徑：AI Act（Regulation 2024/1689，directly_applicable）已完成第 2 次勘誤並排除線上空間適用範圍，Article 14 人類監督義務 2026-08-02 強制執行；同時透過 Regulation 2026/150 投入 41.2 億歐元建立 AI Gigafactories 強化技術主權。美國 NIST 則採非強制性指引路徑，NCCoE 於 2026-02 發布軟體與 AI 代理身分授權概念文件（public_comment 至 2026-04-02），尚未形成正式 SP。"
    - question: "AI 系統開發者需要注意哪些新義務？"
      answer: "主要新義務包括：(1) 依 ISO 42001 建立正式 AI 管理系統(AIMS)並可透過第三方審計取得認證；(2) 為 AI 代理發行專屬身分、採用任務範圍短期憑證並在執行時驗證授權；(3) 對自主代理建立能見度、登錄冊與防篡改審計軌跡；(4) 為 EU AI Act Article 14（2026-08-02 執行）準備證明每次 AI 行動均於執行時獲得授權的合規文件。"
    - question: "EU AI Act Article 14 何時開始執行？罰則為何？"
      answer: "EU AI Act（Regulation 2024/1689）Article 14 人類監督要求將於 2026-08-02 開始執行。違規罰款最高可達 3,500 萬歐元或全球年營收的 7%（取較高者）。組織需證明每次 AI 行動在執行時點均獲得授權，此為強制性（mandatory）要求，適用於在歐盟營運的 AI 系統提供者與部署者。"
    - question: "什麼是 CSA RiskRubric V2？"
      answer: "RiskRubric V2 是 Cloud Security Alliance CSAI Foundation 於 2026-06 公告的 AI 風險評估體系更新（status: draft，預計 Q3 2026 發布）。相較前版僅評估 AI 模型，V2 將評估範圍擴展至 MCP 伺服器與 AI 代理，導入聯合掃描器生態系統（Deloitte Italy、PointGuardAI、Tumeryk），並以「過度代理性」（佔評分權重 16%）取代「聲譽」評估維度，以對應自主 AI 時代的新風險。"
---

# AI Governance Landscape — 2026-06 {: .no_toc }

<div class="key-takeaway">
本月重點：金融服務業正式從「AI 採用」轉向「自主系統治理」——CSA 調查顯示 62% 組織已部署 AI 代理、93% 授予某種自主權，但僅 10% 有安全計畫；CSA RiskRubric V2 將風險評估擴展至 MCP 伺服器與 AI 代理，以「過度代理性」取代「聲譽」維度；EU AI Act Article 14 人類監督要求將於 2026-08-02 強制執行，違規罰款最高 3,500 萬歐元或全球營收 7%；歐盟透過 Regulation 2026/150 投入 41.2 億歐元擴展 EuroHPC 至 AI Gigafactories。
</div>

> 本期追蹤 30 項 AI 治理動態，涵蓋 CSA 雲端安全（22 項）、歐盟法規（6 項）、NIST 框架（1 項）、ISO 標準（1 項）。

## 免責聲明 {: .no_toc }

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.8） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 30 個權威來源（NIST、EUR-Lex、CSA、ISO 等） |
| 資料時間 | 2025-11-11 ~ 2026-06-08 |

</div>

{% include report-toc.html %}

---

## 本月重點

<p class="key-answer" data-question="本月有哪些重要的 AI 治理動態">
  <strong>金融服務業正式從「AI 採用」轉向「自主系統治理」</strong>，CSA 調查顯示 62% 組織已部署 AI 代理、93% 授予某種自主權，但僅 10% 有安全計畫；與此同時，EU AI Act Article 14 人類監督要求進入 2026-08-02 強制執行倒數階段，違規罰款最高達 3,500 萬歐元或全球營收 7%。
</p>

1. **金融服務業治理轉向自主系統** — CSA Financial Services Working Group 於 2026-06-08 發布調查，指出金融業已從「AI 採用討論」轉向「自主系統治理」。62% 組織已部署 AI 代理、93% 授予某種形式自主權，85% 預期自主 AI 支付；65% 認為自主金融交易需要新授權模型。組織需在自主性擴張前建立能見度、身分治理與即時安全控制。（來源：CSA，美國產業，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/financial-services-industry-shifts-from-ai-adoption-to-governance-as-autonomous-systems-proliferate-cloud-security-alliance-survey-finds)）

2. **RiskRubric V2 擴展至 AI 代理與 MCP 伺服器** — CSA CSAI Foundation 於 2026-06-04 公告 RiskRubric V2（status: draft，預計 Q3 2026 發布）。評估範圍從 AI 模型擴展至 MCP 伺服器與 AI 代理，導入聯合掃描器生態系統（Deloitte Italy、PointGuardAI、Tumeryk），並以「過度代理性」（佔評分權重 16%）取代「聲譽」評估維度。（來源：CSA，美國產業，rule_type: revision，status: draft，enforcement: informational/recommended，[source](https://cloudsecurityalliance.org/articles/csai-foundation-announces-riskrubric-v2-as-the-next-key-milestone-to-secure-the-agentic-control-plane)）

3. **EU AI Act Article 14 進入執行倒數** — EU AI Act（Regulation 2024/1689，directly_applicable）Article 14 人類監督要求將於 2026-08-02 開始強制執行，違規罰款最高 3,500 萬歐元或全球營收 7%。多份 CSA 身分安全指引均指向此一執行期限，要求組織證明每次 AI 行動在執行時點均獲得授權。（來源：EU 法規 + CSA，歐盟，rule_type: regulation，binding_force: directly_applicable，enforcement: mandatory，[source](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689)）

4. **EuroHPC 擴展至 AI Gigafactories** — 歐盟透過 Council Regulation (EU) 2026/150（生效日 2026-01-20，directly_applicable）將 EuroHPC Joint Undertaking 範圍擴大至 AI Gigafactories 與量子技術，Union 財務承諾提高至最高 41.2 億歐元，並建立「EuroHPC AI and Compute Infrastructure Seal」。會員國可於 2026-08-31 前透過 RRF 資金投入。（來源：EU 法規，歐盟，rule_type: amendment，binding_force: directly_applicable，enforcement: mandatory，[source](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150)）

5. **NIST 發布 AI 代理身分授權概念文件** — NIST NCCoE 於 2026-02-05 發布「Accelerating the Adoption of Software and AI Agent Identity and Authorization」概念文件（status: public_comment，截止 2026-04-02）。要求組織對 AI 代理實施身分識別、授權、審計與不可否認性控制，並防護提示注入攻擊。此為探索性指引階段，尚未形成正式 SP 或 IR。（來源：NIST，美國，rule_type: guidance，status: public_comment，enforcement: informational，[source](https://www.nist.gov/news-events/news/2026/02/new-concept-paper-identity-and-authority-software-agents)）

<blockquote class="expert-quote">
  「金融服務業正在從關於 AI 採用的討論，轉向自主系統的治理問題——當 AI 代理以機器速度自主行動時，組織必須在自主性擴張之前建立能見度、身分治理與即時安全控制。」
  <cite>Cloud Security Alliance, Financial Services Working Group Survey (2026-06-08)</cite>
</blockquote>

<blockquote class="expert-quote">
  「組織必須準備好證明每一次 AI 行動在執行時點均獲得授權；EU AI Act Article 14 將於 2026 年 8 月 2 日執行，違規罰款最高達 3,500 萬歐元或全球營收的 7%。」
  <cite>Cloud Security Alliance, When Authorization Outlives Intent (2026-02-11)</cite>
</blockquote>

---

## 區域動態比較

<p class="key-answer" data-question="美國與歐盟的 AI 治理動態有何不同">
  <strong>歐盟採直接適用的硬性立法路徑</strong>（AI Act directly_applicable、Article 14 將 2026-08-02 強制執行、41.2 億歐元投入 AI Gigafactories），<strong>美國 NIST 則採非強制性指引路徑</strong>（AI 代理身分授權概念文件仍處 public_comment 階段，尚未形成正式 SP），CSA 等產業組織則持續以實務框架彌合兩區域的技術落地差距。
</p>

### 美國（NIST）

**NIST Frameworks（1 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| [Concept Paper — Software and AI Agent Identity and Authorization](https://www.nist.gov/news-events/news/2026/02/new-concept-paper-identity-and-authority-software-agents) | 2026-02-05 | NCCoE Concept Paper | public_comment（截止 2026-04-02） | 探索 AI 代理身分識別、授權、審計與不可否認性控制，防護提示注入；尚未形成正式 SP/IR |

> 注意：本概念文件為探索性指引（public_comment 階段），不可視為已生效之正式標準。

### 國際標準（ISO）

| 標準 | 發布日期 | Document ID | 技術委員會 | 重點 |
|------|----------|-------------|------------|------|
| [AI Transparency Taxonomy of AI Systems](https://www.iso.org/standard/84111.html) | 2025-11-11 | ISO/IEC 12792:2025 | ISO/IEC JTC 1/SC 42 | 定義 AI 系統透明度資訊元素分類法，為 EU AI Act 等法規的透明度義務提供技術標準支撐（自願性標準） |

### 產業指引（CSA Cloud Security Alliance）

本期 CSA 發布 22 項 AI 安全治理指引，持續為最活躍的指引來源，聚焦四大主軸：

**金融與自主系統治理（3 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [Financial Services Shifts from AI Adoption to Governance](https://cloudsecurityalliance.org/articles/financial-services-industry-shifts-from-ai-adoption-to-governance-as-autonomous-systems-proliferate-cloud-security-alliance-survey-finds) | 2026-06-08 | 62% 已部署代理、93% 授予自主權，需新授權模型 |
| [Agentic AI and the New Reality of Financial Security](https://cloudsecurityalliance.org/articles/agentic-ai-and-the-new-reality-of-financial-security) | 2026-02-17 | 金融、醫療業需重新定義超越使用者中心的安全模型 |
| [How C-Suite Leaders Are Taming Shadow AI](https://cloudsecurityalliance.org/articles/how-c-suite-leaders-are-taming-shadow-ai) | 2026-05-19 | 69% 組織懷疑員工使用未授權 GenAI，需主動治理 |

**AI 風險評估與控制框架（5 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [RiskRubric Updates: AI Risk Assessment for the Agentic Era](https://cloudsecurityalliance.org/articles/riskrubric-updates-ai-risk-assessment-for-the-agentic-era) | 2026-06-04 | RiskRubric V2 擴展至 MCP 伺服器與 AI 代理 |
| [CSAI Foundation Announces RiskRubric V2](https://cloudsecurityalliance.org/articles/csai-foundation-announces-riskrubric-v2-as-the-next-key-milestone-to-secure-the-agentic-control-plane) | 2026-06-04 | 聯合掃描器生態系統量化自主 AI 風險（draft） |
| [What is AIUC-1?](https://cloudsecurityalliance.org/articles/what-is-aiuc-1-understanding-the-framework-designed-to-secure-agentic-ai-systems) | 2026-05-19 | 專為保護 Agentic AI 系統設計的框架 |
| [Designing Agentic AI Systems with ORCHIDEAS](https://cloudsecurityalliance.org/articles/designing-agentic-ai-systems-with-the-orchideas-framework) | 2026-05-28 | 九支柱「結構即安全」設計框架，整合 MAESTRO |
| [From Guardrails to Governance](https://cloudsecurityalliance.org/articles/from-guardrails-to-governance-why-enterprise-ai-needs-a-control-layer) | 2026-03-16 | 安全責任從對話層擴展至執行層控制層 |

**ISO 42001 與多框架合規（3 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [AI Governance and ISO 42001 FAQs](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026) | 2026-01-13 | ISO 42001 AIMS 導入實務路線圖 |
| [Understanding ISO 42001](https://cloudsecurityalliance.org/articles/understanding-iso-42001-responsible-ai-governance-in-an-evolving-regulatory-landscape) | 2026-03-03 | 適用範圍、設計對象及第三方審計者角色釐清 |
| [How AI is Simplifying Multi-Framework Cloud Compliance](https://cloudsecurityalliance.org/articles/how-ai-is-simplifying-multi-framework-cloud-compliance-for-csa-star-assessments) | 2026-03-03 | AI 輔助多框架合規評估（CSA STAR） |

**非人類身分與執行時治理（7 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [AI Security: IAM Delivered at Agent Velocity](https://cloudsecurityalliance.org/articles/ai-security-iam-delivered-at-agent-velocity) | 2026-02-11 | 任務範圍短期憑證、即時授權；引 EU AI Act Article 14 |
| [When Authorization Outlives Intent (Salesloft Drift)](https://cloudsecurityalliance.org/articles/ai-security-when-authorization-outlives-intent) | 2026-02-11 | NHI:人類比達 144:1，授權漂移風險；mandatory |
| [From Security to Proof of AI Trust](https://cloudsecurityalliance.org/articles/from-security-to-proof-of-ai-trust) | 2026-01-13 | 從假設安全轉向證明：簽署意圖、範圍授權 |
| [The Visibility Gap in Autonomous AI Agents](https://cloudsecurityalliance.org/articles/the-visibility-gap-in-autonomous-ai-agents) | 2026-02-03 | 僅 21% 維護代理登錄冊；需可問責追溯 |
| [The Agentic Trust Framework](https://cloudsecurityalliance.org/articles/the-agentic-trust-framework-zero-trust-governance-for-ai-agents) | 2026-01-29 | 自主 AI 代理的 Zero Trust 治理框架 |
| [Building a Declarative Governance Framework](https://cloudsecurityalliance.org/articles/building-a-declarative-governance-framework-for-the-agentic-era) | 2026-02-19 | 以宣告式治理取代靜態角色假設 |
| [Top 6 Claude Security Risks](https://cloudsecurityalliance.org/articles/top-6-claude-security-risks-to-watch-as-ai-becomes-your-employees-operating-system) | 2026-05-27 | 影子使用、MCP 驗證、技能供應鏈等六類風險 |

**其他 AI 治理指引（4 項）**：[What AI Risks Are Hiding in Your Apps?](https://cloudsecurityalliance.org/articles/what-ai-risks-are-hiding-in-your-apps)（2026-01-06）、[AI in GRC: Friend, Foe, or FOMO?](https://cloudsecurityalliance.org/articles/ai-in-grc-friend-foe-or-fomo)（2026-02-26）、[The First Question Security Should Ask on AI Projects](https://cloudsecurityalliance.org/articles/the-first-question-security-should-ask-on-ai-projects)（2026-01-09）、[Global Privacy Trends 2026](https://cloudsecurityalliance.org/articles/global-privacy-trends-and-best-practices-for-compliance-in-2026)（2026-01-13）。

### 歐盟

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| [Corrigendum to AI Act (EU) 2024/1689 R(02)](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1689R(02)) | 2026-01-13 | CELEX:32024R1689R(02) | corrigendum | directly_applicable | 明確排除線上空間適用範圍（生效 2025-12-19） |
| [Council Regulation (EU) 2026/150](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150) | 2026-01-19 | CELEX:32026R0150 | amendment | directly_applicable | 擴展 EuroHPC 至 AI Gigafactories，41.2 億歐元 |
| [Corrigendum to EuroHPC AI Initiative (EU) 2024/1732 R(02)](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1732R(02)) | 2026-01-27 | CELEX:32024R1732R(02) | corrigendum | binding_regulation | 術語更正：「AI factory」改為「AI facility」 |

**EU AI Act 關鍵時程**：2026-08-02 Article 14 人類監督要求開始強制執行（罰款最高 EUR 35M 或全球營收 7%）；2026-08-31 EuroHPC RRF 資金轉移截止。

---

## 責任變動追蹤

<p class="key-answer" data-question="2026 年 6 月 AI 治理有哪些責任變動">
  <strong>本期責任變動集中於自主 AI 代理的問責與授權</strong>：歐盟透過 AI Act 勘誤與 Regulation 2026/150 擴展提供者義務範圍，NIST NCCoE 對 AI 代理新增身分與不可否認性控制要求，CSA 則指出金融業需在自主性擴張前建立即時安全控制與執行時授權驗證。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| EU | AI Act 2024/1689 R(02) | AI 提供者、部署者、線上平台營運者、國家主管機關 | clarified | 明確排除線上空間適用範圍，修正原條文錯誤描述 |
| EU | Council Reg. 2026/150 | EuroHPC JU、會員國、AI Gigafactory 聯盟、SMEs/新創/研究者 | expanded | EuroHPC 範圍擴大至 AI Gigafactories 與量子技術，建立泛歐聯邦運算生態 |
| NIST | NCCoE Concept Paper | 部署 AI 代理的組織、AI 開發者、CISO、IAM 從業者 | new | 對 AI 代理實施身分識別、授權、審計與不可否認性控制 |
| CSA | Financial Services Survey | 雲端/AI/資安人員、合規官、風險團隊、高階主管 | expanded | 金融業從 AI 採用轉向自主系統治理，需即時安全控制 |
| CSA | When Authorization Outlives Intent | IAM 團隊、安全架構師、CISO、SaaS 營運者、合規官 | new | NHI 身分激增（144:1）造成授權漂移，需執行時驗證授權 |
| ISO | ISO/IEC 12792:2025 | AI 利害關係人、標準實施人員 | new | 發布 AI 系統透明度分類法 |

---

## 義務與舉證要求

<p class="key-answer" data-question="AI 系統開發者本月需注意哪些新義務與舉證要求">
  <strong>核心新義務為 AI 代理的執行時授權與身分治理</strong>：為代理發行專屬身分、採用任務範圍短期憑證、在執行時點驗證授權並維護防篡改審計軌跡；舉證要求則包括即時授權決策記錄、代理登錄冊、EU AI Act Article 14 合規文件（2026-08-02 起為強制）。
</p>

### 新增義務摘要

- **金融業（CSA）**：建立 AI 代理能見度、身分治理與即時安全控制；發展平衡創新與問責的 AI 治理框架；為自主金融交易實施新授權模型。
- **AI 代理身分（NIST NCCoE）**：對 AI 代理實施身分識別與授權控制；建立審計機制確保行動不可否認性；部署防護措施對抗提示注入。
- **執行時授權（CSA）**：為 AI 代理發行專屬身分；採用任務範圍短期憑證（5–15 分鐘 token）；在執行時點驗證授權而非僅於發行時。
- **EU AI Act（mandatory）**：為 Article 14 人類監督要求（2026-08-02 執行）準備合規文件，證明每次 AI 行動於執行時點獲授權。
- **EuroHPC（mandatory）**：AI Gigafactory 聯盟須符合技術/環境/安全標準、每年 1 月 31 日前提交稽核報告、前五年維持歐盟所有權。

### 舉證要求摘要

- AI 角色與範圍定義文件、AI 系統影響評估記錄（ISO 42001 AIMS）。
- 即時授權決策記錄、代理操作稽核軌跡、最小權限實施證明、跨系統撤銷審計軌跡（CSA）。
- 即時代理登錄冊（調查顯示僅 21% 組織維護）、端對端 session tracing（僅 45% 具備）。
- EU AI Act Article 14 合規文件（適用於歐盟營運組織）。
- EuroHPC 年度稽核報告、SLA、治理機構批准紀錄（會員國/聯盟）。

---

## L5 — Evolution Signals

1. [系統推論] **AI 治理重心從「框架制定」轉向「執行時問責」** — 本期多份來源（CSA 金融業調查、NCCoE 代理身分概念文件、執行時授權系列）均指向同一方向：治理焦點正從靜態框架與政策制定，移向 AI 代理在運行時點的即時授權、可追溯性與不可否認性。RiskRubric V2 以「過度代理性」取代「聲譽」維度進一步佐證此趨勢。

2. [系統推論] **美歐監管路徑分歧持續，但 2026-08 形成共同壓力臨界點** — 歐盟維持直接適用的硬性立法（AI Act Article 14 於 2026-08-02 強制執行、EuroHPC RRF 截止於 2026-08-31），美國 NIST 仍停留於 public_comment 階段的非強制指引。然而 2026 年 8 月可能成為全球 AI 治理從「建議」轉向「強制」的共同轉折點，特別是對在歐盟營運的跨國組織。

3. [系統推論] **金融服務業成為 Agentic AI 治理的領先壓力測試場域** — 金融業 62% 部署率、85% 預期自主支付與 65% 認為需新授權模型的數據，顯示高度監管產業正率先面對自主 AI 的治理缺口，可能成為驅動 AI 代理身分標準（NCCoE）與評估體系（RiskRubric V2）落地的關鍵需求方。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | CSA: 22, EU: 6, NIST Frameworks: 1, ISO: 1 |
| rule_type 分布 | guidance: 18, amendment: 4, revision: 1, new: 1, regulation/corrigendum: 6 |
| enforcement_signal 分布 | recommended: 18, mandatory: 6, informational: 4, mixed: 2 |
| status 分布 | final: 25, in_force: 2, draft: 2, public_comment: 1 |
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
