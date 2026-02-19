---
layout: default
title: Rule Change Brief
nav_order: 11
has_children: true
---

# Rule Change Brief — 2026-W08

<div class="key-takeaway">
本期重點：NIST SP 800-53 Rev. 5.2.0 新增三項控制項（SA-15、SI-02(07)、SA-24）回應 Executive Order 14306、NISTIR 8596 首個 AI 網路安全框架配置檔草案發布、SSDF Version 1.2 擴展安全軟體開發實踐指引。
</div>

> 本期追蹤 50 項框架與標準變動，涵蓋 nist_frameworks、nist_cybersecurity_insights、iso_standards、cisa_kev、csa_cloud_security 等資料源。

## 免責聲明

本簡報由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本期重點

<p class="key-answer" data-question="本期有哪些重要的規則變動">
  <strong>NIST SP 800-53 Rev. 5.2.0 於 2025-08-27 正式發布</strong>，回應 Executive Order 14306 新增三項控制項，強化軟體更新與修補管理，將聯邦資訊系統的安全責任從「被動修補」擴展至「主動韌性設計與系統化失敗分析」。
</p>

1. **NIST SP 800-53 Rev. 5.2.0（final）**：新增 SA-15（日誌語法標準化）、SI-02(07)（軟體更新失敗根本原因分析）、SA-24（網路韌性設計）三項控制項，enforcement_signal 為 mandatory。

2. **NISTIR 8596 AI 網路安全框架配置檔草案（draft）**：首個整合 CSF 與 AI RMF 的框架草案，涵蓋保護 AI 系統、使用 AI 強化防禦、抵禦 AI 驅動攻擊三大領域。

3. **SSDF Version 1.2（SP 800-218r1）（revision）**：擴展安全軟體開發實踐、任務與範例，強化軟體生產者與採購者在弱點風險緩解方面的指引。

4. **NIST SP 800-232 輕量級密碼學標準（final）**：ASCON 演算法族正式發布，為 IoT 設備、植入式醫療裝置、RFID 標籤等資源受限設備提供標準化密碼學保護。

5. **CISA KEV 強制修復弱點**：CVE-2025-31125（Vite 存取控制不當）、CVE-2025-34026（Versa Concerto 認證不當）列入已知遭利用弱點清單。

<blockquote class="expert-quote">
  「新增的控制項回應 Executive Order 14306，強化聯邦系統的網路韌性設計。」
  <cite>NIST Cybersecurity Framework Team</cite>
</blockquote>

---

## 按風險領域分析

### Cybersecurity

本期有 14 項資安相關變動，以 NIST SP 800-53 Rev. 5.2.0 控制項更新、SP 800-232 輕量級密碼學標準定案為重點。

### AI Risk

本期有 8 項 AI 風險相關變動，以 NISTIR 8596 AI 網路安全框架草案、Cyber AI Profile Workshop 系列為核心。

### Privacy

本期有 1 項隱私相關變動，以 NIST 隱私工程計劃 2026 年工作展望為主。

### Supply Chain

本期有 5 項供應鏈相關變動，以 SSDF Version 1.2 草案、NIST IR 8536 供應鏈追溯框架為重點。

### Identity

本期有 1 項身分認證相關變動，以 SP 800-63B 同步式驗證器補充指引為主。

### Critical Infrastructure

本期有 4 項關鍵基礎設施相關變動，以 IoT 安全指引演進、BGP 路由安全測試工具為重點。

---

## L5 — Evolution Signals

- [系統推論] **軟體供應鏈安全治理體系成形** — NIST SP 800-53 控制項新增、SSDF 修訂到軟體開發安全指南，均回應 Executive Order 14306，形成完整的軟體安全治理體系。

- [系統推論] **AI 網路安全整合趨勢明確** — NISTIR 8596 首次建立 CSF 與 AI RMF 的整合框架，AI 風險管理正從獨立領域轉向與傳統資安框架的深度整合。

- [系統推論] **IoT 設備安全責任持續轉向製造商** — NIST IR 8259 修訂新增 Activity 0，將製造商責任從「產品交付後」擴展至「設計階段」。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| rule_type 分布 | draft: 9, final: 8, guidance: 10, revision: 7, amendment: 4, new: 4, event: 3, 其他: 5 |
| enforcement_signal 分布 | mandatory: 5, recommended: 20, informational: 12, 未標註: 13 |
| REVIEW_NEEDED | 1 筆 |

---

## 資料來源

| Layer | 筆數 | 時間範圍 |
|-------|------|----------|
| nist_frameworks | 25 | 2025-07-15 ~ 2026-01-28 |
| nist_cybersecurity_insights | 19 | 2024-02-26 ~ 2026-01-27 |
| csa_cloud_security | 3 | 2026-01-20 ~ 2026-01-27 |
| cisa_kev | 2 | 2026-01-22 |
| iso_standards | 1 | 2026-02-06 |

---

[閱讀完整報告](/docs/Narrator/rule_change_brief/2026-W08-rule-change-brief/)

*報告產出時間：2026-02-18*
