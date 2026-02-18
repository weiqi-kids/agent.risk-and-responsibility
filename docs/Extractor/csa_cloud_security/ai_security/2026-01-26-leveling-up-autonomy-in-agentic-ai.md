---
title: "Leveling Up Autonomy in Agentic AI"
source_url: https://cloudsecurityalliance.org/articles/levels-of-autonomy
date: 2026-01-26
category: ai_security
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: —
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: 企業架構師、安全團隊、CISO、董事會、風險管理團隊
- **shift_type**: new
- **shift_summary**: 組織必須建立正式的自主性分類系統,匹配控制措施至自主性等級,並對 Level 4 部署要求明確的高階授權

## L3 — Risk Domains
- AI Security
- Autonomous Systems Governance
- Risk Management
- Human Oversight
- Boundary Enforcement

## L4 — Obligation & Evidence
- **new_obligations**:
  - **匹配控制措施至自主性等級**——治理需求應按比例擴展
  - **技術執行優於僅政策**——Level 3+ 邊界必須機器執行,而非僅監控
  - **明確高階授權**——Level 4 部署需要記錄的執行風險接受
  - **避免 Level 5**——必要的控制機制尚不存在
  - **建立共享詞彙**——無共同術語,風險評估、董事會溝通和監管對話將受損
  - 實施正式的自主性分類系統
  - 建立技術邊界執行機制(Level 3+)
  - 部署持續監控、異常偵測、快速終止開關能力(Level 4)
- **evidence_requirements**:
  - 自主性等級分類記錄
  - 控制措施與自主性等級的匹配證明
  - 技術邊界執行機制(Level 3+)
  - 執行風險接受文件(Level 4)
  - 持續監控與終止開關測試記錄(Level 4)
- **enforcement_signal**: recommended

## 六級自主性分類
### Level 0: 無自主性
- AI 僅提供資訊;人類執行所有操作
- 控制聚焦於輸出品質和防止資訊洩漏
- 風險概況最低

### Level 1: 協助
- AI 可執行操作但需要每個操作的明確人類批准
- 「意圖與操作之間的批准閘道」是核心控制機制
- 明確問責鏈;人類保持決策者

### Level 2: 監督
- 人類批准計畫或批次操作;AI 在該範圍內自主執行
- 基於檢查點的回滾能力變得重要
- 控制必須確保 AI 保持在批准的計畫範圍內

### Level 3: 條件式
- AI 在定義邊界內自主操作,僅在超出邊界時升級
- 需要機器可讀的邊界定義與**技術執行**(非僅偵測)
- 風險高度依賴邊界如何定義和執行

### Level 4: 高自主性
- 人類參與從決策批准轉向監控和例外處理
- 需要:持續監控、異常偵測、快速終止開關能力、全面日誌記錄
- 要求「部署前的執行層級授權和風險接受」

### Level 5: 完全自主性
- 包含潛在的自我導向目標設定和行為修改
- 作者明確立場:「今日不適合企業部署」
- 僅為分類完整性而納入

## 治理影響
| 等級 | 控制模型 | 關鍵需求 |
|------|----------|----------|
| 0–1 | 逐操作批准 | 人在環中 |
| 2 | 計畫層級批准 | 範圍執行 + 回滾 |
| 3 | 邊界定義 | 技術執行機制 |
| 4 | 例外監控 | 24/7 監控 + 終止開關 |
| 5 | 戰略監督 | 目前不建議 |

## 當前狀態問題
大多數部署 agentic AI 的組織:
- 缺乏正式的自主性分類系統
- 在臨時基礎上做出自主性決策
- 沒有自主性邊界的技術執行
- 缺乏管理 AI 自主性的明確政策

## 關鍵部署原則
1. 匹配控制措施至自主性等級
2. 技術執行優於僅政策
3. 明確高階授權(Level 4)
4. 避免 Level 5
5. 建立共享詞彙

## Notes
框架刻意與 SAE J3016 車輛自動化標準平行,為跨功能對話提供 AI 風險的通用語言。作者強調大多數組織當前缺乏正式分類,在臨時基礎上做出自主性決策,造成風險評估和治理缺口。
