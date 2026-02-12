---
title: "Quick Howto: Extract URLs from RTF files"
source_url: https://isc.sans.edu/diary/rss/32692
date: 2026-02-09
category: incident_response
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: SANS Internet Storm Center
- **document_id**: 32692
- **status**: final
- **cve_references**: CVE-2026-21509
- **threat_actor**: APT28
- **attack_technique**: T1566.001 (Phishing: Spearphishing Attachment), T1566.002 (Phishing: Spearphishing Link), T1203 (Exploitation for Client Execution), T1027.006 (Obfuscated Files or Information: HTML Smuggling)

## L2 — Responsibility Structure
- **affected_roles**: incident responders, malware analysts, security analysts, SOC teams, threat intelligence analysts, digital forensics investigators
- **shift_type**: clarified
- **shift_summary**: 分析人員需掌握從惡意 RTF 檔案中提取 URL 的技術，以有效調查 CVE-2026-21509 等 Office 漏洞利用活動

## L3 — Risk Domains
- Office 漏洞利用：CVE-2026-21509 正被 APT28 主動利用
- 檔案偽裝：使用 ".doc 副檔名的 RTF 檔案" 偽裝技巧
- 惡意 URL 嵌入：RTF 檔案中隱藏的惡意連結
- WebDAV 攻擊：可能涉及 WebDAV 請求的特殊 URL 格式
- APT 活動：國家級威脅行為者的持續攻擊活動

## L4 — Obligation & Evidence
- **new_obligations**:
  - 部署 RTF 檔案分析能力到事件回應工具鏈
  - 使用 rtfdump.py、strings.py、re-search.py 工具組合進行 URL 提取
  - 建立 RTF 檔案的自動化分析流程
  - 監控以 .doc 副檔名偽裝的 RTF 檔案
  - 識別包含異常 URL 格式的 RTF 檔案（如 hostname@ssl）
  - 追蹤與 CVE-2026-21509 相關的 APT28 攻擊活動
  - 分析提取出的 URL 以識別 WebDAV 或其他攻擊載體
- **evidence_requirements**:
  - RTF 檔案分析工具的部署與配置記錄
  - 自動化分析流程的文件與測試結果
  - 可疑 RTF 檔案的偵測與分析報告
  - 提取出的 URL 清單與威脅情報關聯分析
  - APT28 活動的追蹤與歸因證據
- **enforcement_signal**: recommended

## Notes

**核心技術方法**：

文章提供了一個命令管道，用於從惡意 RTF 檔案中提取 URL：

```bash
rtfdump.py -j -C SAMPLE.vir | strings.py --jsoninput | re-search.py -n url -u -F officeurls
```

**工具說明**：

1. **rtfdump.py** — 將 RTF 檔案轉換為 JSON 格式，包含已解碼的內容
2. **strings.py** — 從 JSON 輸出中提取可讀字符串
3. **re-search.py** — 識別 URL 並過濾出與 Office 相關的標準定義

**實際案例背景**：

文章引用了與 **CVE-2026-21509 遭 APT28 利用**相關的兩份惡意文件。該漏洞攻擊涉及使用「.doc 副檔名的 RTF 檔案」這一常見偽裝技巧。

**發現的異常 URL 格式**：

分析過程中發現的特殊 URL 格式包括：
- 主機名後跟 @SSL 的格式（如 `hostname@ssl`）
- 包含 @ 符號後接埠號的記錄

**技術推測**：

作者推測此記號可能與 **WebDAV 請求**有關，但邀請讀者提供更多技術洞見。

**APT28 威脅背景**：

APT28（又稱 Fancy Bear、Sofacy）是俄羅斯國家級威脅行為者，已知長期使用 Office 漏洞進行魚叉式釣魚攻擊。此次利用 CVE-2026-21509 表明該組織持續更新其攻擊工具鏈。

**調查建議**：

當處理可疑 RTF 檔案時：
1. 使用上述工具鏈提取所有 URL
2. 分析 URL 結構以識別異常模式（如 @ssl 標記）
3. 關聯提取出的 URL 與已知 APT28 基礎設施
4. 檢查 WebDAV 相關的網路流量
5. 保留原始檔案以供深度分析和威脅情報共享

此技術對於快速分類和優先處理潛在的 RTF 基礎攻擊至關重要，特別是在大規模釣魚活動調查中。
