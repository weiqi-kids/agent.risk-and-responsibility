---
title: "Data Pipeline Challenges of Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/data-pipeline-challenges-privacy-preserving-federated-learning
date: 2024-12-05
category: privacy
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (合作：UK RTA)
- **document_id**: PPFL 系列文章, PETs Prize Challenges
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 資料科學家、PPFL 系統開發者、資料品質管理者、隱私工程師
- **shift_type**: clarified
- **shift_summary**: 識別 PPFL 資料管道的四大挑戰（資料品質不可見性、預處理步驟缺失、跨參與者不一致、惡意參與者偵測困難）；建議採用安全輸入驗證、強健聚合（FLTrust、EIFFeL）、拜占庭容錯等防護機制

## L3 — Risk Domains
- Data Privacy & Protection（PPFL 資料管道安全）
- Data Quality & Integrity（資料品質不可見性、惡意投毒）
- Adversarial Attacks（拜占庭容錯、資料投毒防禦）

## L4 — Obligation & Evidence
- **new_obligations**:
  - PPFL 系統應實施安全輸入驗證技術防止資料投毒
  - 採用強健聚合機制（如 FLTrust、EIFFeL）應對隱私感知防禦需求
  - 針對參與者任意偏離協議的情境設計拜占庭容錯防護方案
  - 處理跨參與者資料格式與預處理方法差異，確保一致性
  - 建立資料品質監控機制（在 PPFL 架構限制下）
- **evidence_requirements**:
  - 安全輸入驗證機制的實施文件
  - 強健聚合演算法的選擇與配置文件
  - 拜占庭容錯防護方案的設計文件
  - 跨參與者資料格式標準化文件
- **enforcement_signal**: informational

## Notes
本文為 NIST 與 UK RTA 合作的 PPFL 系列之一，基於 PETs Prize Challenges 獲獎者（Dr. Xiaowei Huang、Dr. Yi Dong、Sikha Pentyala）的研究成果。識別四大資料管道挑戰：1) 資料品質不可見性；2) 預處理步驟缺失（現有演算法幾乎全專注於模型訓練）；3) 跨參與者資料不一致；4) 惡意參與者難以偵測（誠實低品質與惡意投毒資料外觀相似）。文章指出相關研究成果多數尚未整合進實用 PPFL 函式庫，預計未來數年才會從學術走向產業實踐。Confidence 評為「中」是因為 Blog 文章屬於研究洞見分享，而非正式規範。
