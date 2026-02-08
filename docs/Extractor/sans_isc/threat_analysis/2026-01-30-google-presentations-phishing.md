---
title: "Google Presentations Abused for Phishing"
source_url: https://isc.sans.edu/diary/rss/32668
date: 2026-01-30
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: N/A
- **status**: final
- **attack_technique**: MITRE ATT&CK - T1566.002 (Phishing: Spearphishing Link), T1659 (Content Injection)

## L2 — Responsibility Structure
- **affected_roles**: Security awareness training teams, Email security administrators, SOC analysts, End-user security education teams
- **shift_type**: clarified
- **shift_summary**: Google Presentations 的「發布」功能被濫用於釣魚攻擊，繞過標準共享文件中的安全警告機制

## L3 — Risk Domains
- Phishing and social engineering
- Cloud service abuse
- User awareness and training
- Legitimate platform weaponization

## L4 — Obligation & Evidence
- **new_obligations**:
  - 將 Google Presentations 的「發布」功能濫用納入安全意識訓練內容
  - 監控使用「pub」參數的 Google 簡報 URL（相對於標準共享連結）
  - 教育使用者識別缺少安全警告頁尾的共享文件
  - 檢查釣魚郵件中嵌入的 Google 服務 URL，特別是針對特定 Webmail 服務的攻擊
- **evidence_requirements**:
  - 保存釣魚郵件樣本與 Google Presentations 連結
  - 記錄使用「發布」功能的惡意簡報 URL 結構
  - 追蹤最終導向的釣魚頁面（如 Weebly 托管的偽造登入表單）
- **enforcement_signal**: recommended

## Notes
針對 Vivaldi Webmail 使用者的釣魚攻擊活動，利用 Google Slides 作為投放機制。攻擊者利用 Google 的「發布」功能繞過標準共享文件中通常出現的安全警告。

**攻擊手法**：
釣魚郵件導向 Google Presentation 連結。攻擊者使用「發布」功能而非標準共享選項，使內容在沒有頁尾警告的情況下顯示。如日誌所述：「通常 Google Docs 會顯示警告檢視者有關釣魚網站的頁尾通知」，但此保護被規避。

簡報 URL 結構使用「pub」參數而非標準共享連結，允許釣魚投影片以合法網頁形式呈現。

**最終頁面**：
惡意簡報包含連結，導向托管於 Weebly 網站的偽造登入表單，模仿 Vivaldi Webmail 帳號服務，收集不知情受害者的憑證。

**關鍵漏洞**：
Google 的發布簡報功能（為合法使用案例設計）缺乏標準共享文件中存在的安全警告，為攻擊者創造了以表面合法性呈現釣魚內容的途徑。

日誌指出此技術可能「欺騙一定數量的使用者」，因為缺乏可見警告且 Google 托管內容具有感知上的合法性。
