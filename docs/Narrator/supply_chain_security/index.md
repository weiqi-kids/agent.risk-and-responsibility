---
layout: default
title: Supply Chain Security
nav_order: 14
has_children: true
---

# Supply Chain Security Trends — 2026-W09 {: .no_toc }

<div class="key-takeaway">
本週重點：NIST CSF 2.0 兩週年新增製造業與半導體社群檔案草案，擴展供應鏈風險管理支援範圍；CSA CCM v4.1 擴展供應鏈控制（STA domain），要求雲端服務供應商 2027 年底前遷移；SSDF 1.2 版持續推進最終發布；SP 800-53 新增修補管理控制草案強化軟體供應鏈完整性。
</div>

> **報告週期**：2026-02-23 至 2026-03-01
>
> 本期追蹤 11 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、雲端安全聯盟（CSA）。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>NIST CSF 2.0 發布兩週年，新增製造業與半導體社群檔案草案</strong>，擴大供應鏈風險管理的產業別支援；CSA CCM v4.1 擴展供應鏈控制（STA domain）並設定 2027 年底遷移期限，影響所有雲端服務供應商。
</p>

1. **CSF 2.0 兩週年：製造業與半導體社群檔案草案（美國 NIST，guidance）**：NIST CSF 2.0 發布兩週年，新增七份草案社群檔案（涵蓋 AI、事件回應、製造業、半導體、定位導航授時、勒索軟體、交通運輸），其中製造業與半導體社群檔案直接強化供應鏈風險管理支援。

2. **CSA CCM v4.1 供應鏈控制擴展與遷移時程（CSA，revision）**：Cloud Controls Matrix v4.1 擴展五個關鍵領域控制，其中 STA（Supply Chain, Transparency, and Accountability）domain 強化供應鏈管理要求。所有 STAR Registry 參與者須於 2027 年 12 月前從 v4.0.x 遷移。

3. **SSDF 1.2 版持續推進最終版本（美國 NIST，revision）**：NIST SP 800-218r1 公開徵詢期已截止，引入改進的安全開發實踐，擴展軟體供應商與採購方在漏洞風險緩解方面的責任，受 Executive Order 14306 推動。

4. **SP 800-53 修補管理控制草案（美國 NIST，draft）**：SP 800-53 Release 5.2.0 草案新增安全修補程式部署控制，明確劃分組織與開發者在修補管理中的責任。

5. **歐盟人源物質品質安全標準勘誤（歐盟，mandatory）**：Regulation (EU) 2024/1938 勘誤釐清 SoHO 機構授權要求範圍與 EU SoHO Platform 快速警報觸發條件。

<blockquote class="expert-quote">
  「CSF 2.0 透過新增七份草案社群檔案（涵蓋 AI、事件回應、製造業、半導體、定位導航授時、勒索軟體、交通運輸）及七份新發布的資訊性參考文件，擴大各產業採用框架的支援範圍。」
  <cite>NIST Cybersecurity Insights</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

本週期 NIST 供應鏈相關動態以 CSF 2.0 生態系擴展與修補管理控制為主：

| 框架/指引 | 文件編號 | 狀態 | 重點內容 |
|----------|---------|------|---------|
| **CSF 2.0 兩週年更新** | CSF 2.0 | final（社群檔案為 draft） | 新增製造業、半導體社群檔案草案，擴大供應鏈框架支援 |
| **SSDF 1.2 版** | SP 800-218r1 | public_comment（徵詢期已截止） | 安全軟體開發實務擴充，漏洞根因分析，受 EO 14306 推動 |
| **SP 800-53 修補管理控制** | SP 800-53 Release 5.2.0 | draft / public_comment | 修補程式安全部署控制，組織與開發者責任劃分 |
| **供應鏈追溯性元框架** | NIST IR 8536 | public_comment（第二版草案） | 製造業供應鏈可見性與追溯性管理 |
| **IoT 製造商基礎活動** | IR 8259（修訂中） | draft / public_comment | 新增 Activity 0（威脅建模），擴大活動範圍 |
| **PQC 遷移風險框架映射** | CSWP 48 | draft | 後量子密碼學遷移能力與風險框架映射指引 |

### 歐盟

| 法規 | 文件編號 | binding_force | 重點內容 |
|-----|---------|---------------|---------|
| **人源物質品質安全標準勘誤** | Regulation (EU) 2024/1938 Corrigendum | directly_applicable | 釐清 SoHO 機構授權要求與快速警報觸發條件 |
| **對俄制裁擴大** | Council Decision (CFSP) 2025/2617 | directly_applicable | 41 艘船舶港口禁入令，禁止提供海事服務 |

---

## 供應鏈責任矩陣

| 角色 | 美國（NIST）要求 | 歐盟要求 | CSA 要求 | 本週變動趨勢 |
|------|-----------------|---------|---------|-------------|
| **軟體供應商** | SSDF 1.2 實務作法、修補完整性驗證（SP 800-53）、SBOM | — | — | 修補管理責任釐清 |
| **採購方** | SSDF 合規證明、SBOM 驗證 | 供應鏈來源驗證 | 驗證 CCM v4.1 合規 | 評估標準多元化 |
| **雲端服務供應商** | — | — | CCM v4.1 STA domain、2027/12 遷移 | 遷移時程確定 |
| **IoT 製造商** | 威脅建模（IR 8259）、EOL 安全政策 | — | — | CSF 2.0 社群檔案新增 |
| **CISO/資安主管** | CSF 2.0 社群檔案、PQC 遷移（CSWP 48） | — | CSA STAR 身分韌性 | 框架支援強化 |

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 11 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 2, EU Regulations: 2, CSA Cloud Security: 2 |
| rule_type 分布 | draft: 4, revision: 2, guidance: 2, amendment: 1, new: 1, 其他: 1 |
| enforcement_signal 分布 | recommended: 7, mandatory: 3, informational: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 4 | 2025-07-30 ~ 2025-12-17 |
| nist_frameworks | cybersecurity | 1 | 2025-07-22 |
| nist_cybersecurity_insights | supply_chain | 2 | 2024-11-21 ~ 2025-09-30 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2026-02-24 |
| eu_regulations | supply_chain | 2 | 2025-12-18 ~ 2026-01-30 |
| csa_cloud_security | compliance | 1 | 2026-02-19 |

---

*報告產出時間：2026-03-01*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security vendor risk SBOM SSDF）*
