---
title: "Check Your Wallet? How Mobile Driver's Licenses are Changing Online Transactions"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/check-your-wallet-how-mobile-drivers-licenses-are-changing-online
date: 2024-05-22
category: identity
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST NCCoE
- **document_id**: mDL Project, FIDO CTAP, W3C WebAuthn
- **status**: ongoing

## L2 — Responsibility Structure
- **affected_roles**: 金融機構、身分驗證系統開發者、數位錢包提供者、詐欺防制團隊、法規合規人員
- **shift_type**: new
- **shift_summary**: mDL 從根本上以數位交易為設計核心，採用公鑰密碼學與生物辨識驗證；支援遠端身分核實（CIP/KYC）、防釣魚多因素認證、高風險交易二次確認；要求組織評估 mDL 在詐欺防制與法規合規的價值

## L3 — Risk Domains
- Identity & Access Management（mDL 身分驗證）
- Fraud Prevention（詐欺防制、KYC/CIP 法規）
- Phishing Resistance（防釣魚多因素認證）
- Selective Disclosure（選擇性揭露隱私保護）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 金融機構應提供前端與核心技術架構的反饋，以利 mDL 整合
  - 組織應評估 mDL 在詐欺防制與法規合規方面的價值
  - 身分驗證系統應支援 mDL 作為身分證據（滿足 CIP/KYC 法規要求）
  - 高風險交易或疑似詐欺時應支援 mDL 進行二次確認（升級驗證）
  - 支援跨裝置流程（手機應用程式 ↔ 電腦瀏覽器）
  - 實施選擇性揭露機制，用戶可自選分享哪些資料
- **evidence_requirements**:
  - mDL 整合的技術架構文件
  - 詐欺防制與法規合規的評估報告
  - 遠端身分核實的實施文件
  - 跨裝置流程的技術規範
  - 選擇性揭露機制的設計文件
- **enforcement_signal**: recommended

## Notes
本文說明 mDL（mobile driver's license）如何改變線上交易。傳統駕照設計用於實體查驗，無法有效支援線上環境。mDL 從根本上以數位交易為設計核心：採用公鑰密碼學與生物辨識驗證、支援跨裝置流程、提供選擇性揭露。可作為遠端身分核實（CIP/KYC）、防釣魚多因素認證、高風險交易二次確認。現行線上驗證痛點包括 AI 偽造掃描駕照、KBA 安全性被侵蝕。NIST NCCoE 建議金融機構提供反饋以利 mDL 整合，加入 mDL 社群（mdl-nccoe@nist.gov）。Confidence 評為「中」是因為 Blog 文章屬於專案推廣而非正式規範。
