---
title: "MAESTRO 框架應用於代理式 AI 威脅模型：從框架到 CI/CD 管線"
date: 2026-02-03
source_url: https://cloudsecurityalliance.org/articles/applying-maestro-to-real-world-agentic-ai-threat-models-from-framework-to-ci-cd-pipeline
fetched_at: 2026-02-17
category: ai_security
---

# L1：公告基本資訊

**issuing_body**: Cloud Security Alliance (CSA)
**rule_type**: guidance
**enforcement_signal**: recommended
**target_audience**: 開發團隊、資安工程師、企業架構師
**date**: 2026-02-03

# L2：責任轉移分析

**shift_type**: new
**who_affected**: AI 代理開發團隊、威脅建模團隊
**what_changed**: 提出將 MAESTRO 框架嵌入自動化威脅建模工具（TITO）的實作方法
**enforcement_timing**: 立即適用
**explicit_deadline**: -

# L3：實務衝擊評估

**操作面衝擊**：開發團隊需將威脅建模從一次性文件轉變為 CI/CD 持續性管線流程，每次程式碼提交時自動執行 MAESTRO 分類與跨層攻擊路徑分析。

**財務/資源衝擊**：需投資自動化工具開發，但可避免傳統手動威脅模型快速過時的問題。

**治理衝擊**：傳統 SAST 工具對提示注入鏈、跨層信任邊界違規完全視而不見，需引入新型掃描工具。

# L4：落地執行指引

**MAESTRO 七層架構**：
1. Layer 1：基礎模型（Foundation Models）
2. Layer 2：資料與上下文（Data & Context）
3. Layer 3：代理框架（Agent Frameworks）
4. Layer 4+：工具執行、外部整合、生態系統

**跨層威脅鏈示例**：
- 用戶輸入（惡意提示）→ Layer 1: LLM 解譯惡意指令 → Layer 3: 代理框架執行工具調用 → Layer 4: 實際系統操作（檔案/DB/API）
- 最危險的攻擊路徑：從 Layer 1 發起，級聯穿透至 Layer 4 及以上

**CI/CD 整合策略**：
1. 自動掃描觸發：每次程式碼提交時執行 MAESTRO 分類
2. 跨層分析：不只檢查單一端點，追蹤完整工具調用鏈
3. 持續更新：隨代碼庫演進同步更新威脅模型

**主要論點**：
- 傳統安全工具存在結構性盲點，無法處理 LLM 驅動的動態決策
- 代理式 AI 的信任邊界在執行期由模型行為定義，非靜態架構
- 提示注入本質為新型程式碼執行漏洞：自然語言即「程式碼」，LLM 即「解譯器」

# Notes

**confidence**: 高
**csa_framework**: MAESTRO
**review_notes**: MAESTRO 框架提供概念地圖，TITO 工具實現自動化落地，威脅建模必須嵌入 CI/CD 才能跟上部署速度
