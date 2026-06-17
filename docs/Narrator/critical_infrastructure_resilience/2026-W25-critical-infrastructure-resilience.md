---
layout: report
title: "2026-W25 Critical Infrastructure Resilience"
parent: "Critical Infrastructure"
nav_order: 25
last_modified_at: 2026-06-17

seo:
  title: "2026-W25 關鍵基礎設施韌性 | 歐盟鐵路新規、OT/ICS 安全動態"
  description: "本週追蹤 30 項關鍵基礎設施韌性動態，涵蓋歐盟單一鐵路區容量新規、OTIF 鐵路技術標準、OT/ICS 安全指引、CLAIR 相依性模型及能源與電信韌性更新。"
  date_published: "2026-06-17"
  date_modified: "2026-06-17"
  article_section: "Critical Infrastructure Resilience"
  keywords:
    - "Critical Infrastructure"
    - "ICS Security"
    - "OT Security"
    - "CER Directive"
    - "基礎設施韌性"
    - "Railway Resilience"
    - "Energy Resilience"
    - "CLAIR Model"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/critical_infrastructure_resilience/2026-W13-critical-infrastructure-resilience/"
    - "https://risk.weiqi.kids/docs/Narrator/cybersecurity_compliance/2026-W25-cybersecurity-compliance/"
  faq:
    - question: "2026-W25 有哪些重要的基礎設施韌性動態？"
      answer: "2026-W25 追蹤 30 項關鍵動態，重點包括歐盟 Regulation (EU) 2026/1184 建立單一鐵路區基礎設施容量使用新規並廢除 Regulation No 913/2010、Council Decision (EU) 2026/1303 確立歐盟在 OTIF 第 18 屆技術委員會的鐵路技術標準立場、CSA 緊急簡報將 OT 安全危機比擬為系統性 Y2K，以及 SANS ISC 的 CLAIR 模型揭示 AI 整合的級聯失效風險。歐盟兩項鐵路文件為降級萃取，生效日期待人工確認。"
    - question: "OT 安全團隊需要注意哪些新要求？"
      answer: "OT/ICS 安全團隊本週應關注三項指引：CSA 緊急策略簡報主張採用不中斷生產的 OT 修補方法論並壓縮安全回應時間線；NIST SP 1334（草案）建立 OT 環境可攜式儲存媒體（USB）管理控制；SANS ISC 的 CLAIR 模型強調 Level -1 公用事業層的韌性監控。三者皆為自願性或草案性質，非強制要求。"
    - question: "歐盟在關鍵基礎設施保護方面有何最新進展？"
      answer: "歐盟本週聚焦鐵路基礎設施：Regulation (EU) 2026/1184 建立單一鐵路區容量使用統一規則並廢除舊貨運通道框架；Council Decision (EU) 2026/1303 授權歐盟在 OTIF CTE 就貨車與機車客車統一技術規範（UTP）及電傳貨運（TAF）修訂的立場。兩者皆為 directly_applicable，但生效日期因萃取降級尚待確認。"
    - question: "CLAIR 模型對關鍵基礎設施安全有何意義？"
      answer: "CLAIR 模型由 SANS ISC 提出，將 Purdue 架構與 Zachman Framework 整合為涵蓋 Level -1 至 Level 7 的 10 層相依性映射框架，識別 AI 整合帶來的資料品質相依、模型飄移與監控盲點等新型失效機制，並以北維吉尼亞 60 個資料中心同時斷電案例說明級聯故障，為 OT/ICS 團隊提供系統性相依性分析工具。"
---

# Critical Infrastructure Resilience — 2026-W25 {: .no_toc }

<div class="key-takeaway">
本週重點：歐盟連續發布兩項鐵路基礎設施文件——Regulation (EU) 2026/1184 建立單一鐵路區容量使用新規並廢除 Regulation No 913/2010，Council Decision (EU) 2026/1303 確立 OTIF 第 18 屆技術委員會的鐵路技術標準（UTP、TAF）立場（兩者皆為降級萃取，生效日期待確認）；CSA 緊急策略簡報將 OT 安全危機比擬為系統性 Y2K，主張壓縮無法停機修補的安全時間線；SANS ISC 的 CLAIR 模型揭示 AI 整合帶來的級聯失效風險。
</div>

