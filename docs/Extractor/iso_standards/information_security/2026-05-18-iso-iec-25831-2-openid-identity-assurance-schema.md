---
title: "ISO/IEC 25831-2:2026 — Information Technology — OpenID Identity Assurance 1.0 — Part 2: Schema Definition"
source_url: https://www.iso.org/standard/91664.html
date: 2026-05-18
category: information_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: new
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 25831-2:2026
- **status**: final
- **iso_refno**: ISO/IEC 25831-2:2026
- **edition**: 1
- **ics_code**: 35.030
- **technical_committee**: ISO/IEC JTC 1

## L2 — Responsibility Structure
- **affected_roles**: 身分管理系統開發者、JWT 聲明實作者、OpenID 提供者、標準規格撰寫者
- **shift_type**: new
- **shift_summary**: 新建立 OpenID 身分保證 JSON 物件的結構定義標準，透過 verified_claims 聲明標準化身分保證元資料

## L3 — Risk Domains
- 數位身分管理
- 個人資料保護
- 身分驗證技術標準化
- API 安全與 JWT 合規

## L4 — Obligation & Evidence
- **new_obligations**:
  - 實作 OpenID 身分保證的系統需依本規範定義 verified_claims 聲明的 JSON 結構
  - verification 元素的使用應符合本文件定義，以確保跨系統互通性
  - 向 IANA JSON Web Token Claims Registry 註冊 verified_claims 聲明
- **evidence_requirements**:
  - 符合 RFC 7519 (JWT) 規範的基礎實作
  - verified_claims 結構符合本標準的 schema 定義
- **enforcement_signal**: recommended

## Notes
本標準為 ISO/IEC 25831-1 的配套規格，定義 verified_claims 的 JSON schema。verification 元素設計為可獨立使用，供其他規格作者在需要驗證元資料時引用。
