---
last_modified_at: 2026-06-17
layout: default
title: Rule Change Brief
nav_order: 11
has_children: true
---

# Rule Change Brief — 2026-W25

<div class="key-takeaway">
本期重點：NIST IR 8323 Revision 2（PNT Profile）草案改版以對齊 CSF 2.0，進入公開意見徵詢；NIST SP 1800-40B 草案推動密碼模組驗證計畫（CMVP）自動化；NIST NVD 改採「風險優先」模型重新定義 CVE 豐富化範圍；ISO/IEC 15408:2026（Common Criteria）完成第五版改版；ISO/IEC 25831:2026 OpenID Identity Assurance 標準正式發布。CISA KEV 持續追蹤 4 項已遭利用弱點。
</div>

> 本期追蹤 50 項框架與標準變動，涵蓋 nist_frameworks、nist_cybersecurity_insights、iso_standards、cisa_kev、eu_regulations 等資料源。

## 免責聲明

本簡報由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本期重點

<p class="key-answer" data-question="本期有哪些重要的規則變動">
  <strong>NIST IR 8323 Revision 2（PNT Profile）草案改版以對齊 CSF 2.0</strong>，定位、導航與授時系統使用者的風險管理責任範圍擴大，目前處於公開意見徵詢階段。
</p>

1. **NIST IR 8323 Rev 2 PNT Profile 對齊 CSF 2.0（revision）**：NCCoE 將 PNT 系統安全配置重新對齊至 CSF 2.0，狀態為 public_comment。

2. **NIST SP 1800-40B 推動 CMVP 自動化（draft）**：密碼模組驗證流程走向自動化，導入標準化提交協定與雲端原生基礎設施。

3. **NIST NVD 改採風險優先 CVE 豐富化（revision）**：因應創紀錄 CVE 成長，聯邦相關與 CISA KEV 目錄 CVE 優先豐富化。

4. **ISO/IEC 15408:2026 Common Criteria 改版（revision）**：Part 2 安全功能元件（第 5 版）與 Part 4 評估方法框架（第 2 版）正式發布。

5. **ISO/IEC 25831:2026 OpenID Identity Assurance 正式發布（new）**：建立 OpenID 身分保證機制的 ISO 標準化框架（Part 1 通則 + Part 2 結構定義）。

<blockquote class="expert-quote">
  「The catalog revision is part of NIST's response to a recent executive order on strengthening the nation's cybersecurity.」
  <cite>NIST — SP 800-53 Rev. 5.2.0 control catalog revision</cite>
</blockquote>

---

## 按風險領域分析

### Cybersecurity
本期以 NIST IR 8323 Rev 2 PNT Profile 對齊 CSF 2.0、CMVP 自動化草案 SP 1800-40B、NVD 風險優先 CVE 豐富化、ISO/IEC 15408:2026 Common Criteria 改版、Transit CSF Community Profile（IR 8576）及 CISA KEV 4 項弱點修復追蹤為重點。

### AI Risk
本期以 NIST 第二次 Cyber AI Profile 工作坊推進 CSF Profile for AI 草案、CSF 與 AI RMF 整合方向演進為核心。

### Privacy
本期以 NIST Privacy Framework 1.1 即將發布並與 CSF 2.0 對齊、SP 800-226 差分隱私指引正式發布為主。

### Supply Chain
本期以 NCCoE DevSecOps live guidelines（附首個 Azure 範例）、SSDF 1.2 公開意見徵詢、NIST IR 8536 供應鏈可追溯性框架為重點。

### Identity
本期以 ISO/IEC 25831:2026 OpenID Identity Assurance 正式發布、NIST IR 8523 刑事司法多因素驗證、SP 800-63B 同步式驗證器指引為主。

### Critical Infrastructure
本期以 NIST IR 8349 IoT 設備安全指引、PNT Profile（IR 8323 Rev 2）關鍵基礎設施面向、Transit CSF Community Profile（IR 8576）為重點。

---

## L5 — Evolution Signals

- [系統推論] **NIST 框架治理正全面收斂至 CSF 2.0 作為共同骨架** — PNT、交通、AI 等專屬指引皆以 CSF 2.0 為基礎延伸，收斂為可互通的 Profile 體系。

- [系統推論] **驗證與漏洞作業正從「人工逐案」轉向「自動化與風險優先」** — CMVP 自動化（SP 1800-40B）與 NVD 風險優先豐富化反映處理量已超出傳統人工流程負荷。

- [系統推論] **國際標準（ISO/IEC）密集改版正抬升技術合規基線** — Common Criteria 15408:2026、OpenID Identity Assurance 25831:2026 等基礎安全標準集中更新。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| rule_type 分布 | guidance: 11, draft: 10, revision: 8, new: 7, amendment: 6, final: 4, 其他/未分類: 4 |
| enforcement_signal 分布 | recommended: 24, mandatory: 11, informational: 11, 未分類: 4 |
| REVIEW_NEEDED | 2 筆 |

---

## 資料來源

| Layer | 筆數 | 時間範圍 |
|-------|------|----------|
| nist_frameworks | 22 | 2025-07-22 ~ 2026-05-06 |
| nist_cybersecurity_insights | 13 | 2024-02-26 ~ 2026-05-04 |
| iso_standards | 8 | 2026-02-03 ~ 2026-06-05 |
| cisa_kev | 4 | 2026-01-13 ~ 2026-02-03 |
| eu_regulations | 3 | 2026-01-29 ~ 2026-02-02 |

---

[閱讀完整報告](/docs/Narrator/rule_change_brief/2026-W25-rule-change-brief/)

*報告產出時間：2026-06-17*
