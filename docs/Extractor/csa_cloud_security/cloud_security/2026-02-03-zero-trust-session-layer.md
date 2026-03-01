---
title: "Why Zero Trust Needs to Start at the Session Layer"
source_url: https://cloudsecurityalliance.org/articles/why-zero-trust-needs-to-start-at-the-session-layer
date: 2026-02-03
category: cloud_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 安全架構師（Zero Trust 計劃設計者）、基礎設施團隊（網路可見性管理）、擁有關鍵網際網路對外服務的組織
- **shift_type**: expanded
- **shift_summary**: Zero Trust 安全模型必須從應用層下延至 OSI 第五層（Session Layer），透過 NHP（Network-infrastructure Hiding Protocol）實施「連接前先認證（authenticate-before-connect）」的預設拒絕策略，以應對 AI 驅動的高速自動化攻擊威脅。

## L3 — Risk Domains
- 傳統網路架構暴露面（TCP/IP 設計缺陷導致的可偵察性）
- AI 加速的自動化偵察與漏洞利用
- DNS 型攻擊與 DDoS
- 橫向移動（基礎設施在入侵後仍保持可見）
- 預認證漏洞利用（pre-authentication exploits）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 在 Session 層實施「deny-all by default」策略，要求所有連接嘗試在建立真實 Session 前完成授權驗證
  - 採用 NHP 或 Single Packet Authorization（SPA）等機制隱藏基礎設施，消除可偵察暴露面
  - 重新評估現有 VPN/TLS/WAF 架構，補充 Session 層的預認證保護
  - 針對面向網際網路的關鍵服務，部署能抵禦 AI 驅動快速掃描與利用的防護機制
- **evidence_requirements**:
  - Session 層認證控制的部署與設定文件
  - 基礎設施隱藏效果的驗證（如滲透測試、偵察掃描結果）
  - 符合 NIST SP 800-207 Zero Trust Architecture 要求的架構設計文件
- **enforcement_signal**: recommended
- **csa_framework**: Zero Trust 架構指南
- **cloud_provider**: 適用於所有主要雲端平台的面向網際網路服務

## Notes
WebFetch 成功取得完整內容。文章引用 NIST SP 800-207、Noise Protocol Framework、SPA 及 SDP 等標準框架。