> 本期追蹤 30 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、ISO 標準、CSA、SANS ISC 與 CISA。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 30 個權威來源（NIST、EUR-Lex、ISO、CSA、SANS、CISA 等） |
| 資料時間 | 2024-10-09 ~ 2026-06-10 |

</div>

---

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的基礎設施韌性動態">
  <strong>歐盟同日發布 Regulation (EU) 2026/1184 與 Council Decision (EU) 2026/1303 兩項鐵路基礎設施文件</strong>（來源區域：歐盟），分別重整單一鐵路區容量使用規則與 OTIF 鐵路技術標準立場；惟兩者均為 WebFetch 失敗的降級萃取，生效日期與具體條文待人工確認。
</p>

1. **Regulation (EU) 2026/1184 — 單一鐵路區基礎設施容量使用新規（2026-06-10, new/final, mandatory）** ⚠️
   來源區域：歐盟。修訂 Directive 2012/34/EU 並廢除 Regulation (EU) No 913/2010，重建跨境鐵路容量協調與分配機制，鐵路基礎設施管理者須按新規則分配列車路徑。`binding_force: directly_applicable`。**[REVIEW_NEEDED]**：WebFetch 失敗，生效日期與容量分配細則待確認。

2. **Council Decision (EU) 2026/1303 — OTIF 第 18 屆 CTE 鐵路技術規範立場（2026-06-10, new/final, mandatory）** ⚠️
   來源區域：歐盟。確立歐盟在 OTIF 技術專家委員會應採立場，涵蓋貨車與機車客車統一技術規範（UTP）修訂、憑證統一格式採納及電傳貨運服務應用（TAF）修訂，影響歐洲鐵路業者技術合規。`binding_force: directly_applicable`。**[REVIEW_NEEDED]**：WebFetch 失敗，UTP/TAF 具體條文待確認。

3. **CSA 緊急策略簡報 — OT 安全時間線壓縮（2026-05-19, guidance/final, recommended）**
   來源區域：美國（業界）。CSA 將當前 OT 安全威脅比擬為 Y2K 系統性危機，由 Jen Easterly、Bruce Schneier、Heather Adkins、Rob Joyce 等多位頂級安全專家聯署，主張採用不中斷生產的修補方法論以壓縮無法停機環境的安全回應時間線。屬高可信度業界指引，非法規。

4. **NIST SP 1800-41 — 製造業事件回應與復原指引（2026-05-21, draft/public_comment, recommended）**
   來源區域：美國。NCCoE 初始公開草案，協助製造業組織建立網路攻擊事件回應與復原能力，涵蓋 OT/IT 安全人員。**草案階段**，徵求公眾意見，無強制舉證要求。

5. **NIST IR 8323 Rev 2 — PNT 定位導航授時剖面對齊 CSF 2.0（2026-05-06, revision/public_comment, recommended）**
   來源區域：美國。將既有 PNT Profile 更新以對齊 NIST CSF 2.0，適用於依賴 GPS 及其他 PNT 技術的關鍵基礎設施組織。**草案公開意見階段**，非強制。

<blockquote class="expert-quote">
  「You Can't Patch a Running Plant — CSA 將當前 OT 安全威脅比擬為 Y2K 等級的系統性危機，主張壓縮 OT 環境中無法停機修補的安全時間線。」
  <cite>Cloud Security Alliance（緊急策略簡報，2026-04-12 聯署）</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST／業界）

本週美國側多為 OT/ICS 指引與草案，**無新生效的強制法規**：

- **NIST SP 1800-41**（draft, public_comment）：製造業事件回應與復原實踐指引，OT/IT 團隊適用。
- **NIST IR 8323 Revision 2**（revision, public_comment）：PNT 系統安全剖面對齊 CSF 2.0。
- **NIST IR 8576 / CSWP 51 — Transit Cybersecurity Framework Community Profile**（draft, public_comment）：將 CSF 2.0 成果映射至公共運輸業，協助 transit 機構聚焦資安資源；意見徵詢期已於 2026-02-23 截止。屬自願性、基於風險的方法。
- **NIST SP 1334**（draft, public_comment）：OT 環境可攜式儲存媒體（USB）風險降低指引，建立工業控制系統外部媒體管理責任標準。
- **NIST.GCR.25-059**（guidance, final）：聯邦 IoT 基礎設施投資效益研究，估算 10–20 倍 ROI。
- **業界（CSA）**：OT 安全時間線壓縮、AI 重塑資安基礎（Core Collapse）等指引，強調結構性韌性與縱深防禦。
- **業界（SANS ISC）**：CLAIR 相依性映射模型。
- **CISA KEV**：CVE-2026-1281（Ivanti EPMM 程式碼注入），聯邦機構須於 2026-02-01 前緩解（mandatory），屬行動緩解令而非框架。

