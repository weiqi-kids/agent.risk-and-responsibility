# Global Risk & Responsibility Intelligence

> Risk & Responsibility Intelligence System — 全球風險與責任情報系統

**最後更新：2026-02-08**

基於多角色協作架構（Architect / Extractor / Narrator / Reviewer），持續觀測並結構化全球框架、法規與產業規則的變動，追蹤責任歸屬的演化。

## 核心問題

> How is the world redefining who must carry responsibility for emerging risks?

## 架構概覽

```
flowchart TB
  subgraph A[Architect]
    A1[資料源探索與評估<br/>RSS / API 連線驗證]
  end

  subgraph X[Extractor]
    X1[fetch.sh 擷取 RSS]
    X2[JSONL 解析 / 去重]
    X3[L1-L4 結構化萃取<br/>Rule Signal / Responsibility<br/>Risk Model / Obligation]
    X4[update.sh → Qdrant]
  end

  subgraph N[Narrator]
    N1[Rule Change Brief<br/>規則變動簡報]
  end

  subgraph R[Reviewer]
    R1[自我審核 Checklist]
    R2[REVIEW_NEEDED 標記]
    R3[發佈 / 存檔]
  end

  A1 --> X1 --> X2 --> X3 --> X4
  X3 --> N1
  N1 --> R1 --> R2 --> R3
```

## 分析層級

每筆萃取資料經過四層結構化分析：

| Layer | 名稱 | 核心問題 |
|-------|------|----------|
| **L1** | Rule Signal | 發生了什麼正式變動？（new / revision / draft / final） |
| **L2** | Responsibility Structure | 誰現在負責什麼？（affected_roles、shift_type） |
| **L3** | Risk Model | 哪些風險領域被正式承認？ |
| **L4** | Obligation & Evidence | 現在必須做什麼、證明什麼？ |
| **L5** | Evolution（Narrator 層） | 這個變動如何融入長期趨勢？ |

## 資料來源

| 來源 | 類型 | 內容 | 對應 Layer |
|------|------|------|------------|
| NIST Information Technology News | RSS | 框架、標準、指引動態（SSDF、CSF、AI RMF 等） | nist_frameworks |
| NIST Cybersecurity Insights Blog | RSS | 資安專家分析文章、政策評論、人才教育動態 | nist_cybersecurity_insights |
| EUR-Lex Parliament & Council Legislation | RSS | 歐盟議會與理事會立法（Regulation/Directive/Decision） | eu_regulations |
| CISA Known Exploited Vulnerabilities | JSON | 已知被利用漏洞清單、修補期限 | cisa_kev |
| SANS ISC Handler's Diary | RSS | 每日威脅分析、安全事件、惡意軟體 | sans_isc |
| ISO Open Data Platform | CSV | ISO 標準元資料（IT/安全/治理相關） | iso_standards |
| Cloud Security Alliance Blog | RSS | 雲安全最佳實踐、AI 安全、合規框架 | csa_cloud_security |

> 完整資料源評估紀錄見 [docs/explored.md](docs/explored.md)

## 系統健康度

| Layer | 最後更新 | 資料筆數 | 狀態 |
|-------|----------|----------|------|
| nist_frameworks | 2026-02-04 | 24 | ✅ |
| nist_cybersecurity_insights | 2026-01-28 | 41 | ✅ |
| eu_regulations | 2026-02-06 | 142 | ✅ |
| cisa_kev | - | - | 🆕 |
| sans_isc | - | - | 🆕 |
| iso_standards | - | - | 🆕 |
| csa_cloud_security | - | - | 🆕 |

| Mode | 最後產出 | 狀態 |
|------|----------|------|
| rule_change_brief | 2026-W06 | ✅ |
| ai_governance_landscape | 2026-02 | ✅ |
| supply_chain_security | 2026-W06 | ✅ |
| critical_infrastructure_resilience | 2026-W06 | ✅ |
| cybersecurity_compliance | 2026-W06 | ✅ |

> 健康度由完整流程執行後更新（2026-02-08）

## 目錄結構

