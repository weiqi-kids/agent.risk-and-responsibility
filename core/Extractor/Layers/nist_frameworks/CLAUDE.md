# Layer: nist_frameworks — NIST 框架與標準動態

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `nist_frameworks` — NIST 框架與標準動態 |
| **Engineering function** | 追蹤 NIST 發布的框架、標準、指引的新增、修訂與公開徵求意見 |
| **Collectable data** | RSS: NIST Information Technology topic feed |
| **Automation level** | 80% — fetch + 萃取全自動，L2/L4 責任歸屬與義務可能需人工確認 |
| **Output value** | 結構化的框架變動訊號（rule_type、affected_roles、risk_domains、responsibility_change） |
| **Risk type** | 誤讀 draft 為 final、將指引誤判為強制法規 |
| **Reviewer persona** | 法規與責任審核員、幻覺風險審核員 |
| **WebFetch 策略** | **按需** — description < 150 字或缺少 document_id 時觸發 |

## RSS 來源

| 名稱 | URL | 說明 |
|------|-----|------|
| NIST IT Topic | `https://www.nist.gov/news-events/information%20technology/rss.xml` | NIST 資訊科技主題新聞，含框架、標準、AI、隱私等 |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `cybersecurity` | 資安框架 | NIST CSF、SP 800 系列、安全控制措施、漏洞管理 |
| `ai_risk` | AI 風險治理 | AI RMF、AI 評估方法、演算法問責、CAISI 相關 |
| `privacy` | 隱私保護 | NIST Privacy Framework、PII 保護、資料治理 |
| `supply_chain` | 供應鏈安全 | SSDF、SBOM、C-SCRM、軟體供應鏈安全 |
| `identity` | 數位身分 | SP 800-63、PIV、Digital Identity、VDC、FIDO |
| `critical_infrastructure` | 關鍵基礎設施 | ICS/OT 安全、基礎設施韌性、CHIPS Act 相關 |

> **嚴格限制：category 只能使用上述 6 個值。** 若有項目不屬於任何分類，選最接近的並在 Notes 說明。需要新增 category 時必須與使用者確認後寫入本檔案。

## 內容過濾規則

本 Layer 的 RSS 來源包含所有 NIST 資訊科技主題新聞，但只有**框架、標準、指引的發布與變動**屬於萃取範圍。萃取前必須先過濾。

### 萃取對象（✅ 納入）

- 框架／標準／指引的新發布、修訂、更新（SP、IR、FIPS、CSF、AI RMF 等）
- 公開徵求意見（Draft、Public Comment、RFI、RFC）
- 技術報告與白皮書（NIST IR、NIST SP、NISTIR）
- 正式廢止或取代公告（Deprecation、Withdrawal）
- 重大計畫里程碑（如 post-quantum 標準定案、SBOM 最低要素更新）

### 過濾對象（❌ 跳過，不萃取）

- **活動與研討會**：webinar、workshop、conference、summit、seminar、virtual event、symposium
- **獎項與資助**：awards、grants、funding、fellowship、scholarship
- **人才與教育**：workforce development、hiring、job posting、internship、student program、NICE initiative（非框架文件）
- **一般新聞**：人事任命、組織公告、機構介紹、設施更新
- **純宣傳內容**：blog post 無對應正式出版物、general awareness campaign

### 過濾判定方法

1. **標題關鍵字快篩**：若 title 含以下關鍵字且不含 SP/IR/FIPS/Draft/Comment 等文件關鍵字，判定為跳過：
   - `webinar`, `workshop`, `event`, `conference`, `summit`, `seminar`, `symposium`
   - `awards`, `grants`, `funding`, `fellowship`
   - `workforce`, `hiring`, `career`, `internship`, `student`
2. **URL 路徑判定**：`/news-events/events/` 路徑通常為活動公告，應跳過（除非標題明確提及 Draft/Public Comment）
3. **邊界情況**：若標題含活動關鍵字但同時提及具體框架文件（如 "CSF 2.0 Webinar — Draft SP 800-53 Rev 6 Discussion"），仍**跳過**活動本身，但若該框架文件尚未有獨立萃取條目，應另行萃取框架文件
4. **不確定時**：萃取但在 Notes 標註「內容可能為非框架性質」，confidence 設為「低」

