# AI Governance Landscape — 2026-W07

> 本期追蹤 40 項 AI 治理動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規，以及 CSA 雲端安全、ISO 標準與 SANS 威脅情報等延伸來源。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

1. **歐盟 AI Act 勘誤發布** — EU 於 2026-01-13 發布 Regulation (EU) 2024/1689 勘誤，明確排除線上空間適用範圍，修正原條文關於「線上空間」(online spaces) 的錯誤描述。此修正具實質影響，將改變 AI 系統在線上環境部署時的合規義務判定。（來源：EU，rule_type: amendment，enforcement: mandatory，binding_force: directly_applicable）

2. **歐盟 AI Gigafactories 建立框架** — Council Regulation (EU) 2026/150 修正 EuroHPC Joint Undertaking，擴展至 AI gigafactories 與量子運算基礎設施，聯盟出資增至 41.2 億歐元。新增職責包括建立與營運 AI gigafactories、授予「EuroHPC AI and Compute Infrastructure Seal」、管理會員國 RRF 貢獻。（來源：EU，rule_type: amendment，enforcement: mandatory）

3. **Agentic AI 治理框架湧現** — CSA 發布多項 Agentic AI 治理指引，包括「Agentic Trust Framework (ATF)」建立 AI 代理專用 Zero Trust 架構，以及「Leveling Up Autonomy in Agentic AI」分級治理框架。MAESTRO 框架亦已擴展至 CI/CD 整合，標誌 AI 自主系統治理進入實務階段。（來源：CSA，rule_type: guidance，enforcement: recommended）

4. **NIST AI 網路安全框架草案發布** — NIST 於 2025-12-16 發布 NISTIR 8596 草案「Draft NIST Guidelines Rethink Cybersecurity for the AI Era」，為首個 AI 網路安全框架配置檔，涵蓋保護 AI 系統、使用 AI 強化防禦及抵禦 AI 驅動攻擊三大領域，公眾意見徵詢至 2026-01-30。（來源：NIST，rule_type: draft，enforcement: recommended）

5. **非人類身分治理成為焦點** — CSA 與 Oasis Security 調查顯示 79% IT 專業人員認為無法有效防禦非人類身分 (NHI) 攻擊，78% 缺乏 AI 身分創建政策。傳統 IGA 系統設計僅針對人類身分，不足以應對現今以非人類身分為主的環境。（來源：CSA，rule_type: guidance，enforcement: recommended）

---

## 區域動態比較

### 美國（NIST）

**NIST Frameworks（7 項）**：

| 文件 | 發布日期 | 狀態 | 重點 |
|------|----------|------|------|
| NIST Launches Centers for AI in Manufacturing and Critical Infrastructure | 2025-12-22 | final | 新設兩個 AI 經濟安全中心，負責製造業生產力提升與關鍵基礎設施防護，與 MITRE 合作開發 AI 代理工具，$20M MITRE 合作與 $70M Manufacturing USA 計畫 |
| Draft NIST Guidelines Rethink Cybersecurity for the AI Era (NISTIR 8596) | 2025-12-16 | draft | 首個 AI 網路安全框架配置檔，涵蓋三大領域：保護 AI 系統、AI 驅動防禦、對抗 AI 攻擊，公眾意見徵詢至 2026-01-30 |
| NCCoE Cyber AI Profile: Thwarting AI-enabled Cyber Attacks | 2025-09-02 | final | 對抗 AI 驅動網路攻擊的實務指引工作坊 |
| NCCoE Cyber AI Profile: Conducting AI-enabled Cyber Defense | 2025-08-19 | final | AI 驅動資安防禦工作坊，涵蓋日誌分析加速、威脅偵測、風險評估 |
| NCCoE Cyber AI Profile: Securing AI System Components | 2025-08-05 | public_comment | AI 系統元件安全工作坊，組織需擴展資安治理框架涵蓋 AI 系統元件威脅與脆弱性 |
| Lessons Learned: Tool Use in Agent Systems | 2025-08-05 | final | CAISI 與 NIST 工作坊成果，AI 代理工具使用標準化分類法，七種分類方法（功能性、存取模式、風險導向、可靠性、模態、監控、自主性） |

**NIST Cybersecurity Insights（5 項）**：