```
.
├── CLAUDE.md                          # 系統執行指令（執行入口）
├── README.md                          # 本文件
├── .env                               # 環境設定（不入版控）
│
├── core/
│   ├── CLAUDE.md                      # 系統架構與維護指令
│   ├── Architect/CLAUDE.md            # 巡檢與協調角色
│   ├── Extractor/
│   │   ├── CLAUDE.md                  # 通用萃取規則 + L1-L4 輸出模板
│   │   └── Layers/
│   │       ├── nist_frameworks/       # NIST 框架動態 Layer
│   │       ├── nist_cybersecurity_insights/  # NIST 資安洞察部落格 Layer
│   │       ├── eu_regulations/        # 歐盟法規動態 Layer
│   │       ├── cisa_kev/              # CISA 已知被利用漏洞 Layer
│   │       ├── sans_isc/              # SANS ISC 威脅分析 Layer
│   │       ├── iso_standards/         # ISO 標準動態 Layer
│   │       └── csa_cloud_security/    # 雲安全聯盟 Layer
│   └── Narrator/
│       ├── CLAUDE.md                  # 綜合分析角色
│       └── Modes/
│           ├── rule_change_brief/     # 規則變動簡報 Mode
│           ├── ai_governance_landscape/        # AI 治理全景 Mode
│           ├── supply_chain_security/          # 供應鏈安全 Mode
│           ├── critical_infrastructure_resilience/  # 關鍵基礎設施 Mode
│           └── cybersecurity_compliance/       # 資安合規 Mode
│
├── lib/                               # Shell 工具庫
│   ├── rss.sh                         # RSS 擷取與 XML→JSONL
│   ├── qdrant.sh                      # Qdrant 向量資料庫操作
│   ├── chatgpt.sh                     # OpenAI embedding
│   ├── core.sh                        # 通用工具
│   ├── args.sh                        # 參數解析
│   └── time.sh                        # 時間工具
│
├── docs/
│   ├── explored.md                    # 資料源探索紀錄
│   ├── Extractor/
│   │   ├── nist_frameworks/           # 萃取結果
│   │   ├── nist_cybersecurity_insights/  # 萃取結果
│   │   ├── eu_regulations/            # 萃取結果
│   │   ├── cisa_kev/                  # 萃取結果
│   │   ├── sans_isc/                  # 萃取結果
│   │   ├── iso_standards/             # 萃取結果
│   │   └── csa_cloud_security/        # 萃取結果
│   └── Narrator/
│       ├── rule_change_brief/         # 規則變動簡報
│       ├── ai_governance_landscape/   # AI 治理全景報告
│       ├── supply_chain_security/     # 供應鏈安全報告
│       ├── critical_infrastructure_resilience/  # 關鍵基礎設施報告
│       └── cybersecurity_compliance/  # 資安合規報告
│
├── _config.yml                        # Jekyll 設定
├── Gemfile                            # Ruby 依賴（Jekyll）
├── index.md                           # 網站首頁
│
├── scripts/
│   └── check-evaluated-sources.sh     # 資料源連線檢查
│
└── .github/workflows/
    ├── build-index.yml                # 自動建立 index.json
    ├── check-evaluated-sources.yml    # 每日資料源健康檢查
    └── pages.yml                      # GitHub Pages 自動部署
```

## 版本紀錄

| 版本 | 日期 | 變更內容 |
|------|------|----------|
| v1.0 | 2026-01-27 | 初始版本：nist_frameworks Layer + rule_change_brief Mode，完整 L1-L4 萃取流程 |
| v1.1 | 2026-01-27 | 新增 nist_cybersecurity_insights Layer（NIST 資安洞察部落格）+ eu_regulations Layer（歐盟法規動態） |
| v1.2 | 2026-02-05 | 新增 4 個跨 Layer 主題式 Mode（ai_governance_landscape、supply_chain_security、critical_infrastructure_resilience、cybersecurity_compliance）；資料利用率從 12% 提升至 53% |
| v1.3 | 2026-02-07 | 整合 Jekyll + Just the Docs 主題，支援 GitHub Pages 自動部署 |
| v1.4 | 2026-02-08 | 新增 4 個 Layer（cisa_kev、sans_isc、iso_standards、csa_cloud_security）；fetch.sh 預過濾優化 |
