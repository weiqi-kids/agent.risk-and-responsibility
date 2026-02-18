---
title: "Protecting Model Updates in Privacy-Preserving Federated Learning: Part Two"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning-part-two
date: 2024-05-02
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: PPFL 系統開發者、隱私工程師、資料科學家、垂直分割資料的協作組織
- **shift_type**: clarified
- **shift_summary**: PPFL 系列文章之一，探討垂直分割資料（vertical partitioning）的輸入隱私保護技術，與水平分割（horizontal partitioning）的挑戰不同

## L3 — Risk Domains
- Data Privacy & Protection（垂直分割資料的隱私保護）
- Vertical Partitioning（各方持有不同欄位的資料）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 垂直分割資料的 PPFL 系統應實施適當的輸入隱私保護技術
  - 理解垂直分割（各方持有不同欄位）與水平分割（各方持有不同列）的差異
  - 處理垂直分割資料訓練模型的特殊挑戰（通常無法訓練分離模型）
  - 實施適合垂直分割情境的隱私保護機制
- **evidence_requirements**:
  - 垂直分割資料的隱私保護機制文件
  - 輸入隱私保護技術的實施文件
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，探討垂直分割資料（vertical partitioning）的輸入隱私保護技術。垂直分割是各方持有資料的不同欄位（columns），與水平分割（各方持有不同列 rows）不同。訓練垂直分割資料的模型更具挑戰性，因為通常無法訓練分離模型在不同欄位上。前一篇涵蓋水平分割的輸入隱私技術，本篇聚焦垂直分割的特殊挑戰與解決方案。Confidence 評為「中」是因為 Blog 系列屬於技術指引與經驗分享，而非正式規範。