| 文件 | 發布日期 | 重點 |
|------|----------|------|
| Reflections from the First Cyber AI Profile Workshop | 2025-07-31 | 首屆 Cyber AI Profile 研討會回顧，CSF 與 AI RMF 整合進程 |
| The Impact of AI on the Cybersecurity Workforce | 2025-06-12 | AI 對資安人才的影響分析 |
| Cybersecurity and AI: Integrating Existing NIST Guidelines | 2025-05-22 | 整合 CSF 與 AI RMF profiles 構想，涵蓋採用 AI 進行資安、防禦 AI 攻擊、保護 AI 系統三場景 |
| Managing Cybersecurity and Privacy Risks in the Age of AI | 2024-09-19 | NIST AI 資安隱私風險管理專案啟動，整合 AI RMF 擴展傳統職責 |

### 美國（CSA Cloud Security Alliance）

本期 CSA 發布 14 項 AI 安全治理指引，為最活躍的指引來源：

| 文件 | 日期 | Category | 重點 |
|------|------|----------|------|
| Applying MAESTRO to Real-World Agentic AI Threat Models | 2026-02-03 | ai_security | 將 MAESTRO 框架擴展至 CI/CD 整合，agentic AI 威脅模型納入自動化流程 |
| Time-to-Trust Survey | 2026-02-03 | identity | IAM 架構需擴展以容納 AI 代理，傳統 IAM 框架不足以應對 agentic workforce |
| The Agentic Trust Framework (ATF) | 2026-01-29 | ai_security | 首個 AI 代理 Zero Trust 治理規範，開放治理規格供企業採用 |
| Non-Human Identity Governance: Why IGA Falls Short | 2026-01-27 | identity | 傳統 IGA 系統以 HR 為錨的生命週期不適用非人類身分 |
| 79% of IT Pros Feel Ill-Equipped to Prevent NHI Attacks | 2026-01-26 | identity | CSA/Oasis 調查：79% IT 專業人員無法有效防禦 NHI 攻擊，78% 缺乏 AI 身分創建政策 |
| Leveling Up Autonomy in Agentic AI | 2026-01-26 | ai_security | AI 自主性層級分類與治理，從簡單任務到自主程式碼執行、基礎設施管理、財務交易 |
| What if AI Knew When to Say 'I Don't Know'? | 2026-01-21 | ai_security | AI 不確定性校準，需內在感知而非效能導向信心表達 |
| AI Governance Framework Adoption in Cloud-Native AI | 2026-01-13 | ai_security | 雲原生 AI 分散式架構治理挑戰，分階段採用方法 |
| From Security to Proof of AI Trust | 2026-01-13 | ai_security | AI 信任證明機制設計，傳統協議假設人類監督不適用自主系統 |
| Global Privacy Trends 2026 | 2026-01-13 | compliance | 全球隱私合規進入新階段，執法趨嚴與區域法規激增 |
| Top 10 Predictions for Agentic AI in 2026 | 2026-01-12 | ai_security | 2026 標誌 Agentic AI 時代全面到來，自我改進系統興起 |
| The First Question Security Should Ask on AI Projects | 2026-01-09 | best_practices | 安全團隊需以「Why? What is our desired outcome?」引導 AI 專案，避免 FOMO 驅動採用 |
| What AI Risks Are Hiding in Your Apps? | 2026-01-06 | ai_security | 應用程式嵌入式 AI 風險識別，Gartner 預測 2028 年 95%+ 企業使用 GenAI，AI 交易年增 36 倍 |

### 歐盟

| 法規 | 發布日期 | 類型 | binding_force | 重點 |
|------|----------|------|---------------|------|
| Corrigendum to AI Act (EU) 2024/1689 R(02) | 2026-01-13 | amendment | directly_applicable | 修正 recital 19 關鍵錯誤：明確排除線上空間適用範圍（effective: 2025-12-19） |
| Council Regulation (EU) 2026/150 | 2026-01-23 | amendment | directly_applicable | 擴展 EuroHPC JU 至 AI gigafactories 與量子技術，41.2 億歐元投資，強化技術主權（effective: 2026-01-20） |
| Corrigendum to (EU) 2024/1732 R(02) | 2026-01-27 | amendment | informational | 術語更正：「AI factory」改為「AI facility」（愛沙尼亞語版本），無實質變動 |

**EU AI Act 適用範圍修正重點**：
- **修正內容**：原文誤將「線上空間納入適用範圍」，勘誤後明確「線上空間不在適用範圍內，因其並非實體空間」
- **影響對象**：AI 系統提供者、部署者、線上平台營運者、國家主管機關
- **實務影響**：AI 系統提供者與部署者需重新評估線上環境的合規義務

