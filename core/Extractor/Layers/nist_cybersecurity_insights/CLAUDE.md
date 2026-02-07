# Layer: nist_cybersecurity_insights — NIST 資安洞察部落格

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `nist_cybersecurity_insights` — NIST 資安洞察部落格 |
| **Engineering function** | 追蹤 NIST 資安專家的分析文章、政策評論與技術指引 |
| **Collectable data** | RSS: NIST Cybersecurity Insights Blog |
| **Automation level** | 75% — 萃取自動化，但 blog 分析文需更多推論判斷 |
| **Output value** | 框架分析觀點、政策趨勢評論、人才教育動態 |
| **Risk type** | 將 blog 作者觀點誤認為 NIST 官方立場 |
| **Reviewer persona** | 法規與責任審核員、幻覺風險審核員、領域保守審核員 |
| **WebFetch 策略** | **按需** — description < 150 字或無法判斷文件脈絡時觸發 |

## RSS 來源

| 名稱 | URL | 說明 |
|------|-----|------|
| NIST Cybersecurity Insights Blog | `https://www.nist.gov/blogs/cybersecurity-insights/rss.xml` | NIST 資安洞察部落格，含政策分析、框架評論、人才教育等 |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `cybersecurity` | 資安框架與控制 | CSF、SP 800 系列、存取控制、密碼學 |
| `ai_risk` | AI 風險治理 | AI RMF、演算法問責、AI 評估方法 |
| `privacy` | 隱私保護 | Privacy Framework、PII 保護、資料治理 |
| `supply_chain` | 供應鏈安全 | SSDF、SBOM、軟體供應鏈完整性 |
| `identity` | 數位身分 | SP 800-63、VDC、PIV、FIDO |
| `critical_infrastructure` | 關鍵基礎設施 | ICS/OT 安全、基礎設施韌性 |
| `workforce` | 網路安全人才與教育 | NICE 計畫、人才發展、教育倡議 |
| `policy_guidance` | 政策與指引評論 | 跨領域政策分析、公眾意見回應、標準制定趨勢 |

> **嚴格限制：category 只能使用上述 8 個值。** 若有項目不屬於任何分類，選最接近的並在 Notes 說明。需要新增 category 時必須與使用者確認後寫入本檔案。

## 萃取邏輯

### 步驟

1. 讀取 JSONL 的一行 JSON（含 title、link、description、pubDate）
2. 判斷 description 長度：
   - ≥ 150 字 且 能判斷文章脈絡 → 直接萃取
   - < 150 字 或 無法判斷文章脈絡 → 使用 WebFetch 抓取 link 頁面
3. 根據 title + description（+ WebFetch 內容）填寫 L1-L4 欄位
4. 依 category 判定條件分類
5. 用 Write tool 寫出 `.md` 檔到 `docs/Extractor/nist_cybersecurity_insights/{category}/`

### 萃取重點

- **L1 (Rule Signal)**：Blog 文章的 rule_type 判斷：
  - 解讀特定框架或標準 → `rule_type: guidance`
  - 宣布新草案或徵求意見 → `rule_type: draft`, `status: public_comment`
  - 回顧性質或總結分析 → `rule_type: guidance`, `status: final`
  - 人才、教育、活動類 → `rule_type: guidance`, `status: final`
  - **注意**：Blog 文章通常無正式 document_id，此為正常現象
- **L2 (Responsibility)**：判斷文章討論的受影響角色
  - Blog 可能討論更廣泛的利害關係人（如 educators、students、small businesses）
- **L3 (Risk Domains)**：可多選，從 8 個領域中選擇
- **L4 (Obligation)**：Blog 多為 `informational` 或 `recommended`
  - **關鍵區分**：Blog 作者觀點 ≠ NIST 官方立場，除非文中明確引用官方文件

### 與 nist_frameworks 的區分

| 項目 | nist_frameworks | nist_cybersecurity_insights |
|------|-----------------|----------------------------|
| 內容性質 | 正式發布（框架、標準、SP） | 分析文章（Blog post） |
| document_id | 通常有（SP 800-xx、NIST IR） | 通常無 |
| 權威程度 | 官方文件 | 專家觀點（需區分個人 vs 機構） |
| rule_type 分布 | new / revision / draft / final | guidance 為主 |
| confidence 基線 | 高（一手官方來源） | 中（分析文，非正式出版物） |

## WebFetch 補充規則

- **策略**：按需
- **觸發條件**：description < 150 字 或 無法從 title/description 判斷文章脈絡
- **降級處理**：WebFetch 失敗時基於 RSS 資料萃取，confidence 最高為「中」，Notes 標註降級

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. Blog 內容與同 Layer 或 nist_frameworks 的官方文件立場相矛盾
2. WebFetch 失敗且 description < 100 字，萃取內容不足以填充 L2-L4 欄位
3. 無法區分「NIST 機構觀點」與「作者個人評論」

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ Blog 式內容無正式出版物編號（在 confidence 反映）
- ❌ 單一作者觀點（NIST blog 作者均為該領域專家）
- ❌ 回顧性質文章 confidence 較低（反映在 confidence 欄位）

## 自我審核 Checklist

輸出前必須逐項確認：

- [ ] frontmatter 所有欄位已填寫
- [ ] rule_type 有明確依據（標題或內文中的關鍵字）
- [ ] category 使用 enum 定義值（8 類之一）
- [ ] shift_summary 是一句完整的中文描述
- [ ] enforcement_signal 未將 recommended 誤判為 mandatory
- [ ] confidence 等級合理（Blog 文基線為「中」，WebFetch 降級時不超過「中」）
- [ ] 已明確區分「NIST 機構觀點」與「作者個人評論」
- [ ] REVIEW_NEEDED 判定嚴格遵循觸發規則
- [ ] 檔名格式正確：`{date}-{slug}.md`
