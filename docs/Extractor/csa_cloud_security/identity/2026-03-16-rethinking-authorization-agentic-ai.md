---
title: "Rethinking Authorization for the Age of Agentic AI"
source_url: https://cloudsecurityalliance.org/articles/rethinking-authorization-for-the-age-of-agentic-ai
date: 2026-03-16
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final
- **csa_framework**: CCM

## L2 — Responsibility Structure
- **affected_roles**: 身分治理團隊、安全運營中心（SOC）、企業架構師、政策工程師、雲端安全從業人員
- **shift_type**: new
- **shift_summary**: 引入 Mean Time to Understand（MTU）作為身分治理的核心 SLO，要求授權決策從靜態「誰？做什麼？允許嗎？」轉向包含「為何（intent/plan）」的動態理解模型。

## L3 — Risk Domains
- 身分識別與授權（Agentic AI 自主操作導致傳統授權框架失效）
- AI 安全（AI agent 以機器速度運行，超越傳統授權系統評估速度）
- 雲端安全（multi-step orchestration、動態 toolchain 帶來授權缺口）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 建立 MTU 指標，衡量理解 AI agent 的 intent、plan、toolchain 和資料流所需時間
  - 採用「Understand → Align → Authorize」操作模型取代靜態逐請求授權
  - 將 MTU 納入與 MTTD/MTTR 同等重要的 SLO 管理
- **evidence_requirements**:
  - MTU 指標追蹤記錄
  - Agent 意圖理解框架的實施文件
  - 與 CSA CCM 對齊的控制措施證明
- **enforcement_signal**: recommended

## Notes
