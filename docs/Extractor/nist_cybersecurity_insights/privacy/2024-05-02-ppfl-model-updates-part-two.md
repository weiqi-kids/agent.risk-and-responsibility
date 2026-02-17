---
title: "Protecting Model Updates in Privacy-Preserving Federated Learning: Part Two"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning-part-two
date: 2024-05-02
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (in collaboration with UK Responsible Technology Adoption Unit)
- **document_id**: N/A (blog series post)
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: privacy-preserving federated learning practitioners, vertically partitioned data system developers, input privacy implementers
- **shift_type**: clarified
- **shift_summary**: 說明在資料垂直分割（vertically partitioned）情境下，如何提供 input privacy 保護（延續前篇討論的 horizontally partitioned 情境）

## L3 — Risk Domains
- Privacy-preserving federated learning
- Vertically partitioned data
- Input privacy techniques
- Model training on distributed columns

## L4 — Obligation & Evidence
- **new_obligations**: N/A (technical guidance)
- **evidence_requirements**: N/A
- **enforcement_signal**: informational

## Notes
本文為 NIST-UK RTA 合作系列之一，前篇討論 horizontally partitioned data 的 input privacy 技術，本篇聚焦 vertically partitioned data（training data 跨 parties 分割為不同欄位，對比 horizontally partitioned 為不同資料列）。垂直分割訓練模型更具挑戰，因無法分別訓練模型再合併。系列文章發布於 NIST Privacy Engineering Collaboration Space 與 RTA blog。Description 足夠判斷文章主題（系列第二部分），未使用 WebFetch。
