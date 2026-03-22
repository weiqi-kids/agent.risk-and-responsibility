---
title: "ISO/IEC 19823-21:2026 — Conformance Test Methods for Security Service Crypto Suites — Part 21: Crypto Suite SIMON"
source_url: https://www.iso.org/standard/88961.html
date: 2026-03-06
category: information_security
confidence: 高
last_modified_at: 2026-03-22
---

## L1 — Rule Signal
- **rule_type**: revision
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 19823-21:2026
- **status**: final
- **iso_refno**: ISO/IEC 19823-21:2026
- **edition**: 2
- **ics_code**: 35.030
- **technical_committee**: ISO/IEC JTC 1/SC 31

## L2 — Responsibility Structure
- **affected_roles**: RFID test laboratories, security certification bodies, IoT device manufacturers, compliance engineers
- **shift_type**: clarified
- **shift_summary**: 第二版更新 SIMON 密碼套件符合性測試方法，涵蓋所有強制功能的測試規程，適用於 ISO/IEC 18000 系列 RFID 設備。

## L3 — Risk Domains
- RFID 安全符合性測試
- 嵌入式密碼套件驗證
- 自動識別系統安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 宣稱符合 ISO/IEC 29167-21（SIMON 密碼套件）的 RFID Tag 與 Interrogator 須通過本文件定義的所有強制測試
  - 符合性測試僅適用於使用 ISO/IEC 29167-21 的 ISO/IEC 18000 系列設備
- **evidence_requirements**:
  - 依本文件完成所有強制功能測試的測試報告
  - 測試例外情況的書面說明
- **enforcement_signal**: recommended

## Notes
本標準取代 ISO/IEC 19823-21 第一版（ID: 73468）。SIMON 為 NSA 設計的輕量對稱區塊密碼，與 SPECK 同系列，適用於資源受限的 RFID 環境。
