---
title: "AI Security: When Your Agent Crosses Multiple Independent Systems, Who Vouches for It?"
source_url: https://cloudsecurityalliance.org/articles/ai-security-when-your-agent-crosses-multiple-independent-systems-who-vouches-for-it
date: 2026-03-03
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final
- **csa_framework**: AICM

## L2 — Responsibility Structure
- **affected_roles**: 跨系統部署 AI agent 的組織、負責身分治理的企業安全團隊、管理跨組織整合的雲端服務供應商、合規與風險管理領導層
- **shift_type**: new
- **shift_summary**: AI agent 跨越多個獨立信任域運作時，每個域各自驗證憑證且無共享防禦機制，組織必須在 agent 觸及的每個域實施可驗證且可撤銷的委派機制。

## L3 — Risk Domains
- 身分識別（非人類身分攻擊：AI agent 代表快速增長的 NHI 脆弱類別）
- AI 安全（跨域 OAuth token 遭竊導致連鎖危害，Salesloft 事件 10 天內波及 700+ 企業）
- 雲端安全（跨組織整合缺乏協調安全控制，各域憑證驗證隔離）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 在 agent 觸及的每個域實施可驗證且可撤銷的 AI agent 委派機制
  - 建立跨獨立系統的即時撤銷能力
  - 為跨域 agent 操作建立協調安全控制
- **evidence_requirements**:
  - 跨域 agent 委派機制文件
  - 即時撤銷能力測試記錄
  - 跨組織安全控制實施證明
  - 符合 CCM/AICM/STAR 的控制措施佐證
- **enforcement_signal**: recommended

## Notes
文章為 CSA「身分安全即 AI 安全」七部曲系列的第三篇。引用關鍵數據：69% 組織對非人類身分攻擊有疑慮；Salesloft Drift AI 事件透過竊取的 OAuth token 在 10 天內波及 700+ 企業。
