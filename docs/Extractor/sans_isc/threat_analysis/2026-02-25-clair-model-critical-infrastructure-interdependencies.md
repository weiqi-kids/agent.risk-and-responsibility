---
title: "The CLAIR Model: A Synthesized Conceptual Framework for Mapping Critical Infrastructure Interdependencies"
source_url: https://isc.sans.edu/diary/rss/32748
date: 2026-02-25
category: threat_analysis
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: ISC Diary 32748
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Critical Infrastructure Security Officers, OT/ICS Security Teams, Enterprise Architects, Risk Management Teams, AI System Integrators
- **shift_type**: new
- **shift_summary**: CLAIR 模型將 Purdue 架構與 Zachman Framework 整合為 10 層關鍵基礎設施相依性映射框架，揭示 AI 整合帶來的新型失效風險，強調最弱環節（Level -1 公用事業層）的韌性監控。

## L3 — Risk Domains
- 關鍵基礎設施相依性（Critical Infrastructure Interdependencies）
- 級聯故障（Cascading Failures）
- OT/ICS 安全架構
- AI 系統整合風險
- 雲端相依性與監控盲點
- 地理相依性（共用基礎設施故障）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 採用 CLAIR 10 層框架對關鍵基礎設施進行相依性映射（涵蓋 Level -1 至 Level 7）
  - 建立 Level -1（電力、水、管線等公用事業）的監控與韌性控制
  - 評估 AI 系統對感測器資料品質的依賴性，以及模型飄移（model drift）更新的安全邊界問題
  - 識別地理相依性風險（如共用管溝的電力線與光纖電纜）
  - 確保雲端服務中斷時，關鍵系統的監控可見性不會完全喪失
- **evidence_requirements**:
  - 案例：北維吉尼亞州電壓波動同時觸發 60 個資料中心斷電，產生 1,500 MW 電力過剩
  - 相依性類型：實體相依、網路相依、地理相依、邏輯相依
  - AI 失效機制：資料品質相依、模型飄移、可解釋性缺口
- **enforcement_signal**: informational

## Notes
- **attack_technique**: 級聯故障傳播（Level -1 公用事業擾動 → 多層連鎖失效 → 雲端監控盲點）
- **threat_actor**: 不適用（框架性分析，非特定威脅行為者）
- **cve_references**: 無
- 原始 RSS description 僅含空白段落（< 200 字），已透過 WebFetch 取得完整文章內容。
- 本文為 Guest Diary，confidence 設為中。
- **attack_technique**: 涵蓋實體、網路、地理、邏輯四類相依性失效路徑。
