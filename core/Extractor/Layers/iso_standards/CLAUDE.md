# Layer: iso_standards — ISO 標準動態

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `iso_standards` — ISO 標準動態 |
| **Engineering function** | 追蹤 ISO 標準的發布、修訂、撤銷狀態 |
| **Collectable data** | CSV/JSONL: ISO Open Data Platform（每日更新） |
| **Automation level** | 85% — 結構化資料，但需判斷標準與風險領域的關聯 |
| **Output value** | 標準生命週期追蹤、合規基準更新、標準間替代關係 |
| **Risk type** | 誤判標準狀態（draft vs published）、遺漏重要標準更新 |
| **Reviewer persona** | 資料可信度審核員、領域保守審核員 |
| **WebFetch 策略** | **按需** — 需要標準詳細描述時觸發 |

## 資料來源

| 名稱 | URL | 說明 |
|------|-----|------|
| ISO Deliverables Metadata | `https://isopublicstorageprod.blob.core.windows.net/opendata/_latest/iso_deliverables_metadata/csv/iso_deliverables_metadata.csv` | 所有 ISO 標準元資料，每日更新 |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `information_security` | 資訊安全 | ISO/IEC 27xxx 系列、資安管理、隱私保護 |
| `quality_management` | 品質管理 | ISO 9xxx 系列、品質系統、流程管理 |
| `it_governance` | IT 治理 | ISO/IEC 38500、IT 服務管理、ISO 20000 |
| `environmental` | 環境管理 | ISO 14xxx 系列、ESG 相關、碳足跡 |
| `other` | 其他 | 不屬於上述類別的標準 |

> **嚴格限制：category 只能使用上述 5 個值。** 若有項目不屬於任何分類，使用 `other` 並在 Notes 說明。

## 資料結構

ISO Open Data CSV 欄位：
- `reference`: 標準編號（如 ISO/IEC 27001:2022）
- `title.en`: 英文標題
- `title.fr`: 法文標題
- `currentStage`: 狀態階段
- `edition`: 版本
- `publicationDate`: 發布日期
- `icsCode`: 國際分類編號
- `ownerCommittee`: 技術委員會
- `scope.en`: 英文摘要

## 萃取邏輯

### 步驟

1. 下載完整 CSV 並轉為 JSONL
2. 篩選近期變動的標準（PUBDATE 在最近 30 天內，或 STATUS 變更）
3. 進一步篩選與資安/IT 治理相關的標準（ICS 碼或標題關鍵字）
4. 對每個變動標準產出 `.md` 檔
5. 寫入 `docs/Extractor/iso_standards/{category}/`

### 篩選條件（fetch.sh 階段）

只處理以下類別的標準：
- **ICS 35**: 資訊科技
- **ICS 03.100**: 組織與管理
- **ICS 13.020**: 環境保護
- **標題含關鍵字**: security, privacy, risk, governance, management system

### 萃取重點

- **L1 (Rule Signal)**：
  - `rule_type`: 依 STATUS 判斷
    - `Published` + 新發布 → `new`
    - `Published` + 更新版本 → `revision`
    - `Under development` → `draft`
    - `Withdrawn` → `deprecation`
  - `issuing_body`: ISO（或 ISO/IEC）
  - `document_id`: REFNO（如 ISO/IEC 27001:2022）
  - `status`: 依 STATUS 轉換
- **L2 (Responsibility)**：
  - 依標準類型判斷受影響角色
  - ISO 27001 → 資安管理人員、CISO
  - ISO 9001 → 品質管理人員
- **L3 (Risk Domains)**：從 5 個領域中選擇
- **L4 (Obligation)**：
  - `enforcement_signal`: `recommended`（ISO 標準為自願性）
  - 注意：某些行業或法規可能要求遵循特定 ISO 標準

### 特殊欄位（加入 L1 區塊）

```markdown
- **iso_refno**: ISO/IEC XXXXX:YYYY
- **edition**: X（版本號）
- **ics_code**: XX.XXX（國際分類碼）
- **technical_committee**: ISO/TC XXX
```

## 增量更新策略

1. 下載完整 CSV
2. 比對上次下載的 CSV，找出：
   - 新增標準（REFNO 不存在於舊版）
   - 更新標準（PUBDATE 或 STATUS 變更）
   - 撤銷標準（STATUS 變為 Withdrawn）
3. 只萃取有變動的項目

## WebFetch 補充規則

- **策略**：按需
- **觸發條件**：ABSTRACT_EN 為空或過短（< 50 字）
- **URL 格式**：`https://www.iso.org/standard/{numeric_id}.html`
- **降級處理**：WebFetch 失敗時基於 CSV 資料萃取，confidence 最高為「中」

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. 標準狀態不明確（STATUS 欄位異常）
2. 重要標準（27001、27002、9001）的重大版本更新
3. 標準被撤銷但無替代標準資訊

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ 標準仍在開發中（Under development）
- ❌ 小版本更新或技術勘誤

## 自我審核 Checklist

輸出前必須逐項確認：

### Frontmatter
- [ ] frontmatter 所有欄位已填寫
- [ ] category 使用 enum 定義值（5 類之一）
- [ ] confidence 為 `高` / `中` / `低`（中文）
- [ ] 檔名格式正確：`{pubdate}-{iso-refno-slug}.md`

### L1 — Rule Signal
- [ ] **iso_refno** 格式正確（含年份）
- [ ] **rule_type** 與 STATUS 一致
- [ ] **edition** 已填寫

### L2 — Responsibility Structure
- [ ] **affected_roles** 已填寫
- [ ] **shift_type** 為 `new` / `expanded` / `clarified` / `transferred` / `restricted` 之一

### L3 — Risk Domains
- [ ] 至少一個風險領域

### L4 — Obligation & Evidence
- [ ] **enforcement_signal** 為 `recommended`（ISO 標準非強制）
- [ ] 若有法規強制採用，在 Notes 說明
