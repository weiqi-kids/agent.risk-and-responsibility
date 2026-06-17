---
title: "ISO/IEC TS 23220-4:2026 — Cards and security devices for personal identification — Building blocks for identity management via mobile devices — Part 4: Protocols and services for operational phase"
source_url: https://www.iso.org/standard/86785.html
date: 2026-04-10
category: information_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: new
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC TS 23220-4:2026
- **status**: final
- **iso_refno**: ISO/IEC TS 23220-4:2026
- **edition**: 1
- **ics_code**: 35.240.15
- **technical_committee**: ISO/IEC JTC 1/SC 17

## L2 — Responsibility Structure
- **affected_roles**: 行動 eID 系統架構師、mdoc 應用程式開發商、mdoc 讀取器製造商、發行機構基礎設施運營商、國家標準機構
- **shift_type**: new
- **shift_summary**: 建立行動電子身分系統運營階段的協定、介面與安全機制規範，涵蓋 mdoc 應用程式與讀取器間的請求-回應協定及發行人/持有人驗證機制

## L3 — Risk Domains
- 資訊安全：發行人驗證（issuer authentication）、mdoc 驗證（mdoc authentication）及憑證持有人驗證的安全機制
- 身分管理風險：行動身分系統運營階段的協定不合規風險
- 隱私保護：mdoc 持有人資料繫結（binding）與資料完整性驗證

## L4 — Obligation & Evidence
- **new_obligations**:
  - 定義多種 RF 解決方案及網際網路傳輸的傳輸協定
  - 實作 mdoc 應用程式與 mdoc 讀取器間及 mdoc 讀取器與發行機構基礎設施間的應用層協定
  - 實作發行人驗證、mdoc 驗證及憑證持有人驗證的安全機制
  - 提供第三方機器取得 mdoc 資料、繫結 mdoc 至持有人、驗證 mdoc 資料來源與完整性的機制
- **evidence_requirements**:
  - 協定符合性測試文件
  - 安全機制驗證報告
  - 符合本文件的 profile 建立文件
- **enforcement_signal**: recommended

## Notes
- mdoc 資料的佈建（provisioning）超出本文件範圍，由 ISO/IEC TS 23220-3 涵蓋
- 持有人資料分享同意取得方式及 mdoc 私鑰儲存要求超出本文件範圍
