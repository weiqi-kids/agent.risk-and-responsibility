---
title: "Islands of Agents: Why One IAM to Rule Them All Doesn't Work"
source_url: https://cloudsecurityalliance.org/articles/islands-of-agents-why-one-iam-to-rule-them-all-doesn-t-work
date: 2026-03-10
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 安全團隊、雲端架構師、SaaS 平台管理員、使用 AI 編碼助理的開發人員、身分存取管理專業人員
- **shift_type**: clarified
- **shift_summary**: 釐清統一 IAM 無法有效應對跨平台 AI agent 身分管理，建議按「island」（個人助理、編碼 agent、SaaS agent、企業 agent）分類，在各 island 內用現有技術解決問題。

## L3 — Risk Domains
- 身分識別（AI agent 身分管理跨越多個獨立環境，缺乏統一控制）
- AI 安全（僅 18% 組織對現有 IAM 能否處理 agent 身分有高度信心）
- 雲端安全（跨平台 agent 整合需聯合身分標準和 OAuth 擴充）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 按 agent 類型（個人、編碼、SaaS、企業）分類制定 IAM 策略
  - 為 on-behalf-of（OBO）和自主 agent 制定不同的授權模型
  - 評估並實施 IETF OAuth agent on-behalf-of 擴充
  - 確保有意義的人工監督機制
- **evidence_requirements**:
  - 各 island 類型的 IAM 策略文件
  - Agent 身分登記與許可權範圍記錄
  - 聯合身分標準實施紀錄
- **enforcement_signal**: recommended

## Notes
文章引用 CSA 調查：僅 18% 組織對現有 IAM 能否處理 agent 身分有高度信心；約 50% 組織直接將人類 IAM 模型套用於 agent，顯示準備不足。
