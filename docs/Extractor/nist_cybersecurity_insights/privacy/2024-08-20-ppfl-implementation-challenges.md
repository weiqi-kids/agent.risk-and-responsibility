---
title: "Implementation Challenges in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/implementation-challenges-privacy-preserving-federated-learning
date: 2024-08-20
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: PPFL 系統實施者、威脅建模專家、隱私工程師、資料科學家
- **shift_type**: clarified
- **shift_summary**: PPFL 系列文章之一，探討隱私保護聯邦學習的實施挑戰，特別關注威脅建模與真實世界部署的議題

## L3 — Risk Domains
- Threat Modeling（威脅建模）
- Real-World Deployment（真實世界部署）
- Privacy Protection（隱私保護機制）

## L4 — Obligation & Evidence
- **new_obligations**:
  - PPFL 系統實施者應建立適當的威脅模型，定義系統保護範圍
  - 評估真實世界部署環境與實驗室環境的差異
  - 針對實際威脅情境設計防護措施（而非僅理論攻擊）
  - 考慮參與者的信任程度與可能的惡意行為模式
- **evidence_requirements**:
  - 威脅模型文件
  - 真實世界部署環境評估
  - 防護措施的設計與實施文件
  - 參與者信任程度的評估
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，探討隱私保護聯邦學習的實施挑戰。基於 PETs Prize Challenges 獲獎者（Dr. Xiaowei Huang、Dr. Yi Dong、Dr. Mat Weldon、Dr. Michael Fenton）的研究成果。重點討論：1) 威脅建模（PPFL 研究中的保護通常編碼在威脅模型中，定義攻擊者能力與系統保護範圍）；2) 真實世界部署（實驗室環境與實際部署的差異，包括參與者信任程度、通訊延遲、資源限制等）。Confidence 評為「中」是因為 Blog 系列屬於研究洞見分享，而非正式規範。
