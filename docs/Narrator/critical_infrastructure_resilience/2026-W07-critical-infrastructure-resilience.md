# Critical Infrastructure Resilience — 2026-W07

> 本期追蹤 30 項關鍵基礎設施韌性動態，涵蓋 NIST 框架、ISO 標準、歐盟法規、CISA 漏洞及雲端安全。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本週重點

1. **ISO 發布資料中心韌性 KPI 標準** — ISO/IEC TS 22237-31:2026（2026-02-03）定義資料中心設施韌性、可靠性與容錯能力的關鍵績效指標，涵蓋電力配送與環境控制，為關鍵基礎設施營運者提供量化評估框架。（國際標準，recommended）

2. **EU 飲用水指令技術勘誤** — Directive (EU) 2020/2184R(06)（2026-01-29）修正飲用水質監測資訊存取條文引用，雖為技術性修正，但提醒供水業者與主管機關需確認資訊存取機制符合正確條文。（歐盟指令，mandatory，requires_transposition）

3. **ISO 能源韌性框架發布** — ISO 22366:2026（2026-01-08）建立能源韌性的框架與原則，協助組織在破壞性事件後實現「重建更好」（build back better）目標，適用於能源供應網絡參與者。（國際標準，recommended）

4. **NIST AI 製造與關鍵基礎設施中心啟動** — NIST 於 2025 年 12 月宣布與 MITRE 合作成立兩個 AI 經濟安全中心（總計 9,000 萬美元），聚焦製造業生產力提升與關鍵基礎設施網路威脅防護。（美國，informational）

5. **CISA 新增多項關鍵漏洞至 KEV** — 本週新增 Fortinet、Cisco、Ivanti 等關鍵基礎設施常用設備漏洞，其中 Cisco Unified Communications 與 Fortinet 產品漏洞影響電信基礎設施。（美國，mandatory remediation）

---

## 區域動態比較

### 美國（NIST）

**AI 與關鍵基礎設施整合**：
- NIST 啟動兩個 AI 經濟安全中心，分別負責製造業生產力（Manufacturing AI）與關鍵基礎設施網路防護（Critical Infrastructure Cybersecurity），與 MITRE 合作開發 AI 代理工具
- 配合白宮「America's AI Action Plan」支柱 I 與 II，建立 AI 技術評估機制
- 預計後續有 7,000 萬美元 Manufacturing USA 計畫獎項

**OT 安全指引持續強化**：
- NIST SP 1334（draft）：OT 環境可攜式儲存媒體風險降低指引，針對工業控制系統的 USB 裝置管理建立政策建議
- NIST CSWP 51：公共運輸系統網路安全框架社群檔案（public_comment 階段），協助運輸業者管理 IT/OT 系統風險

**IoT 基礎設施投資效益**：
- NIST.GCR.25-059 研究顯示聯邦 IoT 基礎設施投資可產生 10-20 倍回報
- 識別 11 個 IoT 技術基礎設施領域的研究缺口（短、中、長期）

### 歐盟

**飲用水基礎設施**：
- Directive (EU) 2020/2184R(06) 勘誤修正 Article 8(5) 段落引用，影響成員國供水業者與主管機關的監測資訊存取機制
- 此為技術性修正，不影響英文版，主要修正其他語言版本

**供應鏈韌性強化**：
- Regulation (EU) 2025/2645（2025-12-30 生效）建立危機管理強制授權框架
- 在 declared crisis/emergency 模式下，可對專利、實用新型、補充保護證書實施強制授權
- 嚴格限制出口，產品僅供聯盟內部使用

---

## 基礎設施領域矩陣

