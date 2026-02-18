---
title: "Protecting Trained Models in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-trained-models-privacy-preserving-federated-learning
date: 2024-07-15
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: PPFL 系統開發者、機器學習模型保護專家、隱私工程師、資料科學家
- **shift_type**: clarified
- **shift_summary**: PPFL 系列文章之一，探討如何保護訓練完成的機器學習模型，涵蓋輸入隱私與輸出隱私（output privacy）

## L3 — Risk Domains
- Model Privacy（訓練模型的隱私保護）
- Output Privacy（模型輸出的隱私保護）
- Model Inversion Attacks（模型反推攻擊）

## L4 — Obligation & Evidence
- **new_obligations**:
  - PPFL 系統應同時保護輸入隱私與輸出隱私（完整的隱私保護）
  - 防止訓練完成的模型洩漏訓練資料資訊（模型反推攻擊）
  - 評估模型輸出是否可能洩漏敏感資訊
  - 實施輸出隱私保護機制（如差分隱私）
- **evidence_requirements**:
  - 輸入隱私與輸出隱私的保護機制文件
  - 模型反推攻擊的防護方案
  - 模型輸出敏感資訊洩漏的評估
  - 輸出隱私保護機制（差分隱私）的實施文件
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，探討保護訓練完成的機器學習模型。前兩篇涵蓋輸入隱私（水平分割與垂直分割資料），本篇聚焦輸出隱私（output privacy）。完整的隱私保護 PPFL 系統需要同時保護輸入隱私與輸出隱私。訓練完成的模型可能洩漏訓練資料資訊（模型反推攻擊），因此需實施輸出隱私保護機制（如差分隱私）。Confidence 評為「中」是因為 Blog 系列屬於技術指引與經驗分享，而非正式規範。
