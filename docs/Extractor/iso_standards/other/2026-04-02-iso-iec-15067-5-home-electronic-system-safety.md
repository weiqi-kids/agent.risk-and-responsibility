---
title: "ISO/IEC 15067-5:2026 — Information Technology — Home Electronic System (HES) Application Model — Part 5: Safety Framework and Guidelines for Control and Data Communication Messages"
source_url: https://www.iso.org/standard/94298.html
date: 2026-04-02
category: other
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: new
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 15067-5:2026
- **status**: final
- **iso_refno**: ISO/IEC 15067-5:2026
- **edition**: 1
- **ics_code**: 35.200, 97.120
- **technical_committee**: ISO/IEC JTC 1/SC 25

## L2 — Responsibility Structure
- **affected_roles**: 智慧家居系統設計者、網路家電製造商、家庭自動化安全工程師、建築物網路整合商
- **shift_type**: new
- **shift_summary**: 新建立家庭電子系統透過通訊網路遠端控制的安全框架，規範訊息篩選機制以降低風險

## L3 — Risk Domains
- 物聯網 (IoT) 安全
- 實體安全與遠端存取控制
- 家庭與建築物網路安全
- 網路家電操作安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 設計可遠端控制的網路家電需符合本文件定義的基本安全要求
  - 實作遠端控制訊息篩選機制，最小化操作風險
  - 本標準與相關產品安全標準並行適用（需同時符合）
- **evidence_requirements**:
  - 遠端控制訊息篩選機制的文件化設計
  - 符合相關產品安全標準的合規記錄
- **enforcement_signal**: recommended

## Notes
本標準適用範圍為家庭或建築物內透過通訊網路連接的設備正常使用與故障狀況。蓄意破壞、不可抗力和故意損壞不在本標準範圍內。不適用於消防偵測等安全相關設備。category 歸為 `other`，因 ICS 35.200（電子元件）與 97.120（家用自動化）不符合資訊安全管理或 IT 治理分類。
