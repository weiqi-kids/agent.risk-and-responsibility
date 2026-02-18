---
title: "Let's get Digital! Updated Digital Identity Guidelines are Here!"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/lets-get-digital-updated-digital-identity-guidelines-are-here
date: 2025-08-01
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**: SP 800-63-4, SP 800-63A-4, SP 800-63B-4, SP 800-63C-4
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 身份驗證系統開發者、聯邦機構資安主管、隱私官、業務部門、認證管理員、風險管理團隊
- **shift_type**: expanded
- **shift_summary**: 身份風險管理演進為「team sport」，要求跨職能協作（資安、隱私、易用性、業務）；新增 deepfake 與 injection attacks 防護控制；整合 synced passkeys；密碼政策重大調整

## L3 — Risk Domains
- Identity & Access Management（身份驗證架構重組、認證技術更新）
- AI & Emerging Threats（deepfake 防護控制）
- Fraud & Deception（詐騙偵測要求擴展）
- Usability & Human Factors（易用性納入風險管理）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 身份驗證系統應具備針對 injection attacks 及 deepfake 的防護控制
  - 密碼政策應依新版指引更新組合要求與輪替期望（不再強制定期輪替）
  - 認證系統應支援 syncable authenticators（如 synced passkeys）
  - 身份風險管理應採跨職能協作模式，涵蓋資安、隱私、易用性、業務等部門
  - 聯邦身份系統應支援 subscriber-controlled wallets 的表示方式
  - 實施建議的持續評估指標（continuous evaluation metrics）
- **evidence_requirements**:
  - Deepfake 防護機制的技術文件
  - 更新後的密碼政策文件
  - Synced passkeys 支援的實作證明
  - 跨職能身份風險管理會議記錄與決策文件
  - 持續評估指標的監控報告
- **enforcement_signal**: recommended

## Notes
本文公告 NIST SP 800-63 Revision 4 正式發布，歷時近四年、兩次公開草案、約 6,000 條公眾意見。主要變更包括：1) 身份驗證控制架構重組，新增 deepfake 防護；2) 密碼政策重大調整（不再強制定期輪替）；3) 整合 synced passkeys；4) 身份風險管理演進為跨職能「team sport」；5) 聯邦身份模型支援訂閱者控制錢包。此為正式發布版本，適用於聯邦機構及所有組織。Confidence 評為「高」是因為這是正式的 Special Publication，經過嚴謹的公眾意見徵集流程。
