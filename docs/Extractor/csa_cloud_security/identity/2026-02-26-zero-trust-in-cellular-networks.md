---
title: "Where to Start with Zero Trust in Cellular Networks"
source_url: https://cloudsecurityalliance.org/articles/where-to-start-with-zero-trust-in-cellular-networks
date: 2026-02-26
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 網路營運商與架構師、行動基礎架構安全團隊、OSS/BSS 平台管理員、虛擬化基礎架構維運人員
- **shift_type**: clarified
- **shift_summary**: CSA 發佈蜂巢式網路零信任導入指引，建議組織以「保護面（Protect Surface）」為單位定義 UE、RAN、Transport、Core、OSS/BSS、NFVI 等功能系統，並依業務關鍵性、安全成熟度與韌性評分設定實施優先序。

## L3 — Risk Domains
- 零信任架構（ZTA）
- 身分識別與最小權限存取
- 網路橫向移動防護
- 蜂巢式網路安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 定義蜂巢式網路的保護面並依三維評分（業務關鍵性、安全成熟度、韌性）排序實施
  - 對 Tier 1 優先實施：核心網路功能（AMF、SMF、UPF）、漫遊互連（SEPP）、RAN 東西向微分段
  - 為每個保護面實施細粒度身分驗證與最小權限存取
  - 在信任邊界（特別是漫遊互連）採用 Assume-Breach 設計
  - 執行持續驗證與即時工作負載保護
- **evidence_requirements**:
  - 保護面清單及其三維評分文件
  - 各保護面身分驗證政策配置記錄
  - 持續監控覆蓋範圍報告（涵蓋橫向流量）
- **enforcement_signal**: recommended

## Notes
本文依據 NIST SP 800-207 零信任方法論，針對蜂巢式網路環境調整其五步驟循環（定義、映射交易、設計政策架構、建立政策、持續監控）。
