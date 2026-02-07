---
title: "Protecting Trained Models in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-trained-models-privacy-preserving-federated-learning
date: 2024-07-15
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST Cybersecurity Insights Blog
- **document_id**: N/A (blog post)
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: privacy engineers, machine learning engineers, federated learning developers, data scientists working with PPFL
- **shift_type**: expanded
- **shift_summary**: 在隱私保護聯邦學習系統中，除了輸入資料隱私保護外，需擴展保護範圍至訓練完成的模型本身

## L3 — Risk Domains
- 隱私保護
- AI 風險治理

## L4 — Obligation & Evidence
- **new_obligations**:
  - 實作完整的隱私保護聯邦學習系統，涵蓋輸入隱私與模型保護
  - 針對水平分割與垂直分割資料的不同情境採用適當技術
  - 保護訓練模型免於推論攻擊與資訊洩漏
- **evidence_requirements**: N/A (blog post 為技術指引)
- **enforcement_signal**: recommended

## Notes
本文為 NIST 與英國 RTA 合作的隱私保護聯邦學習系列文章之一。描述超過 150 字且能判斷文章脈絡為系列技術指引，討論如何建立完整的 PPFL 系統。前兩篇文章涵蓋輸入隱私技術，本文聚焦模型保護。confidence 設為中。
