---
source_url: https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs
fetched_at: 2025-09-18
title: New Draft White Paper - PQC Migration Mappings to Risk Framework Docs
date: 2025-09-18
category: cybersecurity
confidence: 高
---

## L1 — 是什麼變了？

NIST NCCoE 發布 **Cybersecurity White Paper (CSWP) 48** 初步草案，建立 **後量子密碼學 (Post-Quantum Cryptography, PQC) 遷移能力與風險管理框架的對應關係**。

此文件將 NCCoE 的 Migration to PQC 專案示範能力，系統性對應到 **NIST Cybersecurity Framework 2.0** 和 **SP 800-53 安全控制目錄**，協助組織將 PQC 遷移整合進現有風險管理實務。

- **shift_type**: new
- **enforcement_signal**: recommended

---

## L2 — 誰受影響？

- **密碼學負責單位**：需規劃從傳統加密演算法遷移到抗量子演算法
- **風險管理團隊**：需將 PQC 遷移納入組織風險評估框架
- **安全架構師**：需識別 PQC 遷移所需的安全控制項目
- **法遵團隊**：需確保 PQC 遷移符合 NIST SP 800-53 等標準要求
- **長期敏感資料持有者**：如政府機構、金融機構、醫療系統

---

## L3 — 為什麼現在？

兩大迫切性驅動 PQC 遷移：

### 1. 量子電腦威脅時程
- **預估十年內**量子電腦可能破解現有密碼學演算法（如 RSA、ECC）
- 組織需提前規劃，因遷移過程複雜且耗時

### 2. "Harvest Now, Decrypt Later" 攻擊
- 攻擊者**現在就可能截取加密資料**，等待量子電腦出現後解密
- 對於需長期保密的資料（如國家安全、醫療紀錄、金融交易），威脅**已經存在**

### 框架對應的必要性
- CSF 2.0 與 SP 800-53 是廣泛採用的風險管理工具
- 組織需知道 PQC 遷移如何對應到現有的安全成果與控制項目
- 缺乏對應關係會導致 PQC 遷移成為孤立專案，難以整合進整體安全計畫

---

## L4 — 怎麼應對？

### CSWP 48 的對應架構

#### 對應到 Cybersecurity Framework 2.0
- **識別 (Identify)**：盤點組織中使用密碼學的資產與系統
- **保護 (Protect)**：實施 PQC 演算法與混合模式（傳統 + PQC）
- **偵測 (Detect)**：監控遷移過程中的密碼學弱點
- **回應 (Respond)**：處理遷移期間發現的漏洞
- **復原 (Recover)**：確保系統在遷移後能持續運作

#### 對應到 SP 800-53 安全控制
- **SC (System and Communications Protection)**：識別需升級到 PQC 的加密控制
- **IA (Identification and Authentication)**：處理身分驗證機制的演算法遷移
- **AC (Access Control)**：更新存取控制中的密碼學元件
- **SI (System and Information Integrity)**：確保遷移過程的完整性

### 組織實施步驟

#### 階段一：評估與規劃
1. 閱讀 CSWP 48，理解 PQC 遷移與組織現有框架的對應關係
2. 盤點所有使用密碼學的系統、協定、憑證
3. 識別哪些系統需優先遷移（長期敏感資料、關鍵基礎設施）

#### 階段二：能力建立
- 依 CSWP 48 的對應，確認組織需實施哪些 SP 800-53 控制項目
- 評估現有供應鏈是否支援 PQC（硬體、軟體、服務商）
- 訓練團隊了解 PQC 演算法（如 NIST 標準化的 CRYSTALS-Kyber、CRYSTALS-Dilithium）

#### 階段三：遷移執行
- 採用**混合模式**（同時使用傳統與 PQC 演算法）作為過渡策略
- 優先遷移高風險系統
- 持續監控遷移後的系統效能與相容性

### 參與公眾意見

- **意見徵詢期**：至 2025-10-20
- **提交方式**：透過 NCCoE PQC 專案網站
- **Community of Interest**：加入 PQC CoI 獲得專案更新

---

## Notes

**文件狀態**：Initial Public Draft（2025-09-18）

**意見徵詢截止**：2025-10-20

**關聯 NIST 標準**：
- NIST Cybersecurity Framework 2.0
- NIST SP 800-53 (Security and Privacy Controls)
- NIST PQC 標準化專案（CRYSTALS-Kyber、CRYSTALS-Dilithium、SPHINCS+）

**NCCoE Migration to PQC 專案**：
- 提供實作示範與技術指引
- 與產業夥伴合作驗證遷移方案
- 開放 Community of Interest 讓利害關係人參與

**關鍵時程**：
- **現在**：攻擊者可能已在截取加密資料（Harvest Now, Decrypt Later）
- **~10 年內**：量子電腦可能破解傳統演算法
- **立即行動**：組織應開始規劃 PQC 遷移

**引用建議**：
> "Cryptographic algorithms could be broken by quantum computers within a decade. Additionally, 'harvest now, decrypt later' attacks pose immediate threats, as adversaries can capture encrypted data today and decrypt it once quantum capabilities emerge."
