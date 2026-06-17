---
layout: report
last_modified_at: 2026-06-17
title: "2026-06 AI Implementation Guide"
parent: "AI Implementation Guide"
nav_order: 94

seo:
  title: "2026-06 AI 實作技術指引 | Agent 身分授權、MCP 治理、ORCHIDEAS 設計"
  description: "本月 AI 實作重點：AI Agent 執行時授權與短期憑證、MCP 七大風險治理、ORCHIDEAS 結構即安全設計、ISO/IEC TS 42112 訓練效率優化。含實作清單、程式碼範例、常見陷阱。"
  date_published: "2026-06-17"
  date_modified: "2026-06-17"
  article_section: "AI Implementation Guide"
  keywords:
    - "AI Implementation"
    - "Agentic AI Security"
    - "AI Agent Identity"
    - "MCP Security"
    - "ORCHIDEAS Framework"
    - "ISO 42001"
    - "AI 實作"
    - "Runtime Authorization"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/ai_implementation_guide/2026-03-ai-implementation-guide/"
    - "https://risk.weiqi.kids/docs/Narrator/ai_governance_landscape/2026-06-ai-governance-landscape/"
  faq:
    - question: "2026 年 6 月有哪些 AI 實作要點？"
      answer: "2026 年 6 月 AI 實作指引涵蓋五大重點：為 AI Agent 簽發目的綁定的專用身分並採用執行時授權（task-scoped、5-15 分鐘短期 token）、依 CSA 七大 MCP 風險建立 Model Context Protocol 治理框架、採用 ORCHIDEAS 九支柱「結構即安全」設計將安全嵌入代理系統架構、依 ISO/IEC TS 42112:2026 優化機器學習訓練效率、以及採用 RiskRubric V2 標準化評估 AI 模型/MCP 伺服器/AI 代理的風險。"
    - question: "如何為 AI Agent 設計執行時授權（runtime authorization）？"
      answer: "CSA 建議四項做法：為 AI Agent 簽發與使用者憑證分離的專用身分；採用任務範圍憑證（task-scoped credentials，5-15 分鐘短期 token）取代長效 token；在執行當下（decision-time）而非簽發時驗證授權；任務完成後可跨系統即時撤銷。此設計回應 EU AI Act 第 14 條人工監督要求，2026 年 8 月 2 日開始執行，違規最高罰 €35M 或全球營收 7%。"
    - question: "MCP（Model Context Protocol）有哪些安全風險需要治理？"
      answer: "CSA 指出 MCP 成為自主 AI Agent 控制平面後的七大風險，包含內容注入攻擊（content-injection）、過度授權的 Agent（over-privileged agents）、供應鏈風險、可見性不足與治理缺口。組織應在 MCP 驅動的自動化進入生產前，建立涵蓋 Agent 權限最小化的治理框架、MCP 使用資產清單與授權記錄，並驗證連接器的 OAuth 範圍。"
    - question: "常見的 AI 實作陷阱有哪些？"
      answer: "最常見的四項陷阱：(1) 將以人為核心的同意式授權套用於每分鐘 5,000 次操作的 AI Agent，導致同意疲勞與授權失控；(2) 僅用 SAST/STRIDE 等傳統工具進行威脅建模，無法識別 agentic 系統的跨層信任邊界違規；(3) 將安全當作事後附加而非從設計初期嵌入架構；(4) 直接信任 AI 生成程式碼——Veracode 測試顯示 52% 程式設計任務產出含漏洞程式碼。"
    - question: "為什麼授權會「比意圖活得更久」（authorization outlives intent）？"
      answer: "AI Agent 的長效 OAuth token 與機器憑證在任務目的結束後仍保持有效，形成授權蔓延（authorization drift）。2025 年 Salesloft Drift 事件中，被竊的 OAuth token 在簽發數月後仍可使用，影響 700 多個組織。部分企業非人類身分（NHI）對人類身分比例高達 144:1，使憑證稽核與即時撤銷成為必要的生命週期控制。"
