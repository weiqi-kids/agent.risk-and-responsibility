---
last_modified_at: 2026-03-22
layout: default
title: Critical Infrastructure
nav_order: 15
has_children: true
---

# Critical Infrastructure Resilience — 2026-W12

<div class="key-takeaway">
本週重點：歐盟通過 Regulation (EU) 2026/589 對中國與伊朗五名網攻威脅行為者實施資產凍結與交易禁令，標誌歐盟將網路攻擊關鍵基礎設施視為可制裁行為；Regulation (EU) 2025/2643 建立 EDIP 國防工業計畫強化歐洲防衛供應鏈韌性；ISO 22366:2026 首次發布能源韌性框架與原則；NIST IoT 安全計畫啟動 Future Directions Workshop 徵詢下一代指引方向。
</div>

> 本期追蹤 16 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準、SANS ISC、CISA KEV。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>歐盟通過 Regulation (EU) 2026/589 對五名網攻威脅行為者實施制裁</strong>，涉及中國 Anxun/I-Soon 與 Integrity Technology Group 及伊朗 Emennet Pasargad，標誌歐盟將網路攻擊關鍵基礎設施視為可制裁行為；同時 EDIP 國防工業計畫與 ISO 能源韌性框架分別從供應鏈與社區韌性面向強化基礎設施防護。
</p>

1. **Regulation (EU) 2026/589 — 歐盟網攻制裁五名威脅行為者（2026-03-16, regulation, mandatory）**
   歐盟擴大網路制裁清單，新增兩名中國籍個人與三個實體，實施資產凍結與資金提供禁令。

2. **Regulation (EU) 2025/2643 — 歐洲國防工業計畫 EDIP（2025-12-29, regulation, mandatory）**
   建立 EDIP 框架，含共同採購、工業強化與烏克蘭支持工具，外部元件成本上限 35%。

3. **ISO 22366:2026 — 能源韌性框架與原則（2026-01-08, new, recommended）**
   ISO/TC 292 發布首個能源韌性國際標準，涵蓋能源供應網絡的社會面與技術面考量。

4. **NIST IoT 安全計畫 — Future Directions Workshop（2026-03-20, guidance, informational）**
   NIST 宣布 2026-03-31 兩日工作坊，徵詢 NISTIR 8259 與 SP 800-213 演進方向。

5. **Directive (EU) 2026/706 — EV 充電與能源計量系統指令（2026-03-20, directive, mandatory）**
   擴展計量指令範圍，納入 EV 充電、氫能、冷卻計量與智慧電表，2028-10-10 起適用。

<blockquote class="expert-quote">
  「The Council adds two Chinese individuals and three entities — including an Iranian cyber actor — to the EU's cyber-sanctions list for significant cyber-attacks against Union critical infrastructure.」
  <cite>Council Implementing Regulation (EU) 2026/589</cite>
</blockquote>

---

## 基礎設施領域矩陣

| 領域 | 美國要求 | 歐盟要求 | 本週變動 |
|------|----------|----------|----------|
| 能源 | 無新要求 | EV 計量新標準；能源效率修訂；Energy Community 環境法對齊 | Directive (EU) 2026/706; 2025/2647; Council Decision 2026/70 |
| 電信 | Cisco 漏洞列入 KEV | 無新要求 | CVE-2026-20045 |
| 金融 | 無新要求 | 網攻制裁資產凍結義務 | Regulation (EU) 2026/589 |
| 運輸 | Transit Cybersecurity Framework（draft） | EMSA 改革；EV 充電計量 | Regulation (EU) 2025/2434; Directive (EU) 2026/706 |
| 水務 | 無新要求 | 飲用水指令勘誤；水框架指令整合 | Directive 2020/2184 Corrigendum; Council Decision 2026/70 |

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 16 |
| 來源分布 | NIST Frameworks: 3, NIST Insights: 1, EU Regulations: 8, ISO: 1, SANS ISC: 1, CISA KEV: 1, EMSA: 1 |
| rule_type 分布 | new: 5, regulation: 3, directive: 2, decision: 2, guidance: 2, corrigendum: 1, revision: 1 |
| enforcement_signal 分布 | mandatory: 9, recommended: 2, informational: 5 |
| REVIEW_NEEDED | 2 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure | 3 | 2025-07-15 ~ 2025-09-02 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2026-03-20 |
| eu_regulations | critical_infrastructure | 5 | 2025-12-29 ~ 2026-03-20 |
| eu_regulations | cybersecurity | 1 | 2026-03-16 |
| eu_regulations | digital_market | 1 | 2026-03-20 |
| eu_regulations | financial_compliance | 1 | 2026-01-16 |
| iso_standards | other (energy resilience) | 1 | 2026-01-08 |
| sans_isc | threat_analysis | 1 | 2026-02-25 |
| cisa_kev | vulnerability | 1 | 2026-01-21 |
| eu_regulations | supply_chain | 1 | 2026-01-19 |

---

[查看完整報告](/docs/Narrator/critical_infrastructure_resilience/2026-W12-critical-infrastructure-resilience/)
