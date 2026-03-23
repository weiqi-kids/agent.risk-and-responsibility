---
layout: report
last_modified_at: 2026-03-23
title: "2026-03 AI Governance Landscape"
parent: "AI Governance Landscape"
nav_order: 97

seo:
  title: "2026-03 AI 治理全景 | AI Controls Matrix、Agentic AI 授權重構、ISO 42001 深化"
  description: "2026 年 3 月 AI 治理月報：追蹤 30 項 AI 治理動態，涵蓋 CSA AI Controls Matrix 獲獎、Agentic AI 授權架構重構、ISO 42001 認證實務深化、EU AI Act 勘誤與 EuroHPC AI Gigafactories 擴展等重要更新。"
  date_published: "2026-03-01"
  date_modified: "2026-03-23"
  article_section: "AI Governance Landscape"
  keywords:
    - "AI Governance"
    - "AI Controls Matrix"
    - "ISO 42001"
    - "EU AI Act"
    - "AI 治理"
    - "Agentic AI Security"
    - "Non-Human Identity"
    - "AI Risk Management"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/ai_governance_landscape/2026-02-ai-governance-landscape/"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W13-rule-change-brief/"
  faq:
    - question: "2026 年 3 月有哪些重要的 AI 治理動態？"
      answer: "2026 年 3 月重點包括：CSA AI Controls Matrix（AICM）獲 2026 CSO Awards 認可，成為業界首個供應商無關的生成式 AI 控制框架；Agentic AI 授權架構從護欄轉向全生命週期治理控制層；ISO 42001 認證實務指引持續深化；MAESTRO 威脅建模完成 OpenClaw 實戰案例；EU AI Act 勘誤修正線上空間適用範圍。"
    - question: "美國與歐盟的 AI 監管有何差異？"
      answer: "歐盟透過 Council Regulation 2026/150 擴展 EuroHPC 至 AI Gigafactories（41.2 億歐元），強調技術主權與基礎設施投資；美國 NIST 持續推動 NISTIR 8596 草案整合 CSF 與 AI RMF，聚焦框架與指引。CSA 作為國際產業組織發布 AICM 與 MAESTRO 等實務框架，彌合兩區域之間的技術落地差距。"
    - question: "AI 系統開發者需要注意哪些新義務？"
      answer: "主要新義務包括：(1) 依 ISO 42001 建立正式 AI 管理系統(AIMS)；(2) 採用 CSA AICM 作為 AI 開發與運營的控制基準；(3) 建立涵蓋 AI 代理整個執行生命週期的控制層；(4) 實施 MAESTRO 七層威脅模型；(5) 建立自主 AI 代理的身分登錄冊與可見性治理。EU AI Act Article 14 將於 2026 年 8 月開始執行。"
    - question: "什麼是 CSA AI Controls Matrix（AICM）？"
      answer: "AI Controls Matrix（AICM）是 Cloud Security Alliance 發布的業界首個供應商無關的生成式 AI 控制框架，於 2026 年 3 月獲 CSO Awards 認可。該框架為開發、實施及運營 AI 技術提供安全與責任性的控制基準，可與 ISO 42001、NIST AI RMF 等框架整合使用。"
    - question: "非人類身分治理為何重要？"
      answer: "CSA 多項調查顯示非人類 AI 代理身分在部分企業中已達人類身分的 144 倍，Token 擴散、憑證輪換延遲與靜態 API 金鑰形成持久性攻擊路徑。CSA 引入 MTU（Mean Time to Understand）作為身分治理核心 SLO，要求組織將 AI 代理的授權可觀測性提升至與人類用戶相同層級。"
---

# AI Governance Landscape — 2026-03 {: .no_toc }

<div class="key-takeaway">
本月重點：CSA AI Controls Matrix（AICM）獲 2026 CSO Awards 認可，成為業界首個供應商無關的生成式 AI 控制框架；Agentic AI 治理從「護欄」升級為「全生命週期控制層」，授權架構引入 MTU 指標；ISO 42001 認證實務持續深化，第三方審計角色釐清；MAESTRO 威脅建模完成 OpenClaw 實戰案例與 CI/CD 整合；EU AI Act Article 14 將於 2026 年 8 月執行，違規罰款最高 3,500 萬歐元。
</div>

