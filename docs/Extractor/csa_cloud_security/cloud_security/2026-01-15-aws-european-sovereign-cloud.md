---
title: "AWS 推出歐洲主權雲：您需要知道與需要做的事"
date: 2026-01-15
source_url: https://cloudsecurityalliance.org/articles/aws-launches-european-sovereign-cloud-what-you-need-to-know-and-what-you-need-to-do
fetched_at: 2026-02-17
category: cloud_security
---

# L1：公告基本資訊

**issuing_body**: Cloud Security Alliance (CSA)
**rule_type**: guidance
**enforcement_signal**: informational
**target_audience**: 歐洲企業、雲端架構師
**date**: 2026-01-15

# L2：責任轉移分析

**shift_type**: new
**who_affected**: 有資料主權需求的歐洲企業
**what_changed**: AWS 於 2026-01-15 推出歐洲主權雲（ESC），提供完全在歐盟運營的獨立分區
**enforcement_timing**: 已上線
**explicit_deadline**: -

# L3：實務衝擊評估

**操作面衝擊**：
- 目前僅一個區域，其他歐盟國家以 Local Zones 擴展
- CloudFront 尚未支援（預計 Q4 上線）
- AWS Organizations 的委派管理 (Delegated Administration) 不支援
- 暫時需從 Management Account 執行 CloudFormation StackSets 等治理操作

**財務/資源衝擊**：
- ESC 可能價格較高（獨立基礎設施）
- 需評估所需服務是否已在 ESC 上線

**治理衝擊**：
- 控制平面完全留歐，不依賴美國管理平面（如 IAM、Route53）
- 即便在《CLOUD Act》框架下仍能「strongly isolate ESC from US influence」

# L4：落地執行指引

**核心特點**：

1. **獨立分區 (Partition)**
   - 完全與其他 AWS 區域物理和邏輯隔離
   - 無跨分區連接

2. **歐洲本地運營**
   - 由德國法律實體管理
   - 員工為歐盟居民（逐步轉為歐盟公民）

3. **控制平面留歐**
   - 不像標準 AWS 區域依賴美國的管理平面（如 IAM、Route53）

**與一般 AWS 的差異**：

| 面向 | 標準 AWS | ESC |
|------|---------|-----|
| 管理平面 | 位於美國 | 完全在歐盟 |
| 法律實體 | 美國公司 | 德國法律實體 |
| 員工 | 全球 | 歐盟居民（逐步轉為歐盟公民）|

**當前限制（企業需注意）**：

1. **區域覆蓋**
   - 目前僅一個區域
   - 其他歐盟國家以 Local Zones 擴展

2. **服務可用性**
   - CloudFront 尚未支援（預計 Q4 上線）
   - Local Zones 僅支援部分服務（主要為 EC2、VPC）

3. **AWS Organizations 功能限制**
   - 委派管理 (Delegated Administration) **不支援**
   - 暫時需從 Management Account 執行治理操作

4. **Service Control Policies**
   - 雖支援但部分功能矩陣顯示不完整

**企業行動建議**：

1. **確認服務可用性**
   - 檢查所需服務是否已在 ESC 上線
   - 官方列表：https://builder.aws.com（持續更新）

2. **治理操作調整**
   - 暫時需從 Management Account 執行 CloudFormation StackSets 等操作
   - 留意委派管理功能的限制

3. **評估成本效益**
   - ESC 可能價格較高
   - 需評估資料主權需求是否值得成本增加

**安全隔離機制**：
- 採用 Nitro 硬體提供安全隔離
- 疊加管理與雇用結構
- 即便在《CLOUD Act》框架下仍能「strongly isolate ESC from US influence」

**適用場景**：
- 有嚴格資料主權要求的歐洲企業
- 需確保控制平面完全留歐的組織
- GDPR 等法規要求資料與操作完全在歐盟境內

# Notes

**confidence**: 高
**cloud_provider**: AWS
**review_notes**: AWS 於 2026-01-15 推出歐洲主權雲，提供完全在歐盟運營的獨立分區，但部分服務與功能尚未完整支援
