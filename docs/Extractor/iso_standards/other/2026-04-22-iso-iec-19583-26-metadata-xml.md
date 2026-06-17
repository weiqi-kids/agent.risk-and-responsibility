---
title: "ISO/IEC 19583-26:2026 — Information technology — Concepts and usage of metadata — Part 26: XML for representation of ISO/IEC 11179-3:2013 content"
source_url: https://www.iso.org/standard/85244.html
date: 2026-04-22
category: other
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: new
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 19583-26:2026
- **status**: final
- **iso_refno**: ISO/IEC 19583-26:2026
- **edition**: 1
- **ics_code**: 35.040.50
- **technical_committee**: ISO/IEC JTC 1/SC 32

## L2 — Responsibility Structure
- **affected_roles**: 元資料登錄系統開發人員、資料治理架構師、標準互操作性工程師
- **shift_type**: new
- **shift_summary**: 建立 ISO/IEC 11179-3:2013 元資料登錄內容以 W3C XML Schema 表示的規格，支援合規登錄系統間的內容交換

## L3 — Risk Domains
- 資料治理風險：元資料標準不統一導致的系統互操作性問題
- 技術風險：XML 模式不合規導致的資料交換失敗

## L4 — Obligation & Evidence
- **new_obligations**:
  - 採用本文件的系統須實作指定的 XML Schema 結構
  - 使用符合概念模型的類別與屬性詞彙
  - 支援合規元資料的交換與登錄間訊息驗證
- **evidence_requirements**:
  - XML 模式驗證結果
  - 登錄系統間訊息交換測試記錄
- **enforcement_signal**: recommended

## Notes
- 本標準 category 為 `other`：屬元資料管理技術規格，不直接屬於資安、IT 治理、品質管理或環境管理
- 本文件不適用於資料元素元資料與其所指涉資料的同步通訊
