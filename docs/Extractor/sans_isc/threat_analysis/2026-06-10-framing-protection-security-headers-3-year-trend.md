---
title: "How has use of framing protection security headers changed in the past 3 years?"
source_url: https://isc.sans.edu/diary/rss/33068
date: 2026-06-10
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: Diary #33068
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: web developers, security architects, IT administrators, DevSecOps teams
- **shift_type**: clarified
- **shift_summary**: 三年追蹤研究顯示全球前百萬大域名的防框架攻擊安全標頭（X-Frame-Options、CSP frame-ancestors）部署率大幅成長（14.4% → 29.7%），但前 1K 大站點反而下降，反映 CDN 基礎設施轉型影響。

## L3 — Risk Domains
- 威脅分析（Clickjacking 防禦標頭部署趨勢）
- Web 應用程式安全（防框架嵌入攻擊）
- 安全標頭政策（X-Frame-Options、CSP frame-ancestors）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 各組織應評估並部署適當的防框架安全標頭（X-Frame-Options 或 CSP frame-ancestors）
  - 優先採用 CSP frame-ancestors（相較 X-Frame-Options 更具彈性且採用率成長最快）
  - 使用 'none' 指令明確禁止不需被嵌入的頁面
- **evidence_requirements**:
  - 資料來源：Tranco 前 100 萬大域名清單（2023 vs 2026 比較）
  - 前 1K 域名覆蓋率：27.1% → 23.1%（下降）
  - 前 100K 域名覆蓋率：20.6% → 37.4%（成長 81%）
  - 前 1M 域名覆蓋率：14.4% → 29.7%（成長 106%）
  - CSP frame-ancestors 在前 1M 中：1.9% → 7.1%（成長最快）
  - frame-ancestors 'none' 指令：0.20% → 2.49%（前 1M）
- **enforcement_signal**: recommended

## Notes
WebFetch 成功取得完整文章內容（SANS ISC Diary #33068，作者 Jan Kopriva，2026-06-10）。統計數據為作者實際測量並與 2023 年 Diary #29698 比較之確認事實，非推測。前 1K 大站點覆蓋率下降被作者解讀為域名組成轉變（CDN/基礎設施端點增加），而非安全意識下滑。
