---
title: "7 Cloud Security Lessons from the AWS Crypto Mining Campaign"
source_url: https://cloudsecurityalliance.org/articles/7-cloud-security-lessons-from-the-aws-crypto-mining-campaign
date: 2026-02-26
category: cloud_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final
- **csa_framework**: CCM
- **cloud_provider**: AWS

## L2 — Responsibility Structure
- **affected_roles**: 雲端安全團隊、IAM 專業人員、事件應變人員、雲端基礎架構管理員、安全領導層
- **shift_type**: clarified
- **shift_summary**: AWS 加密貨幣挖礦攻擊案例揭示攻擊者利用合法憑證與現有權限（而非軟體漏洞）發動攻擊，組織應優先強化憑證安全與持續暴露可視性，而非僅關注漏洞修補。

## L3 — Risk Domains
- 憑證安全與存取管理
- 雲端暴露管理（Exposure Management）
- 事件偵測與回應
- 雲端資源濫用

## L4 — Obligation & Evidence
- **new_obligations**:
  - 定期審查並縮減過度授予的雲端權限
  - 建立持續的雲端環境變更可視性監控
  - 串聯多工具的安全信號（異常存取模式、非預期資源使用、環境快速變更）
  - 監控可能削弱事件應變能力的組態修改
  - 建立早期預警機制而非仰賴事後分析
- **evidence_requirements**:
  - 權限審查記錄（定期 IAM 稽核報告）
  - 雲端資源使用異常告警日誌
  - 跨工具安全信號關聯分析記錄
- **enforcement_signal**: recommended

## Notes
（無）
