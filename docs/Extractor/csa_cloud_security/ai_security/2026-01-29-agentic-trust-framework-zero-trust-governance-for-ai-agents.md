---
title: "The Agentic Trust Framework: Zero Trust Governance for AI Agents"
source_url: https://cloudsecurityalliance.org/articles/the-agentic-trust-framework-zero-trust-governance-for-ai-agents
date: 2026-01-29
category: ai_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: Agentic Trust Framework (ATF), GitHub 公開儲存庫
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 安全工程師、企業架構師、安全團隊、CISO
- **shift_type**: new
- **shift_summary**: 傳統安全框架假設可預測的人類行為與確定性系統,AI 代理打破這些假設,必須採用持續驗證的零信任治理

## L3 — Risk Domains
- AI Security
- Zero Trust Architecture
- Identity and Access Management
- Behavioral Monitoring
- Data Governance
- Incident Response

## L4 — Obligation & Evidence
- **new_obligations**:
  - 為每個部署的代理建立**加密身分**(cryptographic identity)
  - 實施**持續行為監控**而非一次性信任授予
  - 定義明確的**資料存取邊界**(輸入和輸出)
  - 建立**區隔政策**限制資源和系統存取
  - 部署能夠隔離代理的**自動化事件回應**機制
  - 透過提高自主性等級逐步推進代理部署
  - 使用現有工具和基礎設施實施(無需全新安全堆疊)
- **evidence_requirements**:
  - 代理身分驗證與授權記錄
  - 持續行為監控日誌
  - 資料存取驗證與 PII 保護證明
  - 區隔政策執行記錄
  - 斷路器/終止開關測試與容納機制
- **enforcement_signal**: recommended

## ATF 核心原則
「不應預設信任任何 AI 代理,無論其目的或聲稱能力為何。」(Never trust, always verify)

## 傳統假設 vs AI 代理現實
| 傳統假設 | AI 代理現實 |
|----------|-------------|
| 可預測的人類使用者 | 自主、情境適應決策 |
| 確定性規則 | 機率性、可變回應 |
| 二元存取決策 | 動態變化的存取需求 |
| 一次建立信任 | 需要持續驗證 |

## ATF 五大核心元素("五個問題")
每個代理必須在所有五個維度上可回答:

1. **身分**(Identity)——「你是誰?」→ 驗證、授權、會話管理
2. **行為**(Behavior)——「你在做什麼?」→ 可觀察性、異常偵測、意圖分析
3. **資料治理**(Data Governance)——「你在消費/提供什麼?」→ 輸入驗證、PII 保護、輸出控制
4. **區隔**(Segmentation)——「你可以去哪裡?」→ 存取控制、資源邊界、政策執行
5. **事件回應**(Incident Response)——「如果你失控怎麼辦?」→ 斷路器、終止開關、容納機制

## 框架整合
- 與 **OWASP Agentic Security Initiative** 和 **Coalition for Secure AI (CoSAI)** 對齊
- 操作化 **OWASP Top 10 for Agentic Applications**(2025 年 12 月)的緩解措施
- 補充威脅建模框架如 **MAESTRO**:ATF 回答「我們如何維持控制?」而 MAESTRO 問「可能出什麼問題?」

## Implementation Approach
- 組織透過**提高自主性等級**逐步推進代理,每個階段有定義的標準
- 使用**現有工具和基礎設施**——無需全新安全堆疊
- Creative Commons 授權,GitHub 公開維護

## Notes
ATF 設計上**實用且可採用**——安全工程師可使用現有基礎設施實施,使治理與代理部署同步擴展。
