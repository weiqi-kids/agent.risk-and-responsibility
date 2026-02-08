---
title: "Protecting Model Updates in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning
date: 2024-03-21
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: AI/ML developers, privacy engineers, organizations implementing federated learning
- **shift_type**: clarified
- **shift_summary**: 闡明水平分割資料情境下 PPFL 系統的輸入隱私保護技術，包括訓練過程、模型與聚合方法

## L3 — Risk Domains
- 輸入隱私（input privacy）
- 聯邦學習安全
- 水平資料分割

## L4 — Obligation & Evidence
- **new_obligations**:
  - 水平分割 PPFL 系統需明確定義訓練過程與聚合方法以實現輸入隱私
- **evidence_requirements**:
  - 無明確舉證要求
- **enforcement_signal**: recommended

## Notes
本文為隱私保護聯邦學習系列，探討水平分割情境（各參與方持有不同資料行）下的輸入隱私技術，需精確定義訓練過程與聚合方法。
