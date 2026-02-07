---
layout: default
title: "AI Governance Landscape — 2026-02"
parent: AI Governance Landscape
grand_parent: 報告總覽
---

# AI Governance Landscape — 2026-02

> 本期追蹤 9 項 AI 治理動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

1. **NIST 發布首個 AI 網路安全框架配置檔草案（NISTIR 8596）**：2025 年 12 月發布，這是首個整合 CSF 與 AI RMF 的配置檔，涵蓋保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊三大領域。公眾意見徵集至 2026 年 1 月 30 日截止。（美國／draft）

2. **NIST 成立兩個 AI 經濟安全中心**：2025 年 12 月宣布，與 MITRE 公司合作投資 2,000 萬美元，分別聚焦製造業 AI 生產力提升與關鍵基礎設施網路威脅防護，呼應白宮「美國 AI 行動計畫」。（美國／new）

3. **EU AI Act 勘誤明確線上空間不在適用範圍**：2026 年 1 月 13 日生效的勘誤文件（CELEX:32024R1689R(02)）修正關鍵條文，明確排除線上空間（online spaces）適用，因其並非實體空間，將影響 AI 系統線上部署的合規判定。（歐盟／amendment，binding_force: directly_applicable）

4. **NIST AISIC 發布 AI 代理工具分類法指引**：2025 年 8 月發布的工作坊成果，提出七種分類方法（功能性、存取模式、風險導向等），協助供應鏈溝通與風險評估。（美國／guidance）

5. **NIST 持續推動 CSF 與 AI RMF 整合**：2025 年 4-7 月間舉辦多場 Cyber AI Profile 工作坊，探討三大情境（採用 AI 進行資安、防禦 AI 攻擊、保護 AI 系統），並評估 AI 對網路安全人才結構的影響。（美國／guidance）

---

## 區域動態比較

### 美國（NIST）

**正式出版物與框架動態：**

| 文件 | document_id | status | 重點 |
|------|------------|--------|------|
| AI 網路安全框架配置檔草案 | NISTIR 8596 | public_comment | 首個整合 CSF 與 AI RMF 的配置檔，徵集意見至 2026/1/30 |
| AI 代理工具分類法 | — | final | 七種分類方法，改善供應鏈風險溝通 |
| AI 經濟安全中心 | — | final | 與 MITRE 合作，聚焦製造業與關鍵基礎設施 |

**洞察與政策分析：**

- **AI 對資安人才影響**：NICE Framework（SP 800-181 rev.1）正評估 AI 對網路安全工作角色的影響，進行跨部門利害關係人諮詢
- **CSF 與 AI RMF 整合**：2025 年 4 月舉辦工作坊，探討三大情境（採用 AI 進行資安、防禦 AI 攻擊、保護 AI 系統）
- **Cyber AI Profile 研討會**：2025 年 7 月回顧首次研討會成果，整合網路安全與 AI 社群需求
- **AI 時代風險管理計畫**：NIST 推動整合 AI RMF 管理網路安全與隱私風險

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
| NIST | AI 代理工具分類法 | AI developers, AI system deployers, downstream users, researchers, AI supply chain participants | clarified | AI 系統開發者與部署者需採用標準化分類法來描述代理工具的能力與限制 |
| NIST | NISTIR 8596 草案 | Organizations at any stage of AI adoption, cybersecurity professionals, enterprise leadership | new | 建立首個 AI 網路安全框架配置檔，要求組織在採用 AI 時同步發展網路安全策略 |
| NIST | AI 經濟安全中心 | AI developers, manufacturing organizations, critical infrastructure operators, federal R&D centers | new | 新設兩個中心負責製造業與關鍵基礎設施的 AI 部署與技術評估 |
| NIST Insights | AI 時代風險管理 | AI developers, AI deployers, cybersecurity professionals, privacy engineers | expanded | 網路安全與隱私專業人員需整合 AI RMF 管理新風險 |
| NIST Insights | Cyber AI Profile | 網路安全專業人員、AI 系統開發者 | new | 探索建立 Cyber AI Profile，整合網路安全與 AI 社群需求 |
| NIST Insights | AI 對資安人才影響 | Cybersecurity workforce professionals, education providers, industry employers | — | NICE Framework 正評估 AI 對國家數位工作性質的影響 |
| NIST Insights | CSF 與 AI RMF 整合 | Cybersecurity professionals adopting AI, organizations defending against AI-enabled attacks | — | 開發整合 CSF 與 AI RMF 的 profiles，支援三種應用情境 |
| EU | AI Act 勘誤 | AI system providers, AI system deployers, online platform operators | clarified | 明確排除線上空間適用範圍，修正原條文錯誤描述 |
| EU | EuroHPC 勘誤 | AI startups, EuroHPC Initiative participants, EU member states | clarified | 術語修正（factory → facility），無實質義務變動 |

---

## 義務與舉證要求

### 新增義務摘要

**美國 NIST 領域：**

