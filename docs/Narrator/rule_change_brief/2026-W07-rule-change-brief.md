# Rule Change Brief — 2026-W07

> 本期追蹤 50 項框架與標準變動，涵蓋 eu_regulations、nist_frameworks、nist_cybersecurity_insights、iso_standards。

## 免責聲明

本簡報由 AI 系統自動產出，基於公開資料源萃取與結構化分析。
內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構
的正式文件為準。標註「推測」之內容為系統推論，尚未經人工驗證。

---

## 本期重點

1. **ReArm Europe Plan 正式生效（Regulation (EU) 2025/2653）** — 歐盟修訂五大預算計畫（Horizon Europe、Digital Europe、Connecting Europe Facility、European Defence Fund、STEP），將國防相關投資標準嵌入民用計畫，要求計畫管理者優先考量國防技術與軍事機動基礎設施。rule_type: revision，enforcement_signal: mandatory，已於 2025-12-23 生效。

2. **NIST SP 800-53 Rev. 5.2.0 發布** — 回應 Executive Order 14306 新增三項控制項：SA-15（事件紀錄標準化）、SI-02(07)（修補失敗根因分析）、SA-24（網路韌性設計），聯邦機構需依 FISMA 合規要求實作。enforcement_signal: mandatory。

3. **歐洲高效能運算 AI 設施術語勘誤（Regulation (EU) 2024/1732R(02)）** — 將「artificial intelligence factory」修正為「artificial intelligence facility」，影響 EuroHPC AI 新創計畫的官方文件用語。rule_type: amendment，enforcement_signal: informational。

4. **歐洲單一存取點法規（Regulation (EU) 2025/2434）** — 建立 ESAP 平台集中提供金融服務、資本市場與永續性相關公開資訊，由 ESMA 建立與維運。rule_type: new，enforcement_signal: mandatory。

5. **SUSHI@NIST 研討會啟動硬體安全標準化** — NIST 召集產官學界討論「半導體開發生命週期安全框架」，預計產出硬體安全標準路線圖。目前為框架發展階段（planning），尚無強制性義務。

---

## 按風險領域分析

### Cybersecurity

本期有 2 項資安相關變動：

- **NIST Revises Security and Privacy Control Catalog (SP 800-53 Rev. 5.2.0)** — 新增 SA-15（紀錄標準化）、SI-02(07)（根因分析）、SA-24（韌性設計）三項控制項，回應 Executive Order 14306。聯邦機構需於系統安全計畫（SSP）中納入新控制項，實作時程依風險評估決定（通常 1-3 年）。enforcement_signal: mandatory。

- **SUSHI@NIST: Rolling Next-Generation Secure Hardware into Standards** — 2026-01-28 於 NCCoE 舉辦研討會，啟動半導體安全框架開發。涵蓋硬體層威脅緩解、AI 整合系統保護、供應鏈保證等議題。status: planning，enforcement_signal: informational。[REVIEW_NEEDED — 此為研討會公告而非正式標準]

### AI Risk

本期有 1 項 AI 治理相關變動：

- **Corrigendum to Council Regulation (EU) 2024/1732 on EuroHPC AI Initiative for Startups (CELEX:32024R1732R(02))** — 修正愛沙尼亞語版本術語，將「artificial intelligence factory」改為「artificial intelligence facility」。無實質義務變更，僅影響官方文件用語一致性。受影響角色包括 AI 新創企業、EuroHPC 計畫參與者、成員國高效能運算基礎設施管理機關。rule_type: amendment，enforcement_signal: informational。

### Privacy

本期有 5 項資料保護相關變動：

- **Corrigendum to Regulation (EU) 2024/1183 on European Framework for Digital Identity (CELEX:32024R1183R(05))** — 第 5 次勘誤，修正馬爾他語版本 Article 1(43)(c) 關於合格電子掛號傳遞服務的文法用語。受影響角色包括合格電子掛號傳遞服務提供者、符合性評鑑機構、成員國數位身分主管機關。rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-03。

- **Corrigendum to Directive (EU) 2024/1500 on standards for equality bodies (CELEX:32024L1500R(01))** — 修正 Directive 2024/1500 中 15 處文法與術語錯誤，確保平等機構標準文本一致性。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Council Directive (EU) 2024/1499 on Standards for Equality Bodies** — 修正 16 處文字錯誤，釐清平等機構需「特別關注交叉歧視」（intersectional discrimination）及替代爭議解決程序用語。rule_type: amendment，enforcement_signal: informational。

