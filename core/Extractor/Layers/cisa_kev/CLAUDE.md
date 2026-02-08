# Layer: cisa_kev — CISA 已知被利用漏洞

## Layer 定義表

| 項目 | 內容 |
|------|------|
| **Layer name** | `cisa_kev` — CISA 已知被利用漏洞 |
| **Engineering function** | 追蹤 CISA Known Exploited Vulnerabilities (KEV) Catalog 的新增與更新 |
| **Collectable data** | JSON: CISA KEV Catalog（每日更新） |
| **Automation level** | 90% — JSON 結構固定，萃取全自動 |
| **Output value** | 已確認被利用的漏洞清單、修補期限、受影響產品 |
| **Risk type** | 漏洞資訊過時、誤判修補優先級 |
| **Reviewer persona** | 資料可信度審核員、領域保守審核員 |
| **WebFetch 策略** | **不使用** — JSON 已包含完整資訊 |

## 資料來源

| 名稱 | URL | 說明 |
|------|-----|------|
| CISA KEV Catalog | `https://www.cisa.gov/sites/default/files/feeds/known_exploited_vulnerabilities.json` | 已知被利用漏洞清單，JSON 格式 |

## Category Enum

| Key | 中文 | 判定條件 |
|-----|------|----------|
| `vulnerability` | 漏洞 | 所有 KEV 條目 |

> **嚴格限制：category 只能使用上述 1 個值。** 本 Layer 專注於漏洞追蹤，不細分類別。

## 資料結構

KEV JSON 結構：
```json
{
  "title": "CISA Catalog of Known Exploited Vulnerabilities",
  "catalogVersion": "2026.02.08",
  "dateReleased": "2026-02-08T00:00:00.0000Z",
  "count": 1234,
  "vulnerabilities": [
    {
      "cveID": "CVE-2024-XXXXX",
      "vendorProject": "Vendor Name",
      "product": "Product Name",
      "vulnerabilityName": "Description",
      "dateAdded": "2026-02-08",
      "shortDescription": "Brief description",
      "requiredAction": "Apply updates per vendor instructions",
      "dueDate": "2026-02-22",
      "knownRansomwareCampaignUse": "Known" | "Unknown",
      "notes": ""
    }
  ]
}
```

## 萃取邏輯

### 步驟

1. 讀取 `raw/kev.json` 中的 vulnerabilities 陣列
2. 與上次萃取比對，找出新增的 CVE（by cveID）
3. 對每個新增 CVE 產出 `.md` 檔
4. 寫入 `docs/Extractor/cisa_kev/vulnerability/`

### 萃取重點

- **L1 (Rule Signal)**：
  - `rule_type`: `new`（新增 KEV）
  - `issuing_body`: CISA
  - `document_id`: CVE ID
  - `status`: `final`（KEV 為確認被利用的漏洞）
- **L2 (Responsibility)**：
  - `affected_roles`: 使用該產品的組織、IT 管理員、安全團隊
  - `shift_type`: `new`（新增修補義務）
  - `shift_summary`: 描述修補期限和要求
- **L3 (Risk Domains)**：通常為 `cybersecurity`
- **L4 (Obligation)**：
  - `enforcement_signal`: `mandatory`（聯邦機構強制）
  - `new_obligations`: 在 dueDate 前完成修補
  - `evidence_requirements`: 修補驗證記錄

### 特殊欄位（加入 L1 區塊）

```markdown
- **cve_id**: CVE-XXXX-XXXXX
- **vendor_product**: Vendor / Product
- **due_date**: YYYY-MM-DD
- **ransomware_use**: Known | Unknown
```

## 增量更新策略

1. 下載完整 KEV JSON
2. 比對 `catalogVersion` 或 `dateReleased` 判斷是否有更新
3. 比對 `vulnerabilities` 陣列，找出新增的 cveID
4. 只萃取新增項目，避免重複

## `[REVIEW_NEEDED]` 觸發規則

以下情況**必須**標記 `[REVIEW_NEEDED]`：
1. CVE 資訊不完整（缺少 shortDescription 或 requiredAction）
2. dueDate 已過期但剛加入清單

以下情況**不觸發** `[REVIEW_NEEDED]`：
- ❌ 正常的新增 CVE
- ❌ notes 欄位為空

## 自我審核 Checklist

輸出前必須逐項確認：

### Frontmatter
- [ ] frontmatter 所有欄位已填寫
- [ ] category 為 `vulnerability`
- [ ] confidence 為 `高`（CISA 官方資料）
- [ ] 檔名格式正確：`{dateAdded}-{cveID}.md`

### L1 — Rule Signal
- [ ] **cve_id** 已填寫且格式正確
- [ ] **vendor_product** 已填寫
- [ ] **due_date** 已填寫

### L2 — Responsibility Structure
- [ ] **affected_roles** 已填寫
- [ ] **shift_type** 為 `new`
- [ ] **shift_summary** 包含修補期限

### L3 — Risk Domains
- [ ] 至少包含 `cybersecurity`

### L4 — Obligation & Evidence
- [ ] **enforcement_signal** 為 `mandatory`
- [ ] **new_obligations** 包含修補要求
