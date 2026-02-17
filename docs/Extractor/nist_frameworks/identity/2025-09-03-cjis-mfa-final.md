---
title: "Final Publication Available: NIST IR 8523, Multi-Factor Authentication for Criminal Justice Information Systems"
date: 2025-09-03
source_url: https://www.nist.gov/news-events/news/2025/09/final-publication-available-nist-ir-8523-multi-factor-authentication
fetched_at: 2026-02-17
category: identity
---

# L1 | 關鍵事實

**rule_type**: final

**document_id**: NIST IR 8523

**effective_date**: 2025-09-03

**jurisdiction**: United States (Federal)

**source_org**: NIST NCCoE (National Cybersecurity Center of Excellence)

**原文摘要**:
The NIST National Cybersecurity Center of Excellence (NCCoE) has published the final version of NIST Interagency Report (IR) 8523, Multi-Factor Authentication for Criminal Justice Information Systems. Credential compromises represent an emergent threat, and CJIS Security Policy (5.9.2 and later) requires MFA to protect access to Criminal Justice Information.

---

# L2 | 權責轉移

**shift_type**: expanded

**enforcement_signal**: mandatory

**主體 (actors)**:
- 執法機關（需導入 MFA 保護刑事司法資訊系統存取）
- 電腦輔助調度（CAD）與案件管理系統（RMS）供應商（需整合 MFA 標準與最佳實踐）
- CJIS 系統管理者（需實施符合 CJIS Security Policy 5.9.2 的 MFA 架構）
- 執法技術廠商（需提供支援 MFA 的解決方案）

**轉移內容**:
CJIS Security Policy 5.9.2 版及後續版本明確要求使用 MFA 保護刑事司法資訊（CJI）的存取，此為強制性要求（mandatory）。NIST IR 8523 擴展執法機關的認證安全責任，要求在面對網路釣魚、暴力破解攻擊及認證機制漏洞利用等威脅時，必須採用多因素認證。特別針對 CAD 及 RMS 系統的整合困難，提供多元實施途徑，將責任從「單一密碼防護」提升至「多因素驗證」層級。

**依據條文/段落**:
CJIS Security Policy 5.9.2 版及後續版本要求 MFA；內容基於與全國各機構及執法技術廠商的實際訪談

---

# L3 | 實務衝擊

**受影響產業**:
- 執法機關（聯邦、州、地方警察局、檢察官辦公室等）
- CAD 與 RMS 系統供應商
- 執法技術廠商（身份驗證解決方案提供者）
- 刑事司法資訊共享網路運營者

**成本影響**:
- 執法機關需採購 MFA 硬體（如安全金鑰、智慧卡）與軟體
- CAD 與 RMS 系統可能需要重大改造以整合 MFA
- 人員培訓成本（執法人員學習使用 MFA 工具）
- 持續運營成本（MFA 憑證管理、重設流程）

**技術挑戰**:
- CAD 與 RMS 系統的 MFA 整合（這些系統通常為舊有遺留系統）
- 緊急情況下的 MFA 使用便利性（如追捕過程中快速存取系統）
- 不同執法機關間的 MFA 互通性（跨機關協作時的認證機制）
- 行動裝置與車載終端的 MFA 支援（現場執法環境的特殊需求）
- 備援認證機制（MFA 裝置遺失或故障時的應急方案）

**預期時程**:
- 最終版已於 2025-09-03 發布
- CJIS Security Policy 5.9.2 要求 MFA（已生效）
- 執法機關實施時程：取決於各機關資源與系統改造進度

---

# L4 | 衝突與不確定性

**模糊條文**:
- 「多元實施途徑」的具體技術選項未在新聞摘要中詳述
- 緊急情況下的 MFA 豁免機制未明確

**多方矛盾**:
- 安全性要求 vs. 緊急存取需求（如追捕嫌犯時的快速系統登入）
- MFA 複雜度 vs. 執法人員技術能力（可能需大量培訓）
- 系統改造成本 vs. 預算限制（特別是小型執法機關）
- 隱私保護 vs. 稽核需求（MFA 登入記錄的保存與使用）

**待釐清問題**:
- 舊有 CAD/RMS 系統無法改造時的替代方案
- 跨機關協作時的 MFA 信任鏈建立（如聯邦與地方機關合作案件）
- MFA 裝置遺失或被竊時的應急存取流程
- 與聯邦身份認證標準（如 PIV、FIDO2）的整合路徑
- 第三方執法技術廠商的 MFA 實施驗證機制

---

# Notes

**confidence**: 高

**review_notes**:
資料來源完整，包含文件編號（NIST IR 8523）及發布日期。CJIS Security Policy 5.9.2 的 MFA 要求為強制性（mandatory），使本文件具有高度實務急迫性。特別注意內容基於全國各機構及執法技術廠商的實際訪談，顯示其實用性與產業驗證。CAD 與 RMS 系統的整合挑戰是關鍵痛點，需持續關注實施經驗分享。

**tags**: #MFA #MultiFactorAuthentication #CJIS #CriminalJustice #NISTIR8523 #CAD #RMS #LawEnforcement #CredentialSecurity
