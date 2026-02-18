---
title: "Now Available: NIST Final SP 1800-37, Addressing Visibility Challenges with TLS 1.3"
source_url: https://www.nist.gov/news-events/news/2025/09/now-available-nist-final-sp-1800-37-addressing-visibility-challenges-tls-13
date: 2025-09-17
category: cybersecurity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: final
- **issuing_body**: NIST NCCoE
- **document_id**: SP 1800-37
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: enterprises relying on network monitoring/inspection, organizations subject to operational controls (finance, healthcare, regulated industries)
- **shift_type**: clarified
- **shift_summary**: 解決 TLS 1.2 檢測技術無法用於 TLS 1.3 的問題，提供在受控企業資料中心內檢測 TLS 1.3 流量的實證方法

## L3 — Risk Domains
- cybersecurity

## L4 — Obligation & Evidence
- **new_obligations**:
  - 採用新的可視性方法取代 TLS 1.2 時代技術
  - 限於受控企業資料中心內的應用伺服器（非一般網際網路流量）
- **evidence_requirements**:
  - 在不犧牲安全性下實現 TLS 1.3 流量檢測的實施證明
  - 支援遷移至 TLS 1.3 導入的量子抗性演算法
  - 與私部門夥伴合作驗證可行性
- **enforcement_signal**: recommended

## Notes
- 加密流量阻礙入侵偵測、疑難排解及詐欺監控
- 許多企業因失去檢測能力而停滯 TLS 1.2 遷移
- 實務指引證明可在受控環境內達成可視性與安全性兼顧
