---
title: "Protecting Model Updates in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning
date: 2024-03-21
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: PPFL 系統開發者、隱私工程師、資料科學家、水平分割資料的協作組織
- **shift_type**: clarified
- **shift_summary**: PPFL 系列文章之一，探討水平分割資料（horizontal partitioning）的輸入隱私保護技術，包括模型訓練與聚合過程

## L3 — Risk Domains
- Data Privacy & Protection（水平分割資料的隱私保護）
- Model Updates（模型更新的隱私保護）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 水平分割資料的 PPFL 系統應實施適當的輸入隱私保護技術
  - 保護模型更新過程中的隱私（訓練與聚合）
  - 理解水平分割（各方持有不同列）的特性
  - 採用適合水平分割情境的聚合策略
- **evidence_requirements**:
  - 水平分割資料的隱私保護機制文件
  - 模型更新與聚合的隱私保護技術文件
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，探討水平分割資料（horizontal partitioning）的輸入隱私保護技術。在水平分割 FL 中，常見做法是要求各參與者訓練獨立模型，然後進行聚合。本文探討如何保護這個訓練與聚合過程中的隱私（輸入隱私）。前一篇涵蓋攻擊模型與輸入/輸出隱私概念，上一篇涵蓋水平與垂直分割的資料分布，本篇深入水平分割的實作細節。Confidence 評為「中」是因為 Blog 系列屬於技術指引與經驗分享，而非正式規範。