- AI 開發者應使用共享詞彙描述代理工具的能力與限制
- 採用七種分類方法（功能性、存取模式、風險導向、可靠性、模態、監控、自主性）之一或組合
- 評估工具使用的風險層級（危害嚴重性、狀態性、可逆性）
- 建立監控機制與可觀察性層級
- 向下游使用者清楚傳達工具約束與能力
- 策略性採用 AI 並同步處理新興網路安全風險
- 開發針對 AI 驅動代理應用的技術評估
- 應對對抗性 AI 威脅，降低不安全 AI 系統風險

**歐盟領域：**

- 線上空間（online spaces）不適用 AI Act 規範範圍（binding_force: directly_applicable）
- 實體空間與線上空間需明確分類
- 使用更新術語「artificial intelligence facility」（取代 factory）

### 舉證要求摘要

**NIST 相關：**

- 代理工具能力與限制文件，採用標準化詞彙
- 工具分類映射（依功能、存取模式或多維度交集）
- 風險評估報告，涵蓋危害、狀態性與可逆性
- 監控與日誌機制文件
- 自主性層級與使用者介入觸發條件說明
- AI 網路安全策略文件
- AI 系統安全評估
- 防禦性 AI 能力實施證據
- 跨營運領域 AI 風險評估

**EU 相關：**

- 實體空間與線上空間之分類證明文件
- AI 系統部署環境說明文件
- 監管文件、補助申請中使用更新術語的證據

---

## L5 — Evolution Signals

1. [系統推論] **美歐 AI 治理策略呈現互補態勢**：美國 NIST 側重技術風險管理框架與實務指引的整合（CSF + AI RMF），歐盟則專注於法律適用範圍的精確界定（AI Act 勘誤），兩者皆強調「分類清晰」與「責任明確」的核心原則。

2. [系統推論] **AI 代理（AI Agents）成為美國監管新焦點**：從 AISIC 工具分類法到 MITRE 合作的 AI 經濟安全中心，顯示自主性 AI 系統的風險管理需求日益迫切，預期未來將有更多針對代理行為的具體指引。

3. [系統推論] **「線上空間」與「實體空間」的監管邊界釐清**：EU AI Act 勘誤可能影響全球 AI 法規的管轄權劃分方式，特別是對於跨境 AI 服務提供者的合規策略選擇。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 9 |
| 來源分布 | NIST Frameworks: 3, NIST Insights: 4, EU: 2 |
| rule_type 分布 | draft: 1, guidance: 3, new: 1, amendment: 2, blog/workshop: 2 |
| enforcement_signal 分布 | mandatory: 1, recommended: 3, informational: 5 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| 標題 | 來源 | 日期 | Category | 連結 |
|------|------|------|----------|------|
| Draft NIST Guidelines Rethink Cybersecurity for the AI Era | NIST | 2025-12-16 | ai_risk | [連結](https://www.nist.gov/news-events/news/2025/12/draft-nist-guidelines-rethink-cybersecurity-ai-era) |
| NIST Launches Centers for AI in Manufacturing and Critical Infrastructure | NIST | 2025-12-22 | ai_risk | [連結](https://www.nist.gov/news-events/news/2025/12/nist-launches-centers-ai-manufacturing-and-critical-infrastructure) |
| Lessons Learned from the Consortium: Tool Use in Agent Systems | NIST | 2025-08-05 | ai_risk | [連結](https://www.nist.gov/news-events/news/2025/08/lessons-learned-consortium-tool-use-agent-systems) |
| Managing Cybersecurity and Privacy Risks in the Age of AI | NIST Blog | 2024-09-19 | ai_risk | [連結](https://www.nist.gov/blogs/cybersecurity-insights/managing-cybersecurity-and-privacy-risks-age-artificial-intelligence) |
| Reflections from the First Cyber AI Profile Workshop | NIST Blog | 2025-07-31 | ai_risk | [連結](https://www.nist.gov/blogs/cybersecurity-insights/reflections-first-cyber-ai-profile-workshop) |
| The Impact of Artificial Intelligence on the Cybersecurity Workforce | NIST Blog | 2025-06-12 | ai_risk | [連結](https://www.nist.gov/blogs/cybersecurity-insights/impact-artificial-intelligence-cybersecurity-workforce) |
| Cybersecurity and AI: Integrating and Building on Existing NIST Guidelines | NIST Blog | 2025-05-22 | ai_risk | [連結](https://www.nist.gov/blogs/cybersecurity-insights/cybersecurity-and-ai-integrating-and-building-existing-nist-guidelines) |
| Corrigendum to Regulation (EU) 2024/1689 (AI Act) | EU | 2026-01-13 | ai_governance | [連結](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1689R(02)) |
| Corrigendum to Council Regulation (EU) 2024/1732 (EuroHPC AI Initiative) | EU Council | 2026-01-27 | ai_governance | [連結](https://eur-lex.europa.eu/legal-content/AUTO/?uri=CELEX:32024R1732R(02)) |
