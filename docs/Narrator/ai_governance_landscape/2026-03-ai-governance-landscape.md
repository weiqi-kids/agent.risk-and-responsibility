---
layout: report
title: "2026-03 AI Governance Landscape"
parent: "AI Governance Landscape"
nav_order: 97

seo:
  title: "2026-03 AI 治理全景 | ISO 42001 實務指引、Agentic AI 安全深化、AI 資安韌性重構"
  description: "2026 年 3 月 AI 治理月報：追蹤 30 項 AI 治理動態，涵蓋 ISO 42001 AI 管理系統指引、CSA MAESTRO 威脅建模實務應用、AI 代理身分可見性調查、AI 驅動資安韌性重構等重要更新。"
  date_published: "2026-03-01"
  date_modified: "2026-03-03"
  article_section: "AI Governance Landscape"
  keywords:
    - "AI Governance"
    - "ISO 42001"
    - "EU AI Act"
    - "AI 治理"
    - "Agentic AI Security"
    - "MAESTRO Framework"
    - "Non-Human Identity"
    - "AI Risk Management"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/ai_governance_landscape/2026-02-ai-governance-landscape"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W09-rule-change-brief"
  faq:
    - question: "2026 年 3 月有哪些重要的 AI 治理動態？"
      answer: "2026 年 3 月重點包括：ISO 42001 AI 管理系統實務指引發布、CSA 發布 MAESTRO 威脅建模實務應用（OpenClaw 案例）、自主 AI 代理可見性調查揭露僅 21% 組織維護代理登錄冊、AI 驅動資安韌性重構趨勢、以及非人類身分 Token 擴散治理等。"
    - question: "美國與歐盟的 AI 監管有何差異？"
      answer: "歐盟持續透過 EuroHPC AI Gigafactories 與 ReArm Europe 計劃投資基礎設施，強調技術主權；美國 NIST 聚焦 AI 網路安全框架整合（CSF + AI RMF），並推動製造業與關鍵基礎設施 AI 應用。兩區域均重視 AI 系統安全，但歐盟偏重立法與投資，美國偏重框架與指引。"
    - question: "AI 系統開發者需要注意哪些新義務？"
      answer: "主要新義務包括：(1) 依 ISO 42001 建立正式 AI 管理系統(AIMS)；(2) 採用 MAESTRO 七層威脅模型識別 AI 攻擊面；(3) 建立自主 AI 代理的身分登錄冊與可見性治理；(4) 實施非人類身分的全生命週期管理。"
    - question: "什麼是 MAESTRO 威脅建模框架？"
      answer: "MAESTRO 是 Cloud Security Alliance 發布的七層 Agentic AI 威脅建模框架，涵蓋基礎模型、資料操作、代理框架、部署基礎設施、可觀察性、合規控制與代理生態系統。2026 年 2 月 CSA 發布 OpenClaw 案例分析，展示如何將 MAESTRO 應用於實際 Agentic AI 系統。"
    - question: "非人類身分治理為何重要？"
      answer: "CSA 調查顯示非人類 AI 代理身分在部分企業中已達人類身分的 144 倍，Token 擴散、憑證輪換延遲與靜態 API 金鑰長期存在形成持久性攻擊路徑。組織必須將機器憑證的全生命週期管理提升至與人類身分同等的治理水準。"
---

# AI Governance Landscape — 2026-03 {: .no_toc }

<div class="key-takeaway">
本月重點：ISO 42001 AI 管理系統實務指引發布，為組織建立正式 AIMS 提供路線圖；CSA 連續深化 Agentic AI 安全實務，MAESTRO 框架完成首個實戰案例（OpenClaw）；自主 AI 代理可見性調查揭露僅 21% 組織維護代理登錄冊；AI 驅動攻擊加速迫使資安架構從反應式修補轉向結構性韌性。
</div>

