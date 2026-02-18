---
title: "Zero Trust in the Cloud: Designing Security Assurance at the Control Plane"
source_url: https://cloudsecurityalliance.org/articles/zero-trust-in-the-cloud-designing-security-assurance-at-the-control-plane
date: 2026-01-20
category: cloud_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: —
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 雲端架構師、安全團隊、DevOps 團隊、IaC 工程師、CISO
- **shift_type**: expanded
- **shift_summary**: 雲端控制平面是新的攻擊面,必須優先對其進行威脅建模,並將 IaC pipeline 視為與生產系統同等重要的安全關鍵表面

## L3 — Risk Domains
- Cloud Security
- Zero Trust Architecture
- Identity and Access Management
- Infrastructure as Code (IaC)
- Control Plane Security

## L4 — Obligation & Evidence
- **new_obligations**:
  - **優先對控制平面進行威脅建模**——該處的妥協可「大規模重塑基礎設施、停用日誌記錄並更改政策」
  - 將 IaC pipeline 視為安全關鍵表面,需要與生產系統相同的審查
  - 以「偏離宣告架構」作為主要風險訊號,而非傳統入侵警報
  - 與 CSA CCM v4.x 控制對齊,涵蓋身分、治理和 IaC 作為基礎層
  - 在設計時透過身分、政策和自動化**有意定義**存取,而非在執行時推斷
  - 實施**最小權限工作負載**:範圍狹窄的身分、限時且特定於操作
  - 將**網路作為執行,而非保證**:隔離容納失敗;它不授予存取
  - 實施**持續遙測驗證**:稽核日誌和漂移偵測確認與預期設計對齊
- **evidence_requirements**:
  - 控制平面威脅模型文件
  - IaC pipeline 安全審查記錄
  - 架構漂移偵測日誌
  - 設計時權限宣告記錄
  - 最小權限身分實施證明
  - 持續遙測與稽核日誌
- **enforcement_signal**: recommended

## 控制平面定義
雲端控制平面包含用於創建、配置和治理資源的 API 和服務,以及身分、政策和自動化系統。它代表存取*被定義*的地方,而非僅被執行。

## 邊界已轉移
傳統網路為基礎的安全在此處大部分無效。「存取控制平面意味著存取環境」——攻擊者針對特權 API 呼叫和 IaC pipeline,而非個別工作負載。

## 四大核心設計原則
| 原則 | 摘要 |
|------|------|
| **設計時保證** | 權限和角色預先宣告,而非在執行時推斷 |
| **最小權限工作負載** | 範圍狹窄的身分、限時且特定於操作 |
| **網路作為執行,而非保證** | 隔離容納失敗;它不授予存取 |
| **持續遙測驗證** | 稽核日誌和漂移偵測確認與預期設計對齊 |

## 雲端架構師的影響
- 優先對控制平面進行威脅建模——該處的妥協可大規模重塑基礎設施、停用日誌記錄並更改政策
- 將 IaC pipeline 視為安全關鍵表面,需要與生產系統相同的審查
- 偏好「偏離宣告架構」作為主要風險訊號,而非傳統入侵警報
- 與 CSA CCM v4.x 控制對齊,涵蓋身分、治理和 IaC 作為基礎層

## Notes
文章論述雲端系統設計方式已悄然改變。我們過去視為伺服器和網路集合的東西,現在由在任何工作負載執行前做出的決策塑造。存取由政策定義,基礎設施透過程式碼部署,整個環境可以用單一 API 呼叫創建或銷毀。這實現前所未有的速度和規模,但也改變了風險所在。最嚴重的失敗現在根植於權限、政策行為和治理決策中。