**EuroHPC AI Gigafactories 擴展重點**：
- **新增職責**：建立與營運 AI gigafactories、授予「EuroHPC AI and Compute Infrastructure Seal」、管理會員國 RRF 貢獻與存取時間分配、建立 AI 處理器採購框架合約
- **財務規模**：從 12 億歐元提升至 41.2 億歐元
- **時程**：會員國 RRF 資金轉移截止 2026-08-31
- **與 EU AI Act 銜接**：AI gigafactories 運作須符合 Regulation (EU) 2024/1689 要求

### 國際標準（ISO）

| 文件 | 發布日期 | Document ID | 類型 | 重點 |
|------|----------|-------------|------|------|
| AI Transparency Taxonomy of AI Systems | 2025-11-11 | ISO/IEC 12792:2025 | new | AI 系統透明度分類法國際標準，協助 AI 利害關係人識別與滿足透明度需求 |
| Age Assurance Systems Framework | 2025-12-12 | ISO/IEC 27566-1:2025 | new | 年齡驗證系統框架，涵蓋隱私與安全核心特性 |

### 威脅情報（SANS ISC）

| 文件 | 發布日期 | 類型 | 重點 |
|------|----------|------|------|
| AI-Powered Knowledge Graph Generator & APTs | 2026-02-13 | guidance | AI 驅動知識圖譜工具 (AIKG) 用於威脅情報分析，LLM 與 SPO 三元組萃取技術 |
| Detecting and Monitoring OpenClaw (clawdbot, moltbot) | 2026-02-03 | guidance | 新型 AI 代理框架 OpenClaw 因設計缺陷引發安全疑慮，需建立偵測監控機制 |
| Scanning for exposed Anthropic Models | 2026-02-02 | guidance | 偵測針對 Anthropic API 端點掃描活動，提醒保護本地部署 AI 模型 API |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| EU | AI Act Corrigendum R(02) | AI system providers, deployers, online platform operators, national competent authorities | clarified | 明確排除線上空間適用範圍，因其並非實體空間 |
| EU | Council Regulation 2026/150 | EuroHPC JU, Member States, AI gigafactory consortia/coordinators, SMEs, start-ups, researchers | expanded | 擴展 EuroHPC 至 AI gigafactories 與量子技術，強化歐盟技術主權與戰略自主性 |
| EU | EuroHPC AI Initiative Corrigendum | AI startups, EuroHPC participants, Member States | clarified | 術語更正（factory-facility），無實質義務變更 |
| CSA | Agentic Trust Framework (ATF) | Security Engineers, Enterprise Architects, Business Leaders, AI System Developers | new | 引入 AI 代理專用 Zero Trust 治理規範，開放治理規格 |
| CSA | MAESTRO to CI/CD Pipeline | AI 安全工程師, DevSecOps 工程師, 應用安全團隊, CISO | expanded | 將 MAESTRO 框架從理論擴展至 CI/CD 整合，agentic AI 威脅模型納入自動化流程 |
| CSA | Leveling Up Autonomy in Agentic AI | AI System Architects, Security Engineers, Enterprise Risk Officers, Infrastructure Engineers | clarified | 需定義並治理不同 AI 自主層級，含程式碼執行、基礎設施管理、財務交易 |
| CSA | From Security to Proof of AI Trust | Security Engineers, Enterprise Architects, Business Leaders, Audit Teams, AI System Owners | expanded | 自主/半自主 AI 系統需建立信任證明機制，傳統協議假設人類監督已不適用 |
| CSA | AI Governance Framework Adoption | AI Governance Officers, Cloud Architects, Security Engineers, Compliance Teams | new | 雲原生 AI 系統需採用結構化治理框架因應分散式架構挑戰 |
| CSA | What AI Risks Are Hiding in Your Apps | Application Security Teams, AI Risk Officers, Security Operations, API Security Teams | expanded | 需識別與管理應用程式內嵌 AI 風險，準備 2028 年 95%+ GenAI 採用 |
| CSA | Non-Human Identity Governance | Identity Governance Admins, IAM Architects, Security Operations, Cloud Security Engineers | clarified | 傳統 IGA 系統以 HR 錨定的生命週期不適用非人類身分 |
| CSA | 79% IT Pros NHI Survey | IT Security Professionals, Identity Governance Teams, CISO, AI System Owners | expanded | 組織需建立 NHI 與 AI 身分管理政策與能力 |
| CSA | Time-to-Trust Survey | CISO, IAM Architects, Security Engineers, Enterprise Architects | expanded | IAM 架構需擴展以容納 AI 代理，傳統框架不足以應對 agentic workforce |
| CSA | What if AI Knew When to Say I Don't Know | AI System Developers, Security Engineers, AI Governance Teams, Product Managers | new | AI 系統需內建不確定性校準機制，區分能力與知道何時需要表達 |
| CSA | First Question Security Should Ask | Security Teams, AI Project Leaders, Business Stakeholders, Risk Officers | clarified | 安全團隊需以「Why」問題引導 AI 專案，避免 FOMO 驅動採用 |
| CSA | Global Privacy Trends 2026 | DPO, Privacy Officers, Compliance Teams, Legal Counsel, Security Architects | expanded | 全球隱私合規進入新階段，執法趨嚴與區域法規激增 |
| CSA | Top 10 Predictions for Agentic AI | AI Security Officers, Enterprise Architects, Security Researchers, Business Leaders | informational | 2026 標誌 Agentic AI 時代全面到來，自我改進系統興起 |
| NIST | Draft NISTIR 8596 | Organizations at any stage of AI adoption, cybersecurity professionals, all sectors | new | 建立首個 AI 網路安全框架配置檔，涵蓋保護 AI 系統、AI 驅動防禦、對抗 AI 攻擊三大領域 |
| NIST | Lessons Learned: Tool Use in Agent Systems | AI developers, deployers, downstream users, researchers, supply chain participants | clarified | 需採用標準化分類法描述代理工具能力與限制，改善供應鏈溝通 |
| NIST | AI Centers for Manufacturing & Critical Infra | AI developers, manufacturing orgs, critical infra operators, federal R&D centers | new | 新設 AI 經濟安全中心，$20M MITRE 合作，$70M Manufacturing USA 計畫 |
| NIST | Managing Cybersecurity and Privacy Risks in AI Age | AI developers, deployers, cybersecurity/privacy professionals | expanded | 資安隱私專業人員需整合 AI RMF 管理新風險 |
| ISO | AI Transparency Taxonomy (12792:2025) | AI stakeholders, ISO 標準實施人員 | new | 發布 AI 系統透明度分類法國際標準 |
| SANS | OpenClaw Detection | Security operations, System admins, AI security specialists, Network security engineers | new | 新型 AI 代理框架 OpenClaw 需建立偵測監控機制 |
| SANS | Anthropic API Scanning | Security analysts, AI infra admins, API security teams | informational | 偵測針對 Anthropic API 端點掃描活動 |
| SANS | AI-Powered Knowledge Graph | security analysts, SOC teams, threat intelligence analysts, incident responders | new | 引入 AI 驅動知識圖譜工具用於威脅情報分析 |