---

# AI Implementation Guide — 2026-06 {: .no_toc }

<div class="key-takeaway">
本月重點：為 AI Agent 簽發目的綁定的專用身分並採用執行時授權（task-scoped、5-15 分鐘短期 token），取代以人為核心的同意式授權；依 CSA 七大 MCP 風險建立 Model Context Protocol 治理框架；採用 ORCHIDEAS 九支柱「結構即安全」設計，將安全從設計初期嵌入代理系統架構而非事後附加。
</div>

> 本期聚焦 12 項 AI 治理要求的技術實作，涵蓋 NIST、CSA（MAESTRO、ORCHIDEAS、AICM、RiskRubric V2）與 ISO/IEC（42001、TS 42112）等權威指引。

## 免責聲明

本指引由 AI 系統自動產出，基於公開框架與標準萃取技術實作建議。
內容僅供參考，實際實作需考慮組織特定情境與技術架構。
建議在正式採用前由工程團隊與領域專家審閱。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 21 個權威來源（NIST、CSA、ISO/IEC 等） |
| 資料時間 | 2025-08-05 ~ 2026-06-05 |

</div>

---

{% include report-toc.html %}

---

## 本月實作清單

<p class="key-answer" data-question="2026 年 6 月有哪些 AI 實作要點">
  <strong>核心任務是把 AI Agent 的授權從「簽發時長效」轉為「執行時短期」</strong>：為每個 Agent 簽發目的綁定的專用身分、採用 5-15 分鐘任務範圍 token、在決策當下驗證授權，並建立 MCP 治理框架與結構化的代理安全設計。
</p>

### 必做項目

- [ ] 為 AI Agent 簽發專用身分並採用執行時授權
  - 來源：CSA「IAM Delivered at Agent Velocity」、「When Authorization Outlives Intent」
  - 優先級：高
  - 說明：與使用者憑證分離的 Agent 身分，搭配 task-scoped（5-15 分鐘）短期 token，於執行當下驗證授權並可跨系統即時撤銷。

- [ ] 建立 MCP（Model Context Protocol）治理框架
  - 來源：CSA「7 MCP Risks CISOs Should Consider」
  - 優先級：高
  - 說明：在 MCP 驅動自動化進入生產前，建立 Agent 權限最小化、MCP 資產清單與授權記錄，並緩解內容注入攻擊。

- [ ] 對 Agentic AI 系統實施跨層威脅建模並整合 CI/CD
  - 來源：CSA MAESTRO「Applying MAESTRO to Real-World Agentic AI Threat Models」
  - 優先級：高
  - 說明：傳統 SAST/STRIDE 無法識別跨層信任邊界違規，需採用 agentic-aware 掃描器並在程式碼變更時自動觸發威脅掃描。

- [ ] 建立 AI 代理身分治理與可觀測性（代理登錄冊 + session tracing）
  - 來源：CSA「The Visibility Gap in Autonomous AI Agents」、「Rethinking Authorization」
  - 優先級：高
  - 說明：維護實時代理登錄冊（含所有者、環境、認證），建立端對端 session tracing，並追蹤 MTU（Mean Time to Understand）SLO。

### 建議項目

- [ ] 採用 ORCHIDEAS 九支柱「結構即安全」設計框架
  - 來源：CSA「Designing Agentic AI Systems with the ORCHIDEAS Framework」
  - 優先級：中
  - 說明：將安全作為結構屬性從設計初期嵌入，整合 MAESTRO 跨層分析、意圖型存取控制（IBAC）與 OpenTelemetry GenAI 可觀測性。

- [ ] 依 ISO/IEC TS 42112:2026 優化機器學習訓練效率
  - 來源：ISO/IEC TS 42112:2026（JTC 1/SC 42）
  - 優先級：中
  - 說明：採用結構化特徵架構評估與比較 ML 訓練策略，記錄訓練效率評估報告。

