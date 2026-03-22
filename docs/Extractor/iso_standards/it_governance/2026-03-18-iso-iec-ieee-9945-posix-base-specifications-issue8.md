---
title: "ISO/IEC/IEEE 9945:2026 — Information technology — Portable Operating System Interface (POSIX™) Base Specifications, Issue 8"
source_url: https://www.iso.org/standard/91911.html
date: 2026-03-18
category: it_governance
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: revision
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC/IEEE 9945:2026
- **status**: final
- **iso_refno**: ISO/IEC/IEEE 9945:2026
- **edition**: 2
- **ics_code**: 35.060
- **technical_committee**: ISO/IEC JTC 1/SC 22

## L2 — Responsibility Structure
- **affected_roles**: 應用程式開發人員、系統實作人員、作業系統廠商、IT 基礎設施架構師、軟體可移植性工程師
- **shift_type**: clarified
- **shift_summary**: Issue 8 更新 POSIX 基本規格，釐清作業系統介面、Shell 指令、系統服務函式與公用程式之可移植性標準，替代三份前版文件。

## L3 — Risk Domains
- 作業系統可移植性與互通性
- IT 基礎設施標準化
- 軟體合規風險

## L4 — Obligation & Evidence
- **new_obligations**:
  - 系統實作人員須依本標準定義之介面規格實作 POSIX 相容環境
  - 應用程式開發人員若宣稱 POSIX 合規，須符合本標準之 Base Definitions、System Interfaces、Shell and Utilities 三個主要組成部分
- **evidence_requirements**:
  - POSIX 合規性測試報告
  - 系統介面文件化
- **enforcement_signal**: recommended

## Notes
- 本標準替代三份前版文件（IDs：50516、73314、62005）
- 共 4,057 頁，為超大型標準文件
- 明確排除範圍：圖形介面、資料庫管理介面、記錄 I/O、二進位碼可移植性、系統設定與資源可用性
