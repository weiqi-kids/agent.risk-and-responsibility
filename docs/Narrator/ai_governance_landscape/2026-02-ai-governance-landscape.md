---
layout: report
title: "2026-02 AI Governance Landscape"
parent: "AI Governance Landscape"
nav_order: 2

seo:
  title: "2026-02 AI 治理全景 | EU AI Act 勘誤、NIST AI 網路安全框架草案、Agentic AI 治理"
  description: "2026 年 2 月 AI 治理月報：追蹤 30 項 AI 治理動態，涵蓋 EU AI Act 勘誤、EuroHPC AI Gigafactories、NISTIR 8596 草案、CSA Agentic Trust Framework 等重要更新。"
  date_published: "2026-02-15"
  date_modified: "2026-02-15"
  article_section: "AI Governance Landscape"
  keywords:
    - "AI Governance"
    - "AI RMF"
    - "EU AI Act"
    - "AI 治理"
    - "人工智慧風險管理"
    - "Agentic AI"
    - "NIST Cybersecurity Framework"
    - "Non-Human Identity"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/ai_governance_landscape/2026-W07-ai_governance_landscape/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W07-rule-change-brief/"
  faq:
    - question: "2026 年 2 月有哪些重要的 AI 治理動態？"
      answer: "2026 年 2 月重點包括：EU AI Act 勘誤明確排除線上空間適用範圍、EuroHPC 擴展至 AI Gigafactories（41.2 億歐元投資）、NIST 發布 NISTIR 8596 AI 網路安全框架草案、CSA 發布 Agentic Trust Framework 等。"
    - question: "美國與歐盟的 AI 監管有何差異？"
      answer: "歐盟採集中式基礎設施投資策略（EuroHPC AI Gigafactories），強調技術主權與戰略自主；美國 NIST 採分散式框架策略，聚焦 AI 網路安全整合（CSF + AI RMF）與製造業應用。兩區域均重視 AI 系統安全，但路徑不同。"
    - question: "AI 系統開發者需要注意哪些新義務？"
      answer: "主要新義務包括：(1) 依 NISTIR 8596 草案發展 AI 網路安全策略；(2) 採用標準化分類法描述 AI 代理工具能力與限制；(3) 建立 AI 代理專用 Zero Trust 治理框架；(4) 開發非人類身分（NHI）管理政策。"
    - question: "什麼是 Agentic AI 治理？"
      answer: "Agentic AI 治理指針對具自主行動能力的 AI 系統（AI Agents）建立專門治理框架。2026 年 CSA 發布 Agentic Trust Framework、MAESTRO CI/CD 整合指引等，標誌 AI 代理治理從 AI 治理子議題演化為獨立領域。"
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

<p class="key-answer" data-question="本月有哪些重要的 AI 治理動態">
  <strong>EU AI Act 發布第二次勘誤</strong>，明確排除線上空間（online spaces）適用範圍，修正原條文關鍵錯誤，此修正為 directly_applicable 且具實質影響，將改變 AI 系統在線上環境部署時的合規義務判定。
</p>

1. **歐盟 AI Act 勘誤發布** — EU 於 2026-01-13 發布 Regulation (EU) 2024/1689 勘誤，明確排除線上空間適用範圍，修正原條文錯誤描述。此次勘誤具實質影響，原文誤將線上空間納入適用範圍，修正後明確「線上空間不在適用範圍內，因其並非實體空間」。（來源：EU，rule_type: amendment，enforcement: mandatory，binding_force: directly_applicable）

2. **歐盟 AI Gigafactories 建立框架** — Council Regulation (EU) 2026/150 修正 EuroHPC Joint Undertaking，擴展至 AI gigafactories 與量子運算基礎設施，新增會員國 17% 資本支出共同出資要求，聯盟出資增至 41.2 億歐元。新增職責包括：建立與營運 AI gigafactories、授予「EuroHPC AI and Compute Infrastructure Seal」、管理會員國 RRF 貢獻與存取時間分配。會員國須於 2026-08-31 前完成 RRF 資金轉移。（來源：EU，rule_type: amendment，enforcement: mandatory）

3. **NIST AI 網路安全框架草案發布** — NIST 於 2025-12-16 發布 NISTIR 8596 草案「Draft NIST Guidelines Rethink Cybersecurity for the AI Era」，為首個整合 CSF 與 AI RMF 的 AI 網路安全框架配置檔，涵蓋三大領域：保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊。公眾意見徵詢至 2026-01-30，歷經 6,500 名社群成員參與。（來源：NIST，rule_type: draft，status: public_comment）

