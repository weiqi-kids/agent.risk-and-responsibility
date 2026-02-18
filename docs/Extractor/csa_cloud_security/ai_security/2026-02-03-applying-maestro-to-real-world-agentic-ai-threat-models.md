---
title: "Applying MAESTRO to Real-World Agentic AI Threat Models: From Framework to CI/CD Pipeline"
source_url: https://cloudsecurityalliance.org/articles/applying-maestro-to-real-world-agentic-ai-threat-models-from-framework-to-ci-cd-pipeline
date: 2026-02-03
category: ai_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: MAESTRO Framework
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 安全團隊、開發人員、AppSec 團隊、雲端架構師
- **shift_type**: new
- **shift_summary**: 傳統威脅建模工具(SAST, STRIDE)無法識別 agentic AI 系統的跨層信任邊界違規,必須採用 MAESTRO 框架並整合至 CI/CD 流程

## L3 — Risk Domains
- AI Security
- Threat Modeling
- DevSecOps
- Prompt Injection Attacks
- Trust Boundary Management

## L4 — Obligation & Evidence
- **new_obligations**:
  - 將威脅建模從一次性文件轉為持續 CI/CD 整合
  - 使用 MAESTRO 分類跨 Layer 1-3(foundation models, agent frameworks, execution capabilities)進行掃描
  - 對 RAG/記憶體系統視為潛在注入向量進行建模
  - 不依賴 SAST 單一工具,需採用 agentic-aware 掃描器
  - 在程式碼變更時自動觸發威脅掃描,並可阻擋部署
- **evidence_requirements**:
  - 機器可讀的 MAESTRO layer 分類
  - 自動化掃描結果整合至 CI/CD pipeline
  - 跨層威脅鏈追蹤記錄
- **enforcement_signal**: recommended

## MAESTRO 7-Layer Architecture
1. Foundation Models
2. Data/Embedding Layer
3. Agent Frameworks(reasoning loop, tool dispatch)
4. Execution capabilities
5-7. Higher ecosystem integration layers

核心洞察:威脅**跨層串聯**,最危險的攻擊路徑從 Layer 1 級聯至 Layer 4+。

## TITO Tool
作者建立 **TITO(Threat In and Threat Out)** 自動化威脅建模工具:
- 將 MAESTRO 分類直接嵌入掃描
- 聚焦於 Layers 1–3(程式碼和 CI/CD artifacts)
- 設計用於持續 pipeline 整合而非一次性文件

## Prompt Injection 問題
Agentic 系統引入「新類別的程式碼執行漏洞,其中'程式碼'是自然語言,'直譯器'是具有系統權限的 LLM」。單一使用者訊息可觸發檔案讀取、shell 命令、資料庫查詢和 webhook 呼叫——各自跨越不同信任邊界。

## Notes
文章指出關鍵落差:「理解框架與操作化框架之間存在差距」——大多數團隊閱讀 MAESTRO 但仍回歸傳統工具,未針對 agentic 架構調整威脅建模方法論。
