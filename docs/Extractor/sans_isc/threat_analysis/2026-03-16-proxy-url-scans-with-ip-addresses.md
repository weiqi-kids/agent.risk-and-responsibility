---
title: "/proxy/ URL Scans with IP Addresses"
source_url: https://isc.sans.edu/diary/rss/32800
date: 2026-03-16
category: threat_analysis
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: ISC Diary 32800
- **status**: final
- **attack_technique**: T1090 (Proxy), T1595.001 (Active Scanning: Scanning IP Blocks)

## L2 — Responsibility Structure
- **affected_roles**: 網路安全監控團隊、Web 伺服器管理員、蜜罐運營人員
- **shift_type**: new
- **shift_summary**: 蜜罐偵測到攻擊者使用 `/proxy/` URL 前綴結合直接 IP 位址（含 IPv4-mapped IPv6 格式）進行代理伺服器掃描，與常見的 Host header 注入手法有所不同，顯示新型掃描模式。

## L3 — Risk Domains
- 代理伺服器濫用偵察
- 蜜罐偵測與分析
- 網路掃描模式識別
- 未授權代理存取

## L4 — Obligation & Evidence
- **new_obligations**:
  - 監控 Web 日誌中含 `/proxy/` 前綴並附帶 IP 位址（包含 IPv4-mapped IPv6 格式）的存取請求
  - 將此掃描模式加入 SIEM 偵測規則
  - 確認反向代理和 Web 伺服器未意外提供開放代理功能
- **evidence_requirements**:
  - SANS DShield 蜜罐偵測到此模式於 2026-03-15/16 週末出現
  - 攻擊者使用 `/proxy/` URL 前綴（而非常見的 Host header 注入）發起代理伺服器探測
  - 部分請求使用 IPv4-mapped IPv6 位址格式（詳見後續 ISC Diary 32804）
- **enforcement_signal**: informational

## Notes
Description 字元數稍短（約 180 字），但已提供足夠背景資訊，降級評估為僅基於 RSS description 萃取。本文為後續 IPv4-mapped IPv6 分析（ISC Diary 32804）的前導文章。
