---
title: "Scanning for exposed Anthropic Models"
source_url: https://isc.sans.edu/diary/rss/32674
date: 2026-02-02
category: threat_analysis
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Security analysts, AI infrastructure administrators, API security teams, Network security engineers
- **shift_type**: clarified
- **shift_summary**: 偵測到針對 Anthropic API 端點的掃描活動，提醒管理者應檢查並保護本地部署的 AI 模型 API

## L3 — Risk Domains
- API security and exposure
- AI model infrastructure security
- Tor-based reconnaissance
- Misconfiguration detection

## L4 — Obligation & Evidence
- **new_obligations**:
  - 檢查本地部署的 Anthropic 模型 API 是否暴露於公開網路
  - 監控針對 `/anthropic/v1/models` 和 `/v1/messages` 端點的異常存取
  - 審查 API 金鑰管理實踐，避免使用範例程式碼中的預設值（如 "password"）
  - 追蹤來自 Tor 出口節點的 API 掃描活動
- **evidence_requirements**:
  - 記錄針對 Anthropic API 端點的掃描請求（GET /anthropic/v1/models）
  - 保存可疑 IP 地址與 Tor 出口節點關聯資訊（如 204.76.203.210）
  - 監控其他泛用端點（如 /v1/messages）的流量變化
- **enforcement_signal**: informational

## Notes
觀察到單一 IP 地址（204.76.203.210，已識別為 Tor 出口節點）對多個感測器進行針對 Anthropic API 端點的偵察。

**掃描請求模式**：
```
GET /anthropic/v1/models
Host: 67.171.182.193:8000
X-Api-Key: password
Anthropic-Version: 2023-06-01
```

使用的 API 金鑰（"password"）為文件中的範例程式碼，非實際有效憑證。

研究人員亦觀察到來自不同 IP（154.83.103.179）針對 `/v1/messages` 端點的流量增加，但此端點足夠泛用，可能被其他 API 使用。

**分析限制**：作者表示不確定此類掃描是否能成功針對本地部署的 Anthropic 模型。此觀察代表針對暴露或錯誤配置的 Anthropic 基礎設施的探測行為，而非成功入侵嘗試。Confidence 設為「中」是因為缺乏對攻擊成功可能性的確認分析。
