---
layout: report
title: "2026-W08 Supply Chain Security"
parent: "Supply Chain Security"
nav_order: 8

seo:
  title: "2026-W08 供應鏈安全趨勢 | SSDF 1.2、軟體供應鏈弱點、雲端安全指引"
  description: "本週追蹤 30 項供應鏈安全動態，涵蓋 NIST SSDF 1.2 公開徵求意見、eslint-config-prettier 惡意程式碼嵌入、CSA 雲端安全控制指引等重要更新。"
  date_published: "2026-02-17"
  date_modified: "2026-02-17"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "軟體供應鏈弱點"
    - "DevSecOps"
    - "雲端安全"
    - "CISA KEV"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/2026-W07-supply-chain-security/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W07-cybersecurity-compliance/"
  faq:
    - question: "本週有哪些重要的供應鏈安全動態？"
      answer: "2026-W08 追蹤 30 項供應鏈安全動態，重點包括 NIST SSDF 1.2 版公開徵求意見、eslint-config-prettier 套件嵌入惡意程式碼被列入 CISA KEV、CSA 發布雲端安全控制與 MITRE ATT&CK 整合指引。"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "SSDF 1.2 版本擴展軟體開發安全實踐，軟體供應商需關注漏洞風險緩解、安全開發生命週期管理；同時需留意第三方套件（如 eslint-config-prettier）遭嵌入惡意程式碼的供應鏈攻擊風險。"
    - question: "本週有哪些軟體供應鏈弱點需立即處理？"
      answer: "10 項弱點被列入 CISA KEV，包括 eslint-config-prettier 惡意程式碼、VMware vCenter Server 遠端程式碼執行、GitLab SSRF、Zimbra PHP 遠端檔案引入等，聯邦機構須於 2026 年 2 月中旬前完成修補。"
    - question: "雲端安全的供應鏈責任有何變化？"
      answer: "CSA 指出雲端安全失敗主因已從傳統伺服器/網路層轉移至控制平面層級（權限、政策行為、API 決策），安全保證需前移至部署前設計階段，供應商與採購方的責任界線需重新劃定。"
---

# Supply Chain Security Trends — 2026-W08

<div class="key-takeaway">
本週重點：NIST SSDF 1.2 版公開徵求意見，擴展軟體供應商安全開發責任；eslint-config-prettier 套件嵌入惡意程式碼被列入 CISA KEV，凸顯開源供應鏈攻擊風險；CSA 發布雲端安全控制與 MITRE ATT&CK 整合指引，重新定義雲端供應鏈安全責任界線。
</div>

> 本期追蹤 30 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、CISA KEV、CSA 雲端安全。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>NIST SSDF 1.2 版（SP 800-218r1）公開徵求意見</strong>，引入新的安全軟體開發實踐、任務與範例，擴展軟體供應商與採購方在漏洞風險緩解方面的責任。
</p>

1. **SSDF 1.2 版公開徵求意見（美國 NIST，revision）**：NIST SP 800-218r1 修訂版新增改進的安全開發實踐指引，影響軟體生產者、開發者、採購方及聯邦機構。狀態為 public_comment，尚未定案。

2. **eslint-config-prettier 嵌入惡意程式碼（CISA KEV，mandatory）**：CVE-2025-54313 揭露 Prettier eslint-config-prettier 套件遭嵌入惡意程式碼，聯邦機構須於 2026-02-12 前完成修補。此案例凸顯開源軟體供應鏈攻擊的嚴重性。

3. **CSA 雲端安全控制與 MITRE ATT&CK 整合（guidance）**：CSA 與 MITRE CTID 合作發布指引，將雲端安全控制框架（CCM）與 ATT&CK 對手行為知識庫整合，協助組織辨識供應鏈中的安全控制缺口。

4. **IoT 製造商網路安全指引修訂（NIST，revision）**：NIST IR 8259 修訂版擴大 pre-market 與 post-market 活動範圍，新增 Activity 0（威脅建模與初始風險評估），強化 IoT 產品供應鏈安全管理。

