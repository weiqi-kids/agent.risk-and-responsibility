---
title: "Securing the Agentic Control Plane: A New Foundation for Trust in AI"
source_url: https://cloudsecurityalliance.org/articles/2026-securing-the-agentic-control-plane
date: 2026-03-05
category: ai_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final
- **csa_framework**: AICM

## L2 — Responsibility Structure
- **affected_roles**: 安全從業人員與 CISO、執行領導層與董事會、雲端供應商與企業組織、AI 開發人員、審計人員與監管機構
- **shift_type**: new
- **shift_summary**: 自主 AI agent 的出現要求建立全新的 Agentic Control Plane 治理框架，涵蓋非人類行為者的身分、授權、編排、執行時行為與問責，不可沿用傳統 IT 安全控制。

## L3 — Risk Domains
- AI 安全（自主 AI 系統可在無直接人工介入的情況下執行動作、做出決策）
- 身分識別（為非人類行為者建立身分優先設計原則）
- 合規框架（需持續保證模型取代點對點驗證，對接 AICM/STAR/CCM）
- 雲端安全（agent 在雲端系統中的執行時可見性與監控）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 建立 agent 部署的身分優先設計原則
  - 實施執行時授權機制
  - 建立 agent 能力的分類系統
  - 發展持續而非週期性的保證驗證模型
  - 為 agent 部署建立跨組織協作標準
- **evidence_requirements**:
  - Agent 身分設計文件
  - 執行時授權機制實施記錄
  - Agent 能力分類與風險評估
  - 持續保證驗證記錄
  - AICM/STAR/CCM 對齊證明
- **enforcement_signal**: recommended

## Notes
文章強調 Agentic AI 與過去技術變革（雲計算、Zero Trust）的本質差異：自主系統在無直接人工介入下運作，現有控制機制無法直接沿用。提出三個基礎問題但未提供可量化指標，強調需要業界協作制定衡量標準。
