---
source_url: https://www.nist.gov/news-events/news/2025/12/securing-smart-speakers-home-health-care-nist-offers-new-guidelines
fetched_at: 2025-12-17
title: Securing Smart Speakers for Home Health Care - NIST Offers New Guidelines
date: 2025-12-17
category: privacy
confidence: 高
---

## L1 — 是什麼變了？

NIST 發布 **Mitigating Cybersecurity and Privacy Risks in Telehealth Smart Home Integration** 最終版指引，針對居家醫療場景中智慧音箱的安全與隱私風險，提供具體緩解措施。

這是 NIST 首次系統性處理消費級 IoT 設備與醫療系統整合的安全問題，將 Cybersecurity Framework 2.0、Privacy Framework 1.0 和 IoT Core Baseline (NISTIR 8425) 整合為跨領域指引。

- **shift_type**: new
- **enforcement_signal**: recommended

---

## L2 — 誰受影響？

- **遠距醫療服務提供者**：需重新評估智慧音箱部署的安全配置
- **醫療 IT 安全團隊**：需實施網路分段與加密措施
- **智慧音箱廠商**：需增強設備安全能力以符合醫療場景需求
- **患者與照護者**：需了解使用智慧音箱的隱私風險與保護措施

---

## L3 — 為什麼現在？

智慧音箱在遠距醫療中的採用增加，但暴露出五大風險：

1. **資料外洩**：語音助理的未加密通訊可能暴露 PII（個人識別資訊）或 PHI（受保護健康資訊）
2. **資料竄改**：攻擊者可攔截並更改患者資料，破壞完整性
3. **服務阻斷**：干擾系統可用性與可預測性
4. **指令竄改**：發送給醫療提供者的語音指令可能被修改，導致錯誤處理
5. **未授權存取**：透過家用網路或薄弱的實體控制入侵設備

Ron Pulivarti（NIST 網路安全專家）警告：「智慧音箱可能缺乏支援建議安全實務的能力，並可能成為攻擊者進入醫院系統的跳板。」

---

## L4 — 怎麼應對？

### 核心緩解措施

1. **啟用端到端加密**
   - 確保設備與系統間的訊息加密
   - 防止中間人攻擊竊聽敏感資訊

2. **限制存取權限**
   - 僅授權個人與設備可存取
   - 實施多因素認證（MFA）

3. **網路分段 (Network Segmentation)**
   - 使用防火牆將網路劃分為子網段
   - 防止單一弱點被突破後影響整個系統
   - 隔離醫療設備與一般家用 IoT 設備

### 框架整合

指引整合三大 NIST 標準：
- **Cybersecurity Framework 2.0**：提供風險管理架構
- **Privacy Framework 1.0**：處理 PII/PHI 保護需求
- **NISTIR 8425 (IoT Core Baseline)**：定義 IoT 設備基礎安全能力

### 實施建議

**技術團隊**：
- 配置防火牆規則，分離醫療與非醫療流量
- 部署加密通訊協定（如 TLS 1.3）
- 建立設備存取白名單

**患者教育**：
- 向照護者說明網路分段與加密的重要性
- 提供安全使用智慧音箱的最佳實務清單

---

## Notes

**文件狀態**：Final（2025-12-17）

**適用範圍**：
- 居家遠距醫療場景
- 使用消費級智慧音箱的醫療服務
- 涉及 PHI/PII 傳輸的語音互動系統

**關聯文件**：
- NIST Cybersecurity Framework 2.0
- NIST Privacy Framework 1.0
- NISTIR 8425 (IoT Cybersecurity Guidance)

**關鍵引用**：
> "Smart speakers may not have capabilities that support recommended privacy and security practices, and they may be used as pivot points for attackers to gain access to a hospital's system."
> — Ron Pulivarti, NIST Cybersecurity Specialist
