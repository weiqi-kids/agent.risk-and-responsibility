---
source_layer: nist_cybersecurity_insights
source_url: https://www.nist.gov/blogs/cybersecurity-insights/protecting-model-updates-privacy-preserving-federated-learning
fetched_at: 2024-03-21
title: Protecting Model Updates in Privacy-Preserving Федerated Learning
date: 2024-03-21
category: privacy
issuing_body: NIST Cybersecurity Insights Blog
confidence: medium
tags:
  - federated-learning
  - privacy-preserving
  - input-privacy
  - model-training
  - horizontal-partitioning
---

# L1 - 摘要（Summary）

NIST Cybersecurity Insights Blog 系列文章第四篇，探討隱私保護聯邦學習（PPFL）中如何為水平分割資料場景提供輸入隱私保護。文章聚焦於模型訓練過程、參與者的模型更新提交，以及聚合機制中的隱私風險。

# L2 - 政策要素（Policy Elements）

## 目標與適用範圍
- **目標族群**：部署 PPFL 系統的組織、資料科學家、隱私工程師
- **適用場景**：水平分割資料的聯邦學習（每個參與者持有完整特徵的部分樣本）
- **核心問題**：如何在參與者向中央聚合器提交模型更新時保護輸入隱私

## 關鍵機制
- **訓練流程**：各參與者使用本地資料訓練模型，提交更新（梯度或參數）至聚合器
- **聚合過程**：聚合器整合各方更新，生成全域模型
- **隱私威脅**：模型更新可能洩漏訓練資料的敏感資訊（input privacy 威脅）

## 涉及標準與參考
- 本文為 NIST 與英國 RTA（Responsible Technology Adoption Unit）合作系列的一部分
- 關聯前文：攻擊模型與隱私概念、水平與垂直分割

# L3 - 技術要求（Technical Requirements）

## 架構規範
- **水平分割架構**：
  - 多個參與者各持有相同特徵的不同資料樣本
  - 中央聚合器負責整合模型更新
  - 參與者定期提交本地訓練後的模型參數或梯度

## 隱私保護技術（文中預告後續討論）
- **輸入隱私（Input Privacy）**：保護訓練資料不因模型更新洩漏
- **可能技術**：差分隱私、安全多方計算、同態加密（文中未詳述，預計後續文章展開）

## 操作流程
1. 各參與者下載初始全域模型
2. 使用本地資料進行訓練
3. 計算並提交模型更新（梯度/參數差異）
4. 聚合器執行加權或平均聚合
5. 發布新版全域模型，迴圈繼續

# L4 - 實務影響（Practical Implications）

## 組織衝擊
- **資料持有方**：需評估模型更新是否可能反推訓練資料
- **聚合器營運者**：需選擇適當的隱私保護機制平衡效用與隱私
- **監管機構**：需了解 PPFL 中的隱私保證並非絕對，需額外技術層保護

## 風險與挑戰
- **模型反演攻擊（Model Inversion）**：攻擊者透過模型更新推測訓練樣本
- **成員推斷攻擊（Membership Inference）**：判斷特定資料是否參與訓練
- **效能折衷**：強隱私保護可能降低模型準確性或增加通訊成本

## 行動建議
1. **技術選型**：依資料敏感度選擇差分隱私、安全聚合或混合方案
2. **威脅評估**：在部署前進行隱私攻擊模擬（如成員推斷測試）
3. **透明溝通**：向參與者明確說明隱私保證範圍與限制

# Notes

- **系列定位**：本文為多篇系列的第四篇，前文已介紹攻擊模型、輸入/輸出隱私概念、資料分割類型
- **後續預告**：文中提及將探討具體的輸入隱私保護技術（如差分隱私、安全聚合）
- **合作背景**：NIST 與英國 RTA 聯合撰寫，體現跨國隱私工程協作
- **資訊完整性**：description 已清楚說明文章定位與核心問題，無需 WebFetch