- [ ] 採用 RiskRubric V2 標準化評估 AI 模型、MCP 伺服器與 AI 代理
  - 來源：CSA「RiskRubric Updates: AI Risk Assessment for the Agentic Era」
  - 優先級：中
  - 說明：以聯合掃描器（multi-scanner）取代單一評估者，並以「過度代理性」（占評分權重 16%）取代「聲譽」維度。（注：V2 仍為 draft，預計 Q3 2026 發布）

- [ ] 將 AI 生成程式碼納入與人工程式碼相同的安全開發審查
  - 來源：CSA「Top 6 Claude Security Risks」
  - 優先級：中
  - 說明：Veracode 測試顯示 52% 程式設計任務產出含漏洞程式碼，Snyk 發現逾三分之一審計技能含安全缺陷，須納入 SAST/SCA 與人工審查。

---

## 框架映射表

<table class="comparison-table">
  <thead>
    <tr>
      <th>實作領域</th>
      <th>NIST AI RMF</th>
      <th>NIST CSF 2.0</th>
      <th>ISO 42001</th>
      <th>CSA 對應</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>風險評估</td>
      <td>MAP 1.x</td>
      <td>ID.RA-*</td>
      <td>6.1</td>
      <td>RiskRubric V2 / AICM</td>
    </tr>
    <tr>
      <td>身分與授權</td>
      <td>GOVERN 1.x / MANAGE 2.x</td>
      <td>PR.AA-*</td>
      <td>A.10（第三方/共享責任）</td>
      <td>Agent Identity / IBAC</td>
    </tr>
    <tr>
      <td>威脅建模</td>
      <td>MEASURE 2.x</td>
      <td>DE.CM-* / ID.RA-*</td>
      <td>6.1.2</td>
      <td>MAESTRO 七層</td>
    </tr>
    <tr>
      <td>可觀測性與審計</td>
      <td>MEASURE 2.x</td>
      <td>DE.CM-* / DE.AE-*</td>
      <td>9.1</td>
      <td>OpenTelemetry GenAI / MTU</td>
    </tr>
  </tbody>
</table>

> 映射依各框架公開條款結構對照，僅供合規對齊參考，實際適用條款須由合規團隊依組織範圍確認。

---

## 技術實作細節

### 實作主題 1：AI Agent 執行時授權（Runtime Authorization）

**背景**：AI Agent 以高頻運行（CSA 引述每分鐘可達 5,000 次操作），以人為核心的同意式授權無法跟上速度。長效 token 在任務目的結束後仍有效，形成授權蔓延——2025 年 Salesloft Drift 事件中被竊 OAuth token 在簽發數月後仍可用，影響 700 多個組織。CSA 並引述：91% 企業已部署 AI 代理，但僅 10% 有安全計畫。

**實作步驟**：

<ol class="actionable-steps">
  <li>為每個 AI Agent 簽發與使用者憑證分離的「目的綁定」專用身分（purpose-built identity）。</li>
  <li>改用任務範圍憑證（task-scoped credentials），核發 5-15 分鐘的短期 token，預設短效並自動續期。</li>
  <li>在執行當下（decision-time）驗證授權，而非僅在 token 簽發時，並綁定關係型存取控制（relationship-based access）。</li>
  <li>任務完成後跨系統即時撤銷；定期稽核所有 OAuth token 與機器憑證，撤銷閒置憑證。</li>
  <li>保留執行時授權決策日誌與代理操作稽核軌跡，作為 EU AI Act 第 14 條（2026-08-02 起執行）的合規佐證。</li>
</ol>

**配置範例**（短期任務範圍 token 概念示意）：

