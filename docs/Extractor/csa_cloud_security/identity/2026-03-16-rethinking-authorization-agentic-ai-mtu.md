---
title: "Rethinking Authorization for the Age of Agentic AI"
source_url: https://cloudsecurityalliance.org/articles/rethinking-authorization-for-the-age-of-agentic-ai
date: 2026-03-16
category: identity
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Identity Architects, IAM Engineers, Security Operations, AI/Platform Engineers
- **shift_type**: new
- **shift_summary**: 引入「Mean Time to Understand（MTU）」作為身分治理的核心 SLO，要求組織將 AI 代理的授權可觀測性提升至與人類用戶相同層級。

## L3 — Risk Domains
- AI 代理授權與身分治理
- 動態授權系統設計
- 可觀測性與審計軌跡

## L4 — Obligation & Evidence
- **new_obligations**:
  - 定義並追蹤 MTU（Mean Time to Understand）作為授權治理指標
  - 設計能應對 AI 代理動態工具選擇與中途改變執行路徑的授權機制
  - 確保傳統授權系統能在 AI 代理決策速度下有效運作
- **evidence_requirements**:
  - 授權事件日誌，足以支援 MTU 計算
  - AI 代理操作的可觀測性儀表板
- **enforcement_signal**: recommended

## Notes
（無）
