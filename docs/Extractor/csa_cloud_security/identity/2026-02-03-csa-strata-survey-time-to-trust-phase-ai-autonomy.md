---
title: "New Survey from Cloud Security Alliance, Strata Identity Finds That Enterprises Are in a \"Time-to-Trust\" Phase, As They Build Foundations for AI Autonomy"
source_url: https://cloudsecurityalliance.org/articles/cloud-security-alliance-strata-survey-finds-that-enterprises-are-in-time-to-trust-phase-as-they-build-ai-autonomy-foundations
date: 2026-02-03
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA) & Strata Identity
- **document_id**: CSA-Strata Survey Report (2025 年 9-10 月)
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: IT/安全專業人員、IAM 架構師、合規團隊、CISO
- **shift_type**: expanded
- **shift_summary**: 傳統以人為中心的 IAM 架構無法管理 AI 代理身分,組織必須建立專用的代理身分框架與即時治理機制

## L3 — Risk Domains
- Identity and Access Management (IAM)
- AI Agent Governance
- Compliance Audit Readiness
- Credential Management
- Discovery & Traceability

## L4 — Obligation & Evidence
- **new_obligations**:
  - 重新思考身分架構——修補現有 IAM 不足,需專用代理身分框架
  - 移除靜態憑證(44% 使用或計畫使用靜態 API keys),轉向即時、情境感知授權
  - 建立即時代理清單/註冊系統(目前僅 21% 有)
  - 將人類使用者身分的嚴格性應用於代理
  - 準備合規稽核——84% 組織懷疑能通過代理行為稽核
- **evidence_requirements**:
  - 即時代理清單與行為追蹤
  - 跨所有環境的代理操作追蹤記錄
  - 動態、自主代理行為的授權證明
- **enforcement_signal**: recommended

## Key Survey Statistics
| 指標 | 數據 |
|------|------|
| 懷疑能通過代理行為合規稽核 | **84%** |
| 目前部署 1-100 個代理 | **58%** |
| 預期 12 個月內部署 1-100 個代理 | **39%** |
| 預期 12 個月內部署 101-500 個代理 | **31%** |
| 對目前 IAM 管理代理身分「高度信心」 | **18%** |
| 維護即時代理註冊/清單 | **21%** |
| 能可靠追蹤代理操作跨所有環境 | **28%** |
| 為 AI 代理增加身分/安全預算 | **40%** |
| 使用或計畫使用靜態 API keys | **44%** |
| 使用或依賴使用者名稱/密碼組合 | **43%** |

## Core Challenges
1. **IAM 架構不匹配**:近半數組織將人類 IAM 模型延伸至代理,造成「不匹配的權限邊界和不明確的問責」
2. **風險憑證實踐**:靜態 API keys 和密碼組合均不適合動態、自主代理行為
3. **發現與追蹤落差**:組織「有時能看到某些代理,但很少在一個地方或即時看到」
4. **擴展與安全速度不匹配**:代理採用速度超越安全框架調整速度

## Investment Trends
- 34% 分配**專用預算項目**用於代理身分/安全
- 22% 從其他安全領域**重新分配資金**
- 40% 整體增加預算以適應 AI 代理

## Notes
調查對象:285 位 IT/安全專業人員(2025 年 9-10 月)。CSA Hillary Baron 強調需「以過去保留給人類使用者的同等嚴格性對待代理身分」。Strata Eric Olden 強調未來身分必須「編排化、情境化、持續化」以支援即時代理監督。