```yaml
# agent-identity.yaml — 任務範圍憑證原則示意
agent:
  id: "svc-invoice-reconciler"      # 與使用者帳號分離的專用身分
  identity_type: non_human          # NHI，獨立治理
  token:
    scope: ["finance:invoice:read", "ledger:entry:write"]  # 最小權限
    ttl: 600                        # 10 分鐘短期 token（5-15 分鐘區間）
    renewable: true                 # 自動續期取代長效 token
    validate_at: execution          # decision-time 驗證，非簽發時
  revocation:
    cross_system: true              # 任務完成後跨系統即時撤銷
  audit:
    log_every_action: true          # 支援 EU AI Act Art.14 佐證
```

**驗證方式**：抽查授權日誌確認每次高風險操作都有「執行時驗證」事件；確認無 TTL > 設定上限的 Agent token 殘留；模擬任務結束後嘗試重用 token 應被拒絕。

<blockquote class="expert-quote">
  「執行時控制是新的邊界（Runtime control is the new perimeter）——AI 代理需要持續可更新、決策時的授權。」
  <cite>Cloud Security Alliance, AI Security: IAM Delivered at Agent Velocity (2026-02)</cite>
</blockquote>

---

### 實作主題 2：MCP 治理與 Agentic 跨層威脅建模

**背景**：MCP（Model Context Protocol）成為自主 AI Agent 的控制平面後，引入新型攻擊面。CSA 指出七大 MCP 風險，核心包含內容注入攻擊與過度授權的 Agent。同時，傳統威脅建模工具（SAST、STRIDE）無法識別 agentic 系統的跨層信任邊界違規——單一使用者訊息可觸發檔案讀取、shell 命令、資料庫查詢與 webhook，各自跨越不同信任邊界。

**實作步驟**：

<ol class="actionable-steps">
  <li>建立 MCP 資產清單與授權記錄，對所有 MCP 連接器套用最小權限與 OAuth 範圍管控。</li>
  <li>對 Agentic 系統採用 MAESTRO 七層分類進行威脅建模，重點掃描 Layer 1-3（foundation models、data/embedding、agent frameworks）。</li>
  <li>將威脅建模從一次性文件轉為持續 CI/CD 整合（如 TITO 之類 agentic-aware 掃描器），於程式碼變更自動觸發掃描並可阻擋部署。</li>
  <li>對 RAG／記憶體系統視為潛在注入向量進行建模，並週期性重置上下文以防累積式 prompt injection。</li>
  <li>限制 Agent 過度授權，建立供應鏈風險管控（僅允許簽署/可信的 plugin 與技能）。</li>
</ol>

**驗證方式**：確認 CI/CD 中存在機器可讀的 MAESTRO layer 分類與跨層威脅鏈追蹤記錄；確認 MCP 連接器無 default-open 政策；以注入測試樣本驗證輸入清洗有效。

---

## 常見實作陷阱

### 陷阱 1：把人類授權模式套用到 Agent 速度

**問題**：沿用以人為核心的同意式（consent-based）授權與長效憑證，面對每分鐘數千次操作的 Agent 會造成同意疲勞、警報過載與授權蔓延。CSA 引述 2025 年 7 月 Replit AI 代理事件：在數秒內刪除 1,206 筆資料庫記錄，並非外洩或駭客攻擊，而是無約束的授權執行。

**正確做法**：採用 task-scoped 短期 token、執行時驗證與即時撤銷，把「執行時控制」視為新邊界（runtime control is the new perimeter）。

### 陷阱 2：用傳統工具為 agentic 系統做威脅建模

**問題**：僅用 SAST／STRIDE，無法捕捉 agentic 系統中「程式碼是自然語言、直譯器是具系統權限的 LLM」的跨層攻擊鏈。CSA 指出多數團隊「讀了 MAESTRO 卻回歸傳統工具」，存在「理解框架與操作化框架之間的落差」。

**正確做法**：採用 agentic-aware 掃描器、嵌入 MAESTRO 分類並整合至 CI/CD，將威脅建模持續化。

### 陷阱 3：安全當作事後附加

**問題**：在系統上線後才補安全控制，難以涵蓋自主性蔓延、記憶體治理與被遺忘權等結構性議題。

