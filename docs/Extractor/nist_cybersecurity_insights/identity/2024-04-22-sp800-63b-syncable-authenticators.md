---
title: "Giving NIST Digital Identity Guidelines a Boost: Supplement for Incorporating Syncable Authenticators"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/giving-nist-digital-identity-guidelines-boost-supplement-incorporating
date: 2024-04-22
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**: SP 800-63Bsup1 (Supplement for SP 800-63B)
- **status**: final (補充文件，將於 SP 800-63-4 發布後自動廢止)

## L2 — Responsibility Structure
- **affected_roles**: 聯邦機構資安主管、身分驗證系統開發者、認證管理員、企業與公眾面向系統的身分管理者
- **shift_type**: expanded
- **shift_summary**: SP 800-63Bsup1 將 syncable authenticators (passkeys) 納入 AAL2 合規範疇，訂定金鑰儲存、傳輸與保護要求；應對私鑰可複製帶來的新型風險；支持聯邦零信任策略；FIDO Alliance 估計全球已有逾 80 億用戶帳號具備 passkey 選項

## L3 — Risk Domains
- Authentication（syncable authenticators / passkeys）
- Key Management（金鑰儲存、傳輸與保護）
- Zero Trust（聯邦零信任策略）
- Account Recovery（簡化帳號復原）

## L4 — Obligation & Evidence
- **new_obligations**:
  - 聯邦機構可採用 syncable authenticators (passkeys) 作為 AAL2 合規認證方式
  - 遵循金鑰儲存、傳輸與保護的具體要求
  - 應對私鑰可被複製（clone）帶來的新型風險（使用者可能分享金鑰給他人）
  - 評估部分實作促進「金鑰分享」的風險
  - 採用前應自行評估風險與效益
  - 基於 FIDO CTAP 協議及 W3C WebAuthn 技術標準
  - 支持聯邦零信任策略推進
- **evidence_requirements**:
  - Syncable authenticators 的實施文件
  - 金鑰儲存、傳輸與保護機制的技術文件
  - 私鑰複製風險的評估報告
  - 風險與效益的評估文件
- **enforcement_signal**: recommended

## Notes
本文公告 SP 800-63Bsup1 補充文件，針對現行 SP 800-63B 指引進行強化（無需修訂整份 SP）。將 syncable authenticators (passkeys) 納入 AAL2 合規範疇，訂定金鑰儲存、傳輸與保護要求。Passkeys 優勢：防釣魚攻擊、跨裝置支援、生物辨識整合、簡化帳號復原。風險：使用者可能分享金鑰、部分實作促進金鑰分享。技術標準基於 FIDO CTAP 及 W3C WebAuthn。嚴格遵循原指引者原本無法使用 syncable authenticators，此補充解除限制。FIDO Alliance 估計全球已有逾 80 億用戶帳號具備 passkey 選項。此補充不設公眾評論期（意見併入 SP 800-63-4），第四版發布後自動廢止。Confidence 評為「高」是因為這是正式的 SP 補充文件。
