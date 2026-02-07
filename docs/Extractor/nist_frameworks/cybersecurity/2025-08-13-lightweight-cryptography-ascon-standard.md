---
title: "NIST Finalizes 'Lightweight Cryptography' Standard to Protect Small Devices"
source_url: https://www.nist.gov/news-events/news/2025/08/nist-finalizes-lightweight-cryptography-standard-protect-small-devices
date: 2025-08-13
category: cybersecurity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: final
- **issuing_body**: NIST
- **document_id**: NIST SP 800-232
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: IoT device manufacturers, embedded system developers, medical device manufacturers, automotive suppliers, smart home product developers
- **shift_type**: new
- **shift_summary**: 資源受限裝置製造商需採用輕量級密碼學標準來保護 IoT、RFID 標籤、醫療植入物等小型裝置的資料建立與傳輸安全

## L3 — Risk Domains
- IoT security
- Data protection
- Cryptographic standards
- Side-channel attacks
- Energy-constrained devices

## L4 — Obligation & Evidence
- **new_obligations**: 為資源受限電子裝置實施 Ascon 系列演算法以保護資訊建立與傳輸;選擇適當的 Ascon 變體: ASCON-128 AEAD (認證加密)、ASCON-Hash 256 (雜湊)、ASCON-XOF 128 (可擴展輸出)、ASCON-CXOF 128 (可自訂標籤雜湊);設計具備側通道攻擊抵抗能力的實作;針對能源消耗最佳化選擇可自訂的雜湊大小;為防止雜湊碰撞實施可選的自訂標籤機制
- **evidence_requirements**: 密碼學實作文件,說明選用的 Ascon 演算法變體與參數;側通道攻擊抵抗測試報告;能源消耗評估與最佳化記錄;裝置認證加密與資料完整性驗證機制文件
- **enforcement_signal**: recommended

## Notes
演算法於 2014 年開發,2023 年經 NIST 公開審查後選定,2025 年 8 月 13 日定案。標準專為運算能力與處理時間有限的裝置設計,相較傳統方法降低資源需求。