> 本期追蹤 30 項 AI 治理動態，涵蓋 CSA 雲端安全（18 項）、歐盟法規（5 項）、NIST 洞察（4 項）、NIST 框架（2 項）、ISO 標準（1 項）。

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
| 資料來源 | 30 個權威來源（NIST、EUR-Lex、CSA、ISO 等） |
| 資料時間 | 2024-09-19 ~ 2026-02-26 |

</div>

{% include report-toc.html %}

---

## 本月重點

<p class="key-answer" data-question="本月有哪些重要的 AI 治理動態">
  <strong>ISO 42001 AI 管理系統實務指引發布</strong>，CSA 提供完整 FAQ 指引，協助組織建立正式 AI 管理系統（AIMS），包含角色定義、AI 系統影響評估、風險註冊表與持續監控，為 AI 治理從抽象原則走向可操作框架。
</p>

1. **ISO 42001 AI 管理系統實務指引** — CSA 於 2026-01-13 發布「AI Governance and ISO 42001 FAQs」，提供組織導入 ISO 42001 AI 管理系統（AIMS）的實務路線圖。核心要求包括：定義組織在 AI 供應鏈中的角色、執行 AI 系統影響評估、維護風險註冊表、建立適用性聲明（Statement of Applicability），並將治理政策與技術工具（模型卡、MLOps 控制、偏見測試）配對。建議採用聯邦模型——集中問責與分散執行。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026)）

2. **MAESTRO 威脅建模首個實戰案例** — CSA 於 2026-02-17 發布「OpenClaw Threat Model」，以開源 Agentic AI 系統 OpenClaw 為案例，展示 MAESTRO 七層威脅模型的實務應用。分析涵蓋基礎模型對抗性提示注入（Critical — Layer 1）、明文憑證儲存與狀態目錄暴露（Critical — Layer 2）、工具濫用與未授權指令執行（Layer 3）等攻擊面。此為 MAESTRO 從理論框架進入實務驗證的重要里程碑。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/openclaw-threat-model-maestro-framework-analysis)）

3. **自主 AI 代理可見性調查** — CSA 於 2026-02-03 發布「The Visibility Gap in Autonomous AI Agents」調查報告，揭露嚴重的 AI 代理治理缺口：僅 21% 組織維護實時代理登錄冊、僅 45% 具備端對端 session tracing、僅 28% 可完整追溯跨環境的代理動作。報告建議建立涵蓋持續探索、實時登錄、動作追溯與審計可觀察性的全面代理身分治理計劃。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/the-visibility-gap-in-autonomous-ai-agents)）

4. **AI 驅動資安韌性重構** — CSA 於 2026-02-26 發布「Core Collapse: How AI Is Reforging Cybersecurity Foundations」，指出 AI 加速威脅從根本改變攻防不對稱性，攻擊者在有限問題空間中運作而防禦者須保護一切。安全團隊須從反應式修補和特徵碼偵測轉向結構性韌性、縱深防禦與架構邊界強化。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/core-collapse)）

