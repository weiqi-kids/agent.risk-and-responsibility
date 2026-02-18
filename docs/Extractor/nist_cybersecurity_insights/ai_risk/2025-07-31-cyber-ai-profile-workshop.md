---
title: "Reflections from the First Cyber AI Profile Workshop"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/reflections-first-cyber-ai-profile-workshop
date: 2025-07-31
category: ai_risk
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**: Cyber AI Profile (developing), Cybersecurity and AI Workshop Concept Paper
- **status**: draft (工作坊回饋收集中，Workshop Summary 即將發布)

## L2 — Responsibility Structure
- **affected_roles**: AI 系統開發者、資安架構師、採購部門、法律與合規團隊、風險管理者、資料治理主管、事件回應團隊
- **shift_type**: new
- **shift_summary**: 新增 Cyber AI Profile 要求組織整合 CSF 與 AI RMF，處理三大領域（保護 AI 系統、強化 AI 防禦、抵禦 AI 攻擊）；強調跨領域協作（法律、技術、採購、治理）與 Human-in-the-Loop 監督

## L3 — Risk Domains
- AI Risk Governance（AI 風險即組織風險，需整合進企業風險管理）
- Supply Chain Risk（AI 組件來源追蹤、AI SBOM）
- Transparency & Accountability（資料來源、模型行為與決策過程文件化）
- Incident Response（區分 AI 模型攻擊與傳統資安事件）
- Data Governance（建議獨立設置資料治理重點領域）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 組織應將 AI 風險整合至企業風險管理架構（整合 CSF、AI RMF、Privacy Framework、RMF SP 800-53）
  - 跨領域團隊（法律、技術、採購、治理）需協同合作管理 AI 風險
  - 實施 Human-in-the-Loop 監督機制確保 AI 系統有效監督
  - 追蹤 AI 組件來源（微服務、容器、函式庫）及可信度，考慮實施 AI SBOM
  - 建立 AI 防禦效能衡量基準，處理偽陽性/偽陰性問題
  - 資料來源、模型行為與決策過程需明確文件化
  - 事件回應策略應區分 AI 模型攻擊與傳統資安事件
  - 防止模型輸出被對抗性操縱再利用（回饋迴路安全）
  - 考慮實施非人類身份管理（AI 代理程式的存取控制）
  - 考慮實施模型加密簽章
- **evidence_requirements**:
  - AI 風險整合至企業風險管理的文件
  - 跨領域協作會議記錄
  - Human-in-the-Loop 監督機制的設計與實施文件
  - AI SBOM（如適用）
  - AI 防禦效能基準與監控報告
  - 資料來源與模型決策過程的透明度文件
  - AI 事件回應計畫
- **enforcement_signal**: recommended

## Notes
本文為 2025 年 4 月 Cyber AI Profile 工作坊的回饋預覽，Workshop Summary 即將發布。工作坊收集了九大核心主題，包括企業風險治理、跨領域協作、AI 雙重用途、供應鏈安全、透明度、Human-in-the-Loop 等。NIST 將於 2025 年夏秋舉辦虛擬工作會議，深入探討三大重點領域（保護 AI 系統、強化 AI 防禦、抵禦 AI 攻擊），最終產出 Cyber AI Profile 初稿。Confidence 評為「中」是因為仍處於工作坊回饋收集與初稿開發階段，最終 Profile 內容可能有調整。
