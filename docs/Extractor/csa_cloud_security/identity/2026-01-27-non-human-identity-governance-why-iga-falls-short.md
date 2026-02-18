---
title: "Non-Human Identity Governance: Why IGA Falls Short"
source_url: https://cloudsecurityalliance.org/articles/non-human-identity-governance-why-iga-falls-short
date: 2026-01-27
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: —
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: IAM 團隊、安全團隊、雲端架構師、稽核人員、GRC 團隊
- **shift_type**: clarified
- **shift_summary**: 傳統 IGA 假設身分代表人類,對非人類身分(NHI)——服務帳戶、雲端主體、自動化機器人、AI 代理——必須採用持續驗證與行為導向治理

## L3 — Risk Domains
- Identity and Access Management (IAM)
- Non-Human Identities (NHI)
- AI Agent Governance
- Least Privilege
- Credential Rotation

## L4 — Obligation & Evidence
- **new_obligations**:
  - 停止將 NHI 強制納入以人為導向的治理模型——這造成摩擦而無清晰度
  - 在修改或移除任何 NHI 之前映射完整相依性鏈
  - 為每個機器身分建立明確所有權,包括 AI 代理
  - 持續監控 NHI 存取而非依賴定期認證週期
  - 將憑證輪替和存取退役視為自動化、風險觸發事件——而非日曆事件
  - 從定期審查轉向由實際使用資料驅動的**持續驗證**
  - 部署**執行時、情境控制**以考量意圖(針對 agentic AI)
- **evidence_requirements**:
  - NHI 相依性映射記錄
  - 持續使用資料與行為分析
  - 自動化標記與退役工作流程日誌
  - 動態憑證輪替記錄
  - 執行時情境控制日誌(針對 AI 代理)
- **enforcement_signal**: recommended

## IGA 失敗的關鍵點
**1. 生命週期模型無法轉換**
Joiner→Mover→Leaver 框架不適用於機器身分。NHI 由任何業務單位、雲平台或自動化工具臨時創建,所有權「通常不明確或分散於團隊間」。

**2. 缺少情境**
傳統 IGA 將存取視為身分與資源之間的二元關係。對於 NHI,治理需要執行時行為情境——必須一起理解完整鏈路 *應用程式 → 祕密 → 身分 → 資源*。

**3. 存取審查不足**
排程認證(每月/每季)「可能滿足稽核要求,但[不]與最小權限或機器存取實際變化方式對齊」。沒有使用資料,審查者訴諸蓋橡皮圖章,造成疲勞並增加稽核員懷疑。

**4. 規模無法管理**
NHI「通常在數量上超過人類使用者幾個數量級」,使手動證明在操作上不可持續。

**5. Agentic AI 增加複雜性**
自主代理在沒有人類監督的情況下跨系統串聯任務。「靜態角色、屬性和排程審查無法推理提示或意圖。」

## 推薦方法
| 挑戰 | 推薦方法 |
|------|----------|
| 定期審查 | 轉向由實際使用資料驅動的**持續驗證** |
| 不明確所有權 | 從**可觀察行為**衍生問責,而非強制簽核 |
| 過度權限身分 | 應用由相依性映射告知的**政策驅動執行** |
| 未使用存取 | 實施自動化**標記與退役**工作流程 |
| 憑證風險 | 當風險變化時**動態**輪替祕密,而非按排程 |
| Agentic AI | 部署考量意圖的**執行時、情境控制** |

## Notes
傳統 IGA 假設:身分有穩定屬性、明確 HR 系統來源、可預測的生命週期事件。非人類身分違反幾乎所有這些假設。文章呼籲組織建立專為機器身分設計的治理模型,特別是隨著 AI 代理部署增加。
