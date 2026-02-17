---
title: "Feedback Requested: NIST Cryptographic Module Validation Program White Paper"
date: 2025-09-10
source_url: https://www.nist.gov/news-events/news/2025/09/feedback-requested-nist-cryptographic-module-validation-program-white-paper
fetched_at: 2026-02-17
category: cybersecurity
---

# L1 | 關鍵事實

**rule_type**: draft

**document_id**: NIST CSWP 37B

**effective_date**: 公開意見徵詢至 2025-10-10

**jurisdiction**: United States (Federal)

**source_org**: NIST NCCoE (National Cybersecurity Center of Excellence)

**原文摘要**:
The NIST National Cybersecurity Center of Excellence (NCCoE) has published the draft NIST Cybersecurity White Paper (CSWP) 37B, Automation of the NIST Cryptographic Module Validation Program (ACMVP). The purpose of this project is to support improvements to the efficiency and timeliness of CMVP operations and processes.

---

# L2 | 權責轉移

**shift_type**: clarified

**enforcement_signal**: informational

**主體 (actors)**:
- CMVP 測試實驗室（需採用自動化工具套件以提升驗證效率）
- 密碼學模組供應商（需適應自動化測試流程與新的測試證據要求）
- NIST CMVP 團隊（負責開發與維護自動化基礎設施）
- FIPS 140-3 合規需求方（受益於更及時的驗證結果）

**轉移內容**:
本白皮書旨在解決現行 CMVP 人工作業流程的效率瓶頸（often incompatible with industry requirements），透過自動化工具套件提升 FIPS 140-3 驗證流程的效率與及時性。自動化涵蓋三大工作流：測試證據（TE）、協定、研究基礎設施。此轉移將驗證責任從「人工審查為主」轉向「自動化工具輔助人工判斷」，但不改變 FIPS 140-3 標準本身的要求。

**依據條文/段落**:
CMVP 負責驗證加密模組實作是否符合 FIPS 140-3 要求；自動化專案涵蓋 2024年9月至2025年4月的進度

---

# L3 | 實務衝擊

**受影響產業**:
- 密碼學模組供應商（硬體安全模組、加密軟體等）
- 雲端服務提供者（需 FIPS 140-3 驗證的服務）
- 政府承包商（聯邦合約要求 FIPS 140-3 合規）
- 關鍵基礎設施（金融、醫療、能源等需加密模組的產業）

**成本影響**:
- 測試實驗室需投資採用自動化工具套件
- 供應商可能需調整測試證據準備流程以符合自動化要求
- 長期效益：驗證時程縮短，加速產品上市

**技術挑戰**:
- 自動化工具與現有測試流程的整合
- 確保自動化測試結果符合 FIPS 140-3 要求的保證程度
- 人工審查與自動化工具的責任分界
- 三大工作流（測試證據、協定、研究基礎設施）的協調

**預期時程**:
- 公開意見徵詢期：至 2025-10-10
- 自動化專案進度：2024年9月至2025年4月已完成部分開發
- 完整實施時程：待最終版發布後公告

---

# L4 | 衝突與不確定性

**模糊條文**:
- 自動化工具套件的具體技術細節未在新聞摘要中說明
- 人工審查與自動化工具的責任分界未明確

**多方矛盾**:
- 產業效率需求 vs. 嚴謹驗證要求（過度自動化可能降低審查品質）
- 標準化自動化流程 vs. 不同類型密碼學模組的特殊需求
- 測試證據格式標準化 vs. 供應商既有文件準備流程

**待釐清問題**:
- 自動化工具是否開源（供應商與實驗室是否可自行驗證工具正確性）
- 不符合自動化流程的特殊密碼學模組如何處理
- 與國際密碼學模組驗證標準（如 Common Criteria）的協調
- 自動化工具的維護與更新責任歸屬
- 舊有 FIPS 140-2 驗證模組的遷移路徑

---

# Notes

**confidence**: 高

**review_notes**:
資料來源完整，包含文件編號（NIST CSWP 37B）及公開意見徵詢截止日期。白皮書屬於資訊性質（informational），旨在說明自動化專案而非建立新規範。CMVP 驗證要求本身來自 FIPS 140-3 標準（強制性），但本白皮書僅涉及驗證流程的效率改善。特別注意產業對驗證時程的長期抱怨，自動化專案回應此需求。

**tags**: #CMVP #ACMVP #FIPS140-3 #CryptographicModuleValidation #AutomationTools #NISTCSWP37B #TestingEfficiency
