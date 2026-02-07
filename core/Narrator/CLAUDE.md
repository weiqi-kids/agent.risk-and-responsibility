# Narrator — 跨來源綜合分析角色

## 角色說明

Narrator 負責讀取 Extractor Layer 產出的結構化資料，進行跨來源綜合分析，產出報告。

## 通用規則

1. 報告必須基於 Qdrant 語意搜尋取得的資料，不可無中生有
2. 所有聲明必須可追溯到具體的 Layer 資料來源（source_url）
3. 推測必須明確標註為推測
4. 報告產出到 `docs/Narrator/{mode_name}/`
5. 產出報告後需更新該 Mode 的 `index.md`（嵌入最新報告內容）

## Qdrant 資料查詢

### 查詢流程

1. **產生查詢向量**：使用 OpenAI text-embedding-3-small 將查詢文字轉為 embedding
2. **語意搜尋**：呼叫 `qdrant_search` 函數搜尋相關資料
3. **處理結果**：從搜尋結果的 payload 取得結構化資料

### 查詢範例

```bash
# 1. 初始化環境
source lib/chatgpt.sh
source lib/qdrant.sh
chatgpt_init_env
qdrant_init_env

# 2. 產生查詢向量（使用 chatgpt_embed）
QUERY_VECTOR=$(chatgpt_embed "AI governance regulations cybersecurity")

# 3. 搜尋 Qdrant
RESULTS=$(qdrant_search "risk-and-responsibility" "$QUERY_VECTOR" 50)

# 4. 解析結果
echo "$RESULTS" | jq '.result[] | {
  score: .score,
  title: .payload.title,
  date: .payload.date,
  category: .payload.category,
  source_url: .payload.source_url
}'
```

### Payload 欄位

| 欄位 | 說明 |
|------|------|
| `source_url` | 原始資料 URL |
| `title` | 標題 |
| `date` | 發布日期 |
| `category` | 分類（如 ai_risk、cybersecurity） |
| `source_layer` | 來源 Layer 名稱 |
| `original_content` | 原始內容摘要 |
| `fetched_at` | 擷取時間 |

### 查詢策略

| Mode | 查詢關鍵字範例 | Limit |
|------|----------------|-------|
| rule_change_brief | framework standard regulation update | 50 |
| ai_governance_landscape | AI governance artificial intelligence regulation | 30 |
| supply_chain_security | supply chain security vendor risk | 30 |
| critical_infrastructure_resilience | critical infrastructure resilience protection | 30 |
| cybersecurity_compliance | cybersecurity compliance framework NIST | 50 |

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
