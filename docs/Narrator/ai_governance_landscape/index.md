---
layout: default
title: AI Governance Landscape
nav_order: 3
has_children: true
---

# AI Governance Landscape — 2026-02

> 本期追蹤 15 項 AI 治理動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、CSA 雲端安全指引。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

1. **CSA 發布 Agentic Trust Framework（ATF）零信任治理框架**：2026 年 1 月 29 日發布，這是首個專為自主 AI 代理設計的零信任治理規範，要求企業在部署 AI 代理時實施結構化治理控制，同時維持代理自主性。（美國／guidance，recommended）

2. **EU AI Act 勘誤明確線上空間不在適用範圍**：2026 年 1 月 13 日生效的勘誤文件（CELEX:32024R1689R(02)）修正關鍵條文，明確排除線上空間（online spaces）適用，因其並非實體空間，將影響 AI 系統線上部署的合規判定。（歐盟／amendment，mandatory，binding_force: directly_applicable）

3. **CSA 定義 AI 自主性層級治理框架**：2026 年 1 月 26 日發布，提出從簡單任務到自主程式碼執行、基礎設施管理、財務交易的自主性層級分類，要求組織依據不同層級建立相應治理機制。（美國／guidance，recommended）

4. **NIST 持續推動 AI 經濟安全中心計畫**：2025 年 12 月宣布與 MITRE 合作成立兩個中心，分別聚焦製造業 AI 生產力提升與關鍵基礎設施網路威脅防護，開發 AI 代理工具並建立技術評估機制。（美國／new，informational）

5. **CSA 發布雲原生 AI 治理框架採用指南**：2026 年 1 月 13 日發布，針對分散式架構的 AI 治理挑戰，提出分階段採用方法與成熟度考量，強調敏感資料處理與可擴展性需求。（美國／guidance，recommended）

---

## 區域動態比較

### 美國（NIST）

**正式出版物與框架動態：**

| 文件 | document_id | status | 重點 |
|------|------------|--------|------|
| AI 網路安全框架配置檔草案 | NISTIR 8596 | public_comment | 首個整合 CSF 與 AI RMF 的配置檔，三大領域：保護 AI、使用 AI 防禦、抵禦 AI 攻擊 |
| AI 代理工具分類法 | N/A | final | 七種分類方法（功能性、存取模式、風險導向等），改善供應鏈風險溝通 |
| AI 經濟安全中心 | N/A | final | 與 MITRE 合作，聚焦製造業與關鍵基礎設施，開發 AI 代理工具 |
| NCCoE Cyber AI Profile Working Session | N/A | final | 2025 年 8-9 月系列工作坊，涵蓋 AI 系統元件保護 |

**NIST Cybersecurity Insights 洞察：**

| 文件 | 日期 | 主題 |
|------|------|------|
| Managing Cybersecurity and Privacy Risks in the Age of AI | 2024-09-19 | AI RMF 整合網路安全與隱私風險管理 |
| Cybersecurity and AI: Integrating and Building on Existing NIST Guidelines | 2025-05-22 | CSF 與 AI RMF 整合工作坊回顧 |

### 美國（CSA Cloud Security Alliance）

本期新增 CSA 作為重要資料來源，發布 7 項 AI 安全治理指引：

| 文件 | 日期 | 重點 |
|------|------|------|
| Agentic Trust Framework (ATF) | 2026-01-29 | 首個 AI 代理零信任治理規範 |
| Leveling Up Autonomy in Agentic AI | 2026-01-26 | AI 自主性層級分類與治理 |
| AI Governance Framework Adoption in Cloud-Native AI Systems | 2026-01-13 | 雲原生 AI 治理分階段採用方法 |
| From Security to Proof of AI Trust | 2026-01-13 | AI 信任證明機制設計 |
| What if AI Knew When to Say 'I Don't Know'? | 2026-01-21 | AI 不確定性校準與內在感知 |
| What AI Risks Are Hiding in Your Apps? | 2026-01-06 | 應用程式嵌入式 AI 風險識別 |
| Top 10 Predictions for Agentic AI in 2026 | 2026-01-12 | 2026 年 Agentic AI 趨勢預測 |

### 歐盟

| 文件 | document_type | binding_force | 重點 |
|------|--------------|--------------|------|
| AI Act 勘誤（CELEX:32024R1689R(02)） | regulation | directly_applicable | 明確排除線上空間適用，2025/12/19 生效 |
| EuroHPC AI Initiative 勘誤（CELEX:32024R1732R(02)） | corrigendum | binding_regulation | 術語修正（factory → facility），無實質義務變動 |

