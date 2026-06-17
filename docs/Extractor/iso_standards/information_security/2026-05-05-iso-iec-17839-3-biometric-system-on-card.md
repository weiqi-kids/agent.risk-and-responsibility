---
title: "ISO/IEC 17839-3:2026 — Information technology — Biometric System-on-Card — Part 3: Logical information interchange mechanism"
source_url: https://www.iso.org/standard/87555.html
date: 2026-05-05
category: information_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: revision
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 17839-3:2026
- **status**: final
- **iso_refno**: ISO/IEC 17839-3:2026
- **edition**: 2
- **ics_code**: 35.240.15
- **technical_committee**: ISO/IEC JTC 1/SC 17

## L2 — Responsibility Structure
- **affected_roles**: 生物特徵辨識系統開發人員、智慧卡製造商、身分驗證系統架構師、個人識別設備整合商
- **shift_type**: clarified
- **shift_summary**: 第 2 版更新卡片式生物特徵系統的邏輯資料結構、登記程序及指令與資料結構規格，替代第 1 版（id: 61919）

## L3 — Risk Domains
- 資訊安全：生物特徵資料的邏輯交換機制安全性
- 身分管理風險：卡片式生物特徵系統的邏輯介面不合規導致的驗證失效
- 隱私保護：生物特徵資料儲存與交換的合規性

## L4 — Obligation & Evidence
- **new_obligations**:
  - 卡片式生物特徵系統須實作指定的邏輯資料結構
  - 遵循指定的登記（enrolment）程序
  - 使用本文件及其他國際標準定義的指令與資料結構
- **evidence_requirements**:
  - 邏輯資料結構符合性測試記錄
  - 登記程序驗證文件
- **enforcement_signal**: recommended

## Notes
- 本文件替代 id 61919（前一版本）
- 本文件不定義適用於 BSoC 外部設備的指令與資料結構，以及 BSoC 內部邏輯介面的要求
