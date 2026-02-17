---
title: "79% IT 專業人員認為無法有效防禦非人類身分攻擊 — CSA × Oasis Security 調查"
date: 2026-01-26
source_url: https://cloudsecurityalliance.org/articles/79-of-it-pros-feel-ill-equipped-to-prevent-attacks-via-nhi-csa-oasis-survey-finds
fetched_at: 2026-02-17
category: identity
---

# L1：公告基本資訊

**issuing_body**: Cloud Security Alliance (CSA), Oasis Security
**rule_type**: survey
**enforcement_signal**: informational
**target_audience**: IT 與安全專業人員、身分治理團隊
**date**: 2026-01-27

# L2：責任轉移分析

**shift_type**: expanded
**who_affected**: 管理非人類身分（NHI）與 AI 身分的組織
**what_changed**: 調查揭示 79% IT 專業人員認為無法有效防禦 NHI 攻擊，78% 組織缺乏 AI 身分政策
**enforcement_timing**: 立即關注
**explicit_deadline**: -

# L3：實務衝擊評估

**操作面衝擊**：
- 可見性不足：逾 16% 組織未追蹤新 AI 身分的創建
- 憑證輪換遲緩：24% 組織在憑證暴露後需超過 24 小時才能處理
- 高危漏洞分類緩慢：30% 組織處理高嚴重性憑證洩露需超過一天
- 自動化程度極低：僅 14% 實現全自動化流程；27% 完全依賴人工處理

**財務/資源衝擊**：
- 需投資 AI 身分管理與自動化工具
- 建立即時追蹤與快速回應機制

**治理衝擊**：
- 78% 組織缺乏正式文件化政策來管理 AI 身分的創建與移除
- 無明確所有權/問責制：51%
- 過度授權存取問題：51%

# L4：落地執行指引

**關鍵統計數據**：

| 指標 | 數據 |
|------|------|
| 對防禦 NHI 攻擊信心不足 | 79% |
| 缺乏 AI 身分政策 | 78% |
| 對傳統 IAM 解決方案失去信心 | 92% |
| 無明確所有權/問責制 | 51% |
| 過度授權存取問題 | 51% |

**非人類身分（NHI）核心風險**：
1. **可見性不足**：逾 16% 組織未追蹤新 AI 身分的創建
2. **憑證輪換遲緩**：24% 組織在憑證暴露後需超過 24 小時才能處理
3. **高危漏洞分類緩慢**：30% 組織處理高嚴重性憑證洩露需超過一天

**AI 身分政策缺口**：
- 78% 組織缺乏正式文件化政策來管理 AI 身分的創建與移除
- 身分治理列為首要疑慮（39% 受訪者）
- 自動化程度極低：僅 14% 實現全自動化流程；27% 完全依賴人工處理

**主要發現**：
1. **傳統 IAM 基礎設施已不適用**：92% 受訪者認為舊系統無法有效管理 AI 與 NHI 風險
2. **Token 擴散問題嚴峻**：AI 代理、工作流程與整合可在數分鐘內產生憑證
3. **治理與所有權混亂**：半數以上組織缺乏清晰的責任歸屬機制

**建議行動**：
1. **指定明確所有權** — 每個 AI 身分須有責任人
2. **以書面鎖定政策** — 正式採納 AI 身分創建/移除規範
3. **自動化生命週期管理** — 在機器存取規模失控前建立自動化機制
4. **強化可見性** — 建立追蹤所有 AI 相關身分的系統

**Oasis Security CEO Danny Brickman 建議**：
> "Assign clear ownership, lock policy in writing, and automate the lifecycle before machine access scales beyond control."

# Notes

**confidence**: 高
**review_notes**: 調查於 2025 年 8-9 月進行，收集 383 份 IT 與安全專業人員回覆，揭示 NHI 與 AI 身分管理的嚴重缺口
