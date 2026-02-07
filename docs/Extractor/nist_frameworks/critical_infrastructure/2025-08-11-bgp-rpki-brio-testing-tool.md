---
title: "NIST Releases Test Tools to Accelerate Adoption of Emerging Route Leak Mitigation Standards"
source_url: https://www.nist.gov/news-events/news/2025/08/nist-releases-test-tools-accelerate-adoption-emerging-route-leak-mitigation
date: 2025-08-11
category: critical_infrastructure
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**:
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Network engineers, ISP operators, network administrators, BGP researchers, router vendors
- **shift_type**: new
- **shift_summary**: 網路工程師與 ISP 業者需採用開源測試工具驗證 BGP 安全機制實作,以偵測與緩解路由洩漏問題並提升網際網路路由韌性

## L3 — Risk Domains
- Internet routing security
- BGP vulnerabilities
- Route leak mitigation
- Infrastructure resilience
- Network misconfiguration

## L4 — Obligation & Evidence
- **new_obligations**: 網路營運者應使用 NIST BGP RPKI IO (BRIO) 測試工具驗證路由器實作;測試 ASPA (Autonomous System Provider Authorization) 機制以偵測與緩解 BGP 路由洩漏;實施 Route Origin Validation (ROV) 路徑驗證機制;評估 BGPsec 路徑驗證技術;驗證 RPKI-to-Router 協定基礎設施通訊;在受控實驗室環境中進行合成流量生成測試;編寫測試場景腳本以驗證新興標準實作
- **evidence_requirements**: BRIO 測試場景腳本與執行記錄;ASPA 機制驗證測試報告;ROV 與 BGPsec 實作測試結果;RPKI 基礎設施配置與關係編碼文件;路由器實作符合性驗證報告;路由洩漏偵測與緩解機制測試證據
- **enforcement_signal**: recommended

## Notes
BRIO 為開源工具,由 NIST Robust Inter-Domain Routing 專案開發。路由洩漏通常為意外的配置錯誤,但可導致重大網際網路中斷事件。工具支援利用 RPKI 基礎設施編碼網路與傳輸 ISP 間的關係,實現可行的網際網路路由路徑驗證。
