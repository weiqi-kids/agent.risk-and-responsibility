---
title: "Bridging the Gap Between Cloud Security Controls and Adversary Behaviors: A CSA–MITRE CTID Collaboration"
source_url: https://cloudsecurityalliance.org/articles/bridging-the-gap-between-cloud-security-controls-and-adversary-behaviors-a-csa-mitre-collaboration
date: 2026-01-27
category: compliance
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA) & MITRE Center for Threat-Informed Defense (CTID)
- **document_id**: CCM v4.1 to MITRE ATT&CK Mapping
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: GRC 團隊、稽核人員/評估者、安全從業人員、雲服務供應商
- **shift_type**: clarified
- **shift_summary**: CCM 控制措施與 MITRE ATT&CK 技術現已正式映射,使組織能展示控制如何應對特定攻擊技術,並識別覆蓋缺口

## L3 — Risk Domains
- Cloud Security
- Threat Modeling
- Compliance & Assurance
- Attack Surface Management
- Risk Quantification

## L4 — Obligation & Evidence
- **new_obligations**:
  - 下載 CTID Mappings Explorer 中的映射
  - 使用映射將控制實施與*真實世界攻擊者行為*對齊
  - 在 STAR 評估期間應用以展示可衡量的安全保證
  - 透過檢視未映射的 ATT&CK 技術與控制清單識別覆蓋缺口
  - 優先處理針對最高風險威脅的控制
  - 使用威脅告知方法進行 STAR 認證稽核
- **evidence_requirements**:
  - CCM 控制目標與 ATT&CK 技術/子技術的映射記錄
  - 覆蓋缺口分析(未映射的 ATT&CK 技術)
  - 威脅告知防禦評估報告
  - STAR 認證稽核中的映射應用證明
- **enforcement_signal**: recommended

## 核心問題
安全團隊面臨關鍵脫節:CCM 提供強健的雲端控制,而 MITRE ATT&CK 編目攻擊者技術——但**沒有權威橋樑連結它們**。這造成:
- 無法展示 CCM 控制如何應對特定 ATT&CK 技術
- 未驗證控制覆蓋的潛在防禦缺口
- 沒有系統化方法量化風險降低
- 缺乏威脅告知評估的「統一評估基礎」

## 協作成果
CSA 與 **MITRE Center for Threat-Informed Defense (CTID)** 合作,應用 CTID 的 *Security Capability Mapping Methodology*,將 **CCM v4.1** 映射至 ATT&CK 戰術和技術。

映射連結特定 CCM 控制目標至 ATT&CK 技術/子技術,並將直接嵌入**CCM 和 CAIQ 安全問卷**。

## 各角色的關鍵好處
| 角色 | 關鍵好處 |
|------|----------|
| GRC 團隊 | 優先處理針對最高風險威脅的控制 |
| 稽核人員/評估者 | 更深入、更可信的 STAR 認證稽核 |
| 安全從業人員 | 可見未映射 ATT&CK 技術的缺口 |
| 雲服務供應商 | 跨計畫威脅告知防禦的「共同語言」 |

## Implementation Guidance
- 在 CTID Mappings Explorer 下載映射
- 使用它將控制實施與真實世界攻擊者行為對齊
- 在 STAR 評估期間應用以展示可衡量的安全保證
- 透過檢視未映射 ATT&CK 技術與控制清單識別覆蓋缺口

## Notes
此協作橋接了 CSA Cloud Controls Matrix (CCM) 與 MITRE ATT&CK® 框架之間的長期缺口,提供安全團隊系統化方法展示控制有效性並識別防禦缺口。映射將嵌入 CCM 和 CAIQ 中,使威脅告知評估成為標準實踐。
