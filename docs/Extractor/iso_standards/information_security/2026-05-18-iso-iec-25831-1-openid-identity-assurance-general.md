---
title: "ISO/IEC 25831-1:2026 — Information Technology — OpenID Identity Assurance 1.0 — Part 1: General"
source_url: https://www.iso.org/standard/91663.html
date: 2026-05-18
category: information_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: new
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 25831-1:2026
- **status**: final
- **iso_refno**: ISO/IEC 25831-1:2026
- **edition**: 1
- **ics_code**: 35.030
- **technical_committee**: ISO/IEC JTC 1

## L2 — Responsibility Structure
- **affected_roles**: 身分提供者 (OpenID Provider)、信賴方 (Relying Party)、身分管理系統架構師、合規與隱私官員
- **shift_type**: new
- **shift_summary**: 新建立 OpenID 身分保證機制的 ISO 標準化框架，定義驗證聲明請求與提供的技術機制

## L3 — Risk Domains
- 數位身分管理
- 隱私保護與個人資料安全
- 身分驗證與存取控制
- 跨境互通性與合規

## L4 — Obligation & Evidence
- **new_obligations**:
  - 採用 OpenID 身分保證的信賴方應依本規範定義的技術機制實作
  - 身分提供者需實作驗證聲明 (verified claims) 的提供機制
  - 組織需在技術機制之外補充法律框架、信任框架等規定（超出本標準範圍）
- **evidence_requirements**:
  - 符合 OpenID Connect 核心規範的基礎實作
  - 驗證聲明的技術機制符合本文件定義
- **enforcement_signal**: recommended

## Notes
本標準為 OpenID 身分保證 1.0 系列第 1 部分，定義全球不同法律管轄區可靈活部署的技術機制。法律責任、信任框架與商業協議等非技術層面不在本標準範圍內。