5. **EU 人源物質品質安全標準勘誤（EU，amendment）**：Regulation (EU) 2024/1938 勘誤釐清人源物質機構授權要求及 EU SoHO Platform 快速警報觸發條件，影響醫療供應鏈追溯責任。

<blockquote class="expert-quote">
  「SSDF Version 1.2 introduces new and improved practices, tasks, and examples for secure software development, expanding guidance for software producers and acquirers to mitigate vulnerability risks throughout the software development lifecycle.」
  <cite>NIST</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

| 文件 | document_id | status | 摘要 |
|------|-------------|--------|------|
| SSDF 1.2 版 | SP 800-218r1 | public_comment | 擴展軟體安全開發實踐，新增任務與範例 |
| 供應鏈追溯性元框架 | NIST IR 8536 | public_comment (2nd draft) | 製造業供應鏈可見性與追溯性管理框架 |
| PQC 遷移風險框架映射 | Draft White Paper | public_comment | 後量子密碼學遷移能力與風險框架映射指引 |
| SP 800-53 修補控制 | SP 800-53 (amendment) | public_comment | 擴展安全可靠修補程式管理控制措施 |
| IoT 製造商指引 | IR 8259 (revision) | draft | 擴大 pre-market/post-market 網路安全活動 |

**重點關注**：
- SSDF 1.2 版對軟體供應鏈安全有重大影響，擴展了軟體生產者在開發生命週期中的安全責任
- NIST IR 8536 第二次公開草案聚焦製造業供應鏈追溯性，將強化供應鏈可見性要求
- SP 800-53 修補控制修訂案新增軟體韌性、開發者測試、安全日誌、最小權限控制等要求

### 歐盟

| 文件 | document_type | binding_force | 摘要 |
|------|---------------|---------------|------|
| Regulation (EU) 2024/1938 勘誤 | Corrigendum | directly_applicable | 人源物質機構授權要求及快速警報觸發條件釐清 |
| Council Decision (CFSP) 2025/2617 | Decision | directly_applicable | 對俄制裁：41 艘船舶港口禁令與海事服務禁止 |

**重點關注**：
- EU 2024/1938 勘誤影響人源物質（SoHO）供應鏈的追溯與授權責任
- Council Decision 2025/2617 對供應鏈有間接影響，禁止為涉及運輸烏克蘭遭竊物資或規避制裁的船舶提供港口服務

---

## 供應鏈責任矩陣

<table class="comparison-table">
  <thead>
    <tr>
      <th>角色</th>
      <th>美國要求</th>
      <th>歐盟要求</th>
      <th>變動趨勢</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>軟體供應商</td>
      <td>SSDF 1.2：採用安全開發實踐、漏洞風險緩解、安全開發生命週期管理</td>
      <td>無直接新規（本週）</td>
      <td>責任擴展：需涵蓋完整 SDLC</td>
    </tr>
    <tr>
      <td>採購方</td>
      <td>SSDF 1.2：供應商安全能力評估、SBOM 要求確認；KEV 修補時限遵循</td>
      <td>SoHO 機構授權驗證</td>
      <td>責任強化：需驗證供應商合規</td>
    </tr>
    <tr>
      <td>系統整合商</td>
      <td>SP 800-53：安全修補部署管理、軟體完整性驗證</td>
      <td>制裁合規：海事服務審查</td>
      <td>責任延伸：需確保整合元件安全</td>
    </tr>
    <tr>
      <td>IoT 製造商</td>
      <td>IR 8259：pre-market/post-market 網路安全活動、威脅建模</td>
      <td>無直接新規（本週）</td>
      <td>責任擴展：需涵蓋產品全生命週期</td>
    </tr>
    <tr>
      <td>雲端服務商</td>
      <td>CSA 指引：控制平面安全保證、部署前設計驗證</td>
      <td>無直接新規（本週）</td>
      <td>責任前移：安全設計需在部署前完成</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|----------------|------------|---------------|
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、開發者、採購方、聯邦機構 | expanded | 擴展軟體開發生命週期安全責任 |
| NIST | IR 8536 (2nd draft) | 製造業、供應鏈管理、採購團隊 | expanded | 擴展供應鏈可見性與追溯性責任 |
| NIST | SP 800-53 (amendment) | 系統管理員、修補管理團隊、IT 營運 | expanded | 擴展安全可靠修補部署責任 |
| NIST | IR 8259 (revision) | IoT 製造商、產品安全團隊 | expanded | 擴展 pre-market/post-market 活動 |
| EU | Regulation 2024/1938 勘誤 | SoHO 機構、主管機關 | clarified | 釐清授權要求與快速警報觸發 |
| EU | Decision 2025/2617 | 港口主管機關、海事服務商 | expanded | 新增 41 艘船舶港口禁令執行責任 |
| CSA | 雲端控制平面指引 | 雲端安全架構師、基礎設施工程師 | shifted | 安全保證責任前移至部署前設計 |
| CISA | KEV (多項) | 使用受影響產品的組織 | mandatory | 強制修補時限（聯邦機構） |

