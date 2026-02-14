---
title: "How CSA STAR Helps Cloud-First Organizations Tackle Modern Identity Security Risks"
source_url: https://cloudsecurityalliance.org/articles/how-csa-star-helps-cloud-first-organizations-tackle-modern-identity-security-risks
date: 2026-01-30
category: compliance
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: CSA STAR
- **status**: final
- **csa_framework**: STAR
- **cloud_provider**: Multi-cloud

## L2 — Responsibility Structure
- **affected_roles**: 雲端架構師、安全工程師、CISO、身分治理團隊、雲服務供應商
- **shift_type**: expanded
- **shift_summary**: 傳統 IAM 工具不足以應對雲端環境的身分安全挑戰，CSA STAR 框架要求組織建立持續驗證、零信任原則和成熟度階段管理的身分治理結構

## L3 — Risk Domains
- 身分蔓延（Identity Sprawl）：服務帳戶、自動化工作負載、容器、API、第三方整合等多種身分類型缺乏可見性
- 過度權限（Excessive Privileges）：違反最小權限原則的常駐存取權限，增加憑證洩露風險
- 多雲分散（Multi-Cloud Fragmentation）：跨多個雲平台導致策略不一致、身分重複、監督分散
- 合規假象：僅通過稽核或符合基準合規要求可能產生安全假象

## L4 — Obligation & Evidence
- **new_obligations**:
  - 建立強化的身分與存取治理結構
  - 實施問責與可追溯性機制
  - 遵循零信任原則進行持續驗證
  - 建立身分安全成熟度演進路徑：可見性 → 控制 → 監控 → 韌性
- **evidence_requirements**:
  - 可見性階段：所有身分類型清單及其存取位置
  - 控制階段：最小權限策略執行證明
  - 監控階段：異常行為偵測與誤用紀錄
  - 韌性階段：身分系統在壓力下的安全性與可用性證明
- **enforcement_signal**: recommended

## Notes
傳統 IAM 工具的主要不足在於僅聚焦於「授予存取權」，而缺乏「持續驗證存取的適當性或安全使用狀況」。CSA STAR 框架將身分安全視為持續改進過程，而非一次性合規檢查。
