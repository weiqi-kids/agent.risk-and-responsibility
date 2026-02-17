---
title: "CSA × Strata Identity 調查：企業進入「信任建立期」，為 AI 自主性奠基"
date: 2026-02-03
source_url: https://cloudsecurityalliance.org/articles/cloud-security-alliance-strata-survey-finds-that-enterprises-are-in-time-to-trust-phase-as-they-build-ai-autonomy-foundations
fetched_at: 2026-02-17
category: identity
---

# L1：公告基本資訊

**issuing_body**: Cloud Security Alliance (CSA), Strata Identity
**rule_type**: survey
**enforcement_signal**: informational
**target_audience**: 企業 IT 與安全專業人員、身分管理團隊
**date**: 2026-02-05

# L2：責任轉移分析

**shift_type**: expanded
**who_affected**: 身分管理團隊、AI 代理治理團隊
**what_changed**: 調查揭示企業對 AI 代理身分管理的信心嚴重不足（84% 懷疑無法通過審計），需重新架構身分體系
**enforcement_timing**: 立即關注
**explicit_deadline**: -

# L3：實務衝擊評估

**操作面衝擊**：
- 僅 21% 企業維護即時 Agent 清冊，不到 28% 能跨環境完整追蹤 Agent 行動
- 44% 組織使用靜態 API 金鑰，43% 使用帳密組合，缺乏情境感知能力
- 近半數組織直接將人類 IAM 模型延伸至 Agent 治理，導致權限邊界不符

**財務/資源衝擊**：
- 40% 組織正增加整體身分安全預算
- 34% 設立專屬預算項目
- 22% 從其他安全領域重新配置

**治理衝擊**：傳統以人為中心的 IAM 架構無法應對 Agent 的速度與自主性，需建立專用治理框架。

# L4：落地執行指引

**關鍵統計數據**：
- 對合規審計缺乏信心：84%
- 當前 IAM 高度信心：僅 18%
- 靜態 API 金鑰使用：44%
- 即時 Agent 清冊：僅 21%
- 可追蹤 Agent 行動：不到 28%

**Agent 採用預測**（2026）：
- 39% 預期管理 1-100 個
- 31% 預期管理 101-500 個
- 整體超過 70% 將管理數十至數百個 Agent

**建議行動方向**：
1. 重新架構身分體系：從根本重新思考，而非調整現有 IAM
2. 建立即時 Agent 清冊：實現單一視窗的完整可見性
3. 導入動態授權機制：以情境感知取代靜態憑證
4. 強化可追蹤性：每個 Agent 行動都能追溯至對應的人或系統
5. 以人類身分相同標準對待 Agent

**核心洞見**：
- CSA 研究副總裁 Hilary Barone：成功關鍵在於「enabling secure autonomy at enterprise scale」
- Strata Identity CEO Eric Olden：未來身分管理必須是「orchestrated, contextual, and continuous」

# Notes

**confidence**: 高
**review_notes**: 調查於 2025 年 9-10 月進行，收集 285 份 IT 與安全專業人員回應，揭示企業 AI 代理身分管理的重大缺口
