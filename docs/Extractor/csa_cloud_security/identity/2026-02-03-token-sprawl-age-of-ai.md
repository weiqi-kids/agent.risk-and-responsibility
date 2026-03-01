---
title: "Token Sprawl in the Age of AI"
source_url: https://cloudsecurityalliance.org/articles/token-sprawl-in-the-age-of-ai
date: 2026-02-03
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: CSA Non-Human Identity Survey Report (commissioned by Oasis Security, 2026)
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 雲端基礎設施團隊、AI/ML 運維人員、DevOps 與 CI/CD 管線管理者、安全運維中心（SOC）、SaaS 工具管理員
- **shift_type**: expanded
- **shift_summary**: AI 採用加速非人類身份（API 金鑰、Token、服務帳戶）的擴散，組織必須將機器憑證的全生命週期管理（建立追蹤、縮短有效期、自動撤銷、所有權指派）提升至與人類身份同等的治理水準。

## L3 — Risk Domains
- 非人類身份（NHI）Token 失控擴散
- 憑證輪換延遲導致的暴露視窗延長
- 靜態 API 金鑰長期存在形成的持久性攻擊路徑
- 舊有 IAM 系統無法因應 AI 身份風險
- 橫向移動風險（透過靜默、未被偵測的憑證）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 集中記錄 AI 相關身份建立事件；要求強制登錄元資料；將未知憑證視為安全發現項目
  - 優先使用短期 Token 搭配自動更新機制，最小化靜態 API 金鑰使用
  - 對高可信度暴露訊號預先授權自動撤銷流程
  - 為每個身份指定負責團隊，並定義明確的到期與更新政策
  - 追蹤憑證輪換時間（time-to-rotate）等指標，自動化探索與撤銷工作流程
- **evidence_requirements**:
  - AI 相關身份建立的集中事件追蹤記錄（超過 16% 組織尚未實作）
  - 24 小時內完成憑證輪換/撤銷的能力佐證（近 24% 組織超時）
  - 非人類身份的生命週期管理文件，對標 NIST 金鑰管理原則
- **enforcement_signal**: recommended
- **csa_framework**: Cloud Controls Matrix (CCM)、AI Controls Matrix (AICM)

## Notes
WebFetch 成功取得完整內容。報告由 Oasis Security 委託 CSA 執行，2026 年發布。
