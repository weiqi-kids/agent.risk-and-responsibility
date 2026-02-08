---
title: "Broken Phishing URLs"
source_url: https://isc.sans.edu/diary/rss/32686
date: 2026-02-05
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Security analysts, SOC teams, Email security administrators, Network security engineers
- **shift_type**: clarified
- **shift_summary**: 提供新的 URL 解析與偵測規則，應對刻意破壞 URL 參數格式以規避偵測的釣魚攻擊手法

## L3 — Risk Domains
- Phishing detection and prevention
- Email security filtering
- URL analysis and normalization
- IOC extraction systems

## L4 — Obligation & Evidence
- **new_obligations**:
  - 部署 regex 模式以隔離並追蹤破損 URL 中的最後參數段
  - 更新 URL 解析邏輯以處理格式錯誤的參數
  - 強化 IOC 提取流程，避免被破損參數干擾
- **evidence_requirements**:
  - 監控包含 "&*(" 等非標準字元的 URL 模式
  - 記錄並分析繞過現有過濾器的釣魚 URL 樣本
- **enforcement_signal**: recommended

## Notes
此類攻擊利用瀏覽器對於格式錯誤參數的容錯機制，刻意破壞 URL 參數語法以規避安全控制。攻擊者使用 Workers.dev 等合法域名托管服務，並在參數中嵌入類似 "&*(Df" 的破損字串，干擾基於 regex 的 URL 模式匹配、URL 正規化流程與 IOC 提取管線。
