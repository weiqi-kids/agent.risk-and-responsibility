---
title: "Detecting and Monitoring OpenClaw (clawdbot, moltbot)"
source_url: https://isc.sans.edu/diary/rss/32678
date: 2026-02-03
category: threat_analysis
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Security operations teams, System administrators, AI security specialists, Network security engineers, Compliance officers
- **shift_type**: new
- **shift_summary**: 新型 AI 代理框架 OpenClaw 因設計缺陷引發安全疑慮，需建立偵測與監控機制以管理其風險

## L3 — Risk Domains
- AI agent security and governance
- System access control
- Network segmentation
- Prompt injection prevention
- Data exfiltration risk
- Audit and monitoring

## L4 — Obligation & Evidence
- **new_obligations**:
  - 使用 openclaw-detect 工具掃描系統中的 OpenClaw 相關 artifacts（如 `~/.openclaw` 狀態目錄或 Docker 容器）
  - 部署 openclaw-telemetry 插件以捕獲所有工具呼叫、LLM 請求與代理對話，並啟用雜湊鏈防篡改與 syslog/SIEM 轉發
  - 在 Docker 沙箱環境中執行 OpenClaw
  - 限制 OpenClaw 使用的帳號權限，僅允許可承受風險的帳號
  - 禁止 OpenClaw 連接至網際網路
  - 實作 ACIP (Advanced Cognitive Inoculation Prompt) 以限制 prompt injection 攻擊
- **evidence_requirements**:
  - 記錄所有 OpenClaw 工具呼叫、LLM 請求與代理對話（透過 openclaw-telemetry）
  - 保存系統掃描結果，確認 OpenClaw 安裝與執行狀態
  - 監控與記錄 OpenClaw 的網路連線行為
- **enforcement_signal**: recommended

## Notes
OpenClaw (又稱 clawdbot、moltbot) 為新型 AI 代理框架，專注於自動化辦公室工作，特別是訊息傳遞與系統互動。該工具因「設計中的一系列安全疏失」而快速引起關注。

**偵測工具**：
- **openclaw-detect**：掃描系統中的 OpenClaw 相關檔案（如 `~/.openclaw` 狀態目錄）或 Docker 容器
- **openclaw-telemetry**：作為 OpenClaw 插件，捕獲所有工具呼叫、LLM 請求與代理對話，具備內建資料脫敏、防篡改雜湊鏈與 syslog/SIEM 轉發功能

**網路偵測限制**：基於網路的偵測「不易實現」，因 OpenClaw 缺乏中央連接點，僅連接至已配置的服務與線上模型，需進行 TLS 攔截才能有效監控。

**安全建議**強調應查閱 OpenClaw 專屬安全文件、於 Docker 沙箱環境中部署、限制帳號權限、禁止網際網路連接，並實作 ACIP 以防範 prompt injection。