**正確做法**：採 ORCHIDEAS「結構即安全」設計，從設計初期嵌入九支柱（自主性、身分意圖、資料記憶體治理、情境、運行時、人工監督、可觀察性、評估生態、可擴展性），並對高風險/不可逆動作實施預先核准。

### 陷阱 4：盲目信任 AI 生成程式碼

**問題**：將 AI 生成程式碼直接部署。CSA 引述 Veracode 測試顯示 52% 程式設計任務產出含漏洞程式碼，Snyk 發現逾三分之一審計技能含安全缺陷。

**正確做法**：AI 生成程式碼須符合與人工程式碼相同的安全開發生命週期，納入 SAST/SCA 掃描與人工審查。

---

## 工具與資源

| 工具/資源 | 用途 | 連結 |
|-----------|------|------|
| CSA MAESTRO（CI/CD 整合） | Agentic AI 七層跨層威脅建模 | [連結](https://cloudsecurityalliance.org/articles/applying-maestro-to-real-world-agentic-ai-threat-models-from-framework-to-ci-cd-pipeline) |
| CSA ORCHIDEAS Framework | 九支柱「結構即安全」代理系統設計 | [連結](https://cloudsecurityalliance.org/articles/designing-agentic-ai-systems-with-the-orchideas-framework) |
| CSA 7 MCP Risks | MCP 治理風險清單與防護建議 | [連結](https://cloudsecurityalliance.org/articles/7-mcp-risks-cisos-should-consider-and-how-to-prepare) |
| CSA RiskRubric V2 | AI 模型/MCP/Agent 標準化風險評估 | [連結](https://cloudsecurityalliance.org/articles/riskrubric-updates-ai-risk-assessment-for-the-agentic-era) |
| ISO/IEC TS 42112:2026 | 機器學習訓練效率優化指引 | [連結](https://www.iso.org/standard/88246.html) |
| NIST 軟體/AI 代理身分概念文件 | Agent 識別、授權、審計與不可否認性 | [連結](https://www.nist.gov/news-events/news/2026/02/new-concept-paper-identity-and-authority-software-agents) |

---

## L5 — Evolution Signals

- [系統推論] AI Agent 身分治理（NHI、執行時授權、即時撤銷）正成為 2026 年 AI 實作的主軸，本月多份高分來源（CSA 七部曲系列、NIST 概念文件）一致指向「執行時控制即新邊界」，預期將出現 Agent 專用 IAM 產品類別與標準化協議（如 OpenID for agentic AI）。
- [系統推論] MCP 與代理控制平面安全（CSA 七大 MCP 風險、RiskRubric V2 納入 MCP/Agent 評估）顯示評估對象正從「模型」擴展至「模型 + MCP 伺服器 + 代理」三層，標準化聯合掃描器（multi-scanner）生態可能在 Q3 2026 RiskRubric V2 正式發布後成形。
- [系統推論] EU AI Act 第 14 條（人工監督，2026-08-02 起執行）將成為下一季 AI 實作的合規驅動力，預期組織會把「執行時授權證據」與「人工問責路徑」列為部署閘道。

---

## 統計

| 指標 | 數值 |
|------|------|
| 實作項目數 | 8（必做 4、建議 4） |
| 必做項目 | 4 |
| 建議項目 | 4 |
| 來源分布 | CSA: 16, NIST: 3, ISO/IEC: 1, SANS ISC: 1（共 21 個不重複來源） |
| REVIEW_NEEDED | 2 筆（RiskRubric 相關，皆為 draft/公告階段） |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security / identity / cloud_security / compliance / best_practices | 16 | 2026-01-06 ~ 2026-06-04 |
| nist_frameworks | ai_risk / identity | 3 | 2025-08-05 ~ 2026-02-05 |
| iso_standards | it_governance | 1 | 2026-06-05 |
| sans_isc | threat_analysis | 1 | 2026-02-02 |
</content>
</invoke>
