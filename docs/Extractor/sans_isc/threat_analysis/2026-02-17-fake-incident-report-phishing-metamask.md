---
title: "Fake Incident Report Used in Phishing Campaign"
source_url: https://isc.sans.edu/diary/rss/32722
date: 2026-02-17
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: 無
- **status**: final
- **attack_technique**: T1566.001 (Phishing: Spearphishing Attachment), T1534 (Internal Spearphishing)

## L2 — Responsibility Structure
- **affected_roles**: security analysts, email administrators, SOC teams, cryptocurrency users
- **shift_type**: clarified
- **shift_summary**: 釐清假冒安全報告的社交工程攻擊手法，要求 SOC 人員具備 PDF 中繼資料分析能力

## L3 — Risk Domains
- **Cybersecurity Risk**: 魚叉式網路釣魚、憑證竊取
- **Operational Risk**: 使用者帳戶被接管、加密貨幣資產損失

## L4 — Obligation & Evidence
- **new_obligations**:
  - 檢查可疑 PDF 檔案的中繼資料（創建工具、日期）
  - 驗證聲稱來自服務商的郵件寄件人地址
  - 警戒託管於 AWS S3 的釣魚連結
- **evidence_requirements**:
  - 郵件標頭分析紀錄
  - PDF SHA256 雜湊值與中繼資料報告
  - S3 bucket 連結檢查日誌
- **enforcement_signal**: recommended

## Notes
本案例針對 MetaMask 加密貨幣錢包使用者，透過偽造的「安全事件報告」PDF 附件誘導受害者啟用 2FA，實際目的為竊取憑證。攻擊者使用 ReportLab（Python PDF 生成工具）製作 PDF，並託管釣魚頁面於 AWS S3 (`access-authority-2fa7abff0e[.]s3.us-east-1[.]amazonaws[.]com/index.html`)。

**IOCs**:
- SHA256: `2486253ddc186e9f4a061670765ad0730c8945164a3fc83d7b22963950d6dcd1`
- PDF Creator: ReportLab PDF Library
- Creation Date: 2026-02-11

作者指出此攻擊品質不高（未偽造寄件人、缺乏個人化內容），但仍展示了可自動化的社交工程 TTP。
