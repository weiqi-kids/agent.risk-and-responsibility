---
title: "AI-Powered Knowledge Graph Generator & APTs"
source_url: https://isc.sans.edu/diary/rss/32712
date: 2026-02-13
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: 無
- **status**: final
- **threat_actor**: APT28, Russian GRU

## L2 — Responsibility Structure
- **affected_roles**: threat intelligence analysts, CTI teams, security researchers
- **shift_type**: new
- **shift_summary**: 引入 AI 知識圖譜生成工具（AIKG），將非結構化威脅情報轉為視覺化關聯圖，提升分析效率

## L3 — Risk Domains
- **Cybersecurity Risk**: 威脅情報分析效率提升，加速 IOC 關聯與攻擊鏈重建

## L4 — Obligation & Evidence
- **new_obligations**:
  - 評估將 AIKG 或類似 LLM-based SPO 提取工具整合至組織 CTI 流程
  - 訓練分析師使用知識圖譜篩選（如依威脅行為者節點過濾）進行快速情境分析
  - 建立知識圖譜產出的品質檢核機制（extracted vs. inferred edges）
- **evidence_requirements**:
  - 知識圖譜產出檔案（節點、邊、社群標籤）
  - 威脅情報來源文件與對應的 SPO triplet 提取紀錄
- **enforcement_signal**: recommended

## Notes
作者 Robert McDermott 開發的 **AI Knowledge Graph (AIKG)** 工具，使用 LLM（如 Google Gemma 3）從威脅情報文件中提取 **Subject-Predicate-Object (SPO)** 語意三元組，並產生互動式視覺化圖譜。

**實驗案例**:
1. **APT28 分析**（12B 參數模型）
   - 來源：SecurityWeek 文章（能源/國防實體攻擊）
   - 產出：38 節點、105 邊（52 extracted + 53 inferred）、4 社群
   - 關鍵發現：土耳其能源/核研究機構遭憑證竊取、偽造 OWA 登入頁面

2. **Russian GRU 分析**（27B 參數模型）
   - 來源：CISA Cybersecurity Advisory (aa25-141a)
   - 產出：118 節點、486 邊（152 extracted + 334 inferred）、7 社群
   - 關鍵發現：GRU 針對西方物流與科技公司，使用 PowerShell、Active Directory 指令進行憑證存取與影響力操作

**技術元件**:
- **Ollama**（本地 LLM 執行環境）
- **Google Gemma 3**（多模態 LLM）
- **SPO / Semantic Triples**（知識表示方法）
- 支援任何 OpenAI 相容 API

作者建議將此類技術整合至組織 ML pipeline，用於情報報告撰寫的情境生成與 IOC 豐富化。