- **Corrigendum to Regulation (EU) 2024/1347 on international protection standards** — 修正五項技術性錯誤，包括住宿條件用語（從「相同條件」改為「等效條件」）及生效日期更正（2026-06-12）。rule_type: amendment，enforcement_signal: mandatory。

- **Regulation (EU) 2025/2033 - Corrigendum (03)** — 第 3 次勘誤，因 WebFetch 失敗無法確認原法規主題，暫歸類為 data_protection。[REVIEW_NEEDED — 需人工確認原法規內容]

### Supply Chain

本期有 11 項供應鏈相關變動：

- **Corrigendum to Regulation (EU) 2024/1781 on ecodesign requirements for sustainable products (CELEX:32024R1781R(04))** — 修正生態設計法規定義、授權法令條款、關注物質術語、數位產品護照要求及標籤顯示要求。受影響角色包括產品製造商、進口商、分銷商、授權代表、成員國市場監督機關。rule_type: amendment，enforcement_signal: mandatory，發布日期 2026-02-04。

- **Corrigendum to Regulation (EU) 2024/3110 on Construction Products (CELEX:32024R3110R(01))** — 釐清強制門檻值為產品進入內部市場之條件（不論用途），自願門檻值則適用於特定用途。受影響角色包括建築產品製造商、分銷商、行銷商、成員國監管機構。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Regulation (EU) 2023/1115 on Deforestation-linked Commodities** — 五處技術修正，釐清地理定位座標精度要求、市場禁令條件用語、畜牧設施術語。rule_type: corrigendum，enforcement_signal: mandatory。

- **Regulation (EU) 2025/2649 amending CAP regulations** — 延長永久草地重新分類期限、豁免小農戶合規要求、引入農業災害危機付款機制。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Regulation (EU) 2024/1938 on human-origin substances** — 釐清 SoHO 機構授權要求及 EU SoHO 平台快速警報啟動條件。rule_type: amendment，enforcement_signal: mandatory。

- **Regulation (EU) 2025/2645 on compulsory licensing for crisis management** — 危機管理強制授權法規。[REVIEW_NEEDED — WebFetch 失敗，待確認完整內容]

- 其他技術性勘誤：Regulation (EU) 2015/757（船舶 CO2 排放監測）、Regulation (EU) 2023/957（海運排放監測）、Directive (EU) 2022/1999（危險貨物運輸檢查）、Council Regulation (EU) 2025/2614（關稅配額）、Council Implementing Decision (EU) 2025/2642（團結池）。

### Identity

本期有 1 項身分認證相關變動：

- **Corrigendum to Regulation (EU) 2024/1183 on European Framework for Digital Identity** — 見 Privacy 段落。此為 eIDAS 修訂法規（EU No 910/2014）的第 5 次勘誤，修正馬爾他語版本合格電子掛號傳遞服務術語。雖歸類為 data_protection，但直接影響數位身分框架與合格信任服務的互通性要求。

### Critical Infrastructure

本期有 9 項關鍵基礎設施相關變動：

- **Council Decision (EU) 2025/2624 — ICAO Standards and Recommended Practices Framework** — 延長至 2028-12-31 的框架，供成員國在 ICAO 會議中就影響民航安全、空中導航、空中交通管理的標準與建議實務表達歐盟立場。rule_type: new，enforcement_signal: mandatory。

- **Council Decision (EU) 2025/2563 — EU Position on IMO Maritime Safety Code Amendments** — 授權成員國代表歐盟在 IMO 會議中表達海事安全規範與船舶檢驗指引立場。rule_type: new，enforcement_signal: mandatory。

- **Council Decision (EU) 2026/181 — EU-Switzerland ETS Linking Agreement Amendment** — 歐盟-瑞士碳排放交易系統連結協議修訂立場。rule_type: new，enforcement_signal: mandatory。

- **Council Regulation (EU) 2026/150 amending European High Performance Computing Joint Undertaking** — 修訂歐洲高效能運算聯合事業法規。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Regulation (EU) 2024/573 on fluorinated greenhouse gases** — 將含氟溫室氣體限制適用門檻從「等於 12 kW」修正為「最高 12 kW」，擴大受限設備範圍。受影響角色包括冷凍設備製造商、安裝商、維護操作商、進口商、分銷商、成員國執法機關。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Directive 2014/47/EU on technical roadside inspections** — 標準化術語，將「testing station」改為「inspection center」，「inspection report」改為「inspection certificate」。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Directive 2014/45/EU on periodic technical inspection of motor vehicles** — 同樣的術語標準化，更新煞車系統檢驗程序技術修正。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Regulation (EU) No 1380/2013 on Common Fisheries Policy** — 共同漁業政策技術修正。rule_type: amendment，enforcement_signal: mandatory。

