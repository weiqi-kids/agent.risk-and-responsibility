---
source_layer: nist_cybersecurity_insights
source_url: https://www.nist.gov/blogs/cybersecurity-insights/data-distribution-privacy-preserving-federated-learning
fetched_at: 2024-02-27
title: Data Distribution in Privacy-Preserving Federated Learning
date: 2024-02-27
category: privacy
issuing_body: NIST Cybersecurity Insights Blog
confidence: medium
tags:
  - federated-learning
  - privacy-preserving
  - data-distribution
  - horizontal-partitioning
  - vertical-partitioning
  - NIST-RTA-collaboration
---

# L1 - 摘要（Summary）

NIST 與英國 RTA（Responsible Technology Adoption Unit，前身為 Centre for Data Ethics and Innovation）合作系列文章的第三篇，探討隱私保護聯邦學習（PPFL）中的資料分佈模式。文章對比傳統集中式學習與聯邦學習的差異，說明資料如何在參與組織間分散，並引入水平分割與垂直分割的概念。

# L2 - 政策要素（Policy Elements）

## 系列定位與合作框架
- **合作方**：NIST 與英國 RTA（前 Centre for Data Ethics and Innovation）
- **系列目標**：教育政策制定者與技術實務者理解 PPFL 的隱私保護機制與限制
- **發布平台**：
  - NIST Privacy Engineering Collaboration Space
  - RTA Blog

## 核心概念對比：集中式 vs 聯邦學習
- **傳統集中式學習**：
  - 資料集中於單一位置（如雲端伺服器）
  - 訓練過程由中央控制
  - 隱私風險：資料持有者需完全信任中央處理方

- **聯邦學習**：
  - 資料分散於多個參與組織
  - 各組織本地訓練，僅分享模型更新
  - 隱私優勢：原始資料不離開本地環境

## 資料分佈的政策意涵
- **資料主權**：參與者保留資料控制權
- **跨境資料流動**：聯邦學習可緩解資料本地化要求（如 GDPR）
- **信任模型**：從「信任單一中央方」轉變為「信任分散式協議」

# L3 - 技術要求（Technical Requirements）

## 資料分割模式

### 1. 水平分割（Horizontal Partitioning）
- **定義**：各參與者持有相同特徵的不同樣本
- **範例**：多家醫院各自持有病患資料，每筆資料包含相同的診斷欄位（年齡、症狀、診斷結果）
- **技術特性**：
  - 樣本數分散，特徵數一致
  - 聚合方式：模型參數或梯度的加權平均
  - 典型應用：跨組織協作（如醫療聯盟、金融機構聯盟）

### 2. 垂直分割（Vertical Partitioning）
- **定義**：各參與者持有相同樣本的不同特徵
- **範例**：銀行持有客戶財務資料，電信商持有相同客戶的通訊行為資料
- **技術特性**：
  - 特徵數分散，樣本數一致（需有共同識別碼，如用戶 ID）
  - 聚合方式：特徵空間整合，需安全計算協議
  - 典型應用：跨產業資料整合（需隱私保護的 ID 對齊）

## 架構要求
- **通訊協議**：參與者與聚合器間的安全通訊通道
- **模型同步**：定期更新全域模型並分發給參與者
- **隱私保護層**：
  - 差分隱私（Differential Privacy）
  - 安全多方計算（Secure Multi-Party Computation）
  - 同態加密（Homomorphic Encryption）

# L4 - 實務影響（Practical Implications）

## 組織衝擊

### 水平分割場景
- **適用組織**：同業聯盟（如多家醫院、多家銀行）
- **優勢**：
  - 擴大訓練樣本數，提升模型泛化能力
  - 無需共享敏感原始資料
- **挑戰**：
  - 資料分佈可能不均（Non-IID 問題）
  - 需協調各方訓練節奏與計算資源

### 垂直分割場景
- **適用組織**：跨產業合作（如銀行 + 電信商、醫療 + 保險）
- **優勢**：
  - 整合互補特徵，提升預測準確性
  - 突破單一組織資料孤島
- **挑戰**：
  - 需安全的 ID 對齊協議（避免洩漏身份資訊）
  - 技術複雜度高於水平分割
  - 需明確的資料使用協議與利益分配機制

## 風險與挑戰
- **隱私風險**：即使不共享原始資料，模型更新仍可能洩漏資訊（需額外保護）
- **公平性**：資料分佈不均可能導致模型對少數參與者不公平
- **激勵機制**：如何確保各方持續參與並貢獻高品質資料

## 行動建議
1. **場景評估**：根據資料持有方的關係（同業 vs 跨業）選擇分割模式
2. **技術選型**：
   - 水平分割：優先考慮 FedAvg、差分隱私
   - 垂直分割：評估安全多方計算或同態加密方案
3. **法律合規**：
   - 確認聯邦學習是否符合資料保護法（如 GDPR 的「資料最小化」原則）
   - 制定明確的資料使用與模型共享協議
4. **試點先行**：在低敏感度資料集上驗證技術可行性與隱私保證

# Notes

- **系列連貫性**：本文為系列第三篇，前文已介紹聯邦學習基本概念與攻擊模型
- **資訊完整性**：description 已清楚說明集中式 vs 聯邦學習差異，以及資料分散特性，無需 WebFetch
- **跨國合作**：NIST 與英國 RTA 聯合撰寫，體現隱私工程的國際共識建立
- **後續預告**：文中提及後續將探討輸入隱私保護技術（呼應系列文章架構）
