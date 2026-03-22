---
title: "Interesting Message Stored in Cowrie Logs — iranbot Activity"
source_url: https://isc.sans.edu/diary/rss/32810
date: 2026-03-19
category: threat_analysis
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: ISC Diary 32810
- **status**: final
- **threat_actor**: iranbot

## L2 — Responsibility Structure
- **affected_roles**: honeypot 運營者、網路安全監控團隊、Telnet 服務管理員
- **shift_type**: new
- **shift_summary**: DShield 蜜罐偵測到疑似 iranbot 威脅行為者留下的特殊標記字串，結合埠掃描、Telnet 登入及 Web 存取行為，顯示系統性偵察活動模式。

## L3 — Risk Domains
- 威脅行為者偵察活動
- 蜜罐偵測與分析
- Telnet 服務暴露風險
- 惡意 IP 追蹤與情報收集

## L4 — Obligation & Evidence
- **new_obligations**:
  - 監控 Cowrie 日誌中含有 `MAGIC_PAYLOAD_KILLER_HERE_OR_LEAVE_EMPTY_iranbot_was_here` 字串的 echo 指令
  - 封鎖或監控來源 IP `64.89.161.198`（活躍期間：2026-01-30 至 2026-02-22）
  - 確認是否開放 Telnet (TCP/23) 服務，及時關閉或加強監控
- **evidence_requirements**:
  - 惡意 IP：`64.89.161.198`
  - 活動日期：2026-02-19（多個 DShield 感測器同日偵測）
  - 攻擊模式：埠掃描 → Telnet 成功登入 → Web 存取（cowrie + webhoneypot + iptables 日誌）
  - 標記字串：`MAGIC_PAYLOAD_KILLER_HERE_OR_LEAVE_EMPTY_iranbot_was_here`
- **enforcement_signal**: recommended

## Notes
description 含 HTML 實體編碼，原始內容可讀取。本文由 BACS 學生 Adam Thorman 發現並回報，屬學術研究產出，confidence 維持中。
