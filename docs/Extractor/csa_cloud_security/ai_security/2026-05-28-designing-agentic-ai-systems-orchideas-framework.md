---
title: "Designing Agentic AI Systems with the ORCHIDEAS Framework"
source_url: https://cloudsecurityalliance.org/articles/designing-agentic-ai-systems-with-the-orchideas-framework
date: 2026-05-28
category: ai_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: ORCHIDEAS Framework（整合 CSA MAESTRO 威脅建模框架）
- **status**: final
- **csa_framework**: MAESTRO（七層 AI 架構威脅建模）

## L2 — Responsibility Structure
- **affected_roles**: 平台團隊、安全架構師、合規官員（EU AI Act/NIST/ISO 42001/FDA）、DevSecOps 團隊、人工審核員、事件回應團隊
- **shift_type**: new
- **shift_summary**: ORCHIDEAS 提出九支柱「結構即安全」設計框架，要求將安全性作為代理 AI 系統的結構屬性從設計初期嵌入，而非事後附加，並整合 MAESTRO 跨層威脅分析

## L3 — Risk Domains
- AI 安全（代理 AI 系統的九支柱安全設計：自主性、身分意圖、資料記憶體治理、情境、運行時、人工監督、可觀察性、評估環境生態、可擴展性）
- 身分識別（工作負載身分與意圖型存取控制 IBAC）
- 合規框架（EU AI Act 第 14 條人工監督要求、NIST AI RMF、ISO 42001）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 高風險、不可逆或受監管行動前實施預先核准機制
  - 跨所有儲存系統傳播資料刪除以符合被遺忘權要求
  - 所有行動的完整防篡改審計日誌
  - 定期自主性重新認證以防止範圍蔓延
  - 生產環境影子模式評估以捕捉回歸問題
  - 持續工程實踐中的 MAESTRO 威脅建模
  - 每項重大決策保留人工問責路徑
- **evidence_requirements**:
  - ORCHIDEAS 九支柱實施文件
  - MAESTRO 七層（L1-L7）跨層攻擊路徑分析
  - 意圖型存取控制綁定紀錄（防止提示注入更改授權）
  - OpenTelemetry GenAI 可觀察性指標（gen_ai.system、gen_ai.request.model）
- **enforcement_signal**: recommended

## Notes
（無降級，WebFetch 成功取得完整文章內容。本文引用多個主要框架：EU AI Act Article 14、NIST AI RMF、ISO 42001、FDA AI/ML Guidance，合規官員需特別注意。）
