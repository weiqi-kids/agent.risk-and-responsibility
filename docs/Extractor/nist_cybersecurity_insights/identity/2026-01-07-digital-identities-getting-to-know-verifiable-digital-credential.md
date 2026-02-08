---
source_url: https://www.nist.gov/blogs/cybersecurity-insights/digital-identities-getting-know-verifiable-digital-credential-0
fetched_at: 2026-02-08
title: Digital Identities - Getting to Know the Verifiable Digital Credential Ecosystem
date: 2026-01-07
category: identity
confidence: 中
---

# Digital Identities - Getting to Know the Verifiable Digital Credential Ecosystem

## L1: 核心內容摘要

NIST 針對可驗證數位憑證（VDC）生態系統發布系列文章第二篇，說明 VDC 互通性所需的標準與協定框架。文章比較兩種主要憑證格式：ISO/IEC 18013-5 mdoc（行動駕照）與 W3C Verifiable Credentials（VC），前者採用 CBOR 編碼與預定義結構，適合政府核發憑證；後者使用 JSON-LD 提供彈性結構，適合跨領域創新應用。NIST NCCoE 已成功示範單一驗證者同時接受多種錢包格式的互通場景。不同產業與應用情境需求不同，組織可能需同時支援多種標準。

## L2: 框架核心概念與應用

**核心技術標準**

1. **mdoc 格式 (ISO/IEC 18013-5)**
   - 原為行動駕照設計，採用 CBOR 二進位格式確保緊湊高效
   - 預定義結構（schema）確保跨轄區一致性
   - 延伸規範 ISO/IEC 18013-7 支援線上呈現
   - 適用於政府核發的身分憑證

2. **W3C Verifiable Credentials (VCDM)**
   - 基於 JSON-LD 提供彈性資料結構
   - 支援自訂詞彙表（vocabularies），促進創新
   - 需透過自願協調與共享登錄（shared registries）達成互通
   - 適用於多樣化網路互動場景

3. **跨境互通框架**
   - EU Architecture Reference Framework (ARF)
   - EUDI Wallet programs
   - ISO 23220 與 ISO 18013 系列標準

**傳輸機制**

- NFC (near-field communication) — 近距離實體呈現
- Bluetooth — 短距無線傳輸
- Web protocols — 線上呈現（後續文章涵蓋）

**互通性實證**

NIST NCCoE 示範計畫證實單一驗證端可同時接受：
- 不同廠商的數位錢包
- mdoc 與 VC 兩種格式的憑證
- 適用於金融機構身分驗證工作流程

## L3: 分散式系統與基礎設施風險

**技術架構分歧風險**

1. **格式碎片化**
   - mdoc 與 VC 標準並存，組織需投資支援多種格式
   - 自訂詞彙表增加互通成本
   - 不同轄區可能採用不同標準組合

2. **治理與協調挑戰**
   - W3C VC 依賴「自願協調」機制，缺乏強制性互通保證
   - 跨境應用需協調不同法規框架（如 EU ARF）
   - 政府與私部門標準採納速度不一

3. **驗證端整合負擔**
   - 需同時支援多種傳輸協定（NFC/Bluetooth/Web）
   - 多格式驗證邏輯增加系統複雜度
   - 持續標準演進要求定期更新整合層

**實施風險**

- 早期採用者可能面臨標準變動風險
- 不同產業（金融/醫療/教育）對格式偏好不同
- 錢包廠商可能優先支援特定標準，影響使用者選擇

## L4: 推論與策略建議

**短期策略（1-2 年）**

1. **多標準並行支援**
   - 驗證端應規劃同時接受 mdoc 與 W3C VC
   - 參考 NIST NCCoE 示範計畫的整合架構
   - 優先支援所屬產業主流格式

2. **標準選擇評估框架**
   - 政府核發憑證 → mdoc（ISO 18013 系列）
   - 民間跨領域應用 → W3C VC（彈性優先）
   - 跨境應用 → 關注 EU ARF 與區域標準

3. **試點與驗證**
   - 在控制環境中測試多格式互通
   - 評估傳輸協定（NFC/BLE/Web）適用場景
   - 建立格式轉換或橋接機制

**中期策略（2-5 年）**

1. **標準融合觀察**
   - 追蹤 ISO 與 W3C 標準調和進展
   - 參與產業聯盟與標準制定
   - 評估新興標準（如 ISO/IEC 18013-7 線上呈現）

2. **生態系統定位**
   - 確定組織在 VDC 生態系的角色（發行者/驗證者/錢包供應商）
   - 建立跨產業合作機制（如金融業身分驗證聯盟）
   - 投資共享基礎設施（登錄服務、信任框架）

3. **使用者體驗優化**
   - 確保多格式支援對使用者透明
   - 提供明確的隱私與資料控制說明
   - 設計降級機制（當某格式不可用時）

**長期考量（5 年以上）**

1. **量子安全遷移**
   - VDC 加密機制需具備抗量子攻擊能力
   - 規劃加密演算法升級路徑
   - 關注 NIST 後量子密碼學標準進展

2. **全球互通框架**
   - 支援跨國身分驗證場景（如國際旅行、跨境電商）
   - 參與國際標準調和工作
   - 建立信任框架互認機制

3. **AI 輔助驗證**
   - 應對深偽（deepfakes）與合成身分攻擊
   - 整合生物辨識與行為分析
   - 建立異常偵測機制

**風險控管建議**

- 避免過早鎖定單一標準（技術風險）
- 建立標準演進應變計畫（如格式轉換工具）
- 確保隱私設計原則（選擇性揭露、最小資料）
- 規劃降級路徑（當 VDC 系統故障時的備援機制）

## Notes

**資料來源信度評估**

- **來源**: NIST Cybersecurity Insights 官方部落格
- **作者**: NIST 身分管理研究團隊（系列文章第二篇）
- **技術深度**: 高（涵蓋 ISO/W3C 標準細節、NCCoE 實證）
- **實用性**: 高（提供具體格式選擇指引）
- **時效性**: 2026-01-07 發布，反映最新標準進展

**關聯框架與標準**

- ISO/IEC 18013-5, 18013-7 (mdoc)
- W3C Verifiable Credentials Data Model (VCDM)
- ISO 23220 series
- EU Architecture Reference Framework (ARF)
- NIST SP 800-63 Digital Identity Guidelines (隱含關聯)

**關鍵限制與未明確說明事項**

- 未詳述 mdoc 與 VC 格式轉換的技術細節
- 未涵蓋隱私保護機制（選擇性揭露、零知識證明）
- 未說明錢包廠商採納現況與市場成熟度
- 傳輸協定細節留待後續文章（預告提及）

**後續追蹤重點**

- NIST NCCoE mDL 計畫後續發布
- W3C VC 與 ISO mdoc 標準調和進展
- EU EUDI Wallet 實施經驗
- 量子安全 VDC 標準制定

**適用領域**

- 金融業身分驗證（KYC/AML）
- 政府數位服務（駕照、護照、公民身分）
- 醫療資料交換（執照、處方、病歷存取）
- 教育憑證（學歷、證照）
- 企業存取控制（員工身分、供應商管理）
