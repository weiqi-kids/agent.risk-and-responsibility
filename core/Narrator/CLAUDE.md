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

### 兩階段執行模式

根據 `CLAUDE.md` 的平行化策略，Mode 報告分兩階段執行：

| 階段 | 執行者 | 工作內容 |
|------|--------|----------|
| **4a** | Sonnet（平行） | Qdrant 語意搜尋，結果寫入 `/tmp/qdrant-{mode_name}.json` |
| **4b** | Opus（平行） | 讀取 4a 結果，撰寫報告 |

### 階段 4a：查詢流程（Sonnet 執行）

1. **產生查詢向量**：使用 OpenAI text-embedding-3-small 將查詢文字轉為 embedding
2. **語意搜尋**：呼叫 `qdrant_search` 函數搜尋相關資料
3. **儲存結果**：將搜尋結果寫入 `/tmp/qdrant-{mode_name}.json`

### 階段 4b：報告產出（Opus 執行）

1. **讀取查詢結果**：從 `/tmp/qdrant-{mode_name}.json` 讀取已搜尋的資料
2. **綜合分析**：基於搜尋結果進行跨來源分析
3. **產出報告**：依照 Mode 輸出框架撰寫報告
4. **SEO 整合**：依照 `core/Narrator/seo-integration.md` 填寫 SEO front matter 和 SGE 標記

#### SEO 整合要求

報告產出時必須遵循 `core/Narrator/seo-integration.md` 的規範：

**Front Matter 必填欄位**：
- `layout: report`（取代 `layout: default`）
- `seo.title`：60 字內，含關鍵字
- `seo.description`：155 字內
- `seo.date_published` / `seo.date_modified`：ISO 8601 格式
- `seo.keywords`：5-8 個關鍵字
- `seo.related_articles`：至少 2 個相關報告 URL
- `seo.faq`：3-5 個 Q&A

**SGE 標記必填**：
- `.key-takeaway`：報告開頭重點摘要
- `.key-answer`：每個 H2 開頭的直接答案（含 `data-question`）
- `.expert-quote`：至少 1 個專家引言
- `.actionable-steps`：若有建議措施
- `.comparison-table`：若有比較表格

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
| ai_implementation_guide | AI implementation model card bias testing MLOps | 30 |
| supply_chain_security | supply chain security vendor risk | 30 |
| critical_infrastructure_resilience | critical infrastructure resilience protection | 30 |
| cybersecurity_compliance | cybersecurity compliance framework NIST | 50 |

## Mode 定義

每個 Mode 的 CLAUDE.md 必須包含：
- Mode 定義表（目的、受眾、來源 Layer）
- 輸出框架（報告結構）
- SEO 欄位規範（參照 `seo-integration.md`）
- 免責聲明
- 自我審核 Checklist（含 SEO 檢查項目）

## 目前可用 Mode

| Mode | 說明 | 來源 Layer | 頻率 |
|------|------|-----------|------|
| `executive_summary` | 高階決策摘要，一頁式重點彙整 | 彙整其他 Mode（meta-mode） | 每週 |
| `rule_change_brief` | 規則變動簡報，彙整框架與標準的最新變動 | `nist_frameworks` | 每週 |
| `ai_governance_landscape` | AI 治理全景，跨區域 AI 治理動態 | `nist_frameworks`(ai_risk)、`nist_cybersecurity_insights`(ai_risk)、`eu_regulations`(ai_governance) | 每月 |
| `ai_implementation_guide` | AI 實作技術指引，治理要求的技術落地 | `nist_frameworks`(ai_risk)、`csa_cloud_security`(ai_security) | 每月 |
| `supply_chain_security` | 供應鏈安全趨勢，全球供應鏈責任變化 | `nist_frameworks`(supply_chain)、`nist_cybersecurity_insights`(supply_chain)、`eu_regulations`(supply_chain) | 每週 |
| `critical_infrastructure_resilience` | 關鍵基礎設施韌性，基礎設施保護動態 | `nist_frameworks`(critical_infrastructure)、`nist_cybersecurity_insights`(critical_infrastructure)、`eu_regulations`(critical_infrastructure) | 每週 |
| `cybersecurity_compliance` | 資安合規動態，資安框架與法規變化 | `nist_frameworks`(cybersecurity)、`nist_cybersecurity_insights`(cybersecurity)、`eu_regulations`(cybersecurity) | 每週 |

> **執行順序注意**：`executive_summary` 為 meta-mode，必須在所有其他 Mode 完成後執行。

## 可用 Layer 清單

| Layer | 說明 | 資料類型 |
|-------|------|----------|
| `nist_frameworks` | NIST 框架與標準動態 | 正式出版物（SP、IR、CSF） |
| `nist_cybersecurity_insights` | NIST 資安洞察部落格 | 分析文章、政策評論、人才教育 |
| `eu_regulations` | 歐盟法規動態 | 歐洲議會與理事會立法（Regulation/Directive/Decision） |
