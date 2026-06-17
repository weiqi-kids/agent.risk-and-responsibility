---
title: "Top 6 Claude Security Risks to Watch as AI Becomes Your Employees' Operating System"
source_url: https://cloudsecurityalliance.org/articles/top-6-claude-security-risks-to-watch-as-ai-becomes-your-employees-operating-system
date: 2026-05-27
category: ai_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A（Originally published by Akto）
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 開發者、財務分析師、法務團隊、安全團隊
- **shift_type**: new
- **shift_summary**: 隨 Claude 等 AI 工具深度整合至企業工作流程，組織面臨六類新興安全風險（影子使用、未監控資料儲存、MCP 驗證風險、自主協作問責缺口、技能供應鏈風險、平台漏洞），需建立 AI 特定的資產探索與治理能力

## L3 — Risk Domains
- AI 安全（AI 工具的企業級風險治理）
- 身分識別（MCP 連接器的 OAuth 範圍管理、無人類實體問責缺口）
- 雲端安全（AI 生成程式碼漏洞、供應鏈風險）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 資產探索：跨所有平面（claude.ai、桌面版、Code、Cowork）映射 Claude 使用情況
  - 資料治理：將 Projects 視為持久性資料儲存並建立分類政策
  - IAM 控制：MCP 連接器和驗證方法的安全監控
  - 安全開發生命週期：AI 生成程式碼須符合與人工程式碼相同的審查標準
  - 持續審計：員工活動與敏感資料曝露的稽核追蹤
- **evidence_requirements**:
  - Snyk 發現約 4,000 個審計技能中逾三分之一含安全缺陷
  - Veracode 測試顯示 52% 程式設計任務產出含漏洞程式碼
  - Check Point 發現三個嚴重漏洞，可從惡意儲存庫執行隱藏命令
- **enforcement_signal**: recommended

## Notes
（無降級，WebFetch 成功取得完整文章內容。文章未明確引用 CSA 或 NIST 特定框架，但整體符合 AI 安全治理最佳實踐。）
