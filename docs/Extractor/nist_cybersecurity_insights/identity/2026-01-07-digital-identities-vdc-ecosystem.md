---
title: "Digital Identities: Getting to Know the Verifiable Digital Credential Ecosystem"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/digital-identities-getting-know-verifiable-digital-credential-0
date: 2026-01-07
category: identity
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**: NCCoE mDL Project, ISO/IEC 18013-5/7, ISO 23220, W3C VCDM 2.0
- **status**: final (部分標準) / ongoing (NCCoE 專案)

## L2 — Responsibility Structure
- **affected_roles**: 驗證方（Verifier）系統開發者、數位身分發行方（Issuer）、數位錢包開發商、資安架構師
- **shift_type**: new
- **shift_summary**: 驗證方需具備多格式支援能力（mdoc 與 W3C VC），不可預設單一標準；NCCoE 示範了跨格式互操作的可行性，要求驗證系統更新以支援多種憑證格式

## L3 — Risk Domains
- Identity & Access Management（數位身分憑證格式標準化）
- Interoperability & Standards（跨格式、跨司法管轄區的互操作性）
- Third-Party & Vendor Risk（Verifier 端整合複雜度）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 驗證方（Verifier）應具備同時處理 ISO mdoc 與 W3C VC 兩種格式的能力
  - 不應預設單一標準（"digital identity is not one-size-fits-all"）
  - 發行方應評估既有基礎設施與目標應用場景，選擇適當的憑證格式
  - 組織應及早參與標準制定過程，特別是隱私保護強化與多憑證呈現等功能
- **evidence_requirements**:
  - 驗證系統支援多格式的技術文件
  - NCCoE mDL 互操作性測試報告
  - 憑證格式選擇的技術評估文件
- **enforcement_signal**: recommended

## Notes
本文為 VDC 系列第二篇，重點在於比較 ISO mdoc（CBOR 格式，適合行動裝置）與 W3C VC（JSON-LD 格式，適合 Web 生態）兩大憑證格式。NCCoE 已示範單一 Verifier 同時支援兩種格式的可行性，被稱為「實現網際網路規模部署的關鍵第一步」。文章強調不應預設單一標準，驗證方需準備支援多種格式。Confidence 評為「中」是因為 Blog 文章屬於技術指引而非正式規範，但內容基於 NCCoE 實際專案成果，可靠性高。
