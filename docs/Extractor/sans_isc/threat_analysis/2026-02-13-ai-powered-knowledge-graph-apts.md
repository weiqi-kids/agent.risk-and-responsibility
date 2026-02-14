---
title: "AI-Powered Knowledge Graph Generator & APTs"
source_url: https://isc.sans.edu/diary/rss/32712
date: 2026-02-13
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: ISC Diary 32712
- **status**: final
- **threat_actor**: APT28, Russian GRU
- **attack_technique**: T1110 (Brute Force), T1059 (Command and Scripting Interpreter), T1087 (Account Discovery)

## L2 — Responsibility Structure
- **affected_roles**: security analysts, SOC teams, threat intelligence analysts, incident responders
- **shift_type**: clarified
- **shift_summary**: 引入 AI 驅動的知識圖譜工具 (AIKG) 用於威脅情報分析,透過 LLM 和 SPO 三元組萃取技術將非結構化威脅報告轉換為視覺化關聯圖譜

## L3 — Risk Domains
- 威脅情報分析工具化
- APT 攻擊模式識別
- 認證憑證竊取防禦
- 防衛工業目標防護

## L4 — Obligation & Evidence
- **new_obligations**:
  - 評估將視覺化圖形技術整合至威脅情報工作流程
  - 考慮使用 LLM 輔助的 SPO 三元組萃取進行威脅報告豐富化
  - 針對 APT28 和 Russian GRU 相關的認證憑證攻擊加強監控
- **evidence_requirements**:
  - 知識圖譜產出的 JSON 和 HTML 格式分析結果
  - 識別的實體關係 (節點、邊、社群)
  - 威脅行為者與目標組織的連結路徑
- **enforcement_signal**: informational

## Notes
本文為工具評測和實驗分享,重點在於展示 AIKG 工具如何協助分析師視覺化複雜的威脅情報關聯。作者使用 APT28 (SecurityWeek 文章) 和 Russian GRU (CISA 諮詢) 兩個實際案例進行測試:

**測試案例 1 (APT28)**: 38 節點、105 邊,識別出土耳其能源和核研究機構受害者,以及 OWA 登入入口網站欺騙手法

**測試案例 2 (Russian GRU)**: 118 節點、486 邊,識別出「威脅行為者 → 目標 → 防衛工業」連結,並提取初始存取 TTP (認證憑證猜測、暴力破解) 和後滲透 TTP (殼層命令、AD 命令、PowerShell)

作者建議組織將此類視覺化分析技術納入「背景和豐富化實踐」,特別適用於處理高密度、內容豐富的 IOC 和行為集合。