> 本期追蹤 30 項 AI 治理動態，涵蓋 CSA 雲端安全（21 項）、歐盟法規（3 項）、NIST 框架（2 項）、NIST 洞察（2 項）、ISO 標準（1 項）、SANS ISC（1 項）。

## 免責聲明 {: .no_toc }

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.6） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 30 個權威來源（NIST、EUR-Lex、CSA、ISO、SANS ISC 等） |
| 資料時間 | 2024-09-19 ~ 2026-03-16 |

</div>

{% include report-toc.html %}

---

## 本月重點

<p class="key-answer" data-question="本月有哪些重要的 AI 治理動態">
  <strong>CSA AI Controls Matrix（AICM）獲 2026 CSO Awards 認可</strong>，成為業界首個供應商無關的生成式 AI 控制框架，為組織提供 AI 開發與運營的安全與責任性控制基準；同時 Agentic AI 治理從輸出過濾護欄升級為全生命週期控制層。
</p>

1. **CSA AI Controls Matrix（AICM）獲獎** — CSA 於 2026-03-06 宣布 AI Controls Matrix（AICM）獲 2026 CSO Awards 認可。AICM 為業界首個供應商無關的生成式 AI 控制框架，為開發、實施及運營 AI 技術提供安全與責任性的控制基準，可整合至 AI 採購與供應商評估流程。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/csa-ai-controls-matrix-named-2026-cso-awards-winner)）

2. **Agentic AI 從護欄到治理控制層** — CSA 於 2026-03-16 發布「From Guardrails to Governance」，指出隨著 AI 從對話型助理演進為自主代理，企業安全控制的重心必須從「輸出過濾護欄」擴展為「全生命週期治理控制層」，對 AI 代理的工具存取、資料存取及外部系統呼叫實施治理控制。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/from-guardrails-to-governance-why-enterprise-ai-needs-a-control-layer)）

3. **ISO 42001 認證實務深化** — CSA 於 2026-01-13 及 2026-03-03 連續發布 ISO 42001 實務指引。前者提供完整 FAQ 路線圖（角色定義、AI 系統影響評估、風險註冊表、適用性聲明），後者由 Schellman 主題專家釐清 ISO 42001 的適用範圍、設計對象及第三方審計者角色。建議採用聯邦模型——集中問責與分散執行。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026)）

4. **MAESTRO 威脅建模首個實戰案例** — CSA 於 2026-02-17 發布「OpenClaw Threat Model」，以開源 Agentic AI 系統 OpenClaw 為案例，展示 MAESTRO 七層威脅模型的實務應用。SANS ISC 亦於 2026-02-03 發布 OpenClaw 偵測與監控指引，提供 openclaw-detect 掃描工具與 openclaw-telemetry 監控插件。（來源：CSA + SANS ISC，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/openclaw-threat-model-maestro-framework-analysis)）

5. **AI 代理授權架構引入 MTU 指標** — CSA 於 2026-03-16 發布「Rethinking Authorization for the Age of Agentic AI」，引入「Mean Time to Understand（MTU）」作為身分治理的核心 SLO，要求組織將 AI 代理的授權可觀測性提升至與人類用戶相同層級。同時指出 AI 代理跨越多個獨立信任域時，需要建立跨域身分擔保機制（2026-03-03）。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/rethinking-authorization-for-the-age-of-agentic-ai)）

<blockquote class="expert-quote">
  「隨著 AI 從對話型助理演進為自主代理，企業安全控制的重心必須從『輸出過濾護欄』擴展為『全生命週期治理控制層』——對 AI 代理的工具存取、資料存取及外部系統呼叫實施治理控制。」
  <cite>Cloud Security Alliance, From Guardrails to Governance (2026-03-16)</cite>
</blockquote>

