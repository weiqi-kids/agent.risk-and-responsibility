---
last_modified_at: 2026-03-22
layout: default
title: Cybersecurity Compliance
nav_order: 16
has_children: true
---

# Cybersecurity Compliance Updates — 2026-W12

<div class="key-takeaway">
本週重點：NIST Cyber AI Profile 草案持續開發，將 CSF 2.0 核心框架擴展至 AI 威脅防禦情境；NIST IoT 安全計畫徵集社群意見以規劃下一階段方向（2026-03-31 工作坊）；SP 800-53 Rev. 5.2.0 三項強制控制項持續為聯邦機構實施重點；CSA 與 MITRE 合作發布 CCM v4.1 至 ATT&CK 映射指引。
</div>

> 本期追蹤 14 項資安合規動態，涵蓋 NIST 框架（8）、NIST 洞察（5）、ISO 標準（1）。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的資安合規動態">
  <strong>NIST NCCoE 持續開發 Cyber AI Profile</strong>，將 CSF 2.0 核心框架擴展至 AI 增強型攻擊防禦情境，已完成多場虛擬工作會議徵集跨產業專家意見，標誌 AI 安全正式融入既有資安合規框架。
</p>

1. **NIST Cyber AI Profile 草案開發持續推進**（美國，draft，recommended）
   - 將 CSF 2.0 擴展至三大 AI 情境：採用 AI 進行資安防護、防禦 AI 驅動攻擊、保護 AI 系統
   - 已完成 2025 年 4 月、8 月、9 月系列虛擬工作會議
   - 尚處公眾意見徵集階段，正式文件編號待後續發布

2. **NIST IoT 安全計畫徵集未來方向意見**（美國，guidance，informational）
   - 預計 2026-03-31 至 04-01 於 NIST Gaithersburg 舉辦工作坊
   - 正完成 NISTIR 8259 與 SP 800-213 更新
   - 六大策略問題涵蓋格式、新興技術、網路風險、部署情境、實體安全

3. **SP 800-53 Rev. 5.2.0 三項強制控制項持續推動**（美國，revision，mandatory）
   - SA-15（日誌格式標準化）、SI-02(07)（修補失敗根因分析）、SA-24（網路韌性設計）
   - 回應 Executive Order 14306，聯邦機構須依 FISMA 合規要求實施

4. **CSA-MITRE CCM v4.1 至 ATT&CK 映射發布**（全球，guidance，recommended）
   - 首次將 CCM 控制措施與 MITRE ATT&CK 技術正式映射
   - 支援威脅告知（threat-informed）防禦評估與 STAR 認證稽核

5. **NIST IR 8349 IoT 設備行為特徵化方法學正式發布**（美國，final，recommended）
   - 提供 IoT 設備網路行為特徵化技術方法
   - 採用 MUD（Manufacturer Usage Description）規範標準化設備通訊需求
   - 開源工具 MUD-PD 自動化設備特徵化流程

<blockquote class="expert-quote">
  「本次 Cyber AI Profile 工作會議聚焦於抵禦 AI 增強型網路攻擊（Thwarting AI-enabled Cyber Attacks），要求組織在既有網路安全實踐之上，針對 AI 驅動的攻擊向量強化韌性措施。」
  <cite>NIST NCCoE Cyber AI Profile Working Session, 2025-09</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

**框架與控制措施更新**

| 文件 | 狀態 | 主要變動 |
|------|------|----------|
| Cyber AI Profile (CSF 2.0) | draft / public_comment | 將 CSF 2.0 擴展至 AI 威脅防禦三大情境 |
| SP 800-53 Rev. 5.2.0 | final | SA-15、SI-02(07)、SA-24 三項強制控制項 |
| SP 800-218r1 (SSDF 1.2) | draft / public_comment | 安全軟體開發框架修訂，依 EO 14306 |
| SP 1800-44 | draft | DevSecOps 安全實踐，整合零信任與 AI |
| IR 8349 | final | IoT 設備網路行為特徵化方法學 |
| IR 8374 Rev.1 | public_comment | 勒索軟體風險管理 CSF 2.0 社群檔案 |

### 歐盟

本週搜尋結果未涵蓋歐盟特定資安合規動態。組織應持續關注 NIS2 Directive 會員國轉換進度與 ENISA 指引。

---

## 控制措施對照

| 控制領域 | NIST 對應 | EU 對應 | 變動摘要 |
|----------|-----------|---------|----------|
| 日誌管理 | SP 800-53 SA-15（新增） | NIS2 Art.21(2)(g) | NIST 新增安全事件記錄格式標準化 |
| 修補管理 | SP 800-53 SI-02(07)（新增） | NIS2 Art.21(2)(e) | 修補失敗根因分析與改正計畫 |
| 韌性設計 | SP 800-53 SA-24（新增） | NIS2 Art.21(2)(c) | 系統須具備預期、承受、回應、復原能力 |
| 事件回應 | CSF RS / IR 8374 Rev.1 | NIS2 Art.23 | 勒索軟體社群檔案更新至 CSF 2.0 |
| IoT 安全 | IR 8349 / NISTIR 8259 | Cyber Resilience Act | IR 8349 MUD 方法學正式發布 |
| AI 安全 | Cyber AI Profile (CSF 2.0) | EU AI Act + NIS2 | NIST 開發 AI 威脅防禦 Profile |
| 軟體安全 | SSDF 1.2 / SP 1800-44 | NIS2 Art.21(2)(e) | 擴展安全開發框架 |
| 威脅情報 | CSF DE.CM | NIS2 Art.29 | CSA-MITRE CCM-ATT&CK 映射 |

---

## L5 — Evolution Signals

- [系統推論] **AI 安全從概念進入框架整合階段**：Cyber AI Profile 工作會議系列、NIST AI 與資安計畫、以及 CSF 2.0 AI 社群檔案草案，三條路徑同步推進。

- [系統推論] **IoT 安全責任從「事後偵測」轉向「事前定義」**：IR 8349 的 MUD 方法學要求製造商主動定義設備通訊行為。

- [系統推論] **威脅告知防禦成為合規評估標準方法**：CSA-MITRE CCM v4.1 至 ATT&CK 映射將威脅告知方法嵌入 STAR 認證稽核。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 14 |
| 來源分布 | NIST Frameworks: 8, NIST Insights: 5, ISO Standards: 1 |
| enforcement_signal 分布 | mandatory: 1, recommended: 7, informational: 6 |
| REVIEW_NEEDED | 1 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | cybersecurity, ai_risk | 8 | 2025-07-28 ~ 2025-12-17 |
| nist_cybersecurity_insights | cybersecurity, ai_risk, policy_guidance, workforce | 5 | 2024-02-26 ~ 2026-03-20 |
| iso_standards | information_security | 1 | 2026-02-06 |

> 備註：本週 Qdrant 語意搜尋結果未涵蓋 eu_regulations Layer 的資料，歐盟資安合規動態請參閱獨立的 EU 法規報告。

---

*報告產出：Narrator Mode - cybersecurity_compliance*
*資料擷取時間點：2026-03-22*
