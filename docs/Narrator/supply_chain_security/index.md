---
last_modified_at: 2026-03-22
layout: default
title: Supply Chain Security
nav_order: 14
has_children: true
---

# Supply Chain Security Trends — 2026-W12 {: .no_toc }

<div class="key-takeaway">
本週重點：歐盟建材法規 Regulation (EU) 2024/3110 勘誤釐清強制性與自願性門檻區別，影響建材供應鏈上市合規判斷；Council Regulation (EU) 2026/271 擴大伊朗軍事支援制裁，新增十類零組件出口禁令，衝擊雙用途技術供應鏈；NIST SSDF 1.2 與 SP 800-53 修補管理控制持續推進；多項供應鏈關鍵軟體漏洞（SolarWinds、GitLab、Vite）被列入 CISA KEV，凸顯軟體供應鏈漏洞管理急迫性。
</div>

> **報告週期**：2026-03-16 至 2026-03-22
>
> 本期追蹤 12 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、CISA KEV。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>歐盟建材法規勘誤釐清強制性門檻為產品上市先決條件</strong>，影響所有建材製造商與經銷商的合規判斷；伊朗制裁擴大新增十類零組件出口禁令，雙用途技術供應鏈須重新評估合規風險。
</p>

1. **歐盟建材法規勘誤：強制性門檻釐清（歐盟，amendment）**：Regulation (EU) 2024/3110 勘誤修正 Recital 21，明確強制性門檻為產品進入內部市場的先決條件，不論產品用途。

2. **伊朗軍事支援制裁擴大：十類零組件出口禁令（歐盟，amendment）**：Council Regulation (EU) 2026/271 擴大對伊朗的出口管制，新增十類與無人機、飛彈開發相關的零組件禁令。

3. **SSDF 1.2 持續推進最終版本（美國 NIST，revision）**：SP 800-218r1 公開徵詢期已截止，預期近期發布最終版本。

4. **供應鏈軟體漏洞持續被利用（美國 CISA，final）**：SolarWinds、GitLab、Vite 等供應鏈軟體漏洞被列入 CISA KEV。

5. **歐盟海事安全局擴權（歐盟，regulation）**：Regulation (EU) 2025/2434 擴大 EMSA 職責至海事脫碳轉型治理。

<blockquote class="expert-quote">
  「強制性門檻為產品進入內部市場的先決條件，不論其用途為何；自願性門檻僅適用於特定用途。」
  <cite>Regulation (EU) 2024/3110 Corrigendum, Recital 21</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

| 框架/指引 | 文件編號 | 狀態 | 重點內容 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment（徵詢期已截止） | 安全軟體開發實務擴充，受 EO 14306 推動 |
| **SP 800-53 修補管理控制** | SP 800-53 Release 5.2.0 | draft / public_comment | 修補程式安全部署控制 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈追溯性管理 |

### 歐盟

| 法規 | 文件編號 | binding_force | 重點內容 |
|-----|---------|---------------|---------|
| **建材法規勘誤** | Regulation (EU) 2024/3110 Corrigendum | directly_applicable | 釐清強制性與自願性門檻 |
| **伊朗制裁擴大** | Council Regulation (EU) 2026/271 | directly_applicable | 十類零組件出口禁令 |
| **海事安全局擴權** | Regulation (EU) 2025/2434 | directly_applicable | EMSA 擴展至脫碳轉型監管 |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、修補完整性驗證（SP 800-53）、SBOM | — | SSDF 進入最終階段 |
| **建材製造商/經銷商** | — | 強制性門檻為上市先決條件 | 門檻要求釐清 |
| **雙用途技術供應商** | — | 伊朗出口禁令十類零組件篩選 | 出口管制擴大 |
| **採購方** | SSDF 合規證明、SBOM 驗證 | 供應鏈來源驗證 | 評估標準持續強化 |
| **航運公司/港口管理機關** | — | EMSA 擴權合規、制裁船舶禁入 | 海事監管擴大 |

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 12 |
| 來源分布 | NIST Frameworks: 4, NIST Cybersecurity Insights: 1, EU Regulations: 4, CISA KEV: 3 |
| rule_type 分布 | amendment: 4, draft: 3, revision: 2, new: 3 |
| enforcement_signal 分布 | mandatory: 5, recommended: 4, informational: 3 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 1 | 2025-07-31 |
| nist_frameworks | cybersecurity | 3 | 2025-07-22 ~ 2025-12-17 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2025-09-30 |
| eu_regulations | supply_chain | 2 | 2026-01-28 ~ 2026-01-30 |
| eu_regulations | financial_compliance | 2 | 2026-01-16 ~ 2026-01-30 |
| cisa_kev | vulnerability | 3 | 2026-01-22 ~ 2026-02-03 |

---

*報告產出時間：2026-03-22*
*完整報告：[2026-W12 Supply Chain Security](2026-W12-supply-chain-security)*
