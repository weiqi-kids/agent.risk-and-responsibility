---
last_modified_at: 2026-03-23
layout: default
title: Critical Infrastructure
nav_order: 15
has_children: true
---

# Critical Infrastructure Resilience — 2026-W13

<div class="key-takeaway">
本週重點：SANS ISC 提出 CLAIR 模型將 Purdue 架構與 Zachman Framework 整合為 10 層關鍵基礎設施相依性映射框架，揭示 AI 整合帶來的新型級聯失效風險；歐盟 Regulation (EU) 2025/2653 ReArm Europe 計畫提供跨預算防衛投資激勵強化歐洲防衛供應鏈；NIST IoT 安全計畫 Future Directions Workshop 持續徵集下一代指引方向意見；ISO/TS 22359-2:2026 發布防護庇護所保護設備標準。
</div>

> 本期追蹤 14 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準、SANS ISC。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>SANS ISC 提出 CLAIR 模型整合 Purdue 架構與 Zachman Framework 為 10 層關鍵基礎設施相依性映射框架</strong>，揭示 AI 整合帶來的新型級聯失效風險，強調最弱環節（Level -1 公用事業層）的韌性監控需求。
</p>

1. **CLAIR 模型 — 關鍵基礎設施相依性映射框架（2026-02-25, guidance, final）**
   SANS ISC 發布 CLAIR 模型，整合 Purdue 架構與 Zachman Framework 為 10 層映射框架，識別 AI 整合帶來的新型級聯失效風險。

2. **Regulation (EU) 2025/2653 — ReArm Europe 防衛投資激勵（2026-01-14, revision, mandatory）**
   歐盟通過 ReArm Europe 計畫，跨預算提供防衛相關投資激勵，涵蓋防衛產業 SME 與雙用途技術開發商。

3. **NIST IoT Cybersecurity Program — Future Directions Workshop（2026-03-20, guidance, public_comment）**
   NIST 持續徵集 IoT 資安指引（NISTIR 8259、SP 800-213）擴展方向意見。

4. **ISO/TS 22359-2:2026 — 防護庇護所保護設備標準（2026-03-05, new, recommended）**
   ISO/TC 292 發布首版防護庇護所保護設備技術規格。

5. **Regulation (EU) 2026/589 — 網路攻擊制裁持續生效（2026-03-16, new, mandatory）**
   歐盟對五名網路攻擊威脅行為者的制裁持續生效。

<blockquote class="expert-quote">
  「The CLAIR model synthesizes the Purdue architecture and the Zachman Framework into a 10-level mapping framework, revealing new failure risks introduced by AI integration.」
  <cite>SANS Internet Storm Center (ISC Diary 32748)</cite>
</blockquote>

---

## 基礎設施領域矩陣

| 領域 | 美國要求 | 歐盟要求 | 本週變動 |
|------|----------|----------|----------|
| 能源 | IoT 基礎設施投資效益研究（final） | 能源計量設備擴展（EV 充電、氫能）；Energy Community 條約修訂 | Directive (EU) 2026/706; Council Decision (EU) 2026/69, 2026/70 |
| 電信 | IoT 資安指引擴展中（public_comment） | 無新要求 | NIST IoT Future Directions Workshop |
| 金融 | 無新要求 | 網攻制裁資產凍結義務；ReArm Europe 防衛投資激勵 | Regulation (EU) 2026/589; 2025/2653 |
| 運輸 | Transit Cybersecurity Framework（draft） | EMSA 改革 | Regulation (EU) 2025/2434 |
| 水務 | 無新要求 | 飲用水品質指令勘誤 | Directive (EU) 2020/2184 勘誤 |

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 14 |
| 來源分布 | NIST Frameworks: 3, NIST Insights: 2, EU Regulations: 7, ISO: 1, SANS ISC: 1 |
| rule_type 分布 | new: 3, draft: 2, guidance: 3, expanded: 1, revision: 1, Council Decision: 2, amendment: 1, corrigendum: 1 |
| enforcement_signal 分布 | mandatory: 7, recommended: 2, informational: 1, public_comment: 4 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure | 3 | 2025-07-15 ~ 2025-09-02 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2026-03-20 |
| nist_cybersecurity_insights | supply_chain | 1 | 2025-05-13 |
| eu_regulations | critical_infrastructure | 3 | 2026-01-16 ~ 2026-01-29 |
| eu_regulations | cybersecurity | 1 | 2026-03-16 |
| eu_regulations | digital_market | 1 | 2026-03-20 |
| eu_regulations | financial_compliance | 2 | 2026-01-14 ~ 2026-01-16 |
| eu_regulations | supply_chain | 1 | 2026-01-19 |
| iso_standards | other | 1 | 2026-03-05 |
| sans_isc | threat_analysis | 1 | 2026-02-25 |

---

[查看完整報告](/docs/Narrator/critical_infrastructure_resilience/2026-W13-critical-infrastructure-resilience/)