4. **Agentic AI 治理框架湧現** — CSA 發布多項 Agentic AI 治理指引，包括「Agentic Trust Framework」建立 AI 代理專用 Zero Trust 架構、「MAESTRO to CI/CD Pipeline」將威脅模型整合至開發流程、以及「Levels of Autonomy」分級治理框架，標誌 AI 自主系統治理進入實務階段。（來源：CSA，rule_type: guidance，enforcement: recommended）

5. **非人類身分治理成為焦點** — CSA 與 Oasis Security 調查顯示 79% IT 專業人員認為無法有效防禦非人類身分（NHI）攻擊，78% 缺乏 AI 身分創建政策。傳統 IGA 系統以 HR 錨定的生命週期設計僅針對人類身分，無法應對當代非人類身分為主的環境。（來源：CSA，rule_type: guidance）

<blockquote class="expert-quote">
  「組織在採用 AI 時必須同步發展網路安全策略，涵蓋保護 AI 系統、使用 AI 強化防禦操作，以及建立對抗 AI 驅動攻擊的韌性。」
  <cite>NIST, Draft NISTIR 8596 (2025-12-16)</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 在 AI 治理方面有哪些新進展">
  <strong>NIST 發布 NISTIR 8596 AI 網路安全框架草案</strong>，為首個整合 Cybersecurity Framework 與 AI RMF 的配置檔，並透過 NCCoE 系列工作坊持續推動 Cyber AI Profile 發展。
</p>

**NIST Frameworks（6 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| Draft NIST Guidelines Rethink Cybersecurity for the AI Era | 2025-12-16 | NISTIR 8596 | public_comment | 首個 AI 網路安全框架配置檔，整合 CSF 與 AI RMF，涵蓋保護 AI 系統、AI 驅動防禦、對抗 AI 攻擊三大領域 |
| NIST Launches Centers for AI in Manufacturing and Critical Infrastructure | 2025-12-22 | — | final | 新設兩個 AI 經濟安全中心，負責製造業生產力提升與關鍵基礎設施防護，與 MITRE 合作開發 AI 代理工具（$20M MITRE + $70M Manufacturing USA） |
| Lessons Learned: Tool Use in Agent Systems | 2025-08-05 | — | final | CAISI/NIST 工作坊成果，AI 代理工具標準化分類法（七種方法：功能性、存取模式、風險導向、可靠性、模態、監控、自主性） |
| NCCoE Cyber AI Profile: Securing AI System Components | 2025-08-05 | CSF 2.0 Core | public_comment | AI 系統元件安全工作坊，組織需擴展資安治理框架涵蓋 AI 系統元件威脅與脆弱性 |
| NCCoE Cyber AI Profile: Conducting AI-enabled Cyber Defense | 2025-08-19 | — | final | AI 驅動資安防禦工作坊，涵蓋日誌分析加速、威脅偵測、風險評估 |
| NCCoE Cyber AI Profile: Thwarting AI-enabled Cyber Attacks | 2025-09-02 | — | final | 對抗 AI 驅動網路攻擊工作坊 |

**NIST Cybersecurity Insights（4 項）**：

| 文件 | 發布日期 | 重點 |
|------|----------|------|
| Sharpening the Focus on Product Requirements and Cybersecurity Risks | 2025-09-30 | IoT 產品製造商資安風險更新，整合 AI 輔助功能治理 |
| The Impact of Artificial Intelligence on the Cybersecurity Workforce | 2025-06-12 | AI 對資安人才的影響，NICE Framework 更新 |
| Cybersecurity and AI: Integrating and Building on Existing NIST Guidelines | 2025-05-22 | 整合 CSF 與 AI RMF profiles 構想，涵蓋三場景 |
| Managing Cybersecurity and Privacy Risks in the Age of Artificial Intelligence | 2024-09-19 | NIST AI 資安隱私風險管理專案啟動 |

### 美國（CSA Cloud Security Alliance）

本期 CSA 發布 15 項 AI 安全治理指引，成為最活躍的指引來源：