**EU AI Act 適用範圍修正**：此次勘誤具實質影響，原文誤將線上空間納入適用範圍，修正後明確「線上空間不在適用範圍內，因其並非實體空間」。AI 系統提供者與部署者需重新評估線上環境的合規義務。

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| CSA | Agentic Trust Framework | Security Engineers, Enterprise Architects, Business Leaders, AI System Developers | new | 首個 AI 代理零信任治理規範，要求在代理部署時實施結構化治理控制 |
| CSA | Leveling Up Autonomy | AI System Architects, Security Engineers, Enterprise Risk Officers, Infrastructure Engineers | clarified | 組織需依據 AI 自主性層級建立對應治理機制 |
| CSA | AI Governance Framework Adoption | AI Governance Officers, Cloud Architects, Security Engineers, Compliance Teams | new | 雲原生 AI 系統需採用結構化治理框架應對分散式架構挑戰 |
| CSA | From Security to Proof of AI Trust | Security Engineers, Enterprise Architects, Business Leaders, Audit Teams, AI System Owners | expanded | 自主 AI 系統需建立信任證明機制，現有身份驗證與稽核協議需因應 AI 步調調整 |
| CSA | What AI Risks Are Hiding in Your Apps? | Application Security Teams, AI Risk Officers, Security Operations, API Security Teams | expanded | 組織需識別嵌入式 AI 風險，Gartner 預測 2028 年 95%+ 企業使用 GenAI |
| CSA | AI Uncertainty Calibration | AI System Developers, Security Engineers, AI Governance Teams, Product Managers | new | AI 系統需具備內在不確定性感知，非僅提示式信心表達 |
| NIST | AI 代理工具分類法 | AI developers, AI system deployers, downstream users, researchers, AI supply chain participants | clarified | AI 系統開發者與部署者需採用標準化分類法描述代理工具的能力與限制 |
| NIST | AI 經濟安全中心 | AI developers, manufacturing organizations, critical infrastructure operators, federal R&D centers, technology evaluators | new | 新設兩個中心負責製造業與關鍵基礎設施的 AI 部署與技術評估 |
| NIST Insights | AI 時代風險管理 | AI developers, AI deployers, cybersecurity professionals, privacy engineers | expanded | 網路安全與隱私專業人員需整合 AI RMF 管理新風險 |
| EU | AI Act 勘誤 | AI system providers, AI system deployers, online platform operators, national competent authorities | clarified | 明確排除線上空間適用範圍，修正原條文錯誤描述 |
| EU | EuroHPC 勘誤 | AI startups, EuroHPC Initiative participants, EU member states | clarified | 術語修正（factory → facility），無實質義務變動 |

---

## 義務與舉證要求

### 新增義務摘要

**美國 CSA 領域（Agentic AI 治理）：**

- 對 AI 代理部署實施零信任原則
- 建立自主 AI 行動的治理控制
- 定義並文件化企業系統中的 AI 自主性層級
- 評估自主操作（程式碼執行、基礎設施變更、財務交易）的風險概況
- 開發超越傳統安全的 AI 信任證明機制
- 調整身份驗證、存取控制與稽核協議以適應自主 AI 步調
- 發現應用程式中嵌入的 AI 風險
- 開發具備內在不確定性感知的 AI 系統（非僅效能導向的信心表達）
- 區分 AI 產生不確定性語言的能力與知道何時應表達不確定性

**美國 NIST 領域：**

- AI 開發者應使用共享詞彙描述代理工具的能力與限制
- 採用七種分類方法（功能性、存取模式、風險導向、可靠性、模態、監控、自主性）之一或組合
- 評估工具使用的風險層級（危害嚴重性、狀態性、可逆性）
- 建立監控機制與可觀察性層級
- 向下游使用者清楚傳達工具約束與能力
- 策略性採用 AI 並同步處理新興網路安全風險
- 開發針對 AI 驅動代理應用的技術評估
- 應對對抗性 AI 威脅，降低不安全 AI 系統風險
- 評估 AI 採用對現有基礎設施帶來的新威脅與脆弱性
- 更新供應鏈風險管理策略以納入 AI 元件考量

**歐盟領域：**

- 線上空間（online spaces）不適用 AI Act 規範範圍（binding_force: directly_applicable）
- 實體空間與線上空間需明確分類
- 使用更新術語「artificial intelligence facility」（取代 factory）

### 舉證要求摘要

**CSA 相關（Agentic AI）：**

- ATF 實施文件
- 基於零信任原則的 AI 代理存取策略
- 自主行動的治理控制稽核日誌
- AI 自主性層級分類文件
- 匹配自主性層級的治理框架
- 自主操作的風險評估
- AI 信任框架文件
- 自主 AI 行動的稽核軌跡
- AI 系統的存取控制實施
- AI 操作的信任驗證機制
- 跨應用程式的 AI 使用清單
- AI 交易監控與分析
- GenAI 整合的風險評估
- AI 服務的 API 安全控制
- AI 不確定性校準方法論文件
- 內在與提示式不確定性表達的測試結果

**NIST 相關：**

- 代理工具能力與限制文件，採用標準化詞彙
- 工具分類映射（依功能、存取模式或多維度交集）
- 風險評估報告，涵蓋危害、狀態性與可逆性
- 監控與日誌機制文件
- 自主性層級與使用者介入觸發條件說明
- AI 網路安全策略文件
- AI 系統安全評估
- 防禦性 AI 能力實施證據
- 組織應展示其治理框架已納入 CSF 2.0 Core 的 AI 考量因子
- 需記錄針對 AI 系統元件的風險評估結果

**EU 相關：**

