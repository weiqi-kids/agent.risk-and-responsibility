---
title: "New Draft White Paper | PQC Migration: Mappings to Risk Framework Docs"
date: 2025-09-18
source_url: https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs
fetched_at: 2026-02-17
category: cybersecurity
---

# L1 | 關鍵事實

**rule_type**: draft

**document_id**: NIST CSWP 48

**effective_date**: 公開意見徵詢至 2025-10-20

**jurisdiction**: United States (Federal)

**source_org**: NIST NCCoE (National Cybersecurity Center of Excellence)

**原文摘要**:
The NIST National Cybersecurity Center of Excellence (NCCoE) has published an initial public draft of NIST Cybersecurity White Paper (CSWP) 48, Mappings of Migration to PQC Project Capabilities to Risk Framework Documents. Cryptographic algorithms must withstand attacks from both conventional and quantum computers.

---

# L2 | 權責轉移

**shift_type**: new

**enforcement_signal**: recommended

**主體 (actors)**:
- 組織資訊安全團隊（需立即開始規劃 PQC 遷移）
- 密碼學系統維護者（需同時抵禦傳統與量子電腦攻擊）
- 長期資料保護責任方（面臨「harvest now, decrypt later」攻擊風險）
- 關鍵基礎設施運營者（需優先評估量子威脅影響）

**轉移內容**:
本白皮書建立了後量子密碼學（PQC）遷移的風險管理框架，要求組織立即開始規劃密碼學演算法升級，以應對「harvest now, decrypt later」攻擊威脅（攻擊者現在收集加密資料，等待量子電腦未來解密）。此轉移將密碼學安全責任從「被動應對已知威脅」擴展至「主動防禦未來量子威脅」，並將 PQC 遷移能力映射至 NIST CSF 2.0 及 SP 800-53 Rev.5 的具體控制項，形成系統化的責任分配框架。

**依據條文/段落**:
映射至 NIST CSF 2.0（網路安全框架）及 NIST SP 800-53 Rev.5（資訊系統安全控制綜合目錄）

---

# L3 | 實務衝擊

**受影響產業**:
- 金融服務業（長期加密資料保護需求）
- 醫療產業（患者資料長期隱私要求）
- 政府機關（機密資料面臨「收集後解密」風險）
- 關鍵基礎設施（能源、通訊、交通等）
- 密碼學軟硬體供應商

**成本影響**:
- 密碼學演算法升級與系統改造成本
- 雙重防護期間的效能開銷（同時支援傳統與後量子演算法）
- 歷史資料重新加密成本（防禦「收集後解密」攻擊）
- 人員培訓與專業顧問費用

**技術挑戰**:
- 歷史經驗顯示新演算法完全整合需要很長時間，但量子威脅時間壓力緊迫（部分專家認為 10 年內即將實現）
- 需同時抵禦傳統電腦與未來量子電腦攻擊（混合加密架構）
- 映射 PQC 遷移能力至 CSF 2.0 及 SP 800-53 的複雜性
- 系統相依性分析（識別所有使用密碼學的元件）
- 效能與安全的平衡（後量子演算法通常需要更多運算資源）

**預期時程**:
- 公開意見徵詢期：至 2025-10-20
- 量子威脅實現時間：專家預測差異大，部分認為少於 10 年
- 遷移規劃：建議組織立即開始（白皮書明確要求「應立即開始規劃」）

---

# L4 | 衝突與不確定性

**模糊條文**:
- 「harvest now, decrypt later」攻擊的具體風險等級評估標準未明確
- 「立即開始規劃」的具體時程里程碑待定義

**多方矛盾**:
- 時間壓力（10 年內量子威脅）vs. 歷史經驗（新演算法整合需要很長時間）
- 效能要求 vs. 安全強度（後量子演算法資源需求較高）
- 全面遷移成本 vs. 風險不確定性（量子電腦實現時程預測差異大）

**待釐清問題**:
- 量子電腦實現時程的專家共識（目前預測從「少於 10 年」到「數十年」不等）
- 不同產業的 PQC 遷移優先順序排序機制
- 既有加密資料是否需全面重新加密（成本與必要性評估）
- 與國際 PQC 標準（如 ISO/IEC）的協調機制
- 中小型組織資源有限下的簡化遷移路徑
- 混合加密期間的互通性與相容性標準

---

# Notes

**confidence**: 高

**review_notes**:
資料來源完整，包含文件編號（NIST CSWP 48）及公開意見徵詢截止日期。白皮書屬於建議性質，但「harvest now, decrypt later」攻擊的現實威脅使其具有高度急迫性。特別注意量子威脅時程的不確定性與專家預測差異，組織需自行評估風險容忍度。白皮書透過映射至 CSF 2.0 及 SP 800-53，提供了系統化的遷移規劃框架。

**tags**: #PostQuantumCryptography #PQC #NISTCSWP48 #QuantumThreat #CSF2.0 #SP800-53 #HarvestNowDecryptLater #CryptographicAgility
