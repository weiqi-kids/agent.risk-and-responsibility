# Extractor — 資料擷取與萃取角色

## 角色說明

Extractor 負責從外部資料源擷取原始資料（fetch），並萃取為結構化的 Markdown 檔案（extract）。

## 通用萃取規則

### 輸出模板

每筆萃取產出一個 `.md` 檔，格式固定如下：

```markdown
---
title: "文件標題"
source_url: https://...
date: YYYY-MM-DD
category: {見各 Layer 定義的 enum}
confidence: 高 | 中 | 低
---

## L1 — Rule Signal
- **rule_type**: new | revision | draft | final | amendment | deprecation | guidance
- **issuing_body**: 發布機構
- **document_id**: 文件編號（若有）
- **status**: draft | final | public_comment | withdrawn

## L2 — Responsibility Structure
- **affected_roles**: 受影響角色（列表）
- **shift_type**: new | expanded | clarified | transferred | restricted
- **shift_summary**: 一句話描述責任變動

## L3 — Risk Domains
- 列出涉及的風險領域（與 category 可不同，一筆可涉及多個領域）

## L4 — Obligation & Evidence
- **new_obligations**: 新增義務（列表）
- **evidence_requirements**: 舉證要求（列表）
- **enforcement_signal**: mandatory | recommended | informational

## Notes
（WebFetch 降級、不確定性等，無則留空）
```

### 欄位填寫規則

1. **frontmatter** 為必填，所有欄位不可省略
2. **L1** 為必填，rule_type 和 issuing_body 不可為空
3. **L2** 為必填，若無法判斷 shift_type，寫 `clarified` 並在 Notes 說明
4. **L3** 為必填，至少一個風險領域
5. **L4** 為必填，若原文未提及具體義務，enforcement_signal 寫 `informational`
6. **Notes** 選填，有狀況時才寫

### Section 順序（強制）

所有萃取檔案必須依照以下順序排列，不可調換：

```
L1 — Rule Signal
L2 — Responsibility Structure
L3 — Risk Domains
L4 — Obligation & Evidence
Notes
```

> ⚠️ **常見錯誤**：L3 與 L4 順序對調。萃取完成後務必確認。

### Enum 欄位嚴格限制

以下欄位**只能**使用指定值，禁止自創變體或填入描述性文字：

| 欄位 | 允許值 | 常見錯誤範例 |
|------|--------|--------------|
| `shift_type` | `new`, `expanded`, `clarified`, `transferred`, `restricted` | ❌ `revision`, `extension`, `clarification_correction`, `administrative` |
| `enforcement_signal` | `mandatory`, `recommended`, `informational` | ❌ 長句描述、❌ `Low`, ❌ `binding`, ❌ 中文描述 |
| `confidence` | `高`, `中`, `低` | ❌ `high`, ❌ `medium`, ❌ `low` |

> ⚠️ **P7 教訓**：萃取時常出現以下問題：
> 1. `shift_type` 使用非標準值（如 `revision` → 應為 `clarified`）
> 2. `enforcement_signal` 填入整段描述文字而非 enum 值
> 3. 這些問題需要批次 sed 修正，耗時且易出錯

### 欄位格式規範

所有 L1-L4 欄位名稱必須使用 bold 格式：

```markdown
✅ 正確：- **shift_type**: clarified
❌ 錯誤：- shift_type: clarified
```

### 檔名規則

```
{date}-{slugified_title}.md
```

範例：`2025-12-17-ssdf-version-1-2-public-comment.md`

- date 取 RSS pubDate 轉為 YYYY-MM-DD
- title slug 取前 6-8 個英文關鍵字，用 `-` 連接，全小寫
- 檔案存放到 `docs/Extractor/{layer_name}/{category}/`

### WebFetch 通用規則

1. WebFetch 用於取得原始公告頁面的完整內容
2. WebFetch 失敗**不阻斷**萃取流程，降級為僅基於 RSS 資料萃取
3. 降級時在 Notes 標註：`WebFetch 失敗，僅基於 RSS description 萃取`
4. 降級時 confidence 最高為「中」

### `[REVIEW_NEEDED]` 通用規則

1. 標記方式：在 `.md` 檔最開頭加上 `[REVIEW_NEEDED]` 一行
2. 各 Layer CLAUDE.md 定義具體觸發規則
3. 子任務**嚴格遵循**觸發規則，不可自行擴大範圍
4. 不可因「單一來源、無交叉驗證」而標記（這是結構性限制，在 confidence 反映）

### JSONL 處理規範

1. 禁止使用 Read 工具直接讀取 `.jsonl` 檔案
2. 用 `wc -l < {jsonl_file}` 取得總行數
3. 用 `sed -n '{N}p' {jsonl_file}` 逐行讀取
4. 每行獨立交由一個 Task 子代理處理
5. 子代理透過 Write tool 寫出 `.md` 檔