- 實體空間與線上空間之分類證明文件
- AI 系統部署環境說明文件
- 監管文件、補助申請中使用更新術語的證據

---

## L5 — Evolution Signals

1. [系統推論] **Agentic AI 治理成為 2026 年主導議題**：從 CSA 的 Agentic Trust Framework 到自主性層級分類，再到 NIST 的代理工具分類法，顯示自主 AI 系統的治理需求已從概念探討進入實務框架建構階段。企業需為「AI 代理執行有意義行動」建立結構化監督機制。

2. [系統推論] **「信任證明」取代「安全防護」成為新典範**：CSA 多篇文章（From Security to Proof of AI Trust、AI Uncertainty Calibration）顯示，當 AI 系統以超越人類速度執行操作時，傳統安全協議（設計給人類速度、人類監督的情境）已不足夠。新典範強調 AI 系統需「證明其可信」而非「被動保護」。

3. [系統推論] **美歐 AI 治理策略呈現互補態勢**：美國側重技術風險管理框架與實務指引的整合（CSF + AI RMF + CSA ATF），歐盟則專注於法律適用範圍的精確界定（AI Act 勘誤）。EU AI Act 排除線上空間適用可能影響全球 AI 法規的管轄權劃分方式。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 15 |
| 來源分布 | CSA: 7, NIST Frameworks: 4, NIST Insights: 2, EU: 2 |
| rule_type 分布 | guidance: 9, amendment: 2, new: 1, other/null: 3 |
| enforcement_signal 分布 | recommended: 9, informational: 3, mandatory: 1, other/null: 2 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| 標題 | 來源 | 日期 | Category | 連結 |
|------|------|------|----------|------|
| The Agentic Trust Framework: Zero Trust Governance for AI Agents | CSA | 2026-01-29 | ai_security | [連結](https://cloudsecurityalliance.org/articles/the-agentic-trust-framework-zero-trust-governance-for-ai-agents) |
| Leveling Up Autonomy in Agentic AI | CSA | 2026-01-26 | ai_security | [連結](https://cloudsecurityalliance.org/articles/levels-of-autonomy) |
| What if AI Knew When to Say 'I Don't Know'? | CSA | 2026-01-21 | ai_security | [連結](https://cloudsecurityalliance.org/articles/what-if-ai-knew-when-to-say-i-don-t-know) |
| AI Governance Framework Adoption in Cloud-Native AI Systems | CSA | 2026-01-13 | ai_security | [連結](https://cloudsecurityalliance.org/articles/ai-governance-framework-adoption-in-cloud-native-ai-systems-phased-approach-and-considerations) |
| From Security to Proof of AI Trust | CSA | 2026-01-13 | ai_security | [連結](https://cloudsecurityalliance.org/articles/from-security-to-proof-of-ai-trust) |
| My Top 10 Predictions for Agentic AI in 2026 | CSA | 2026-01-12 | ai_security | [連結](https://cloudsecurityalliance.org/articles/my-top-10-predictions-for-agentic-ai-in-2026) |
| What AI Risks Are Hiding in Your Apps? | CSA | 2026-01-06 | ai_security | [連結](https://cloudsecurityalliance.org/articles/what-ai-risks-are-hiding-in-your-apps) |
| Corrigendum to Regulation (EU) 2024/1689 (AI Act) | EU | 2026-01-13 | ai_governance | [連結](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1689R(02)) |
| Corrigendum to Council Regulation (EU) 2024/1732 (EuroHPC AI Initiative) | EU Council | 2026-01-27 | ai_governance | [連結](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1732R(02)) |
| NIST Launches Centers for AI in Manufacturing and Critical Infrastructure | NIST | 2025-12-22 | ai_risk | [連結](https://www.nist.gov/news-events/news/2025/12/nist-launches-centers-ai-manufacturing-and-critical-infrastructure) |
| Draft NIST Guidelines Rethink Cybersecurity for the AI Era | NIST | 2025-12-16 | ai_risk | [連結](https://www.nist.gov/news-events/news/2025/12/draft-nist-guidelines-rethink-cybersecurity-ai-era) |
| Lessons Learned from the Consortium: Tool Use in Agent Systems | NIST | 2025-08-05 | ai_risk | [連結](https://www.nist.gov/news-events/news/2025/08/lessons-learned-consortium-tool-use-agent-systems) |
| NIST NCCoE Cyber AI Profile: Securing AI System Components | NIST | 2025-08-05 | ai_risk | [連結](https://www.nist.gov/news-events/events/2025/08/nist-nccoe-cyber-ai-profile-virtual-working-session-series-securing-ai) |
| Cybersecurity and AI: Integrating and Building on Existing NIST Guidelines | NIST Blog | 2025-05-22 | ai_risk | [連結](https://www.nist.gov/blogs/cybersecurity-insights/cybersecurity-and-ai-integrating-and-building-existing-nist-guidelines) |
| Managing Cybersecurity and Privacy Risks in the Age of AI | NIST Blog | 2024-09-19 | ai_risk | [連結](https://www.nist.gov/blogs/cybersecurity-insights/managing-cybersecurity-and-privacy-risks-age-artificial-intelligence) |
