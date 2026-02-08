---
source_url: https://www.nist.gov/news-events/news/2025/07/nist-consortium-and-draft-guidelines-aim-improve-security-software
fetched_at: 2025-07-30
title: NIST SP 1800-44 - Secure Software Development (DevSecOps) Practices
category: cybersecurity
date: 2025-07-30
---

## L1 核心事實

NIST National Cybersecurity Center of Excellence (NCCoE) 領導的「Software Supply Chain and DevOps Security Practices Consortium」（由 14 個成員組織組成）於 2025 年 7 月 30 日發布初步草案「Secure Software Development, Security, and Operations (DevSecOps) Practices」(NIST SP 1800-44)，徵詢公眾意見至 **2025 年 9 月 12 日**。

該指引擴展 NIST 2022 年發布的 Secure Software Development Framework (SSDF)，從高階實務建議延伸至具體實作範例。指引將展示組織如何運用商用現成技術、AI 能力及零信任原則建立安全的開發環境。

虛擬活動預定於 **2025 年 8 月 27 日下午 1 時 (EDT)** 舉行，展示專案目標並蒐集利害關係人回饋。

## L2 風險義務轉移

### 轉移類型
- **shift_type**: expanded
- **enforcement_signal**: recommended

### 轉移內容

**擴展面向**：
- 將軟體安全從「設計原則」延伸至「實作方法」，提供可操作的技術指引
- 涵蓋軟體生命週期所有階段：規劃、測試、部署、營運
- 整合新興技術（AI 能力、零信任架構）至開發流程

**SSDF 的演進**：
- **2022 年 SSDF**：提供高階的安全軟體開發實務建議
- **2025 年 SP 1800-44**：展示如何使用商用現成技術實作 SSDF

**涵蓋範圍**：
- 規劃與測試階段的安全實務
- 部署與營運階段的安全管控
- 漏洞掃描與程式碼函式庫管理
- 團隊在安全環境中的協作方式
- 運用 AI 能力提升開發安全性
- 應用零信任原則於開發環境

### 義務主體

**直接影響**：
- 軟體開發組織（企業、新創、開源專案）
- DevOps、DevSecOps 團隊
- 軟體供應鏈管理者
- 雲端原生應用開發者

**間接影響**：
- DevSecOps 工具供應商（需配合指引調整產品功能）
- 軟體採購方（可要求供應商遵循 SP 1800-44）
- 稽核與認證機構
- 教育訓練機構（需更新課程內容）

## L3 衝擊場景

### 合規成本

**初期投入**：
- 評估現有 DevOps 流程與 SP 1800-44 的符合程度
- 選擇並部署商用現成技術（漏洞掃描、程式碼分析、SBOM 產生）
- 整合零信任架構至開發環境（身分驗證、存取控制、微分段）
- 培訓開發團隊理解 DevSecOps 實務與工具

**持續成本**：
- 維護 DevSecOps 工具鏈（更新、授權、技術支援）
- 定期掃描與修復程式碼漏洞
- 管理軟體物料清單 (SBOM) 與第三方函式庫風險
- 持續改善開發流程的安全性

### 執行難點

**技術層面**：
- 整合多種安全工具至 CI/CD 流程（避免降低開發速度）
- 管理誤報問題（靜態分析、漏洞掃描的雜訊）
- 在容器化、微服務架構中實施零信任原則
- 平衡安全控制與開發團隊的生產力

**組織層面**：
- 改變開發文化，將安全視為共同責任（而非僅資安團隊）
- 協調開發、資安、營運團隊的工作流程
- 在快速交付壓力下維持安全標準
- 投資 DevSecOps 工具與人才培訓

### 風險場景

**若採用指引**：
- 降低軟體漏洞進入生產環境的機率
- 提升供應鏈攻擊的偵測能力（SBOM、依賴掃描）
- 縮短漏洞修復時間（整合至 CI/CD 流程）
- 符合客戶與監管機構對軟體安全的期待

**若不採用**：
- 軟體漏洞可能持續存在至生產環境，導致資安事件
- 供應鏈攻擊（如惡意套件）難以偵測
- 面臨客戶要求提供 SBOM 時無法快速回應
- 監管機構可能要求補強軟體開發安全措施

## L4 因應策略

### 組織層面

**短期行動（0-6 個月）**：
1. 參與公眾意見徵詢（至 2025/09/12）與虛擬活動（2025/08/27）
2. 使用 SP 1800-44 評估現有 DevOps 流程的安全成熟度
3. 識別最關鍵的安全缺口（如缺少 SBOM、未掃描第三方套件）

**中期行動（6-18 個月）**：
1. 部署商用現成技術實作 DevSecOps（如 Snyk、Aqua Security、GitHub Advanced Security）
2. 整合漏洞掃描與程式碼分析至 CI/CD 流程
3. 建立 SBOM 產生與管理機制
4. 實施零信任原則於開發環境（如 OAuth、短期憑證、最小權限）

**長期策略（18 個月以上）**：
1. 建立持續性的 DevSecOps 改善機制（監控指標、定期檢視）
2. 運用 AI 能力提升程式碼分析與威脅偵測
3. 參與產業社群，分享 DevSecOps 實務經驗
4. 將軟體安全納入組織整體風險治理

### 技術層面

**立即可行**：
- 啟用 GitHub Dependabot 或類似工具掃描第三方套件漏洞
- 實施程式碼審查 (Code Review) 流程
- 建立開發環境的存取控制（多因素驗證、最小權限）
- 產生軟體物料清單 (SBOM) 提供給客戶

**需要開發/採購**：
- 靜態應用安全測試 (SAST) 工具
- 動態應用安全測試 (DAST) 工具
- 軟體組成分析 (SCA) 工具
- 容器安全掃描工具
- SBOM 管理平台
- 零信任架構基礎設施（身分驗證、存取代理）

### 政策倡議

**產業層面**：
- 推動軟體產業採用 SP 1800-44 作為 DevSecOps 標準
- 建立 DevSecOps 工具的互操作性標準（避免工具鎖定）
- 促進 SBOM 格式的標準化（如 SPDX、CycloneDX）

**政府層面**：
- 建議將 SP 1800-44 納入聯邦軟體採購要求
- 推動軟體供應鏈透明性法規（要求提供 SBOM）
- 提供技術輔導協助中小企業實施 DevSecOps
- 加入 Community of Interest，影響未來指引方向

## Notes

### 執行時間軸

| 時間點 | 里程碑 |
|--------|--------|
| 2022 | NIST Secure Software Development Framework (SSDF) 發布 |
| 2025-07-30 | NIST SP 1800-44 初步草案發布 |
| 2025-08-27 | 虛擬活動展示專案與蒐集回饋 |
| 2025-09-12 | 公眾意見徵詢截止 |
| 2025 Q4 | 預計發布最終版本（需確認） |

### 待釐清問題

1. SP 1800-44 是否會推薦特定的商用工具或僅提供技術範例？
2. 指引是否會涵蓋開源軟體開發的特殊考量？
3. 與 CISA 的 Secure by Design 倡議如何整合？
4. 是否會發展為強制性標準（如聯邦採購要求）？

### 資料來源

- **主要來源**：NIST SP 1800-44 初步草案
- **聯盟成員**：14 個組織（需確認完整名單）
- **先前框架**：NIST Secure Software Development Framework (2022)
- **徵詢管道**：NCCoE 專案網站、NCCoE-DevSecOps@list.nist.gov
- **相關社群**：Community of Interest
- **信心評等**：高