| 文件 | 日期 | Category | 重點 |
|------|------|----------|------|
| Applying MAESTRO to Real-World Agentic AI Threat Models | 2026-02-03 | ai_security | 將 MAESTRO 七層架構整合至 CI/CD 流程 |
| Time-to-Trust Survey | 2026-02-03 | identity | IAM 架構需擴展以容納 AI 代理 |
| Agentic Trust Framework (ATF) | 2026-01-29 | ai_security | 首個 AI 代理零信任治理規範 |
| Great Divide: AI Splitting Cybersecurity | 2026-01-27 | ai_security | 2026 為 AI 資安應用分水嶺 |
| Non-Human Identity Governance | 2026-01-27 | identity | 傳統 IGA 系統不足以治理非人類身分 |
| 79% of IT Pros Feel Ill-Equipped to Prevent NHI Attacks | 2026-01-26 | identity | CSA/Oasis 調查：NHI 防禦能力不足 |
| Leveling Up Autonomy in Agentic AI | 2026-01-26 | ai_security | AI 自主性層級分類與治理 |
| What if AI Knew When to Say 'I Don't Know'? | 2026-01-21 | ai_security | AI 不確定性校準與內在感知 |
| AI Governance Framework Adoption | 2026-01-13 | ai_security | 雲原生 AI 治理分階段採用方法 |
| From Security to Proof of AI Trust | 2026-01-13 | ai_security | AI 信任證明機制設計 |
| Global Privacy Trends 2026 | 2026-01-13 | compliance | 全球隱私合規進入新階段 |
| Top 10 Predictions for Agentic AI | 2026-01-12 | ai_security | 2026 年 Agentic AI 趨勢預測 |
| First Question Security Should Ask | 2026-01-09 | best_practices | 安全團隊需以「Why」問題引導 AI 專案 |
| What AI Risks Are Hiding in Your Apps? | 2026-01-06 | ai_security | 應用程式嵌入式 AI 風險識別 |

### 歐盟

<p class="key-answer" data-question="歐盟在 AI 治理方面有哪些新進展">
  <strong>EU AI Act 發布第二次勘誤</strong>，明確排除線上空間適用範圍；同時 EuroHPC 擴展至 AI Gigafactories，投資 41.2 億歐元強化技術主權。
</p>

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| Corrigendum to AI Act (EU) 2024/1689 R(02) | 2026-01-13 | CELEX:32024R1689R(02) | amendment | directly_applicable | 修正 recital 19：明確排除線上空間適用範圍（effective: 2025-12-19） |
| Council Regulation (EU) 2026/150 | 2026-01-23 | CELEX:32026R0150 | amendment | directly_applicable | 擴展 EuroHPC JU 至 AI gigafactories 與量子技術，41.2 億歐元（effective: 2026-01-20） |
| Corrigendum to (EU) 2024/1732 R(02) | 2026-01-27 | CELEX:32024R1732R(02) | corrigendum | binding_regulation | 術語更正：「AI factory」改為「AI facility」（愛沙尼亞語版本） |

**EU AI Act 適用範圍修正重點**：
- **修正內容**：原文誤將「線上空間納入適用範圍」，勘誤後明確「線上空間不在適用範圍內，因其並非實體空間」
- **影響對象**：AI 系統提供者、部署者、線上平台營運者、國家主管機關
- **實務影響**：AI 系統在線上環境部署時的合規義務需重新評估

**EuroHPC AI Gigafactories 架構重點**：
- **新增職責**：建立與營運 AI gigafactories、授予「EuroHPC AI and Compute Infrastructure Seal」、管理會員國 RRF 貢獻
- **財務規模**：聯盟出資從 12 億歐元增至 41.2 億歐元
- **時程關鍵**：會員國 RRF 資金轉移截止 2026-08-31；每年 1 月 31 日 Consortia 提交年度稽核報告
- **與 EU AI Act 銜接**：AI gigafactories 運作須符合 Regulation (EU) 2024/1689 要求

### 國際標準（ISO）

| 文件 | 發布日期 | Document ID | 類型 | 重點 |
|------|----------|-------------|------|------|
| AI Transparency Taxonomy of AI Systems | 2025-11-11 | ISO/IEC 12792:2025 | new | AI 系統透明度分類法國際標準，協助利害關係人識別與滿足透明度需求 |

### 威脅情報（SANS ISC）

