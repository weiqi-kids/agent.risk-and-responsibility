---
title: "From DMV to Wallet: Understanding Verifiable Digital Credential Issuance"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/dmv-wallet-understanding-verifiable-digital-credential-issuance
date: 2026-04-28
category: identity
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST (National Institute of Standards and Technology)
- **document_id**: N/A（Blog 文章，無正式文件編號；涉及 ISO/IEC 18013-5、ISO/IEC 18013-7、W3C VC 等外部標準）
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: DMV（機動車輛管理局）、數位身分核發機構、標準制定組織（FIDO Alliance、ISO、OpenID Foundation）、mDL 實作者、身分生態系統開發者
- **shift_type**: clarified
- **shift_summary**: 本文釐清可驗證數位憑證（特別是行動駕照 mDL）的核發流程，並說明 FIDO、ISO、OpenID Foundation 正在整合不一致標準的工作進展。

## L3 — Risk Domains
- 數位身分（mDL、VDC、ISO/IEC 18013、W3C VC、FIDO）
- 資安框架與控制（憑證格式互通性與核發安全性）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 核發機構應了解 mDL 核發流程的現行不一致性問題
  - 標準制定組織持續推進 FIDO、ISO、OpenID 核發標準的對齊整合
- **evidence_requirements**:
  - 遵循 ISO/IEC 18013-5、ISO/IEC 18013-7 規範的 mDL 實作
  - 採用 W3C Verifiable Credentials 標準的 VC 核發流程
- **enforcement_signal**: informational

## Notes
本文為本系列的第二篇，前篇比較 mdoc 與 W3C VC 憑證格式；本篇聚焦核發流程。Blog 作者為 NIST 專家，分析內容代表 NIST 機構觀點，但所引用標準（ISO、W3C、FIDO）為外部組織制定，非 NIST 官方要求。confidence 設為「中」，符合 Blog 文章基線。
