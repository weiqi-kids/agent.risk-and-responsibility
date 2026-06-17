---
title: "When Apps Expose User Data: 6 Ways Misconfigurations Break Customer Trust"
source_url: https://cloudsecurityalliance.org/articles/when-apps-expose-user-data-6-ways-misconfigurations-break-customer-trust
date: 2026-05-19
category: cloud_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 雲端架構師、應用程式開發人員、安全工程師、資料保護官（DPO）
- **shift_type**: clarified
- **shift_summary**: 應用程式錯誤配置導致數百萬用戶媒體檔案外洩，凸顯開發者與雲端供應商對資料保護配置的共同責任

## L3 — Risk Domains
- 雲端安全（雲端儲存錯誤配置）
- 最佳實踐（應用程式安全設計）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 稽核應用程式雲端儲存權限配置，確保媒體檔案無公開存取漏洞
  - 實施最小權限原則於應用程式資料存取層
  - 建立資料暴露監控機制
- **evidence_requirements**:
  - 雲端儲存存取控制審查報告
  - 資料外洩影響評估（涵蓋 Android app 案例：逾 800 萬媒體檔案外洩）
- **enforcement_signal**: recommended

## Notes