| 文件 | 發布日期 | 類型 | 重點 |
|------|----------|------|------|
| Scanning for exposed Anthropic Models | 2026-02-02 | guidance | 偵測針對 Anthropic API 端點掃描活動，提醒保護本地部署 AI 模型 API |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| EU | AI Act Corrigendum R(02) | AI system providers, deployers, online platform operators, national competent authorities | clarified | 明確排除線上空間適用範圍，因其並非實體空間 |
| EU | Council Regulation 2026/150 | EuroHPC JU, Member States, AI gigafactory consortia, SMEs, start-ups, researchers | expanded | 擴展 EuroHPC 至 AI gigafactories 與量子技術，41.2 億歐元投資強化技術主權 |
| EU | EuroHPC AI Initiative Corrigendum | AI startups, EuroHPC participants, Member States | clarified | 術語更正（factory-facility），無實質義務變更 |
| CSA | Agentic Trust Framework (ATF) | Security Engineers, Enterprise Architects, Business Leaders, AI System Developers | new | 引入 AI 代理專用 Zero Trust 治理規範 |
| CSA | MAESTRO to CI/CD Pipeline | AI 安全工程師, DevSecOps 工程師, 應用安全團隊, CISO | expanded | 將 MAESTRO 框架擴展至 CI/CD 整合 |
| CSA | Leveling Up Autonomy in Agentic AI | AI System Architects, Security Engineers, Enterprise Risk Officers | clarified | 需定義並治理不同 AI 自主層級 |
| CSA | From Security to Proof of AI Trust | Security Engineers, Enterprise Architects, Audit Teams, AI System Owners | expanded | 自主 AI 系統需建立信任證明機制 |
| CSA | AI Governance Framework Adoption | AI Governance Officers, Cloud Architects, Security Engineers, Compliance Teams | new | 雲原生 AI 系統需採用結構化治理框架 |
| CSA | 79% IT Pros NHI Survey | IT Security Professionals, Identity Governance Teams, CISO, AI System Owners | expanded | 需建立 NHI 與 AI 身分管理政策 |
| CSA | Time-to-Trust Survey | CISO, IAM Architects, Security Engineers, Enterprise Architects | expanded | IAM 架構需擴展以容納 AI 代理 |
| CSA | What if AI Knew When to Say I Don't Know | AI System Developers, Security Engineers, AI Governance Teams, Product Managers | new | AI 系統需內建不確定性校準機制 |
| CSA | First Question Security Should Ask | Security Teams, AI Project Leaders, Business Stakeholders, Risk Officers | clarified | 安全團隊需以「Why」問題引導 AI 專案 |
| CSA | Global Privacy Trends 2026 | DPO, Privacy Officers, Compliance Teams, Legal Counsel, Security Architects | expanded | 全球隱私合規進入新階段，執法趨嚴 |
| CSA | The Great Divide | CISO, Security Team Leads, Security Strategy Planners, Enterprise IT Management | clarified | 2026 為 AI 資安應用分水嶺 |
| NIST | Draft NISTIR 8596 | Organizations at any stage of AI adoption, cybersecurity professionals, all sectors | new | 建立首個 AI 網路安全框架配置檔 |
| NIST | Lessons Learned: Tool Use in Agent Systems | AI developers, deployers, downstream users, researchers | clarified | 需採用標準化分類法描述代理工具能力與限制 |
| NIST | Managing Cybersecurity and Privacy Risks in AI Age | AI developers, deployers, cybersecurity/privacy professionals | expanded | 資安隱私專業人員需整合 AI RMF 管理新風險 |
| ISO | AI Transparency Taxonomy (12792:2025) | AI stakeholders, ISO 標準實施人員 | new | 發布 AI 系統透明度分類法國際標準 |
| SANS | Anthropic API Scanning | Security analysts, AI infra admins, API security teams | informational | 偵測針對 Anthropic API 端點掃描活動 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="AI 系統開發者需要注意哪些新義務">
  <strong>主要新義務涵蓋四大領域</strong>：(1) 依 NISTIR 8596 草案發展 AI 網路安全策略；(2) 採用標準化分類法描述 AI 代理工具能力與限制；(3) 建立 AI 代理專用 Zero Trust 治理框架；(4) 開發非人類身分（NHI）管理政策。
</p>

**歐盟（EU）**：
- EuroHPC Joint Undertaking 擴展至建立與營運 AI gigafactories
- Joint Undertaking 須成立公共治理機構、管理會員國 RRF 貢獻及存取時間分配
- 會員國須在徵件前承諾資助、提交書面接受聲明，可在 2026-08-31 前分配 RRF 資金
- AI Gigafactory Consortia 須符合技術/環境/安全標準、確保主機協議符合歐盟法律
- 建立 AI 處理器採購框架合約
- AI 系統提供者與部署者需重新評估線上環境的合規義務（AI Act 勘誤）