<blockquote class="expert-quote">
  「ISO 42001 非常產業無關且廣泛採用，這真正強化認證的價值主張。結合 ISO 42001 認證與 AI-CAIQ 控制的組織可達成 CSA STAR for AI Level 2。」
  <cite>Cloud Security Alliance, AI Governance and ISO 42001 FAQs (2026-01-13)</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 在 AI 治理方面有哪些新進展">
  <strong>NIST 持續推動 AI 網路安全框架整合</strong>，NISTIR 8596 草案公眾意見徵詢期已截止（2026-01-30），NCCoE Cyber AI Profile 持續發展中，NIST 資安隱私風險管理專案聚焦 AI RMF 與 CSF 整合三大情境。
</p>

**NIST Frameworks（2 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| [Draft NIST Guidelines Rethink Cybersecurity for the AI Era](https://www.nist.gov/news-events/news/2025/12/draft-nist-guidelines-rethink-cybersecurity-ai-era) | 2025-12-16 | NISTIR 8596 | public_comment（意見徵詢已截止 2026-01-30） | 首個整合 CSF 與 AI RMF 的 AI 網路安全框架配置檔，涵蓋保護 AI 系統、AI 驅動防禦、對抗 AI 攻擊三大領域 |
| [NCCoE Cyber AI Profile: Securing AI System Components](https://www.nist.gov/news-events/events/2025/08/nist-nccoe-cyber-ai-profile-virtual-working-session-series-securing-ai) | 2025-08-05 | CSF 2.0 Core | public_comment | AI 系統元件安全工作坊，組織需擴展資安治理框架涵蓋 AI 系統元件威脅與脆弱性 |

**NIST Cybersecurity Insights（2 項）**：

| 文件 | 發布日期 | 重點 |
|------|----------|------|
| [Reflections from the First Cyber AI Profile Workshop](https://www.nist.gov/blogs/cybersecurity-insights/reflections-first-cyber-ai-profile-workshop) | 2025-07-31 | CSF 與 AI RMF 整合 Profile 工作坊，支援三大情境：AI 資安防護、防禦 AI 攻擊、保護 AI 系統 |
| [Managing Cybersecurity and Privacy Risks in the Age of AI](https://www.nist.gov/blogs/cybersecurity-insights/managing-cybersecurity-and-privacy-risks-age-artificial-intelligence) | 2024-09-19 | NIST AI 資安隱私風險管理專案啟動，聚焦三大風險來源 |

### 國際標準（ISO）

<p class="key-answer" data-question="ISO 在 AI 治理方面有哪些新標準">
  <strong>ISO/IEC 12792:2025 AI 透明度分類法</strong>發布，提供 AI 利害關係人識別與處理透明度需求的結構化分類框架，為 EU AI Act 等法規要求的透明度義務提供技術標準支撐。
</p>

| 標準 | 發布日期 | Document ID | 技術委員會 | 重點 |
|------|----------|-------------|------------|------|
| [AI Transparency Taxonomy of AI Systems](https://www.iso.org/standard/84111.html) | 2025-11-11 | ISO/IEC 12792:2025 | ISO/IEC JTC 1/SC 42 | 定義 AI 系統透明度資訊元素的分類法，協助不同利害關係人識別與處理透明度需求 |

### 產業指引（CSA Cloud Security Alliance）

<p class="key-answer" data-question="CSA 在 AI 治理方面發布了哪些指引">
  <strong>本期 CSA 發布 21 項 AI 安全治理指引</strong>，持續為最活躍的指引來源。重點聚焦 AI 控制框架正式化（AICM）、Agentic AI 授權架構重構、非人類身分治理深化與 AI 驅動資安架構轉型四大主軸。
</p>

**AI 控制框架與合規（6 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [AI Controls Matrix (AICM) Named 2026 CSO Awards Winner](https://cloudsecurityalliance.org/articles/csa-ai-controls-matrix-named-2026-cso-awards-winner) | 2026-03-06 | 業界首個供應商無關的生成式 AI 控制框架獲獎 |
| [AI Governance and ISO 42001 FAQs](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026) | 2026-01-13 | ISO 42001 AIMS 導入實務路線圖 |
| [Understanding ISO 42001: Responsible AI Governance](https://cloudsecurityalliance.org/articles/understanding-iso-42001-responsible-ai-governance-in-an-evolving-regulatory-landscape) | 2026-03-03 | ISO 42001 適用範圍、設計對象及第三方審計者角色釐清 |
| [How AI is Simplifying Multi-Framework Cloud Compliance](https://cloudsecurityalliance.org/articles/how-ai-is-simplifying-multi-framework-cloud-compliance-for-csa-star-assessments) | 2026-03-03 | AI 輔助多框架合規評估（CSA STAR） |
| [Global Privacy Trends 2026](https://cloudsecurityalliance.org/articles/global-privacy-trends-and-best-practices-for-compliance-in-2026) | 2026-01-13 | 全球隱私合規進入新階段，AI 採用審查增加 |
| [AI in GRC: Friend, Foe, or FOMO?](https://cloudsecurityalliance.org/articles/ai-in-grc-friend-foe-or-fomo) | 2026-02-26 | GRC 流程中 AI 採用的效益與風險平衡 |

**Agentic AI 安全與授權（9 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [From Guardrails to Governance](https://cloudsecurityalliance.org/articles/from-guardrails-to-governance-why-enterprise-ai-needs-a-control-layer) | 2026-03-16 | AI 安全控制從護欄升級為全生命週期控制層 |
| [Rethinking Authorization for Agentic AI](https://cloudsecurityalliance.org/articles/rethinking-authorization-for-the-age-of-agentic-ai) | 2026-03-16 | 引入 MTU 指標作為身分治理核心 SLO |
| [When Your Agent Crosses Multiple Systems](https://cloudsecurityalliance.org/articles/ai-security-when-your-agent-crosses-multiple-independent-systems-who-vouches-for-it) | 2026-03-03 | AI 代理跨域身分擔保機制需求 |
| [Core Collapse: How AI Is Reforging Cybersecurity](https://cloudsecurityalliance.org/articles/core-collapse) | 2026-02-26 | AI 加速威脅改變攻防不對稱性，須轉向結構性韌性 |
| [Agentic AI and Financial Security](https://cloudsecurityalliance.org/articles/agentic-ai-and-the-new-reality-of-financial-security) | 2026-02-17 | 金融與醫療領域 Agentic AI 生產環境安全模型 |
| [OpenClaw Threat Model: MAESTRO Analysis](https://cloudsecurityalliance.org/articles/openclaw-threat-model-maestro-framework-analysis) | 2026-02-17 | MAESTRO 七層威脅模型首個實戰案例 |
| [IAM Delivered at Agent Velocity](https://cloudsecurityalliance.org/articles/ai-security-iam-delivered-at-agent-velocity) | 2026-02-11 | AI 代理每分鐘 5,000 次操作，須轉向自動化政策驅動授權 |
| [Agentic Trust Framework (ATF)](https://cloudsecurityalliance.org/articles/the-agentic-trust-framework-zero-trust-governance-for-ai-agents) | 2026-01-29 | 首個 AI 代理 Zero Trust 治理規範 |
| [Leveling Up Autonomy in Agentic AI](https://cloudsecurityalliance.org/articles/levels-of-autonomy) | 2026-01-26 | AI 自主性層級分類與治理框架 |

**非人類身分治理（4 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [When Authorization Outlives Intent](https://cloudsecurityalliance.org/articles/ai-security-when-authorization-outlives-intent) | 2026-02-11 | NHI 已達人類身分 144:1，授權漂移風險；EU AI Act Art.14 將於 2026-08 執行 |
| [Token Sprawl in the Age of AI](https://cloudsecurityalliance.org/articles/token-sprawl-in-the-age-of-ai) | 2026-02-03 | AI 加速 NHI Token 擴散，16%+ 組織未實作集中追蹤 |
| [Time-to-Trust Survey](https://cloudsecurityalliance.org/articles/cloud-security-alliance-strata-survey-finds-that-enterprises-are-in-time-to-trust-phase-as-they-build-ai-autonomy-foundations) | 2026-02-03 | 企業處於「Time-to-Trust」階段，IAM 需擴展 |
| [From Security to Proof of AI Trust](https://cloudsecurityalliance.org/articles/from-security-to-proof-of-ai-trust) | 2026-01-13 | AI 信任證明機制：簽署意圖、範圍授權、證據為基礎的歸因 |

**AI 風險評估與策略（2 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [The Visibility Gap in Autonomous AI Agents](https://cloudsecurityalliance.org/articles/the-visibility-gap-in-autonomous-ai-agents) | 2026-02-03 | 僅 21% 組織維護實時代理登錄冊 |
| [The Great Divide: How AI Is Splitting the Cybersecurity Landscape](https://cloudsecurityalliance.org/articles/the-great-divide-how-ai-is-splitting-the-cybersecurity-landscape) | 2026-01-27 | AI 採用者與未採用者差距擴大，CISO 角色從合規執行者演變為財務策略家 |

### 威脅情報（SANS ISC）

| 文件 | 日期 | 重點 |
|------|------|------|
| [Detecting and Monitoring OpenClaw](https://isc.sans.edu/diary/rss/32678) | 2026-02-03 | OpenClaw 偵測工具（openclaw-detect）與監控插件（openclaw-telemetry）發布 |

### 歐盟

<p class="key-answer" data-question="歐盟在 AI 治理方面有哪些新進展">
  <strong>歐盟持續推動 AI 基礎設施投資與法規修正</strong>，Council Regulation (EU) 2026/150 擴展 EuroHPC 至 AI Gigafactories（41.2 億歐元），AI Act 第二次勘誤修正線上空間適用範圍。
</p>

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| [Council Regulation (EU) 2026/150](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150) | 2026-01-23 | CELEX:32026R0150 | regulation (amendment) | directly_applicable | 擴展 EuroHPC JU 至 AI gigafactories 與量子技術，41.2 億歐元（effective: 2026-01-20），會員國 RRF 資金轉移截止 2026-08-31 |
| [Corrigendum to AI Act (EU) 2024/1689 R(02)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689) | 2026-01-13 | CELEX:32024R1689R(02) | corrigendum | directly_applicable | 修正 recital 19：明確排除線上空間適用範圍（effective: 2025-12-19） |
| [Corrigendum to (EU) 2024/1732 R(02)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1732) | 2026-01-27 | CELEX:32024R1732R(02) | corrigendum | binding_regulation | 術語更正：「AI factory」改為「AI facility」（愛沙尼亞語版本） |

**EU AI Act 關鍵時程提醒**：
- **2026-08-02**：EU AI Act Article 14 人類監督要求開始執行，違規罰款最高 EUR 35M 或全球營收 7%
- **2026-08-31**：會員國 RRF（復原與韌性基金）資金轉移至 EuroHPC JU 截止

---

## 責任變動追蹤

<p class="key-answer" data-question="AI 治理責任有哪些變動">
  <strong>本期責任變動集中於四大領域</strong>：(1) AI 控制框架正式化（AICM 獲獎認可）；(2) Agentic AI 安全控制從護欄升級為全生命週期治理控制層；(3) 非人類身分治理引入 MTU 指標與跨域擔保機制；(4) ISO 42001 認證實務從導入指引深化至第三方審計定位。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| CSA | AICM Named 2026 CSO Awards Winner | AI Security Architects, Compliance Officers, Risk Managers | new | 業界首個供應商無關的生成式 AI 控制框架獲獎認可 |
| CSA | From Guardrails to Governance | CISOs, AI Governance Teams, Enterprise Architects | expanded | AI 安全控制從輸出過濾護欄擴展為全生命週期治理控制層 |
| CSA | Rethinking Authorization for Agentic AI | Identity Architects, IAM Engineers, Security Operations | new | 引入 MTU 指標作為身分治理核心 SLO |
| CSA | When Your Agent Crosses Multiple Systems | IAM Architects, Security Engineers, CISOs | new | AI 代理跨域時需跨域身分擔保機制 |
| CSA | AI Governance and ISO 42001 FAQs | AI 治理團隊、CISO、合規團隊、董事會 | new | 組織必須建立正式 AI 管理系統(AIMS) |
| CSA | Understanding ISO 42001 | Compliance Officers, AI Governance Teams, Third-Party Auditors | clarified | 釐清 ISO 42001 適用範圍與第三方審計者角色 |
| CSA | How AI is Simplifying Multi-Framework Compliance | 雲端架構師、合規工程師、CISO | expanded | AI 工具擴展多框架合規評估能力 |
| CSA | AI in GRC: Friend, Foe, or FOMO? | CISO、GRC 負責人、安全工程師 | clarified | 釐清 GRC 流程中 AI 採用的效益與風險平衡 |
| CSA | OpenClaw Threat Model: MAESTRO | Security architects, AI/ML engineers, DevSecOps teams | new | 須應用 MAESTRO 七層威脅模型識別 AI 特定攻擊面 |
| CSA | Visibility Gap in Autonomous AI Agents | 安全團隊、雲端架構師、IAM 專業人員 | new | 必須建立全面的代理身分治理計劃 |
| CSA | Core Collapse | Security architects, CISOs, security operations teams | expanded | AI 加速威脅要求從反應式修補轉向結構性韌性 |
| CSA | Agentic AI and Financial Security | CISOs, financial/healthcare security teams | expanded | 金融與醫療領域須重新定義 Agentic AI 安全模型 |
| CSA | When Authorization Outlives Intent | IAM teams, security architects, CISOs | new | NHI 達人類 144:1，須實施生命週期感知授權 |
| CSA | Token Sprawl in the Age of AI | 雲端基礎設施團隊、AI/ML 運維人員 | expanded | 機器憑證全生命週期管理提升至人類身分同等治理水準 |
| CSA | IAM Delivered at Agent Velocity | 安全/IAM 團隊、SOC 團隊、合規/GRC 團隊 | expanded | 傳統同意式授權架構已不適用，須轉向政策驅動授權 |
| CSA | Agentic Trust Framework (ATF) | Security Engineers, Enterprise Architects | new | 首個 AI 代理 Zero Trust 治理規範 |
| CSA | The Great Divide: AI Splitting Cybersecurity | CISO、安全團隊、董事會、合規團隊 | expanded | CISO 角色從合規執行者演變為財務策略家 |
| CSA | Time-to-Trust Survey | CISO, IAM Architects, Security Engineers | expanded | IAM 架構需擴展以容納 AI 代理 |
| CSA | From Security to Proof of AI Trust | AI 系統開發者、安全團隊、IAM 架構師 | expanded | 從假設 AI 安全轉向證明，建立信任證明機制 |
| CSA | What AI Risks Are Hiding in Your Apps? | Application Security Teams, AI Risk Officers | expanded | 應用程式嵌入式 AI 風險識別，AI 交易量年增 36 倍 |
| CSA | The First Question Security Should Ask | Security Teams, AI Project Leaders, Risk Officers | clarified | 安全團隊需以「Why」問題引導 AI 專案 |
| SANS ISC | Detecting and Monitoring OpenClaw | Security operations teams, AI security specialists | new | OpenClaw 偵測與監控工具發布 |
| ISO | ISO/IEC 12792:2025 | ISO 標準實施人員、AI 系統開發者 | new | 發布 AI 透明度分類法國際標準 |
| EU | AI Act Corrigendum R(02) | AI system providers, deployers, online platform operators | clarified | 明確排除線上空間適用範圍 |
| EU | Council Regulation 2026/150 | EuroHPC JU, Member States, AI gigafactory consortia | expanded | 擴展 EuroHPC 至 AI gigafactories，41.2 億歐元 |
| NIST | Draft NISTIR 8596 | Organizations at any stage of AI adoption | new | 建立首個 AI 網路安全框架配置檔（草案） |
| NIST | Managing Cybersecurity and Privacy Risks in AI Age | AI developers, cybersecurity/privacy professionals | expanded | 資安隱私專業人員需整合 AI RMF 管理新風險 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="AI 系統開發者需要注意哪些新義務">
  <strong>主要新義務涵蓋五大領域</strong>：(1) 採用 AICM 作為 AI 開發與運營的控制基準；(2) 依 ISO 42001 建立正式 AI 管理系統(AIMS)；(3) 建立涵蓋 AI 代理整個執行生命週期的控制層；(4) 實施 MAESTRO 七層威脅模型；(5) 準備 EU AI Act Article 14 執行合規（2026-08）。
</p>

**AI 控制框架（CSA AICM）**：
- 採用 AICM 作為 AI 開發與運營的控制基準
- 依照 AICM 評估現有 AI 系統的安全性與責任性
- 將 AICM 控制項整合至 AI 採購與供應商評估流程
- （來源：[CSA AICM](https://cloudsecurityalliance.org/articles/csa-ai-controls-matrix-named-2026-cso-awards-winner)）

**國際標準（ISO 42001）**：
- 依 ISO 42001 建立正式 AI 管理系統（AIMS），定義組織在 AI 供應鏈中的角色
- 執行 AI 系統影響評估，維護風險註冊表並持續監控
- 建立適用性聲明（SoA），實施偏見測試與持續漂移監控
- 使用模型無關的可解釋性工具，要求可解釋文件作為部署閘道
- 採用聯邦模型——集中問責與分散執行
- （來源：[ISO 42001 FAQs](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026)、[Understanding ISO 42001](https://cloudsecurityalliance.org/articles/understanding-iso-42001-responsible-ai-governance-in-an-evolving-regulatory-landscape)）

**Agentic AI 治理（CSA）**：
- 建立涵蓋 AI 代理整個執行生命週期的控制層，涵蓋工具存取、資料存取及外部系統呼叫
- 部署 Agentic AI 系統時須應用 MAESTRO 七層威脅模型識別攻擊面
- 定義並追蹤 MTU（Mean Time to Understand）作為授權治理指標
- 建立 AI 代理跨越多個獨立系統時的統一身分擔保機制
- 建立自主 AI 代理的實時登錄冊與全面可見性治理（僅 21% 組織已實施）
- 實施生命週期感知授權，採用短期 Token（5-15 分鐘）搭配自動更新機制
- 為 AI 代理發行專屬身分，與使用者憑證分開管理
- （來源：[From Guardrails to Governance](https://cloudsecurityalliance.org/articles/from-guardrails-to-governance-why-enterprise-ai-needs-a-control-layer)、[Rethinking Authorization](https://cloudsecurityalliance.org/articles/rethinking-authorization-for-the-age-of-agentic-ai)、[OpenClaw MAESTRO](https://cloudsecurityalliance.org/articles/openclaw-threat-model-maestro-framework-analysis)）

**歐盟（EU）**：
- EuroHPC Joint Undertaking 擴展至建立與營運 AI gigafactories
- 會員國須於 2026-08-31 前完成 RRF 資金轉移
- AI Gigafactory Consortia 須符合技術/環境/安全標準
- AI 系統提供者與部署者需重新評估線上環境的合規義務（AI Act 勘誤）
- **EU AI Act Article 14 將於 2026-08-02 開始執行**，違規罰款最高 EUR 35M 或全球營收 7%
- （來源：[AI Act Corrigendum](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689)、[Council Regulation 2026/150](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150)）

**美國（NIST）**：
- 組織採用 AI 時須同步發展網路安全策略（NISTIR 8596 草案，公眾意見徵詢期已截止）
- 涵蓋保護 AI 系統、使用 AI 強化防禦、建立對抗 AI 驅動攻擊韌性三大領域
- 整合 AI RMF 管理新風險，擴展傳統資安隱私職責
- （來源：[Draft NISTIR 8596](https://www.nist.gov/news-events/news/2025/12/draft-nist-guidelines-rethink-cybersecurity-ai-era)）

### 舉證要求摘要

**AI 控制框架（AICM）**：
- AICM 控制項合規評估記錄
- AI 系統安全性自評報告

**國際標準（ISO 42001）**：
- AI 管理系統（AIMS）文件與內部稽核報告
- AI 系統影響評估文件與風險註冊表
- 適用性聲明（SoA）
- 偏見測試與漂移監控紀錄、模型卡與可解釋性文件

**Agentic AI 治理（CSA）**：
- AI 代理執行日誌與操作審計記錄
- 控制層政策文件
- 實時代理登錄冊（僅 21% 組織維護）
- 端對端 session tracing 記錄（僅 45% 組織具備）
- 跨環境的代理動作追溯能力（僅 28% 可完整追溯）
- 授權事件日誌（足以支援 MTU 計算）
- 跨域存取日誌與 token 使用記錄
- MAESTRO 七層威脅分析文件

**歐盟（EU）**：
- AI Gigafactory Consortia：技術評估、影響評估、財務可行性
- 年度稽核報告（每年 1 月 31 日前）、SLA、治理機構批准紀錄
- 實體空間與線上空間之分類證明文件
- EU AI Act Article 14 合規文件：證明每個 AI 動作在執行時已獲授權

**美國（NIST）**：
- AI 網路安全策略文件
- AI 系統安全評估與監控日誌

---

## L5 — Evolution Signals

<p class="key-answer" data-question="AI 治理未來趨勢是什麼">
  <strong>三大趨勢持續演進加速</strong>：(1) AI 控制框架從碎片化走向標準化整合；(2) Agentic AI 治理從身分管理升級為全生命週期授權架構；(3) 監管執行壓力逼近臨界點。
</p>

1. [系統推論] **AI 控制框架從碎片化走向標準化整合** — AICM 獲 CSO Awards 認可標誌著 AI 安全控制從各自為政的指引走向產業認可的標準化框架。結合 ISO 42001 認證實務的持續深化（CSA 連續發布 FAQ 與第三方審計指引）、以及 AI 輔助多框架合規工具的出現（CSA STAR），顯示 AI 治理正從「需要什麼框架」的探索階段進入「如何整合並落地執行」的成熟階段。AICM 與 ISO 42001 的互補定位（前者聚焦 AI 安全控制，後者聚焦管理系統）預計將推動更多組織採用整合式 AI 治理方案。

2. [系統推論] **Agentic AI 治理從身分管理升級為全生命週期授權架構** — 上期觀察到非人類身分治理催生獨立技術標準需求，本期 CSA 進一步深化：從「護欄到治理」（Guardrails to Governance）重新定義控制範圍、引入 MTU 指標量化治理效能、建立跨域身分擔保機制。這三個發展串聯起來，顯示 Agentic AI 治理正從「解決 Token 擴散」的戰術層級，升級為涵蓋授權發放、執行時驗證、跨域擔保與可觀測性的完整授權架構。2025 年 7 月 Replit AI 代理事件（數秒刪除 1,206 筆記錄）與 Salesloft Drift 事件（700+ 公司受影響）持續作為此趨勢的催化劑。

3. [系統推論] **監管執行壓力逼近臨界點** — EU AI Act Article 14 將於 2026-08-02 開始執行（罰款最高 EUR 35M 或全球營收 7%），EuroHPC RRF 資金轉移截止日為 2026-08-31，兩個截止日期幾乎重疊。結合 NISTIR 8596 公眾意見徵詢期已截止（正式版預計 2026 年內發布），以及 CSA 密集發布的實務指引（本期 21 項），顯示監管框架、技術標準與產業實務正同步收斂。2026 年下半年可能成為 AI 治理從「建議」轉向「強制」的轉折點。

---

## 統計

<p class="key-answer" data-question="本期 AI 治理動態有多少項">
  <strong>本期追蹤 30 項 AI 治理動態</strong>，CSA 以 21 項佔多數，歐盟法規 3 項，NIST 框架 2 項，NIST 洞察 2 項，ISO 標準 1 項，SANS ISC 1 項。
</p>

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | CSA: 21, EU: 3, NIST Frameworks: 2, NIST Insights: 2, ISO: 1, SANS ISC: 1 |
| rule_type 分布 | guidance: 24, amendment: 3, new: 1, draft: 1, unknown: 1 |
| enforcement_signal 分布 | recommended: 24, mandatory: 4, informational: 1, unknown: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security, identity, compliance, best_practices | 21 | 2026-01-06 ~ 2026-03-16 |
| eu_regulations | ai_governance, critical_infrastructure | 3 | 2026-01-13 ~ 2026-01-27 |
| nist_frameworks | ai_risk | 2 | 2025-08-05 ~ 2025-12-16 |
| nist_cybersecurity_insights | ai_risk | 2 | 2024-09-19 ~ 2025-07-31 |
| iso_standards | other | 1 | 2025-11-11 |
| sans_isc | threat_analysis | 1 | 2026-02-03 |

---

*報告產出時間：2026-03-23*