---

## 義務與舉證要求

### 新增義務摘要

**歐盟（EU）**：
- EuroHPC Joint Undertaking 擴展至建立與營運 AI gigafactories
- Joint Undertaking 須成立公共治理機構、管理會員國 RRF 貢獻及存取時間分配
- 會員國須在徵件前承諾資助、提交書面接受聲明，可在 2026-08-31 前分配 RRF 資金
- AI Gigafactory Consortia 須符合技術/環境/安全標準、確保主機協議符合歐盟法律
- 建立 AI 處理器採購框架合約
- 授予合格基礎設施「EuroHPC AI and Compute Infrastructure Seal」
- AI 系統提供者與部署者需重新評估線上環境的合規義務（AI Act 勘誤）

**美國（NIST）**：
- 組織採用 AI 時須同步發展網路安全策略（NISTIR 8596 草案）
- AI 系統開發者與部署者需採用標準化分類法描述代理工具能力與限制
- 採用七種分類方法（功能性、存取模式、風險導向、可靠性、模態、監控、自主性）
- 整合 AI RMF 管理新風險，擴展傳統資安隱私職責
- 評估工具使用的風險層級（危害嚴重性、狀態性、可逆性）
- 建立監控機制與可觀察性層級
- 向下游使用者清楚傳達工具約束與能力

**產業指引（CSA）**：
- 雲原生 AI 系統需採用結構化治理框架
- 實施分階段治理框架導入方案
- 定義並文件化企業系統中的 AI 自主層級
- 建立與自主層級相符的治理機制
- 自主 AI 操作（程式碼執行、基礎設施變更、財務交易）風險評估
- 在 AI agent 部署前建立完整威脅模型
- 將 MAESTRO 七層架構整合至 CI/CD 流程
- 對 coding assistants、autonomous workflows、LLM-powered tools 進行安全評估
- 建立 AI 代理專用 Zero Trust 治理框架（ATF）
- 識別與管理應用程式內嵌 AI 風險
- 擴展 IAM 架構以容納 AI 代理
- 建立 AI 信任證明機制
- AI 系統需具備內在不確定性感知
- 建立 NHI 與 AI 身分管理政策與能力