> 多數 NIST 文件處於 `public_comment` 或 `draft` 階段，**不可視為已生效要求**。

### 歐盟

本週歐盟側聚焦**鐵路基礎設施與能源治理**：

- **Regulation (EU) 2026/1184**（final, `directly_applicable`）：單一鐵路區容量使用新規，廢除 Regulation No 913/2010。⚠️ 降級萃取。
- **Council Decision (EU) 2026/1303**（final, `directly_applicable`）：OTIF CTE 鐵路技術規範（UTP/TAF）立場。⚠️ 降級萃取。
- **Directive (EU) 2026/706**（final, `requires_transposition`）：量測系統指令擴展至 EV 充電設備、壓縮氣體（氫能與替代燃料）分配器及冷能熱量計；生效日 2026-04-09，**轉置期限 2028-04-10**，適用日 2028-10-10。WebFetch 成功，確認度高。
- **Council Decision (EU) 2026/69**（final, `directly_applicable`）：確立歐盟在能源共同體部長理事會立場，含反詐措施（OLAF/EPPO 合作）與 2026–2027 預算框架，涉及九個締約方（含烏克蘭）。生效日 2026-01-01。

> **binding_force 區分**：2026/1184、2026/1303、2026/69 為 `directly_applicable`（直接適用）；2026/706 為 `requires_transposition`（需成員國轉置，2028 年期限）。

---

## 基礎設施領域矩陣

| 領域 | 美國要求 | 歐盟要求 | 本週變動 |
|------|----------|----------|----------|
| 能源 | IoT 基礎設施投資效益研究（final, NIST.GCR.25-059）；智慧逆變器指引 | EV 充電/氫能/冷能量測系統擴展（2028 轉置）；能源共同體治理與反詐 | Directive (EU) 2026/706；Council Decision (EU) 2026/69 |
| 電信 | IoT 資安指引擴展中（NISTIR 8259、SP 800-213，public_comment） | 無新要求 | NIST IoT Future Directions Workshop（2026-03-20） |
| 金融 | 無新要求 | 能源共同體預算與 OLAF/EPPO 反詐合作（mandatory） | Council Decision (EU) 2026/69 |
| 運輸（鐵路） | Transit Cybersecurity Framework（IR 8576/CSWP 51，draft） | 單一鐵路區容量新規；OTIF 鐵路技術標準（UTP/TAF）立場 ⚠️ | Regulation (EU) 2026/1184；Council Decision (EU) 2026/1303 |
| 水務 | 無新要求 | 無新要求 | 無 |
| OT/ICS 跨域 | SP 1334 USB 管理（draft）；SP 1800-41 事件復原（draft）；PNT IR 8323 Rev 2 | 無新要求 | CSA OT 時間線簡報；SANS CLAIR 模型 |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|----------------|------------|---------------|
| EU | Regulation (EU) 2026/1184 ⚠️ | 鐵路基礎設施管理者、列車業者、國家監管機構 | new | 建立單一鐵路區容量使用統一規則，廢除 Regulation No 913/2010 |
| EU | Council Decision (EU) 2026/1303 ⚠️ | OTIF 之 EU 代表、鐵路業者、滾動股製造商、國家鐵路安全機關 | clarified | 確立 OTIF CTE 立場，影響 UTP 與 TAF 技術合規 |
| EU | Directive (EU) 2026/706 | 量測儀器製造商、配銷商、符合性評鑑機構、成員國主管機關 | expanded | 量測系統指令擴展至 EV 充電、氫能與冷能計量 |
| EU | Council Decision (EU) 2026/69 | 能源共同體締約方、EU 機構、OLAF、EPPO | clarified | 強化反詐措施並導入 2026–2027 預算框架 |
| NIST | SP 1800-41（draft） | 製造業組織、OT/IT 安全人員、事件回應團隊 | new | 製造業網路攻擊事件回應與復原指引 |
| NIST | IR 8323 Rev 2（draft） | PNT 系統使用者、關鍵基礎設施運營商、聯邦機構 | expanded | PNT 風險管理對齊 CSF 2.0 |
| NIST | IR 8576 / CSWP 51（draft） | transit 機構、OT/IT 安全經理 | new | 公共運輸專屬 CSF 2.0 社群剖面 |
| 業界（CSA） | OT 時間線簡報 | OT 安全工程師、ICS 管理員、CISO、運營商 | new | 壓縮無法停機環境的 OT 安全回應時間線 |
| 業界（SANS） | CLAIR 模型 | 基礎設施安全長、OT/ICS 團隊、企業架構師 | new | 10 層相依性映射，揭示 AI 整合級聯失效風險 |

