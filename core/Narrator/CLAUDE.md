# Narrator — 跨來源綜合分析角色

## 角色說明

Narrator 負責讀取 Extractor Layer 產出的結構化資料，進行跨來源綜合分析，產出報告。

## 通用規則

1. 報告必須基於 Layer 萃取的 `.md` 檔案，不可無中生有
2. 所有聲明必須可追溯到具體的 Layer 資料來源
3. 推測必須明確標註為推測
4. 報告產出到 `docs/Narrator/{mode_name}/`

## Mode 定義

每個 Mode 的 CLAUDE.md 必須包含：
- Mode 定義表（目的、受眾、來源 Layer）
- 輸出框架（報告結構）
- 免責聲明
- 自我審核 Checklist

## 目前可用 Mode

| Mode | 說明 | 來源 Layer | 頻率 |
|------|------|-----------|------|
| `rule_change_brief` | 規則變動簡報，彙整框架與標準的最新變動 | `nist_frameworks` | 每週 |
| `ai_governance_landscape` | AI 治理全景，跨區域 AI 治理動態 | `nist_frameworks`(ai_risk)、`nist_cybersecurity_insights`(ai_risk)、`eu_regulations`(ai_governance) | 每月 |
| `supply_chain_security` | 供應鏈安全趨勢，全球供應鏈責任變化 | `nist_frameworks`(supply_chain)、`nist_cybersecurity_insights`(supply_chain)、`eu_regulations`(supply_chain) | 每週 |
| `critical_infrastructure_resilience` | 關鍵基礎設施韌性，基礎設施保護動態 | `nist_frameworks`(critical_infrastructure)、`nist_cybersecurity_insights`(critical_infrastructure)、`eu_regulations`(critical_infrastructure) | 每週 |
| `cybersecurity_compliance` | 資安合規動態，資安框架與法規變化 | `nist_frameworks`(cybersecurity)、`nist_cybersecurity_insights`(cybersecurity)、`eu_regulations`(cybersecurity) | 每週 |

## 可用 Layer 清單

| Layer | 說明 | 資料類型 |
|-------|------|----------|
| `nist_frameworks` | NIST 框架與標準動態 | 正式出版物（SP、IR、CSF） |
| `nist_cybersecurity_insights` | NIST 資安洞察部落格 | 分析文章、政策評論、人才教育 |
| `eu_regulations` | 歐盟法規動態 | 歐洲議會與理事會立法（Regulation/Directive/Decision） |
