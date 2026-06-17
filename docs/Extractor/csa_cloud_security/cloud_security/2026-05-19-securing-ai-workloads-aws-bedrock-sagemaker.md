---
title: "Securing AI Workloads in AWS: Why Bedrock and SageMaker Need Runtime Detection and AI-Powered Response"
source_url: https://cloudsecurityalliance.org/articles/securing-ai-workloads-in-aws-why-bedrock-and-sagemaker-need-runtime-detection-and-ai-powered-response
date: 2026-05-19
category: cloud_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final
- **cloud_provider**: AWS

## L2 — Responsibility Structure
- **affected_roles**: 雲端架構師、AWS 安全工程師、CISO、AI/ML 平台管理員
- **shift_type**: new
- **shift_summary**: 攻擊者利用 AI 工具入侵 AWS 環境後，以 Bedrock 和 SageMaker 作為攻擊目標（LLMjacking），單靠姿態管控（posture）已不足夠，需要執行期偵測（runtime detection）與 AI 驅動回應能力

## L3 — Risk Domains
- 雲端安全（AWS AI 工作負載攻擊面）
- AI 安全（LLMjacking、Bedrock/SageMaker 濫用）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 部署雲端偵測與回應（CDR）解決方案覆蓋 AWS Bedrock 和 SageMaker
  - 建立 AI 工作負載執行期異常偵測機制
  - 強化 AWS 憑證管理，防止洩漏憑證被用於快速提權
- **evidence_requirements**:
  - 2025 年 11 月事件案例：攻擊者在 10 分鐘內從洩漏憑證提升至管理員權限，並利用 LLM 自動化攻擊
  - CDR 解決方案部署與告警日誌記錄
- **enforcement_signal**: recommended

## Notes
