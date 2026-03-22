---
title: "ISO/IEC 19823-16:2026 — Conformance Test Methods for Security Service Crypto Suites — Part 16: Crypto Suite ECDSA-ECDH"
source_url: https://www.iso.org/standard/88968.html
date: 2026-03-09
category: information_security
confidence: 高
last_modified_at: 2026-03-22
---

## L1 — Rule Signal
- **rule_type**: revision
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 19823-16:2026
- **status**: final
- **iso_refno**: ISO/IEC 19823-16:2026
- **edition**: 2
- **ics_code**: 35.030
- **technical_committee**: ISO/IEC JTC 1/SC 31

## L2 — Responsibility Structure
- **affected_roles**: RFID test laboratories, security certification bodies, PKI infrastructure engineers, IoT device manufacturers
- **shift_type**: clarified
- **shift_summary**: 第二版更新 ECDSA-ECDH 橢圓曲線密碼套件符合性測試方法，涵蓋所有強制及適用可選功能，適用於 ISO/IEC 18000 系列 RFID 設備。

## L3 — Risk Domains
- RFID 安全符合性測試
- 橢圓曲線密碼學驗證
- 公開金鑰基礎設施安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 宣稱符合 ISO/IEC 29167-16（ECDSA-ECDH 密碼套件）的 RFID 設備須通過本文件定義的所有強制及適用可選功能測試
  - 符合性測試僅適用於使用 ISO/IEC 29167-16 的 ISO/IEC 18000 系列設備
- **evidence_requirements**:
  - 依本文件完成強制功能與適用可選功能的測試報告
  - ECDSA 簽章驗證及 ECDH 金鑰交換的測試結果
- **enforcement_signal**: recommended

## Notes
本標準取代 ISO/IEC 19823-16 第一版（ID: 74824）。ECDSA-ECDH 為非對稱密碼套件，相較於 AES-128、SPECK、SIMON、Grain-128A 等對稱密碼，適用於需要公開金鑰認證的高安全 RFID 應用場景。