---

## 義務與舉證要求

### 新增義務摘要

- **韌性／容量管理義務**（EU 鐵路）：鐵路基礎設施管理者須按 Regulation (EU) 2026/1184 新規則分配列車路徑、跨境協調須依統一程序；EU 代表須在 OTIF CTE 依 Decision 2026/1303 授權立場表決。⚠️ 具體條文待確認。
- **OT 媒體與事件管理義務**（美國，草案）：依 SP 1334 建立 USB/可攜式媒體管理政策與掃描程序、維持 IT/OT 網路分隔；依 SP 1800-41 建立製造業事件回應與復原能力。皆為 recommended。
- **量測合規義務**（EU）：依 Directive (EU) 2026/706 修訂後附件 I、IV、V 及新增 Va、VIIa 之基本要求進行符合性評鑑（2028 年適用）。
- **反詐治理義務**（EU）：依 Council Decision (EU) 2026/69 與 OLAF/EPPO 合作並執行預算貢獻時程（mandatory）。

### 舉證要求摘要

- 鐵路：容量分配決定透明記錄、跨境協調結果向監管機構申報、UTP 修訂追蹤（EU 2026/1184、2026/1303）。
- OT：可攜式媒體政策文件、USB 允許/拒絕清單、媒體掃描日誌、OT 網路分段文件（SP 1334）。
- 量測：符合性評鑑證書；既有證書效力延續至 2038-04-10（Directive 2026/706）。
- 反詐：七日內通知秘書處、財務行為人通報、OLAF/EPPO 調查合作文件（EU 2026/69）。

---

## L5 — Evolution Signals

- [系統推論] 歐盟關鍵基礎設施立法本週明顯由「資安／制裁」轉向**鐵路運輸技術與容量治理**（2026/1184、2026/1303），顯示運輸韌性與跨境互通正成為新監管焦點；惟此判斷受兩文件降級萃取所限，待全文確認。
- [系統推論] OT/ICS 安全責任正從營運部門擴展至資安團隊，且業界（CSA、SANS）以「Y2K 級危機」與「相依性映射」等框架語言推動結構性韌性，先於正式法規（多數 NIST 文件仍處 draft/public_comment）。
- [系統推論] AI 整合被同時視為威脅（CLAIR 級聯失效、Core Collapse 攻防不對稱）與治理對象（NIST Cyber AI Profile），關鍵基礎設施的 AI 相依性監控可能成為下一波韌性要求重點。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | NIST Frameworks: 9, ISO: 7, EU Regulations: 4, NIST Insights: 4, CSA: 4, SANS ISC: 1, CISA KEV: 1 |
| rule_type 分布 | guidance: 7, new: 6, draft: 5, revision: 4, amendment: 2, expanded: 1, 其他(Council Decision 等): 5 |
| enforcement_signal 分布 | recommended: 18, mandatory: 8, informational: 4 |
| REVIEW_NEEDED | 2 筆（EU 2026/1184、EU 2026/1303，WebFetch 失敗降級萃取） |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure / cybersecurity / ai_risk | 9 | 2025-07-15 ~ 2026-05-21 |
| iso_standards | other / information_security | 7 | 2025-12-22 ~ 2026-05-19 |
| eu_regulations | critical_infrastructure / digital_market | 4 | 2026-01-16 ~ 2026-06-10 |
| nist_cybersecurity_insights | cybersecurity / supply_chain / workforce | 4 | 2024-10-09 ~ 2026-03-20 |
| csa_cloud_security | best_practices / cloud_security / ai_security | 4 | 2026-01-27 ~ 2026-05-19 |
| sans_isc | threat_analysis | 1 | 2026-02-25 |
| cisa_kev | vulnerability | 1 | 2026-01-29 |
</content>
</invoke>
