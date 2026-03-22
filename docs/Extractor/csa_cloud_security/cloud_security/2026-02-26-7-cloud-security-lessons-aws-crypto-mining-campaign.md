---
title: "7 Cloud Security Lessons from the AWS Crypto Mining Campaign"
source_url: https://cloudsecurityalliance.org/articles/7-cloud-security-lessons-from-the-aws-crypto-mining-campaign
date: 2026-02-26
category: cloud_security
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: （無正式文件編號）
- **status**: final
- **cloud_provider**: AWS

## L2 — Responsibility Structure
- **affected_roles**: 雲端架構師、安全工程師、CloudSecOps 團隊、IAM 管理員
- **shift_type**: clarified
- **shift_summary**: CSA 通過 AWS 加密貨幣挖礦攻擊案例，釐清現代雲端攻擊多不依賴系統漏洞，而是利用合法憑證與過度授予的權限，強調身分與存取管理是雲安全的核心防線。

## L3 — Risk Domains
- 雲端身分與存取管理（IAM）
- 憑證安全與最小權限
- 雲端資源濫用防護

## L4 — Obligation & Evidence
- **new_obligations**:
  - 實施最小權限原則，避免合法帳號遭濫用於大規模資源啟動
  - 監控異常資源使用模式（如加密挖礦）
  - 定期稽核雲端憑證與存取權限
- **evidence_requirements**:
  - IAM 最小權限稽核報告
  - 異常資源使用監控告警記錄
  - 憑證輪換與存取審查記錄
- **enforcement_signal**: recommended

## Notes
（無）
