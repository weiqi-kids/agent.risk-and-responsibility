---
title: "79% of IT Pros Feel Ill-Equipped to Prevent Attacks Via Non-Human Identities, Cloud Security Alliance and Oasis Security Survey Finds"
source_url: https://cloudsecurityalliance.org/articles/79-of-it-pros-feel-ill-equipped-to-prevent-attacks-via-nhi-csa-oasis-survey-finds
date: 2026-01-26
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA) & Oasis Security
- **document_id**: The State of Non-Human Identity and AI Security Survey Report
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: IT/安全專業人員、IAM 團隊、身分治理團隊、CISO
- **shift_type**: expanded
- **shift_summary**: 79% IT 專業人員對防止 NHI 攻擊信心低或中等,必須建立明確所有權、正式化政策,並在機器存取規模超出控制前自動化身分生命週期管理

## L3 — Risk Domains
- Non-Human Identity (NHI) Security
- AI Identity Governance
- Identity Lifecycle Management
- Credential Management
- Over-Permissioned Access

## L4 — Obligation & Evidence
- **new_obligations**:
  - 建立明確的 AI 身分所有權/問責制(目前 51% 無)
  - 正式化創建或移除 AI 身分的書面政策(目前 78% 缺乏)
  - 在機器存取規模超出控制前自動化身分生命週期管理
  - 加速憑證輪替/撤銷流程(24% 需超過 24 小時)
  - 追蹤 AI 相關身分創建時間(目前 16%+ 不追蹤)
  - 降低過度權限存取(51% 的首要挑戰)
  - 建立強身分基礎以降低風險
- **evidence_requirements**:
  - AI 身分所有權與問責記錄
  - 書面身分創建/移除政策
  - 自動化身分生命週期工作流程日誌
  - 憑證輪替/撤銷時間記錄
  - AI 身分創建追蹤日誌
  - 權限審查與最小權限實施證明
- **enforcement_signal**: recommended

## Key Survey Statistics
- **79%** IT 專業人員對防止 NHI 攻擊的能力評為低或中等信心
- **92%** 懷疑傳統 IAM 解決方案能有效管理 AI/NHI 風險
- **78%** 缺乏創建或移除 AI 身分的書面政策
- **51%** 報告 AI 身分無明確所有權/問責
- **39%** 將治理視為 AI 系統和身分的首要關注

## 生命週期與自動化缺口
| 流程 | 組織佔比 |
|------|----------|
| 完全自動化身分創建/移除 | 14% |
| 半自動化工作流程 | 41% |
| 完全手動流程 | 27% |

## 修復延遲
- **24%** 在潛在暴露後需超過 24 小時輪替/撤銷憑證
- **30%** 需超過一天分類高嚴重性憑證洩漏
- **16%+** 不追蹤 AI 相關身分創建時間

## 核心挑戰
- 過度權限存取(51%)
- Token 蔓延與緩慢修復
- 傳統 IAM 基礎設施不適合 agentic AI 規模

## Recommendations
CSA Hillary Baron 強調「現在建立強身分基礎對降低風險至關重要」。Oasis CEO Danny Brickman 敦促組織在機器存取規模超出控制前,分配明確所有權、正式化書面政策,並自動化身分生命週期管理。

## Notes
調查對象:383 位 IT/安全專業人員,2025 年 8-9 月進行。報告名稱:《The State of Non-Human Identity and AI Security》。揭示 IT 團隊對管理非人類身分和 AI 代理感到準備不足,傳統 IAM 架構已不適應 agentic AI 規模。
