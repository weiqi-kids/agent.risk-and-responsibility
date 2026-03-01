---
layout: default
title: AI Governance Landscape
nav_order: 12
has_children: true
---

# AI Governance Landscape — 2026-03

<div class="key-takeaway">
本月重點：ISO 42001 AI 管理系統實務指引發布，為組織建立正式 AIMS 提供路線圖；CSA 連續深化 Agentic AI 安全實務，MAESTRO 框架完成首個實戰案例（OpenClaw）；自主 AI 代理可見性調查揭露僅 21% 組織維護代理登錄冊；AI 驅動攻擊加速迫使資安架構從反應式修補轉向結構性韌性。
</div>

> 本期追蹤 30 項 AI 治理動態，涵蓋 CSA 雲端安全（18 項）、歐盟法規（5 項）、NIST 洞察（4 項）、NIST 框架（2 項）、ISO 標準（1 項）。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

## 本月重點

1. **ISO 42001 AI 管理系統實務指引** — CSA 於 2026-01-13 發布「AI Governance and ISO 42001 FAQs」，提供組織導入 ISO 42001 AI 管理系統（AIMS）的實務路線圖。核心要求包括：定義組織在 AI 供應鏈中的角色、執行 AI 系統影響評估、維護風險註冊表。（來源：CSA，rule_type: guidance，enforcement: recommended）

2. **MAESTRO 威脅建模首個實戰案例** — CSA 於 2026-02-17 發布「OpenClaw Threat Model」，以開源 Agentic AI 系統 OpenClaw 為案例，展示 MAESTRO 七層威脅模型的實務應用。此為 MAESTRO 從理論框架進入實務驗證的重要里程碑。（來源：CSA，rule_type: guidance，enforcement: recommended）

3. **自主 AI 代理可見性調查** — CSA 於 2026-02-03 發布調查報告，揭露嚴重的 AI 代理治理缺口：僅 21% 組織維護實時代理登錄冊、僅 45% 具備端對端 session tracing。（來源：CSA，rule_type: guidance，enforcement: recommended）

4. **AI 驅動資安韌性重構** — CSA 於 2026-02-26 發布「Core Collapse」，指出 AI 加速威脅從根本改變攻防不對稱性，安全團隊須從反應式修補轉向結構性韌性。（來源：CSA，rule_type: guidance，enforcement: recommended）

5. **非人類身分 Token 擴散治理** — CSA 於 2026-02-03 發布「Token Sprawl in the Age of AI」，指出 AI 採用加速非人類身分擴散，超過 16% 組織尚未實作集中身分追蹤。（來源：CSA，rule_type: guidance，enforcement: recommended）

---

## 區域動態比較

### 美國（NIST）

**NIST Frameworks（2 項）**：

| 文件 | 發布日期 | Document ID | 狀態 | 重點 |
|------|----------|-------------|------|------|
| Draft NIST Guidelines Rethink Cybersecurity for the AI Era | 2025-12-16 | NISTIR 8596 | public_comment（已截止） | 首個整合 CSF 與 AI RMF 的 AI 網路安全框架配置檔 |
| NCCoE Cyber AI Profile: Securing AI System Components | 2025-08-05 | CSF 2.0 Core | public_comment | AI 系統元件安全工作坊 |

### 美國（CSA Cloud Security Alliance）

本期 CSA 發布 18 項 AI 安全治理指引，持續為最活躍的指引來源，聚焦 Agentic AI 安全深化、非人類身分治理與 AI 驅動資安架構轉型。

### 歐盟

| 法規 | 發布日期 | Document ID | 類型 | binding_force | 重點 |
|------|----------|-------------|------|---------------|------|
| Corrigendum to AI Act (EU) 2024/1689 R(02) | 2026-01-13 | CELEX:32024R1689R(02) | amendment | directly_applicable | 明確排除線上空間適用範圍 |
| Council Regulation (EU) 2026/150 | 2026-01-23 | CELEX:32026R0150 | amendment | directly_applicable | 擴展 EuroHPC 至 AI gigafactories，41.2 億歐元 |
| Regulation (EU) 2025/2653 — ReArm Europe Plan | 2026-01-14 | CELEX:32025R2653 | revision | directly_applicable | 國防相關投資激勵 |

---

## L5 — Evolution Signals

1. [系統推論] **Agentic AI 安全從理論框架進入實務驗證** — MAESTRO 完成首個實戰案例（OpenClaw），可見性調查揭露理論與實務的巨大落差（21% 登錄冊、45% tracing、28% 追溯）。

2. [系統推論] **非人類身分治理催生獨立技術標準需求** — NHI 與人類身分比例 144:1，Token 擴散、授權漂移等問題已超越傳統 IAM 範疇，正朝獨立技術領域發展。

3. [系統推論] **AI 驅動威脅迫使資安架構根本性重構** — 從「局部調適」演變為「架構層級的根本性重構」，傳統基於邊界與特徵碼的安全架構已不適用。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 30 |
| 來源分布 | CSA: 18, EU: 5, NIST Insights: 4, NIST Frameworks: 2, ISO: 1 |
| rule_type 分布 | guidance: 19, amendment: 4, draft: 1, new: 1, revision: 1, unknown: 4 |
| enforcement_signal 分布 | recommended: 22, mandatory: 4, informational: 4 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| csa_cloud_security | ai_security, identity, compliance, best_practices | 18 | 2026-01-06 ~ 2026-02-26 |
| eu_regulations | ai_governance, critical_infrastructure, financial_compliance | 5 | 2026-01-13 ~ 2026-01-27 |
| nist_cybersecurity_insights | ai_risk, workforce | 4 | 2024-09-19 ~ 2025-07-31 |
| nist_frameworks | ai_risk | 2 | 2025-08-05 ~ 2025-12-16 |
| iso_standards | other | 1 | 2025-11-11 |

---

*報告產出時間：2026-03-01*