---

## 義務與舉證要求

### 新增義務摘要

**SBOM 相關義務**
- SSDF 1.2：軟體生產者應建立並維護軟體組成清單，支援漏洞追蹤與風險評估
- IR 8536：製造業組織應建立供應鏈追溯性機制，確保元件來源可驗證

**安全開發義務**
- SSDF 1.2：軟體開發者須採用安全開發實踐，涵蓋設計、編碼、測試、部署全流程
- SP 800-53 修訂：組織須建立安全可靠修補部署流程，包含開發者測試與完整性驗證

**弱點修補義務**
- CISA KEV：聯邦機構須於指定時限內修補已知遭利用弱點
  - CVE-2025-54313（eslint-config-prettier）：2026-02-12
  - CVE-2024-37079（VMware vCenter）：2026-02-13
  - CVE-2025-52691（SmarterMail）：2026-02-16
  - CVE-2026-21509（Microsoft Office）：2026-02-16

**雲端安全義務**
- CSA 指引：雲端安全設計須於部署前完成控制平面安全保證
- CSA 指引：合規自動化須遵循「信任設計」原則，避免形式合規

### 舉證要求摘要

| 要求項目 | 舉證內容 | 適用對象 |
|----------|----------|----------|
| SSDF 合規 | 安全開發實踐記錄、漏洞處理流程文件 | 軟體供應商 |
| 修補管理 | 修補部署記錄、完整性驗證證明 | 系統管理員 |
| KEV 修補 | 修補完成證明、緩解措施記錄 | 聯邦機構 |
| 供應鏈追溯 | 元件來源記錄、SBOM 文件 | 製造業組織 |

---

## L5 — Evolution Signals

- [系統推論] 軟體供應鏈安全責任正從「產品交付」延伸至「完整生命週期管理」，SSDF 1.2 與 IR 8259 修訂均顯示此趨勢

- [系統推論] 開源套件供應鏈攻擊（如 eslint-config-prettier 惡意程式碼嵌入）將推動採購方強化第三方元件驗證機制，SBOM 與軟體成分分析將成為基本要求

- [系統推論] 雲端安全失敗主因已從傳統基礎設施層轉移至控制平面層級，未來供應商與採購方的安全責任界線將需重新協商，契約條款可能納入控制平面安全保證要求

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | NIST Frameworks: 12, CISA KEV: 10, CSA: 4, EU: 2, NIST Insights: 2 |
| rule_type 分布 | new: 10, draft: 8, guidance: 4, amendment: 2, revision: 2, 其他: 4 |
| enforcement_signal 分布 | mandatory: 14, recommended: 11, informational: 2, 其他: 3 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain, cybersecurity, critical_infrastructure | 12 | 2025-07-15 ~ 2026-01-28 |
| nist_cybersecurity_insights | supply_chain, critical_infrastructure | 2 | 2025-05-13 ~ 2025-09-30 |
| eu_regulations | supply_chain | 2 | 2025-12-18 ~ 2026-01-30 |
| cisa_kev | vulnerability | 10 | 2026-01-22 ~ 2026-02-03 |
| csa_cloud_security | cloud_security, compliance, best_practices | 4 | 2026-01-13 ~ 2026-01-27 |