## 萃取邏輯

### 步驟

1. 讀取 JSONL 的一行 JSON（含 title、link、description、pubDate）
2. **內容過濾**：依上方「內容過濾規則」判定是否跳過，若跳過則不產出 `.md` 檔
3. 判斷 description 長度：
   - ≥ 150 字 且 能判斷 document_id → 直接萃取
   - < 150 字 或 缺少 document_id → 使用 WebFetch 抓取 link 頁面
4. 根據 title + description（+ WebFetch 內容）填寫 L1-L4 欄位
5. 依 category 判定條件分類
6. 用 Write tool 寫出 `.md` 檔到 `docs/Extractor/nist_frameworks/{category}/`

### 萃取重點

- **L1 (Rule Signal)**：重點判斷 rule_type 和 status。NIST 常見模式：
  - 標題含 "Draft" / "Public Comment" → `rule_type: draft`, `status: public_comment`
  - 標題含 "Final" / "Release" → `rule_type: final`, `status: final`
  - 標題含 "Revision" / "Update" → `rule_type: revision`
  - 標題含 "RFI" / "Request for Information" → `rule_type: guidance`, `status: draft`
- **L2 (Responsibility)**：判斷 NIST 文件影響的角色（federal agencies、software vendors、CISOs...）
- **L3 (Risk Domains)**：可多選，從 category enum 的 6 個領域中選
- **L4 (Obligation)**：注意區分 mandatory（法規要求）和 recommended（指引建議）

## WebFetch 補充規則

- **策略**：按需
- **觸發條件**：description < 150 字 或 無法從 title/description 判斷 document_id
- **降級處理**：WebFetch 失敗時基於 RSS 資料萃取，confidence 最高為「中」，Notes 標註降級

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. 無法從文本判斷 rule_type（new / revision / draft / final / amendment / deprecation / guidance）
2. WebFetch 失敗且 description < 100 字，萃取內容不足以填充 L2-L4 欄位
3. 標題或內容暗示為 correction / errata（勘誤性質，需確認影響範圍）

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ 單一來源（NIST RSS 本身就是一手來源，不因缺乏交叉驗證而標記）
- ❌ Blog 式內容沒有對應正式出版物編號（在 confidence 反映，不標記 REVIEW_NEEDED）
- ❌ 欄位為空但資料來源本身不提供該欄位（如 RSS 不含 document_id）

## 自我審核 Checklist

輸出前必須逐項確認：

### 內容過濾
- [ ] 內容已通過過濾規則（非活動、獎項、人才、純宣傳內容）

### Frontmatter
- [ ] frontmatter 所有欄位已填寫
- [ ] category 使用 enum 定義值（6 類之一）
- [ ] confidence 為 `高` / `中` / `低`（中文）
- [ ] 檔名格式正確：`{date}-{slug}.md`

### L1 — Rule Signal
- [ ] rule_type 有明確依據（標題或內文中的關鍵字）

### L2 — Responsibility Structure
- [ ] **affected_roles** 已填寫
- [ ] **shift_type** 為 `new` / `expanded` / `clarified` / `transferred` / `restricted` 之一
- [ ] **shift_summary** 是一句完整描述
- [ ] Section 位於 L1 之後、L3 之前

### L3 — Risk Domains
- [ ] 至少一個風險領域
- [ ] Section 位於 L2 之後、L4 之前

### L4 — Obligation & Evidence
- [ ] **new_obligations** 已填寫
- [ ] **evidence_requirements** 已填寫
- [ ] **enforcement_signal** 為 `mandatory` / `recommended` / `informational` 之一
- [ ] enforcement_signal 未將 recommended 誤判為 mandatory（NIST 指引多為 recommended）
- [ ] Section 位於 L3 之後、Notes 之前

### 其他
- [ ] confidence 等級合理（WebFetch 降級時不超過「中」）
- [ ] REVIEW_NEEDED 判定嚴格遵循觸發規則

> ⚠️ **P7 常見問題**：
> 1. shift_type 使用非標準值（如 `revision` → 應為 `clarified`）
> 2. enforcement_signal 填入描述性文字而非 enum 值
> 3. L3 與 L4 順序對調
