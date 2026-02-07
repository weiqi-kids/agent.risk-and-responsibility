---
title: "NIST Revises Security and Privacy Control Catalog to Improve Software Update and Patch Releases"
source_url: https://www.nist.gov/news-events/news/2025/08/nist-revises-security-and-privacy-control-catalog-improve-software-update
date: 2025-08-27
category: cybersecurity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: revision
- **issuing_body**: NIST
- **document_id**: NIST SP 800-53 Rev. 5.2.0
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Software developers, IT professionals, system administrators, vendors, patch managers
- **shift_type**: expanded
- **shift_summary**: 開發者與組織在軟體更新與修補程序管理上的責任擴大,新增日誌格式標準化、根本原因分析與網路韌性設計要求,以回應行政命令強化國家網路安全

## L3 — Risk Domains
- Software supply chain security
- Patch management
- Incident response
- System resilience
- Vulnerability management

## L4 — Obligation & Evidence
- **new_obligations**: 實施 SA-15 (Logging Syntax) 定義安全相關事件的電子記錄格式以支援事件回應;執行 SI-02(07) (Root Cause Analysis) 對軟體更新失敗進行根本原因分析並實施改正行動計畫;採用 SA-24 (Design for Cyber Resiliency) 設計系統以預期、承受、回應和復原攻擊同時維持關鍵功能;對更新元件及其系統關係進行強化監控;在快速部署與徹底測試間取得平衡
- **evidence_requirements**: 標準化安全事件日誌 (符合 SA-15 定義格式);軟體更新失敗的根本原因分析報告與改正行動計畫;系統韌性設計文件,展示攻擊預期、承受與復原能力;修補程序測試與部署記錄;更新元件監控報告;開發者安全實踐文件
- **enforcement_signal**: mandatory

## Notes
本次修訂回應行政命令 14306 "Sustaining Select Efforts to Strengthen the Nation's Cybersecurity",新增三個全新控制項並修改多個既有控制項的技術內容。機器可讀格式 (OSCAL, JSON) 透過 CPRT 工具提供。