**國際標準（ISO）**：
- 採用 AI 系統透明度分類法進行透明度評估（ISO/IEC 12792:2025）
- 識別與滿足不同利害關係人的透明度需求

**威脅情報（SANS）**：
- 建立 OpenClaw 等 AI 代理框架偵測與監控機制
- 保護本地部署的 AI 模型 API
- 採用 AI 驅動工具進行威脅情報分析

### 舉證要求摘要

**歐盟（EU）**：
- Consortia 甄選：技術評估（基礎設施品質、工作計畫、永續性）、影響評估（歐盟附加價值、戰略自主性）、財務可行性（投資承諾、經認可金融機構盡職調查）
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
- 系統能力傳達給下游使用者的證據

**產業指引（CSA）**：
- AI 治理框架選擇與導入文件
- 分階段實施計畫與成熟度里程碑
- 分散式 AI 系統治理控制措施
- 治理成熟度評估紀錄
- AI 自主層級分類文件
- AI agent 威脅模型文件
- CI/CD 整合證明
- 安全評估報告
- ATF 實施文件與稽核日誌
- AI 信任框架文件與驗證機制
- AI 不確定性校準方法論文件
- IAM 架構評估報告
- AI agent 身分管理政策
- AI 使用庫存與交易監控分析

---

## L5 — Evolution Signals

1. [系統推論] **AI 代理治理成為獨立領域** — 本期 CSA 連續發布 Agentic Trust Framework、MAESTRO CI/CD 整合、Leveling Up Autonomy、Non-Human Identity Governance 等指引，顯示 AI 代理（Agentic AI）已從 AI 治理的子議題，演化為需要專門框架的獨立領域。傳統身分治理（IGA）與 Zero Trust 架構正在針對非人類身分與自主代理進行根本性調適。CSA/Oasis 調查顯示 79% IT 專業人員認為無法有效防禦 NHI 攻擊，凸顯此領域的急迫性。

2. [系統推論] **美歐在 AI 基礎設施投資呈現分歧策略** — 歐盟透過 EuroHPC 修正案建立「AI gigafactories」集中式投資框架（41.2 億歐元），強調技術主權與戰略自主；美國 NIST 則採分散式策略，新設製造業與關鍵基礎設施 AI 經濟安全中心（$20M MITRE 合作 + $70M Manufacturing USA），著重實務應用與人才培育。兩區域 AI 治理路徑呈現「集中式基礎設施 vs. 分散式應用」的分歧。歐盟明確要求 AI gigafactories 須符合 EU AI Act (Regulation 2024/1689)，顯示其整合 AI 治理與基礎設施投資的意圖。

3. [系統推論] **AI 風險管理從「合規導向」轉向「信任證明」** — CSA「From Security to Proof of AI Trust」提出從安全到信任證明的典範轉移，配合 ISO/IEC 12792:2025 AI 透明度分類標準的發布，顯示全球 AI 治理正從「符合框架要求」轉向「可驗證的信任證明」。NISTIR 8596 草案涵蓋「保護 AI 系統、使用 AI 強化防禦、對抗 AI 驅動攻擊」三大領域，同樣反映此整合趨勢。當 AI 系統以超越人類速度執行操作時，傳統安全協議已不足夠，新典範強調 AI 系統需「證明其可信」而非「被動保護」。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 40 |
| 來源分布 | CSA: 14, NIST Frameworks: 7, ISO: 6, EU: 5, NIST Insights: 5, SANS: 3 |
| rule_type 分布 | guidance: 19, amendment: 5, new: 6, draft: 1, revision: 1, unknown/null: 8 |
| enforcement_signal 分布 | recommended: 23, informational: 5, mandatory: 3, unknown/null: 9 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security, identity, compliance, best_practices | 14 | 2026-01-06 ~ 2026-02-03 |
| nist_frameworks | ai_risk | 7 | 2025-08-05 ~ 2025-12-22 |
| iso_standards | other, information_security, quality_management, it_governance | 6 | 2025-11-11 ~ 2026-02-05 |
| eu_regulations | ai_governance, critical_infrastructure, financial_compliance | 5 | 2026-01-13 ~ 2026-01-28 |
| nist_cybersecurity_insights | ai_risk, workforce, supply_chain | 5 | 2024-09-19 ~ 2025-09-30 |
| sans_isc | threat_analysis | 3 | 2026-02-02 ~ 2026-02-13 |

---

*報告產出時間：2026-02-14*
