---
title: "Data Distribution in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/data-distribution-privacy-preserving-federated-learning
date: 2024-02-27
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: PPFL 系統設計者、資料科學家、隱私工程師、分散式資料協作組織
- **shift_type**: clarified
- **shift_summary**: PPFL 系列文章之一，介紹聯邦學習中的資料分布方式（水平分割 vs. 垂直分割），與傳統集中式學習的差異

## L3 — Risk Domains
- Data Distribution（資料分布於參與組織間）
- Horizontal Partitioning（水平分割：各方持有不同列）
- Vertical Partitioning（垂直分割：各方持有不同欄位）

## L4 — Obligation & Evidence
- **new_obligations**:
  - PPFL 系統設計者應理解資料分布方式（水平分割 vs. 垂直分割）
  - 評估組織間資料如何分布，選擇適當的 PPFL 架構
  - 水平分割：各參與組織持有資料的不同列（rows）
  - 垂直分割：各參與組織持有資料的不同欄位（columns）
  - 理解與傳統集中式學習的差異（資料分布於參與組織間，而非集中）
- **evidence_requirements**:
  - 資料分布方式的評估文件
  - PPFL 架構選擇的理由說明
  - 水平或垂直分割的實施文件
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，介紹聯邦學習中的資料分布方式。第一篇介紹聯邦學習概念與傳統集中式學習的差異（資料分布於參與組織間）。本篇說明兩種主要資料分布方式：1) 水平分割（horizontal partitioning）：各參與組織持有資料的不同列（rows），例如不同醫院持有不同病患的記錄；2) 垂直分割（vertical partitioning）：各參與組織持有資料的不同欄位（columns），例如醫院持有醫療記錄、保險公司持有理賠記錄。Confidence 評為「中」是因為 Blog 系列屬於教育性內容而非正式規範。
