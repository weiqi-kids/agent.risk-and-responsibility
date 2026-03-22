---
title: "AI Security: When Your Agent Crosses Multiple Independent Systems, Who Vouches for It?"
source_url: https://cloudsecurityalliance.org/articles/ai-security-when-your-agent-crosses-multiple-independent-systems-who-vouches-for-it
date: 2026-03-03
category: identity
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: IAM Architects, Security Engineers, AI Platform Teams, CISOs
- **shift_type**: new
- **shift_summary**: AI 代理跨越多個獨立信任域時，現有各域孤立驗證憑證的機制形成共同防禦盲點，需要跨域身分擔保機制。

## L3 — Risk Domains
- AI 代理跨域身分驗證
- OAuth token 安全
- 多信任域身分聯邦
- 供應鏈身分安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 建立 AI 代理跨越多個獨立系統時的統一身分擔保機制
  - 強化 OAuth token 安全，防止跨組織的 token 竊取攻擊
  - 設計跨信任域的共享防禦機制，避免各域孤立驗證的安全盲點
  - 監控 AI 代理的跨域存取行為，偵測異常 token 使用
- **evidence_requirements**:
  - 跨域存取日誌與 token 使用記錄
  - 身分擔保機制設計文件
  - OAuth token 生命週期管理政策
- **enforcement_signal**: recommended

## Notes
本文為七部曲系列第三篇（身分安全即 AI 安全），引用 Salesloft Drift AI 聊天代理洩露事件（700+ 公司、10 天、OAuth token 被竊）作為具體案例，以及 69% 組織對跨邊界代理行為表達疑慮的調查數據。
