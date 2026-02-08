---
title: "Protecting Model Updates in Privacy-Preserving Federated Learning: Part Two"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning-part-two
date: 2024-05-02
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
- **shift_type**: expanded
- **shift_summary**: 延續上篇討論水平分割資料的輸入隱私技術，本篇聚焦垂直分割資料情境下的輸入隱私保護技術與挑戰

## L3 — Risk Domains
- 隱私保護聯邦學習
- 垂直資料分割
- 模型訓練安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 垂直分割資料的 PPFL 系統需採用不同於水平分割的輸入隱私技術
- **evidence_requirements**:
  - 無明確舉證要求
- **enforcement_signal**: recommended

## Notes
本文為隱私保護聯邦學習系列第二部分，討論垂直分割資料（各方持有不同欄位）的輸入隱私保護技術，與水平分割（各方持有不同行）的挑戰不同，訓練過程更複雜。
