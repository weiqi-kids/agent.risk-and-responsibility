---
title: "邏輯層提示控制注入（LPCI）：代理式系統中的新型安全漏洞類別"
date: 2026-01-30
source_url: https://cloudsecurityalliance.org/articles/logic-layer-prompt-control-injection-lpci-a-novel-security-vulnerability-class-in-agentic-systems
fetched_at: 2026-02-17
category: ai_security
---

# L1：公告基本資訊

**issuing_body**: Cloud Security Alliance (CSA)
**rule_type**: guidance
**enforcement_signal**: recommended
**target_audience**: AI 代理系統開發者、資安研究人員
**date**: 2026-01-30

# L2：責任轉移分析

**shift_type**: new
**who_affected**: AI 代理系統開發與維運團隊
**what_changed**: 識別出新型漏洞類別 LPCI（Logic-layer Prompt Control Injection），攻擊目標為邏輯執行層與持久記憶體，而非傳統的輸入/輸出層
**enforcement_timing**: 立即關注
**explicit_deadline**: -

# L3：實務衝擊評估

**操作面衝擊**：
- LPCI 攻擊具持續性，可跨多個會話存在，偵測難度顯著高於傳統 prompt injection
- 惡意酬載被注入至持久記憶儲存、檢索系統、代理內部推理引擎
- 隨著 AI 代理能力增強，可在無直接人工干預下執行複雜任務，造成難以察覺的持續性威脅

**財務/資源衝擊**：需投資新型偵測機制，傳統輸入/輸出驗證無法有效防禦。

**治理衝擊**：攻擊分多個階段展開，每個階段引入獨特的安全風險，使緩解遠比簡單的輸入輸出驗證複雜。

# L4：落地執行指引

**LPCI 與傳統 Prompt Injection 的差異**：

| 面向 | 傳統 Prompt Injection | LPCI |
|------|----------------------|------|
| 攻擊目標 | 輸入/輸出層 | 邏輯執行層、持久記憶體 |
| 持續性 | 單次會話 | 跨多個會話持續存在 |
| 偵測難度 | 相對容易 | 顯著更複雜 |

**攻擊機制**：
- 注入持久記憶儲存（Persistent Memory Stores）
- 操控檢索系統（Retrieval Systems）
- 影響代理內部推理引擎（Agent's Internal Reasoning Engine）

**風險特性**：
- 可觸發跨會話的未授權行為
- 攻擊生命週期跨越多個階段
- 每個階段引入獨特的安全風險

**防禦建議**（待研究深化）：
- 強化持久記憶體的存取控制
- 建立檢索系統的驗證機制
- 監控代理推理引擎的異常行為模式

# Notes

**confidence**: 中
**review_notes**: 作者 Ken Huang (CSA Fellow)、Hammad Atta、Dr. Yasir Mehmood，文章揭示新型漏洞類別但防禦細節仍需進一步研究
