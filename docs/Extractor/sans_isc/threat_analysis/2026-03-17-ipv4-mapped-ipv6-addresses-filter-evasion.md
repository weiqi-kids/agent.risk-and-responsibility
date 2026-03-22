---
title: "IPv4-Mapped IPv6 Addresses Used for Filter Evasion"
source_url: https://isc.sans.edu/diary/rss/32804
date: 2026-03-17
category: threat_analysis
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: ISC Diary 32804
- **status**: final
- **attack_technique**: T1090 (Proxy), T1562.001 (Impair Defenses: Disable or Modify Tools)

## L2 — Responsibility Structure
- **affected_roles**: 網路安全工程師、WAF/IDS 規則維護人員、安全監控分析師
- **shift_type**: clarified
- **shift_summary**: 攻擊者利用 IPv4-mapped IPv6 位址格式（`::ffff:x.x.x.x`）在 URL 中規避字串比對型安全控制，因許多安全工具未識別此位址表示法，導致過濾規則失效。

## L3 — Risk Domains
- 安全控制規避（過濾器繞過）
- 網路偵察與代理服務濫用
- IPv6 轉換機制安全風險
- WAF/IDS 規則有效性

## L4 — Obligation & Evidence
- **new_obligations**:
  - 更新 WAF 和 IDS 規則以識別 IPv4-mapped IPv6 位址格式（`[::ffff:x.x.x.x]`）
  - 確認安全過濾工具能正確解析並正規化此類位址格式
  - 在 URL 解析邏輯中加入 IPv4-mapped IPv6 位址的處理
  - 測試現有安全控制對此類格式的偵測能力
- **evidence_requirements**:
  - 格式範例：IPv4 `10.5.2.1` 在 IPv4-mapped IPv6 中表示為 `::ffff:10.5.2.1`，URL 中為 `[::ffff:10.5.2.1]`
  - RFC 4038 定義此位址格式
  - curl 等工具會將 mapped 位址傳遞至 Host header，可能觸發安全工具盲點
  - 實驗驗證：SSH 正常運作，ping6 在不同平台行為不一（macOS 拒絕，Linux 靜默失敗）
- **enforcement_signal**: recommended

## Notes
Description 不足 200 字，已透過 WebFetch 取得完整文章內容。本文為前一篇 `/proxy/` URL 掃描日誌（ISC Diary 32800）的後續深入分析。無 CVE 或具體 IOC。
