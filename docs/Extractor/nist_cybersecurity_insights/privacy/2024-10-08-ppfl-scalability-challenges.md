---
title: "Scalability Challenges in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/scalability-challenges-privacy-preserving-federated-learning
date: 2024-10-08
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: PPFL 系統開發者、分散式系統架構師、隱私工程師、資料科學家
- **shift_type**: clarified
- **shift_summary**: PPFL 系列文章之一，探討隱私保護聯邦學習的擴展性挑戰，包括參與者數量增加、通訊開銷、運算資源限制等問題

## L3 — Risk Domains
- Scalability（PPFL 系統擴展性）
- Communication Overhead（通訊開銷）
- Computational Resources（運算資源限制）

## L4 — Obligation & Evidence
- **new_obligations**:
  - PPFL 系統開發者應考慮參與者數量增加時的擴展性挑戰
  - 評估並優化通訊開銷（特別是加密模型更新的傳輸）
  - 針對參與者運算資源限制設計適當的聚合策略
  - 平衡隱私保護強度與系統效能
- **evidence_requirements**:
  - 擴展性評估報告
  - 通訊開銷優化方案
  - 聚合策略的設計文件
  - 隱私保護與效能平衡的分析
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，探討隱私保護聯邦學習的擴展性挑戰。基於 PETs Prize Challenges 獲獎者（Dr. Xiaowei Huang、Dr. Yi Dong、Dr. Mat Weldon、Sikha Pentyala）的研究成果。主要挑戰包括參與者數量增加時的通訊開銷（加密模型更新傳輸）、運算資源限制（參與者可能為資源受限的行動裝置）、隱私保護強度與系統效能的平衡等。Confidence 評為「中」是因為 Blog 系列屬於研究洞見分享，而非正式規範。
