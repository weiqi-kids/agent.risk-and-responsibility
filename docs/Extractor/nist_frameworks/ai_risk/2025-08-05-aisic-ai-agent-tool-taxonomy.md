---
title: "Lessons Learned from the Consortium: Tool Use in Agent Systems"
source_url: https://www.nist.gov/news-events/news/2025/08/lessons-learned-consortium-tool-use-agent-systems
date: 2025-08-05
category: ai_risk
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**:
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: AI developers, AI system deployers, downstream users, researchers, AI supply chain participants
- **shift_type**: clarified
- **shift_summary**: AI 系統開發者與部署者需採用標準化分類法來描述代理工具的能力與限制,以改善供應鏈溝通、風險評估與事件報告

## L3 — Risk Domains
- AI agent autonomy
- Tool use safety
- AI system transparency
- Risk communication
- AI supply chain

## L4 — Obligation & Evidence
- **new_obligations**: AI 開發者應使用共享詞彙描述代理工具的能力與限制;採用七種分類方法之一或組合: 功能性、存取模式、風險導向、可靠性、模態、監控、自主性;實施功能導向分類 (感知/推理/行動) 或受限存取模式分類 (讀取/寫入權限 × 可信/不可信環境);評估工具使用的風險層級 (危害嚴重性、狀態性、可逆性);建立監控機制與可觀察性層級;定義使用者介入需求與自主性邊界;向下游使用者清楚傳達工具約束與能力
- **evidence_requirements**: 代理工具能力與限制文件,採用標準化詞彙;工具分類映射 (依功能、存取模式或多維度交集);風險評估報告,涵蓋危害、狀態性與可逆性;監控與日誌機制文件;自主性層級與使用者介入觸發條件說明;系統能力傳達給下游使用者的證據
- **enforcement_signal**: recommended

## Notes
CAISI 與 NIST 於 2025 年 1 月舉辦 AISIC 工作坊,約 140 名專家參與。工作坊識別出缺乏代理工具綜合分類法的問題,提出兩種主要分類法 (功能導向與受限存取模式) 及七種分類方法。鼓勵利害關係人調整與擴展這些發現,並建議採用跨多個分類法的多維度交集方法。意見反饋可寄至 CAISI-agents@nist.gov。