5. **非人類身分 Token 擴散治理** — CSA 於 2026-02-03 發布「Token Sprawl in the Age of AI」，基於 CSA-Oasis Security 調查指出 AI 採用加速非人類身分（API 金鑰、Token、服務帳戶）擴散，超過 16% 組織尚未實作集中身分建立追蹤，近 24% 無法在 24 小時內完成憑證輪換。建議將機器憑證的全生命週期管理提升至與人類身分同等的治理水準。（來源：CSA，rule_type: guidance，enforcement: recommended，[source](https://cloudsecurityalliance.org/articles/token-sprawl-in-the-age-of-ai)）

<blockquote class="expert-quote">
  「組織必須建立正式的 AI 管理系統（AIMS），將治理嵌入開發 pipeline——包含偏見測試、多樣化抽樣標準、持續漂移監控，並使用模型無關的可解釋性工具，要求可解釋文件作為部署閘道。」
  <cite>Cloud Security Alliance, AI Governance and ISO 42001 FAQs (2026-01-13)</cite>
</blockquote>

<blockquote class="expert-quote">
  「AI 加速的威脅從根本改變了攻防不對稱性：攻擊者在有限問題空間中運作，而防禦者必須保護一切。安全團隊須從反應式修補轉向結構性韌性與架構邊界強化。」
  <cite>Cloud Security Alliance, Core Collapse: How AI Is Reforging Cybersecurity Foundations (2026-02-26)</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 在 AI 治理方面有哪些新進展">
  <strong>NIST 持續推動 AI 網路安全框架整合</strong>，NISTIR 8596 草案公眾意見徵詢期已結束（截止 2026-01-30），NCCoE Cyber AI Profile 持續發展中，同時 NIST 啟動 AI 資安隱私風險管理專案強化 AI RMF 與 CSF 整合。
</p>

**NIST Frameworks（2 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| [Draft NIST Guidelines Rethink Cybersecurity for the AI Era](https://www.nist.gov/news-events/news/2025/12/draft-nist-guidelines-rethink-cybersecurity-ai-era) | 2025-12-16 | NISTIR 8596 | public_comment（意見徵詢已截止 2026-01-30） | 首個整合 CSF 與 AI RMF 的 AI 網路安全框架配置檔，涵蓋保護 AI 系統、AI 驅動防禦、對抗 AI 攻擊三大領域 |
| [NCCoE Cyber AI Profile: Securing AI System Components](https://www.nist.gov/news-events/events/2025/08/nist-nccoe-cyber-ai-profile-virtual-working-session-series-securing-ai) | 2025-08-05 | CSF 2.0 Core | public_comment | AI 系統元件安全工作坊，組織需擴展資安治理框架涵蓋 AI 系統元件威脅與脆弱性 |

**NIST Cybersecurity Insights（4 項）**：

| 文件 | 發布日期 | 重點 |
|------|----------|------|
| [Reflections from the First Cyber AI Profile Workshop](https://www.nist.gov/blogs/cybersecurity-insights/reflections-first-cyber-ai-profile-workshop) | 2025-07-31 | CSF 與 AI RMF 整合 Profile 工作坊，支援三大情境：AI 資安防護、防禦 AI 攻擊、保護 AI 系統 |
| [The Impact of AI on the Cybersecurity Workforce](https://www.nist.gov/blogs/cybersecurity-insights/impact-artificial-intelligence-cybersecurity-workforce) | 2025-06-12 | AI 對資安人才的影響分析 |
| [Cybersecurity and AI: Integrating and Building on Existing NIST Guidelines](https://www.nist.gov/blogs/cybersecurity-insights/cybersecurity-and-ai-integrating-and-building-existing-nist-guidelines) | 2025-05-22 | 整合 CSF 與 AI RMF profiles 構想，涵蓋三場景 |
| [Managing Cybersecurity and Privacy Risks in the Age of AI](https://www.nist.gov/blogs/cybersecurity-insights/managing-cybersecurity-and-privacy-risks-age-artificial-intelligence) | 2024-09-19 | NIST AI 資安隱私風險管理專案啟動 |

### 國際標準（ISO）

<p class="key-answer" data-question="ISO 在 AI 治理方面有哪些新標準">
  <strong>ISO/IEC 12792:2025 AI 透明度分類法</strong>發布，提供 AI 利害關係人識別與處理透明度需求的結構化分類框架，為 EU AI Act 等法規要求的透明度義務提供技術標準支撐。
</p>

| 標準 | 發布日期 | Document ID | 技術委員會 | 重點 |
|------|----------|-------------|------------|------|
| [AI Transparency Taxonomy of AI Systems](https://www.iso.org/standard/84111.html) | 2025-11-11 | ISO/IEC 12792:2025 | ISO/IEC JTC 1/SC 42 | 定義 AI 系統透明度資訊元素的分類法，協助不同利害關係人識別與處理透明度需求 |

### 產業指引（CSA Cloud Security Alliance）

本期 CSA 發布 18 項 AI 安全治理指引，持續為最活躍的指引來源。重點聚焦於 **Agentic AI 安全深化**、**非人類身分治理**及 **AI 驅動資安架構轉型**三大主軸：

**Agentic AI 安全（8 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [Core Collapse: How AI Is Reforging Cybersecurity Foundations](https://cloudsecurityalliance.org/articles/core-collapse) | 2026-02-26 | AI 加速威脅改變攻防不對稱性，須從反應式修補轉向結構性韌性 |
| [Agentic AI and the New Reality of Financial Security](https://cloudsecurityalliance.org/articles/agentic-ai-and-the-new-reality-of-financial-security) | 2026-02-17 | 金融與醫療領域的 Agentic AI 生產環境安全模型 |
| [OpenClaw Threat Model: MAESTRO Framework Analysis](https://cloudsecurityalliance.org/articles/openclaw-threat-model-maestro-framework-analysis) | 2026-02-17 | MAESTRO 七層威脅模型首個實戰案例（OpenClaw） |
| [IAM Delivered at Agent Velocity](https://cloudsecurityalliance.org/articles/ai-security-iam-delivered-at-agent-velocity) | 2026-02-11 | AI 代理以每分鐘 5,000 次操作運行，須轉向自動化政策驅動授權 |
| [The Visibility Gap in Autonomous AI Agents](https://cloudsecurityalliance.org/articles/the-visibility-gap-in-autonomous-ai-agents) | 2026-02-03 | 僅 21% 組織維護實時代理登錄冊 |
| [Applying MAESTRO to Real-World Agentic AI Threat Models](https://cloudsecurityalliance.org/articles/applying-maestro-to-real-world-agentic-ai-threat-models-from-framework-to-ci-cd-pipeline) | 2026-02-03 | MAESTRO 整合至 CI/CD pipeline 實務 |
| [Agentic Trust Framework (ATF)](https://cloudsecurityalliance.org/articles/the-agentic-trust-framework-zero-trust-governance-for-ai-agents) | 2026-01-29 | 首個 AI 代理 Zero Trust 治理規範 |
| [提升代理式 AI 的自主性等級](https://cloudsecurityalliance.org/articles/levels-of-autonomy) | 2026-01-26 | AI 自主性層級分類與治理框架 |

**非人類身分治理（5 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [When Authorization Outlives Intent](https://cloudsecurityalliance.org/articles/ai-security-when-authorization-outlives-intent) | 2026-02-11 | 非人類身分已達人類身分 144:1，授權漂移風險加劇 |
| [Token Sprawl in the Age of AI](https://cloudsecurityalliance.org/articles/token-sprawl-in-the-age-of-ai) | 2026-02-03 | AI 加速 NHI Token 擴散，16%+ 組織未實作集中追蹤 |
| [Time-to-Trust Survey](https://cloudsecurityalliance.org/articles/cloud-security-alliance-strata-survey-finds-that-enterprises-are-in-time-to-trust-phase-as-they-build-ai-autonomy-foundations) | 2026-02-03 | 企業處於「Time-to-Trust」階段，IAM 需擴展 |
| [Non-Human Identity Governance: Why IGA Falls Short](https://cloudsecurityalliance.org/articles/non-human-identity-governance-why-iga-falls-short) | 2026-01-27 | 傳統 IGA 無法應對非人類身分治理需求 |
| [From Security to Proof of AI Trust](https://cloudsecurityalliance.org/articles/from-security-to-proof-of-ai-trust) | 2026-01-13 | AI 信任證明機制設計 |

**AI 治理與合規（5 項）**：

| 文件 | 日期 | 重點 |
|------|------|------|
| [AI Governance and ISO 42001 FAQs](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026) | 2026-01-13 | ISO 42001 AIMS 導入實務路線圖 |
| [Global Privacy Trends 2026](https://cloudsecurityalliance.org/articles/global-privacy-trends-and-best-practices-for-compliance-in-2026) | 2026-01-13 | 全球隱私合規進入新階段，AI 採用審查增加 |
| [The Great Divide: How AI Is Splitting the Cybersecurity Landscape](https://cloudsecurityalliance.org/articles/the-great-divide-how-ai-is-splitting-the-cybersecurity-landscape) | 2026-01-27 | AI 正在分裂資安格局，採用者與未採用者差距擴大 |
| [First Question Security Should Ask on AI Projects](https://cloudsecurityalliance.org/articles/the-first-question-security-should-ask-on-ai-projects) | 2026-01-09 | 安全團隊需以「Why」問題引導 AI 專案 |
| [What AI Risks Are Hiding in Your Apps?](https://cloudsecurityalliance.org/articles/what-ai-risks-are-hiding-in-your-apps) | 2026-01-06 | 應用程式嵌入式 AI 風險識別 |

### 歐盟

<p class="key-answer" data-question="歐盟在 AI 治理方面有哪些新進展">
  <strong>歐盟持續推動 AI 基礎設施投資與法規修正</strong>，Council Regulation (EU) 2026/150 擴展 EuroHPC 至 AI Gigafactories（41.2 億歐元），同時 ReArm Europe 計劃將國防相關投資激勵延伸至 AI 與網路安全領域。
</p>

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| [Corrigendum to AI Act (EU) 2024/1689 R(02)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689) | 2026-01-13 | CELEX:32024R1689 | amendment | directly_applicable | 修正 recital 19：明確排除線上空間適用範圍（effective: 2025-12-19） |
| [Council Regulation (EU) 2026/150](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150) | 2026-01-23 | CELEX:32026R0150 | amendment | directly_applicable | 擴展 EuroHPC JU 至 AI gigafactories 與量子技術，41.2 億歐元（effective: 2026-01-20） |
| [Regulation (EU) 2026/150 (Official Journal)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150) | 2026-01-19 | CELEX:32026R0150 | amendment | directly_applicable | 同上，發布於 Official Journal |
| [Corrigendum to (EU) 2024/1732 R(02)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1732) | 2026-01-27 | CELEX:32024R1732 | corrigendum | binding_regulation | 術語更正：「AI factory」改為「AI facility」（愛沙尼亞語版本） |
| [Regulation (EU) 2025/2653 — ReArm Europe Plan](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32025R2653) | 2026-01-14 | CELEX:32025R2653 | revision | directly_applicable | 國防相關投資激勵，跨歐盟預算計劃調整 |

---

## 責任變動追蹤

<p class="key-answer" data-question="AI 治理責任有哪些變動">
  <strong>本期責任變動集中於三大領域</strong>：(1) AI 管理系統正式化（ISO 42001）；(2) 非人類身分治理從 IAM 子議題升級為獨立治理要求；(3) AI 威脅建模從通用安全框架分化為專門的 MAESTRO 方法論。
</p>

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| CSA | AI Governance and ISO 42001 FAQs | AI 治理團隊、CISO、合規團隊、AI 系統開發者、董事會、Chief AI Officer | new | 組織必須建立正式 AI 管理系統(AIMS)，包含角色定義、AI 系統影響評估、風險評估與持續監控 |
| CSA | OpenClaw Threat Model: MAESTRO | Security architects, AI/ML engineers, DevSecOps teams | new | 組織部署 Agentic AI 系統時須應用 MAESTRO 七層威脅模型識別 AI 特定攻擊面 |
| CSA | Visibility Gap in Autonomous AI Agents | 安全團隊、雲端架構師、IAM 專業人員、企業治理負責人 | new | 必須建立全面的代理身分治理計劃，含持續探索、實時登錄、動作追溯 |
| CSA | Core Collapse | Security architects, CISOs, security operations teams, MSSPs | expanded | AI 加速威脅要求從反應式修補轉向結構性韌性與架構邊界強化 |
| CSA | Agentic AI and Financial Security | CISOs, security architects, financial services/healthcare security teams | expanded | 金融與醫療領域 Agentic AI 生產環境須重新定義安全模型 |
| CSA | When Authorization Outlives Intent | IAM teams, security architects, CISOs, SaaS platform operators | new | 非人類身分達人類 144:1，須實施生命週期感知授權 |
| CSA | Token Sprawl in the Age of AI | 雲端基礎設施團隊、AI/ML 運維人員、DevOps、SOC | expanded | 機器憑證全生命週期管理須提升至與人類身分同等治理水準 |
| CSA | IAM Delivered at Agent Velocity | 安全/IAM 團隊、SOC 團隊、合規/GRC 團隊 | expanded | 傳統同意式授權架構已不適用，須轉向自動化政策驅動授權 |
| CSA | Time-to-Trust Survey | CISO, IAM Architects, Security Engineers | expanded | IAM 架構需擴展以容納 AI 代理 |
| CSA | Applying MAESTRO to CI/CD Pipeline | 安全團隊、開發人員、AppSec 團隊、雲端架構師 | new | 傳統 SAST/STRIDE 無法識別 agentic AI 跨層信任邊界違規 |
| CSA | Great Divide: AI Splitting Cybersecurity | CISO、安全團隊、董事會、合規團隊 | expanded | AI 正在分裂資安格局，採用者與未採用者差距擴大 |
| CSA | NHI Governance: Why IGA Falls Short | IAM 團隊、安全團隊、雲端架構師、稽核人員 | expanded | 傳統 IGA 無法應對非人類身分治理需求 |
| CSA | From Security to Proof of AI Trust | Security Engineers, Enterprise Architects, Audit Teams | expanded | 自主 AI 系統需建立信任證明機制 |
| CSA | Global Privacy Trends 2026 | DPO, Privacy Officers, Compliance Teams | expanded | 全球隱私合規進入新階段，AI 採用審查增加 |
| ISO | ISO/IEC 12792:2025 | ISO 標準實施人員、AI 系統開發者 | new | 發布 AI 透明度分類法國際標準 |
| EU | AI Act Corrigendum R(02) | AI system providers, deployers, online platform operators | clarified | 明確排除線上空間適用範圍 |
| EU | Council Regulation 2026/150 | EuroHPC JU, Member States, AI gigafactory consortia | expanded | 擴展 EuroHPC 至 AI gigafactories，41.2 億歐元 |
| EU | EuroHPC AI Initiative Corrigendum | AI startups, EuroHPC participants, Member States | clarified | 術語更正（factory → facility） |
| EU | ReArm Europe Plan | EU funding programme administrators, defence industry SMEs | expanded | 國防相關投資激勵延伸至 AI 與網路安全領域 |
| NIST | Draft NISTIR 8596 | Organizations at any stage of AI adoption, cybersecurity professionals | new | 建立首個 AI 網路安全框架配置檔 |
| NIST | Managing Cybersecurity and Privacy Risks in AI Age | AI developers, cybersecurity/privacy professionals | expanded | 資安隱私專業人員需整合 AI RMF 管理新風險 |
| NIST | Reflections from Cyber AI Profile Workshop | Cybersecurity and AI communities, AI system operators | expanded | CSF 與 AI RMF 整合 Profile 發展中 |
| NIST | Impact of AI on Cybersecurity Workforce | Cybersecurity workforce, hiring managers, educators | informational | AI 對資安人才影響分析 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="AI 系統開發者需要注意哪些新義務">
  <strong>主要新義務涵蓋四大領域</strong>：(1) 依 ISO 42001 建立正式 AI 管理系統(AIMS)；(2) 採用 MAESTRO 七層威脅模型識別 AI 攻擊面；(3) 建立自主 AI 代理的身分登錄冊與可見性治理；(4) 實施非人類身分的全生命週期管理。
</p>

**國際標準（ISO）**：
- 依 ISO 42001 建立正式 AI 管理系統（AIMS），定義組織在 AI 供應鏈中的角色（使用者、提供者或開發者）
- 執行 AI 系統影響評估，評估每個 AI 系統的範圍、目的與潛在影響
- 維護風險註冊表並持續監控風險
- 建立適用性聲明（SoA），記錄 Annex A 控制適用性與排除理由
- 實施偏見測試、多樣化抽樣標準、持續漂移監控
- 使用模型無關的可解釋性工具，要求可解釋文件作為部署閘道
- 採用聯邦模型——集中問責與分散執行
- （來源：[CSA — ISO 42001 FAQs](https://cloudsecurityalliance.org/articles/ai-governance-and-iso-42001-faqs-what-organizations-need-to-know-in-2026)）

**歐盟（EU）**：
- EuroHPC Joint Undertaking 擴展至建立與營運 AI gigafactories
- 會員國須於 2026-08-31 前完成 RRF 資金轉移
- AI Gigafactory Consortia 須符合技術/環境/安全標準
- AI 系統提供者與部署者需重新評估線上環境的合規義務（AI Act 勘誤）
- ReArm Europe 計劃下，國防相關 AI 與網路安全投資激勵調整
- （來源：[EU AI Act Corrigendum](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689)、[Council Regulation 2026/150](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32026R0150)、[ReArm Europe](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32025R2653)）

**美國（NIST）**：
- 組織採用 AI 時須同步發展網路安全策略（NISTIR 8596 草案，公眾意見徵詢期已截止）
- 涵蓋保護 AI 系統、使用 AI 強化防禦、建立對抗 AI 驅動攻擊韌性三大領域
- 整合 AI RMF 管理新風險，擴展傳統資安隱私職責
- （來源：[Draft NISTIR 8596](https://www.nist.gov/news-events/news/2025/12/draft-nist-guidelines-rethink-cybersecurity-ai-era)）

**產業指引（CSA）**：
- 部署 Agentic AI 系統時須應用 MAESTRO 七層威脅模型，識別跨基礎模型、資料操作、代理框架等攻擊面
- 建立自主 AI 代理的實時登錄冊與全面可見性治理（僅 21% 組織已實施）
- 實施生命週期感知授權，採用短期 Token（5-15 分鐘）搭配自動更新機制
- 集中記錄 AI 相關身分建立事件，將未知憑證視為安全發現項目
- 金融與醫療領域須重新定義 Agentic AI 生產環境安全模型
- 對 RAG/記憶體系統視為潛在注入向量進行建模
- 安全團隊需以「Why」問題引導 AI 專案，避免 FOMO 驅動採用
- （來源：[MAESTRO OpenClaw](https://cloudsecurityalliance.org/articles/openclaw-threat-model-maestro-framework-analysis)、[Visibility Gap](https://cloudsecurityalliance.org/articles/the-visibility-gap-in-autonomous-ai-agents)、[Token Sprawl](https://cloudsecurityalliance.org/articles/token-sprawl-in-the-age-of-ai)）

### 舉證要求摘要

**國際標準（ISO）**：
- AI 管理系統（AIMS）文件與內部稽核報告
- AI 系統影響評估文件
- 風險註冊表與適用性聲明（SoA）
- 偏見測試與漂移監控紀錄
- 模型卡與可解釋性文件

**歐盟（EU）**：
- AI Gigafactory Consortia 甄選：技術評估、影響評估、財務可行性
- 持續合規：年度稽核報告（每年 1 月 31 日前）、SLA、治理機構批准紀錄
- 實體空間與線上空間之分類證明文件
- AI 系統部署環境說明文件

**美國（NIST）**：
- AI 網路安全策略文件
- AI 系統安全評估
- 監控與日誌機制文件

**產業指引（CSA）**：
- 實時代理登錄冊（調查顯示僅 21% 組織維護）
- 端對端 session tracing 記錄（僅 45% 組織具備）
- 跨環境的代理動作追溯能力（僅 28% 可完整追溯）
- MAESTRO layer 威脅分析文件
- 自動化威脅掃描結果整合至 CI/CD pipeline
- AI 相關身分建立的集中事件追蹤記錄（超過 16% 組織尚未實作）
- 24 小時內完成憑證輪換/撤銷的能力佐證（近 24% 組織超時）
- 非人類身分的生命週期管理文件，對標 NIST 金鑰管理原則

---

## L5 — Evolution Signals

<p class="key-answer" data-question="AI 治理未來趨勢是什麼">
  <strong>三大趨勢持續深化</strong>：(1) Agentic AI 安全從理論框架進入實務驗證階段；(2) 非人類身分治理正催生獨立的技術標準需求；(3) AI 驅動威脅正迫使資安架構進行根本性重構。
</p>

1. [系統推論] **Agentic AI 安全從理論框架進入實務驗證** — 上期 CSA 發布 Agentic Trust Framework 與 Levels of Autonomy 等理論框架，本期 MAESTRO 完成首個實戰案例（OpenClaw 威脅建模），並發展出整合至 CI/CD pipeline 的實務方法論。可見性調查報告的量化數據（21% 登錄冊、45% tracing、28% 追溯）則揭露了理論與實務之間的巨大落差。這表明 Agentic AI 安全正快速從「建立框架」進入「驗證與填補差距」的新階段。

2. [系統推論] **非人類身分治理催生獨立技術標準需求** — 本期密集出現的 NHI 治理指引（Token Sprawl、Authorization Drift、NHI Governance、Time-to-Trust Survey）顯示非人類身分管理已超越傳統 IAM 的延伸，正朝獨立技術領域發展。CSA 調查數據（NHI 與人類身分比例 144:1）及 ISO/IEC 12792:2025 AI 透明度分類法的發布，暗示未來可能出現專門的非人類身分治理國際標準。

3. [系統推論] **AI 驅動威脅迫使資安架構根本性重構** — CSA「Core Collapse」明確指出 AI 加速威脅從根本改變攻防不對稱性，傳統基於邊界、特徵碼與反應式修補的安全架構已不適用。結合「Agentic AI and Financial Security」對金融/醫療領域的分析，以及「The Great Divide」對 AI 採用者與未採用者差距擴大的觀察，這一趨勢的深度與廣度均超出上期預期，正從「局部調適」演變為「架構層級的根本性重構」。

---

## 統計

<p class="key-answer" data-question="本期 AI 治理動態有多少項">
  <strong>本期追蹤 30 項 AI 治理動態</strong>，CSA 以 18 項佔多數，歐盟法規 5 項，NIST 洞察 4 項，NIST 框架 2 項，ISO 標準 1 項。
</p>

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | CSA: 18, EU: 5, NIST Insights: 4, NIST Frameworks: 2, ISO: 1 |
| rule_type 分布 | guidance: 19, amendment: 4, draft: 1, new: 1, revision: 1, unknown: 4 |
| enforcement_signal 分布 | recommended: 22, mandatory: 4, informational: 4 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security, identity, compliance, best_practices | 18 | 2026-01-06 ~ 2026-02-26 |
| eu_regulations | ai_governance, critical_infrastructure, financial_compliance | 5 | 2026-01-13 ~ 2026-01-27 |
| nist_cybersecurity_insights | ai_risk, workforce | 4 | 2024-09-19 ~ 2025-07-31 |
| nist_frameworks | ai_risk | 2 | 2025-08-05 ~ 2025-12-16 |
| iso_standards | other | 1 | 2025-11-11 |

---

*報告產出時間：2026-03-01*