| 領域 | 美國要求 | 歐盟要求 | 本週變動 |
|------|----------|----------|----------|
| 能源 | NIST AI 中心涵蓋製造業能源效率 | ISO 22366:2026 能源韌性框架（自願） | ISO 新標準發布 |
| 電信 | Cisco/Fortinet 漏洞需優先修補（CISA KEV） | NIS2 持續適用 | CISA 新增 KEV 條目 |
| 金融 | 無本週變動 | 無本週變動 | 無 |
| 運輸 | NIST CSWP 51 公共運輸 CSF Profile（draft） | CER Directive 持續適用 | 無新變動 |
| 水務 | 無本週變動 | EU 2020/2184 飲用水指令勘誤 | EU 技術勘誤 |
| 資料中心 | 無本週變動 | ISO/IEC TS 22237-31:2026 韌性 KPI（自願） | ISO 新標準發布 |

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | AI Centers 公告 | AI developers, manufacturing orgs, critical infrastructure operators | new | 新設 AI 經濟安全中心，建立技術評估機制 |
| NIST | SP 1334 (draft) | OT/ICS administrators, critical infrastructure operators | new | OT 環境 USB 裝置管理標準建立 |
| NIST | CSWP 51 (draft) | 公共運輸營運者、IT/OT 團隊 | expanded | IT/OT 系統安全責任擴展 |
| ISO | ISO 22372:2025 | 基礎設施韌性管理人員 | new | 基礎設施韌性通用指引 |
| ISO | ISO 22366:2026 | 能源供應網絡參與者 | new | 能源韌性框架建立 |
| ISO | ISO/IEC TS 22237-31:2026 | 資料中心設施管理人員 | new | 韌性 KPI 量化標準 |
| EU | 2020/2184R(06) | 供水業者、主管機關 | clarified | 監測資訊存取條文引用修正 |
| EU | 2025/2645 | IP 權利人、潛在被授權人、海關 | new | 危機強制授權框架 |

---

## 義務與舉證要求

### 新增義務摘要

**韌性測試義務**：
- 資料中心需依 ISO/IEC TS 22237-31:2026 評估韌性 KPI（可維護性、可復原性、脆弱性）
- 能源供應網絡參與者需評估破壞性事件的影響與復原能力

**事件通報義務**：
- OT 環境可攜式儲存媒體事件需建立監控與通報機制（NIST SP 1334 建議）
- EU 供水業者需確保監測資訊正確傳遞至主管機關

**供應商管理義務**：
- EU 2025/2645 建立危機產品供應的強制授權框架，IP 權利人需配合
- NIST IoT 指引持續強調製造商上市前威脅建模責任

### 舉證要求摘要

| 框架/法規 | 舉證要求 |
|----------|----------|
| ISO/IEC TS 22237-31:2026 | 韌性等級計算文件、KPI 量測紀錄 |
| ISO 22366:2026 | 能源韌性評估報告、復原計畫文件 |
| NIST SP 1334 | USB 裝置允許/拒絕清單、媒體掃描紀錄、OT 網路分段文件 |
| EU 2020/2184 | 資訊存取機制符合性證明 |
| EU 2025/2645 | 危機產品供應能力證明、出口管制合規文件 |

---

## L5 — Evolution Signals

- [系統推論] **OT 安全標準從建議走向強制**：NIST SP 1334 與 CSWP 51 雖為 recommended，但觀察到 OT 環境的安全指引正逐步細化（如 USB 管理、運輸系統專屬 Profile），未來可能被採購規範或產業監管納為要求。

- [系統推論] **資料中心韌性量化成為趨勢**：ISO/IEC TS 22237-31:2026 提供韌性 KPI 標準，暗示未來雲端服務與託管服務合約可能要求供應商揭露韌性指標，影響關鍵基礎設施的供應商選擇。

- [系統推論] **AI 與關鍵基礎設施防護加速整合**：NIST AI 中心的成立、CSA 雲端安全對 AI 控制平面的討論，顯示 AI 正被定位為關鍵基礎設施防護的核心工具，同時也引入新的風險面向（adversarial AI、insecure AI systems）。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | NIST Frameworks: 8, NIST Insights: 4, EU: 2, ISO Standards: 6, CISA KEV: 7, CSA Cloud: 4 |
| rule_type 分布 | new: 12, guidance: 3, draft: 3, amendment: 1, vulnerability: 7, other: 4 |
| enforcement_signal 分布 | mandatory: 9, recommended: 15, informational: 6 |
| 本週重點關鍵基礎設施項目 | critical_infrastructure category: 5, 相關 category: 25 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | critical_infrastructure, ai_risk, cybersecurity | 8 | 2025-07-15 ~ 2025-12-22 |
| nist_cybersecurity_insights | workforce, supply_chain, cybersecurity | 4 | 2024-10-09 ~ 2025-12-02 |
| eu_regulations | critical_infrastructure, supply_chain | 2 | 2025-12-30 ~ 2026-01-29 |
| iso_standards | other, information_security | 6 | 2025-11-19 ~ 2026-02-03 |
| cisa_kev | vulnerability | 7 | 2026-01-21 ~ 2026-02-05 |
| csa_cloud_security | cloud_security, best_practices | 4 | 2026-01-06 ~ 2026-01-27 |

---

*報告產出時間：2026-02-13*