**美國（NIST）**：
- 組織採用 AI 時須同步發展網路安全策略（NISTIR 8596 草案）
- 保護 AI 系統、使用 AI 強化防禦、建立對抗 AI 驅動攻擊韌性
- AI 系統開發者與部署者需採用標準化分類法描述代理工具能力與限制
- 採用七種分類方法（功能性、存取模式、風險導向、可靠性、模態、監控、自主性）
- 整合 AI RMF 管理新風險，擴展傳統資安隱私職責
- 評估工具使用的風險層級（危害嚴重性、狀態性、可逆性）

**產業指引（CSA）**：
- 雲原生 AI 系統需採用結構化治理框架
- 實施分階段治理框架導入方案
- 定義並文件化企業系統中的 AI 自主層級
- 建立與自主層級相符的治理機制
- 自主 AI 操作（程式碼執行、基礎設施變更、財務交易）風險評估
- 在 AI agent 部署前建立完整威脅模型
- 將 MAESTRO 七層架構整合至 CI/CD 流程
- 建立 AI 代理專用 Zero Trust 治理框架（ATF）
- 識別與管理應用程式內嵌 AI 風險
- 擴展 IAM 架構以容納 AI 代理
- 建立 NHI 與 AI 身分管理政策與能力

**國際標準（ISO）**：
- 採用 AI 系統透明度分類法進行透明度評估（ISO/IEC 12792:2025）
- 識別與滿足不同利害關係人的透明度需求

### 舉證要求摘要

**歐盟（EU）**：
- Consortia 甄選：技術評估（基礎設施品質、工作計畫、永續性）、影響評估（歐盟附加價值、戰略自主性）、財務可行性
- 持續合規：年度稽核報告（每年 1 月 31 日前）、SLA、治理機構批准紀錄
- 實體空間與線上空間之分類證明文件
- AI 系統部署環境說明文件

**美國（NIST）**：
- AI 網路安全策略文件
- AI 系統安全評估
- AI 代理工具能力與限制分類文件
- 工具分類映射（依功能、存取模式或多維度交集）
- 風險評估報告，涵蓋危害、狀態性與可逆性
- 監控與日誌機制文件

**產業指引（CSA）**：
- AI 治理框架選擇與導入文件
- 分階段實施計畫與成熟度里程碑
- AI 自主層級分類文件
- AI agent 威脅模型文件
- ATF 實施文件與稽核日誌
- IAM 架構評估報告
- AI agent 身分管理政策
- NHI 安全能力評估

---

## L5 — Evolution Signals

<p class="key-answer" data-question="AI 治理未來趨勢是什麼">
  <strong>三大趨勢浮現</strong>：(1) AI 代理治理成為獨立領域；(2) 美歐在 AI 基礎設施投資呈現分歧策略；(3) AI 風險管理從合規導向轉向信任證明。
</p>

1. [系統推論] **AI 代理治理成為獨立領域** — 本期 CSA 連續發布 Agentic Trust Framework、MAESTRO CI/CD 整合、Leveling Up Autonomy、Non-Human Identity Governance 等指引，顯示 AI 代理（Agentic AI）已從 AI 治理的子議題，演化為需要專門框架的獨立領域。傳統身分治理（IGA）與 Zero Trust 架構正在針對非人類身分與自主代理進行根本性調適。NIST 的「Lessons Learned: Tool Use in Agent Systems」提出七種分類法，同樣反映此領域的成熟化趨勢。

2. [系統推論] **美歐在 AI 基礎設施投資呈現分歧策略** — 歐盟透過 EuroHPC 修正案建立「AI gigafactories」集中式投資框架（41.2 億歐元），強調技術主權與戰略自主，明確要求 AI gigafactories 須符合 EU AI Act；美國 NIST 則採分散式策略，發布 NISTIR 8596 草案聚焦框架整合（CSF + AI RMF），並新設製造業與關鍵基礎設施 AI 經濟安全中心。兩區域均重視 AI 安全，但路徑呈現「集中式基礎設施投資 vs. 分散式框架整合」的分歧。

3. [系統推論] **AI 風險管理從「合規導向」轉向「信任證明」** — CSA「From Security to Proof of AI Trust」提出從安全到信任證明的典範轉移，配合 ISO/IEC 12792:2025 AI 透明度分類標準的發布，顯示全球 AI 治理正從「符合框架要求」轉向「可驗證的信任證明」。當 AI 系統以超越人類速度執行自主操作時，傳統安全協議已不足夠，新典範強調 AI 系統需「證明其可信」而非「被動保護」。CSA/Oasis 調查顯示 79% IT 專業人員認為無法有效防禦 NHI 攻擊，凸顯此轉型的急迫性。

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
