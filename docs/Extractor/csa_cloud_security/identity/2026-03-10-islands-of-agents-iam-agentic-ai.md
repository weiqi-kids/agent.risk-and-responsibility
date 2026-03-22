---
title: "Islands of Agents: Why One IAM to Rule Them All Doesn't Work"
source_url: https://cloudsecurityalliance.org/articles/islands-of-agents-why-one-iam-to-rule-them-all-doesn-t-work
date: 2026-03-10
category: identity
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: IAM Architects, Security Engineers, Platform Engineers, CISOs
- **shift_type**: clarified
- **shift_summary**: 釐清單一集中式 IAM 系統無法適用於多代理環境，各自隔離的代理「島嶼」需要跨域身分聯邦與信任模型。

## L3 — Risk Domains
- AI 代理跨域身分管理
- 多代理環境下的授權架構
- 身分聯邦與信任邊界

## L4 — Obligation & Evidence
- **new_obligations**:
  - 設計能處理多個獨立 AI 代理系統的 IAM 架構，不依賴單一集中控制點
  - 建立代理間身分聯邦機制，支援跨域信任傳播
  - 定義代理「島嶼」邊界及跨島嶼身分驗證流程
- **evidence_requirements**:
  - 多代理環境的 IAM 架構文件
  - 跨域身分驗證日誌
- **enforcement_signal**: recommended

## Notes
本文為 CSA [un]prompted AI 安全會議後的實地觀察，內容來自 Birds of a Feather 工作坊討論，屬社群共識性指引。
