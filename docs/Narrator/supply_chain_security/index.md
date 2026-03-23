---
last_modified_at: 2026-03-23
layout: default
title: Supply Chain Security
nav_order: 14
has_children: true
---

# Supply Chain Security Trends — 2026-W13 {: .no_toc }

<div class="key-takeaway">
本週重點：ISO/IEC 25706:2026 SPDM 標準正式發布，為硬體供應鏈設備驗證與安全通訊建立國際標準化基礎；CSA 提出第三方風險管理（TPRM）範式轉型，從勾選式評估走向風險工程方法；NIST SSDF 1.2 與 SP 800-53 修補管理控制持續推進最終版本；供應鏈軟體漏洞（SolarWinds、GitLab、Vite、Versa Concerto）持續被列入 CISA KEV，凸顯軟體與硬體供應鏈安全管理的雙重急迫性。
</div>

> **報告週期**：2026-03-17 至 2026-03-23
>
> 本期追蹤 14 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準、CSA 指引。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>ISO/IEC 25706:2026 SPDM 標準正式發布，為硬體供應鏈設備驗證建立國際標準</strong>；CSA 提出 TPRM 範式轉型，從問卷式評估走向攻擊者視角的風險工程方法；SSDF 1.2 進入最終發布階段，軟體供應鏈合規壓力持續升高。
</p>

1. **ISO/IEC 25706:2026 SPDM 硬體驗證標準發布（國際，new）**：定義裝置身份驗證與安全通訊協定，為硬體供應鏈設備驗證提供國際標準化基礎。

2. **CSA 第三方風險管理範式轉型（國際，guidance）**：傳統勾選式 TPRM 無法應對供應商數量爆增，組織應轉向風險工程方法。

3. **SSDF 1.2 持續推進最終版本（美國 NIST，revision）**：SP 800-218r1 公開徵詢期已截止，預期近期發布最終版本。

4. **供應鏈軟體漏洞持續被利用（美國 CISA，final）**：Versa Concerto、SolarWinds、GitLab、Vite、FreePBX 等供應鏈軟體漏洞被列入 CISA KEV。

5. **PQC 遷移風險框架映射指引（美國 NIST，draft）**：CSWP 48 提供後量子密碼學遷移與風險框架映射。

<blockquote class="expert-quote">
  「傳統勾選式第三方風險管理無法應對現代供應商數量爆增的挑戰，組織應轉向風險工程方法——分析實際供應商連接、執行針對性技術測試並採取具體行動。」
  <cite>Cloud Security Alliance (CSA), "Checkbox TPRM is Dead. Start Engineering Risk."</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

| 框架/指引 | 文件編號 | 狀態 | 重點內容 |
|----------|---------|------|---------|
| **SSDF 1.2 版** | SP 800-218r1 | public_comment（徵詢期已截止） | 安全軟體開發實務擴充，受 EO 14306 推動 |
| **SP 800-53 修補管理控制** | SP 800-53 Release 5.2.0 | draft / public_comment | 修補程式安全部署控制 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈追溯性管理 |
| **PQC 遷移風險映射** | CSWP 48 | draft | 後量子密碼學遷移與風險框架映射 |

### 歐盟

| 法規 | 文件編號 | binding_force | 重點內容 |
|-----|---------|---------------|---------|
| **人源物質品質安全勘誤** | Regulation (EU) 2024/1938 Corrigendum | directly_applicable | 釐清 SoHO 機構授權要求 |

### 國際標準

| 標準 | 文件編號 | 狀態 | 重點內容 |
|-----|---------|------|---------|
| **SPDM 硬體驗證** | ISO/IEC 25706:2026 | final | 裝置身份驗證與安全通訊協定標準 |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | 本週變動趨勢 |
|------|-----------------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、修補完整性驗證（SP 800-53）、SBOM | — | SSDF 進入最終階段 |
| **硬體/韌體供應商** | — | — | ISO/IEC 25706 SPDM 標準發布 |
| **TPRM 分析師** | — | — | CSA 建議轉向風險工程方法 |
| **採購方** | SSDF 合規證明、SBOM 驗證 | 供應鏈來源驗證 | 評估標準持續強化 |
| **系統整合商** | 供應鏈追溯性（IR 8536）、PQC 遷移（CSWP 48） | — | 密碼學遷移議題新增 |

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 14 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 3, EU Regulations: 1, ISO Standards: 1, CSA: 1, CISA KEV: 5 |
| rule_type 分布 | draft: 4, revision: 1, new: 4, guidance: 3, amendment: 1, event: 1 |
| enforcement_signal 分布 | mandatory: 2, recommended: 7, informational: 5 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 4 | 2025-07-30 ~ 2025-12-17 |
| nist_frameworks | cybersecurity | 2 | 2025-07-22 ~ 2025-08-27 |
| nist_cybersecurity_insights | supply_chain | 3 | 2024-11-21 ~ 2025-09-30 |
| eu_regulations | supply_chain | 1 | 2026-01-30 |
| iso_standards | information_security | 1 | 2026-02-03 |
| csa_cloud_security | best_practices | 1 | 2026-02-26 |
| cisa_kev | vulnerability | 5 | 2026-01-22 ~ 2026-02-03 |

---

*報告產出時間：2026-03-23*
*完整報告：[2026-W13 Supply Chain Security](2026-W13-supply-chain-security/)*
