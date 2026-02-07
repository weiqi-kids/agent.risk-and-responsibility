---
title: "Protecting Model Updates in Privacy-Preserving Federated Learning: Part Two"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning-part-two
date: 2024-05-02
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST Cybersecurity Insights Blog
- **document_id**: N/A (blog post series - Part Two)
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: ai_system_developers, machine_learning_engineers, privacy_engineers, data_scientists, federated_learning_practitioners
- **shift_type**: clarified
- **shift_summary**: 針對垂直分割資料（vertical partitioning）的隱私保護聯邦學習（PPFL）系統，釐清輸入隱私保護技術與實作挑戰

## L3 — Risk Domains
- Privacy-preserving machine learning
- Federated learning security
- Data partitioning strategies
- Input privacy protection
- Model training confidentiality

## L4 — Obligation & Evidence
- **new_obligations**:
  - 開發者在處理垂直分割資料的聯邦學習系統時需實作輸入隱私保護措施
  - AI 系統設計者需理解水平與垂直分割資料的隱私保護差異
  - 隱私工程師需評估垂直分割場景下的模型更新保護機制
- **evidence_requirements**:
  - 資料分割策略文件（水平 vs 垂直）
  - 輸入隱私保護技術選型與實作紀錄
  - 模型訓練過程的隱私風險評估
- **enforcement_signal**: recommended

## Notes
Description 字數為 436 字，足以萃取核心內容。本文為系列文章第二部分（"Part Two"），討論垂直分割資料的隱私保護聯邦學習技術。文章提及前一篇文章討論水平分割（horizontally partitioned），本篇聚焦垂直分割（vertically partitioned）場景。Confidence 設為「中」（Blog 文基線）。
