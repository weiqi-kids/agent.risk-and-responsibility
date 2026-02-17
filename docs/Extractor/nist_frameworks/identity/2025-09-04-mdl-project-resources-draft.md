---
title: "New NIST NCCoE Mobile Drivers Licenses Project Resources Now Available!"
date: 2025-09-04
source_url: https://www.nist.gov/news-events/news/2025/09/new-nist-nccoe-mobile-drivers-licenses-project-resources-now-available
fetched_at: 2026-02-17
category: identity
---

# L1 | 關鍵事實

**rule_type**: draft

**document_id**: Building Assurance in the mDL Ecosystem, mDL Interaction Diagrams, Privacy Risk Assessment Methodology (PRAM)

**effective_date**: 公開意見徵詢中（截止日期未明確）

**jurisdiction**: United States (Federal)

**source_org**: NIST NCCoE (National Cybersecurity Center of Excellence)

**原文摘要**:
The NIST NCCoE is excited to announce and accept comments on three new draft publications under its Mobile Driver Licenses (mDL) Project. These releases include resources on mDL assurance, mDL data flows, and a privacy risk assessment.

---

# L2 | 權責轉移

**shift_type**: new

**enforcement_signal**: recommended

**主體 (actors)**:
- mDL 發證機構（州政府 DMV 等，需建立保證機制並評估隱私風險）
- mDL 技術提供者（需實施公鑰加密基礎設施並符合資料流程規範）
- mDL 依賴方（驗證 mDL 的商家、執法機關等，需理解資料流程與信任模型）
- 隱私監管機關（需審查 mDL 隱私風險評估結果）

**轉移內容**:
這三份出版物建立了行動駕照（mDL）生態系統的新責任框架：(1) 發證機構需建立保證機制以確保 mDL 可信度 (2) 技術提供者需實施基於公鑰加密的安全架構並參照 NIST 800-63-4 控制措施 (3) 所有參與方需使用 PRAM 工具評估與優先處理隱私風險。這代表從傳統實體駕照的「物理安全為主」轉向 mDL 的「密碼學安全與隱私保護並重」的新責任分配。

**依據條文/段落**:
- Building Assurance in the mDL Ecosystem: 保證機制
- mDL Interaction Diagrams: 資料流程與互動模型
- Privacy Risk Assessment Methodology (PRAM): 隱私風險評估工具
- 參照 NIST 800-63-4 控制措施用於發證流程

---

# L3 | 實務衝擊

**受影響產業**:
- 州政府 DMV（需建置 mDL 發證系統）
- 身份驗證技術提供者（mDL 錢包應用、驗證裝置製造商）
- 零售與服務業（需部署 mDL 驗證機制，如酒類銷售年齡驗證）
- 執法機關（需採用 mDL 驗證工具與流程）
- 旅遊與運輸業（機場安檢、租車等身份驗證場景）

**成本影響**:
- 州政府需投資 mDL 發證系統與公鑰基礎設施（PKI）
- 技術提供者需開發符合 NIST 800-63-4 的安全機制
- 依賴方需採購 mDL 驗證設備與培訓人員
- 隱私風險評估的持續運營成本

**技術挑戰**:
- 公鑰密碼學基礎設施的建置與維護（憑證管理、金鑰更新）
- 跨州 mDL 互通性（不同州發證系統的相容性）
- 隱私保護與驗證需求的平衡（最小化資料揭露原則）
- 離線驗證場景的安全性（無網路連線時的信任機制）
- 實體駕照與 mDL 並存期的雙軌管理

**預期時程**:
- 草案已於 2025-09-04 發布
- 公開意見徵詢截止日期：未明確（需查閱專案網站）
- 各州 mDL 採用時程：取決於各州立法與預算

---

# L4 | 衝突與不確定性

**模糊條文**:
- PRAM 工具的具體隱私風險項目未在新聞摘要中列舉
- 「保證機制」的具體技術標準待詳述
- 公開意見徵詢截止日期未明確

**多方矛盾**:
- 隱私最小化 vs. 驗證需求（依賴方可能要求超過必要的個人資料）
- 離線驗證便利性 vs. 安全性（無網路連線時難以撤銷憑證）
- 州政府自主權 vs. 跨州互通性（各州可能採用不同技術標準）
- 實體駕照淘汰壓力 vs. 數位落差（部分民眾可能無法使用智慧型手機）

**待釐清問題**:
- 與 ISO 18013-5 標準的關係（國際 mDL 標準相容性）
- 跨國 mDL 驗證（外國遊客使用本國 mDL 在美國的接受度）
- mDL 遺失或手機被竊時的撤銷與復原機制
- 生物辨識（如臉部辨識）與 mDL 的整合政策
- 商業追蹤風險（驗證紀錄是否被用於商業分析或監控）

---

# Notes

**confidence**: 中

**review_notes**:
資料來源完整性中等，文件名稱已確認但缺少正式編號（如 NIST IR 或 SP 編號）及公開意見徵詢截止日期。標記為「中」信心度。特別注意與 NIST 800-63-4 的關聯，顯示 mDL 納入既有數位身份框架。PRAM 工具的隱私風險評估方法學值得深入研究，但新聞摘要未提供足夠細節。建議查閱完整出版物以取得文件編號與技術規範。

**tags**: #MobileDriversLicense #mDL #DigitalIdentity #PrivacyRisk #PRAM #NIST800-63-4 #PKI #IdentityAssurance
