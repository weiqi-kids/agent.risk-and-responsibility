---
title: "ISO/IEC 25706:2026 — Information technology — Security protocol and data model (SPDM) collection"
source_url: https://www.iso.org/standard/91251.html
date: 2026-02-03
category: information_security
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: new
- **issuing_body**: ISO/IEC
- **document_id**: ISO/IEC 25706:2026
- **status**: final
- **iso_refno**: ISO/IEC 25706:2026
- **edition**: 1
- **ics_code**: 35.030
- **technical_committee**: ISO/IEC JTC 1

## L2 — Responsibility Structure
- **affected_roles**: 資訊安全架構師、硬體安全工程師、韌體開發人員、IT 基礎設施管理人員、設備供應商
- **shift_type**: new
- **shift_summary**: 新發布的 SPDM（Security Protocol and Data Model）標準集合，定義裝置身份驗證與安全通訊協定，適用於硬體與韌體安全領域。

## L3 — Risk Domains
- 硬體與韌體安全風險
- 設備身份驗證與完整性驗證
- 供應鏈安全

## L4 — Obligation & Evidence
- **new_obligations**:
  - 實作 SPDM 協定的設備須符合本標準定義之安全協定與資料模型規範
  - 設備製造商須依本標準進行安全通訊實作
- **evidence_requirements**:
  - SPDM 協定合規測試報告
  - 設備安全架構文件
- **enforcement_signal**: recommended

## Notes
- WebFetch 降級：ISO 官方頁面未公開詳細 scope 文字，WebFetch 僅取得標準標題與元資料，無法取得完整 scope 描述
- 本標準 scope.en 欄位在原始 JSONL 中為空，已嘗試 WebFetch 補充，但 ISO 頁面未提供完整摘要，confidence 降為「中」
- SPDM 為 DMTF 制定之協定，本標準為其 ISO/IEC 國際標準化版本
- 共 220 頁，為大型標準集合