- **Corrigendum to Directive (EU) 2018/2001 on renewable energy sources** — 再生能源指令技術修正。enforcement_signal: mandatory。

---

## 責任變動追蹤

| 文件 | affected_roles | shift_type | shift_summary |
|------|---------------|------------|---------------|
| Regulation (EU) 2025/2653 — ReArm Europe | EU 預算計畫管理者、成員國國防採購機關、國防產業 SME、雙用途技術開發者、運輸與數位基礎設施提供者、研究機構 | expanded | 修訂五大 EU 預算計畫整合國防投資標準，要求計畫管理者優先考量國防技術，提供強化共同融資率與預付款要求 |
| NIST SP 800-53 Rev. 5.2.0 | 聯邦機構資訊系統、軟體開發商（聯邦供應商）、系統整合商與維運團隊 | expanded | 新增 SA-15（紀錄標準化）、SI-02(07)（根因分析）、SA-24（韌性設計）三項控制項 |
| Regulation (EU) 2024/1781R(04) Ecodesign | 產品製造商、進口商、分銷商、授權代表、成員國市場監督機關、歐盟執委會 | clarified | 修正定義、授權法令條款、關注物質術語、數位產品護照要求、標籤顯示要求 |
| Council Decision (EU) 2025/2624 ICAO | 成員國（ICAO 締約方）、歐盟執委會、歐盟理事會、民航主管機關、空中導航服務提供者 | clarified | 延長至 2028-12-31 的 ICAO 標準與建議實務框架授權 |
| Regulation (EU) 2024/573R Fluorinated Gases | 冷凍設備製造商、安裝商、維護操作商、進口商、分銷商、成員國執法機關、設施操作者 | clarified | 將適用門檻從「等於 12 kW」改為「最高 12 kW」，擴大受限設備範圍 |
| Regulation (EU) 2024/1183R(05) Digital Identity | 合格電子掛號傳遞服務提供者、符合性評鑑機構、成員國數位身分主管機關、eIDAS 服務提供者 | clarified | 修正馬爾他語版本合格電子掛號傳遞服務術語 |
| Council Decision (EU) 2026/231 CCP Framework | EFTA 國家、主管機關、清算機構、EEA 區金融監管者、EFTA 監督機關、國家央行 | expanded | 將 Regulation (EU) 2021/23 及三項授權法規納入 EEA 協議框架 |
| Directive (EU) 2023/959 EU ETS | 廢棄物管理設施操作者、國家排放交易主管機關、執委會評估團隊、成員國環境監管者 | clarified | 將「urban waste」標準化為「municipal waste」，為 2028 年起可能納入 ETS 做準備 |

---

## L5 — Evolution Signals

- [系統推論] 本期大量勘誤（corrigendum）集中於 2024 年通過的法規（eIDAS 修訂、生態設計、建築產品、國際保護標準等），顯示歐盟正處於法規實施前的密集文本校正階段，各成員國應密切關注後續實施細則與指引。

- [系統推論] ReArm Europe Plan（Regulation (EU) 2025/2653）首次將國防投資標準嵌入民用研發與基礎設施計畫，責任正從純民用計畫管理擴展至國防-民用雙軌審查，受 EU 資金資助的研究機構與基礎設施提供者需建立國防相關性評估能力。

- [系統推論] NIST SP 800-53 Rev. 5.2.0 新增的 SA-24（網路韌性設計）與 SUSHI@NIST 半導體安全研討會，顯示美國正將安全責任前移至設計階段（secure by design / shift left），硬體供應鏈安全將成為下一波標準化重點。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 50 |
| rule_type 分布 | amendment: 26, new: 4, revision: 1, corrigendum: 2, guidance: 1, 其他/未標註: 16 |
| enforcement_signal 分布 | mandatory: 32, recommended: 4, informational: 7, 未標註: 7 |
| REVIEW_NEEDED | 5 筆 |

---

## 資料來源

| Layer | 筆數 | 時間範圍 |
|-------|------|----------|
| eu_regulations | 43 | 2022-10-18 ~ 2026-02-04 |
| nist_frameworks | 2 | 2025-08-27 ~ 2026-01-28 |
| nist_cybersecurity_insights | 1 | 2024-02-28 |
| iso_standards | 4 | 2025-12-10 ~ 2025-12-10 |
