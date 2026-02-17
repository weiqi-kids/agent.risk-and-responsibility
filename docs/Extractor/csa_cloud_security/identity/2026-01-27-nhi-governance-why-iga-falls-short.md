---
title: "非人類身分治理：為何 IGA 無法勝任"
date: 2026-01-27
source_url: https://cloudsecurityalliance.org/articles/non-human-identity-governance-why-iga-falls-short
fetched_at: 2026-02-17
category: identity
---

# L1：公告基本資訊

**issuing_body**: Cloud Security Alliance (CSA)
**rule_type**: guidance
**enforcement_signal**: recommended
**target_audience**: 身分治理團隊、IAM 架構師
**date**: 2026-01-27

# L2：責任轉移分析

**shift_type**: clarified
**who_affected**: 使用傳統 IGA 平台管理非人類身分的組織
**what_changed**: 闡明傳統 IGA 平台的設計假設與非人類身分（NHI）特性根本不符，需採用持續驗證模型
**enforcement_timing**: 立即檢視
**explicit_deadline**: -

# L3：實務衝擊評估

**操作面衝擊**：
- IGA 平台建立於「身分代表人類」的前提，人類身分有明確來源、穩定屬性與可預測生命週期
- NHI 由任何業務單位、雲端平台或自動化工具隨時建立，所有權不明確，存取權限隨系統演進頻繁變動
- 月/季/年的定期認證「不符合最低權限原則，也不反映機器存取的實際變化方式」

**財務/資源衝擊**：
- NHI 數量往往比人類用戶多出數個量級，人工審查不可持續
- 需投資持續驗證模型與自動化工具

**治理衝擊**：
- Joiner→Mover→Leaver 模型對機器身分毫無意義
- 自主 AI 代理的存取決策受意圖（intent）影響，靜態角色與排程審查無法推理提示詞或執行意圖

# L4：落地執行指引

**傳統 IGA 技術限制**：

| 問題 | 說明 |
|------|------|
| 生命週期不適用 | Joiner→Mover→Leaver 模型對機器身分毫無意義 |
| 情境缺失 | NHI 需從執行時行為推導情境，靜態屬性不足 |
| 審查週期錯位 | 月/季/年的定期認證不符合最低權限原則 |
| 規模失控 | NHI 數量遠超人類用戶，人工審查不可持續 |

**新型身分類型挑戰**：
- 自主 AI 代理可主動發起行動、串聯任務、存取多個系統
- 無直接人類監督
- 存取決策受意圖（intent）影響
- 靜態角色與排程審查無法推理提示詞或執行意圖

**建議替代方案（持續驗證模型）**：
1. 以政策驅動執行，依據真實使用與依賴關係資料
2. 識別過度授權身分
3. 風險變化時自動輪換憑證
4. 標記未使用的存取權限
5. 安全退役已停用身分的關聯帳號

**核心原則**：以可觀測行為建立問責制，取代強制簽核。

**NHI 與人類身分差異**：
- 建立來源：任何業務單位 vs. HR 系統
- 所有權：分散於多個團隊 vs. 明確
- 生命週期：不可預測 vs. Joiner-Mover-Leaver
- 存取需求：隨系統演進變動 vs. 相對穩定

# Notes

**confidence**: 高
**review_notes**: 清楚說明為何傳統 IGA 平台無法處理非人類身分，建議採用持續驗證模型取代週期性審批
