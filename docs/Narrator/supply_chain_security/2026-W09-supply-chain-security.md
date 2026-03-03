---
layout: report
last_modified_at: 2026-03-03
title: "2026-W09 Supply Chain Security"
parent: "Supply Chain Security"
nav_order: 91

seo:
  title: "2026-W09 供應鏈安全趨勢 | CSF 2.0 社群檔案、CCM v4.1 遷移、SSDF 1.2"
  description: "本週追蹤 11 項供應鏈安全動態，涵蓋 CSF 2.0 兩週年新增製造業社群檔案、CSA CCM v4.1 供應鏈控制擴展與遷移時程、NIST SSDF 1.2 持續推進、SP 800-53 修補管理控制草案。"
  date_published: "2026-03-01"
  date_modified: "2026-03-03"
  article_section: "Supply Chain Security"
  keywords:
    - "Supply Chain Security"
    - "SBOM"
    - "SSDF"
    - "供應鏈安全"
    - "CCM v4.1"
    - "CSF 2.0"
    - "供應鏈追溯性"
    - "雲端供應鏈"
  related_articles:
    - "https://risk.weiqi.kids/docs/Narrator/supply_chain_security/2026-W08-supply-chain-security"
    - "https://risk.weiqi.kids/docs/Narrator/rule_change_brief/2026-W09-rule-change-brief"
  faq:
    - question: "2026-W09 有哪些重要的供應鏈安全動態？"
      answer: "2026-W09 追蹤 11 項供應鏈安全動態，重點包括 CSF 2.0 兩週年新增製造業與半導體社群檔案草案、CSA CCM v4.1 擴展供應鏈控制（STA domain）並要求 2027 年底前遷移、NIST SSDF 1.2（SP 800-218r1）持續推進、SP 800-53 新增修補管理控制草案。"
    - question: "軟體供應商需要注意哪些新要求？"
      answer: "SSDF 1.2 版擴展安全開發責任，SP 800-53 Release 5.2.0 草案新增修補程式安全部署控制，軟體供應商須建立修補測試與完整性驗證流程。CCM v4.1 擴展 STA domain 供應鏈控制，雲端服務供應商須於 2027 年 12 月前完成遷移。"
    - question: "CSA CCM v4.1 對雲端供應鏈有何影響？"
      answer: "CCM v4.1 擴展五個關鍵領域控制（含 STA 供應鏈管理），雲端服務供應商與 STAR Registry 參與者須於 2027 年 12 月前從 v4.0.x 遷移至 v4.1，新版強化與 ISO 27001、SOC 2、GDPR 等標準的互操作性。"
    - question: "CSF 2.0 兩週年有哪些供應鏈相關更新？"
      answer: "NIST CSF 2.0 新增七份草案社群檔案（涵蓋製造業、半導體等），並發布七份資訊性參考文件（含 PCI DSS 4.0.1、ISO 27001:2022 映射），擴大供應鏈管理人員與製造業資安人員的框架採用支援。"
---

# Supply Chain Security Trends — 2026-W09 {: .no_toc }

<div class="key-takeaway">
本週重點：NIST CSF 2.0 兩週年新增製造業與半導體社群檔案草案，擴展供應鏈風險管理支援範圍；CSA CCM v4.1 擴展供應鏈控制（STA domain），要求雲端服務供應商 2027 年底前遷移；SSDF 1.2 版持續推進最終發布；SP 800-53 新增修補管理控制草案強化軟體供應鏈完整性。
</div>

> **報告週期**：2026-02-23 至 2026-03-01
>
> 本期追蹤 11 項供應鏈安全動態，涵蓋 NIST 框架、NIST 洞察、歐盟法規、雲端安全聯盟（CSA）。

## 免責聲明

本報告由 AI 系統自動產出，基於公開資料源萃取與結構化分析。內容僅供參考，不構成法律或合規建議。所有資訊應以原始發布機構的正式文件為準。標註「[系統推論]」之內容為系統推論，尚未經人工驗證。

---

<div class="report-meta">

## 報告資訊 {: .no_toc }

| 項目 | 內容 |
|------|------|
| 產出方式 | AI 自動產出（Claude Opus 4.5） |
| 審核狀態 | <span class="badge-reviewed">已通過自動審核</span> |
| 審核依據 | CLAUDE.md 自我審核 Checklist |
| 資料來源 | 11 個權威來源（NIST、EUR-Lex、CSA 等） |
| 資料時間 | 2024-11-21 ~ 2026-02-24 |

</div>

---

{% include report-toc.html %}

---

## 本週重點

<p class="key-answer" data-question="本週有哪些重要的供應鏈安全動態">
  <strong>NIST CSF 2.0 發布兩週年，新增製造業與半導體社群檔案草案</strong>，擴大供應鏈風險管理的產業別支援；CSA CCM v4.1 擴展供應鏈控制（STA domain）並設定 2027 年底遷移期限，影響所有雲端服務供應商。
</p>

1. **CSF 2.0 兩週年：製造業與半導體社群檔案草案（美國 NIST，guidance）**：NIST CSF 2.0 發布兩週年，新增七份草案社群檔案（涵蓋 AI、事件回應、製造業、半導體、定位導航授時、勒索軟體、交通運輸），其中製造業與半導體社群檔案直接強化供應鏈風險管理支援，供應鏈管理人員可利用新的參考文件與 PCI DSS 4.0.1、ISO 27001:2022 等標準進行映射。

2. **CSA CCM v4.1 供應鏈控制擴展與遷移時程（CSA，revision）**：Cloud Controls Matrix v4.1 擴展五個關鍵領域控制，其中 STA（Supply Chain, Transparency, and Accountability）domain 強化供應鏈管理要求。所有 STAR Registry 參與者須於 2027 年 12 月前從 v4.0.x 遷移，新版加強與 ISO 27001、SOC 2、GDPR 等框架的互操作性。

3. **SSDF 1.2 版持續推進最終版本（美國 NIST，revision）**：NIST SP 800-218r1 公開徵詢期已截止，引入改進的安全開發實踐、任務與範例，擴展軟體供應商與採購方在漏洞風險緩解方面的責任，受 Executive Order 14306 推動，預期近期發布最終版本。

4. **SP 800-53 修補管理控制草案（美國 NIST，draft）**：SP 800-53 Release 5.2.0 草案新增安全修補程式部署控制，要求組織建立軟體韌性、開發者測試、安全日誌、最小權限控制、部署管理與軟體完整性驗證機制，明確劃分組織與開發者在修補管理中的責任。

5. **歐盟人源物質品質安全標準勘誤（歐盟，mandatory）**：Regulation (EU) 2024/1938 勘誤釐清 SoHO 機構授權要求範圍與 EU SoHO Platform 快速警報觸發條件，直接適用於所有會員國。

<blockquote class="expert-quote">
  「CSF 2.0 透過新增七份草案社群檔案（涵蓋 AI、事件回應、製造業、半導體、定位導航授時、勒索軟體、交通運輸）及七份新發布的資訊性參考文件，擴大各產業採用框架的支援範圍。」
  <cite>NIST Cybersecurity Insights</cite>
</blockquote>

---

## 區域動態比較

### 美國（NIST）

<p class="key-answer" data-question="NIST 本週有哪些供應鏈安全動態">
  <strong>CSF 2.0 發布兩週年新增製造業與半導體社群檔案</strong>，SSDF 1.2 持續推進最終版本，SP 800-53 草案新增修補管理控制，IR 8536 製造業供應鏈追溯性元框架與 IR 8259 IoT 製造商指引持續推進。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>框架/指引</th>
      <th>文件編號</th>
      <th>狀態</th>
      <th>重點內容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>CSF 2.0 兩週年更新</strong></td>
      <td>CSF 2.0</td>
      <td>final（社群檔案為 draft）</td>
      <td>新增製造業、半導體社群檔案草案，擴大供應鏈框架支援</td>
    </tr>
    <tr>
      <td><strong>SSDF 1.2 版</strong></td>
      <td>SP 800-218r1</td>
      <td>public_comment（徵詢期已截止）</td>
      <td>安全軟體開發實務擴充，漏洞根因分析，受 EO 14306 推動</td>
    </tr>
    <tr>
      <td><strong>SP 800-53 修補管理控制</strong></td>
      <td>SP 800-53 Release 5.2.0</td>
      <td>draft / public_comment</td>
      <td>修補程式安全部署控制，組織與開發者責任劃分</td>
    </tr>
    <tr>
      <td><strong>供應鏈追溯性元框架</strong></td>
      <td>NIST IR 8536</td>
      <td>public_comment（第二版草案）</td>
      <td>製造業供應鏈可見性與追溯性管理，元件來源驗證</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商基礎活動</strong></td>
      <td>IR 8259（修訂中）</td>
      <td>draft / public_comment</td>
      <td>新增 Activity 0（威脅建模），擴大 pre-market/post-market 活動</td>
    </tr>
    <tr>
      <td><strong>軟體開發安全指南</strong></td>
      <td>—</td>
      <td>draft</td>
      <td>NIST 聯盟軟體開發生命週期安全實踐責任標準</td>
    </tr>
    <tr>
      <td><strong>PQC 遷移風險框架映射</strong></td>
      <td>CSWP 48</td>
      <td>draft</td>
      <td>後量子密碼學遷移能力與風險框架映射指引</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **CSF 2.0 供應鏈生態系強化**：CSF 2.0 兩週年更新中，製造業與半導體社群檔案草案直接涉及供應鏈風險管理。新發布的資訊性參考文件（含 PCI DSS 4.0.1、CIS Controls 8.1、ISO/IEC 27001:2022 映射）協助供應鏈管理人員建立跨標準合規映射，降低多重框架合規成本。

- **修補管理責任釐清**：SP 800-53 Release 5.2.0 草案回應 Executive Order 14306，明確劃分組織與軟體開發者在修補程式部署中的責任，要求軟體完整性驗證、安全日誌與最小權限控制。此舉將影響軟體供應鏈中「修補程式交付」環節的責任歸屬。

- **SSDF 1.2 進入最終階段**：SP 800-218r1 公開徵求意見期已截止，預期近期發布最終版本。軟體供應商應提前準備合規文件，特別是漏洞減少指標、安全開發實踐文件與根因分析報告。

### 歐盟

<p class="key-answer" data-question="歐盟本週有哪些供應鏈安全動態">
  <strong>人源物質品質安全標準勘誤生效</strong>，Regulation (EU) 2024/1938 勘誤釐清 SoHO 機構授權要求，海事制裁持續影響供應鏈。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>法規</th>
      <th>文件編號</th>
      <th>binding_force</th>
      <th>重點內容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>人源物質品質安全標準勘誤</strong></td>
      <td>Regulation (EU) 2024/1938 Corrigendum</td>
      <td>directly_applicable</td>
      <td>釐清 SoHO 機構授權要求與快速警報觸發條件</td>
    </tr>
    <tr>
      <td><strong>對俄制裁擴大</strong></td>
      <td>Council Decision (CFSP) 2025/2617</td>
      <td>directly_applicable</td>
      <td>41 艘船舶港口禁入令，禁止提供海事服務</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **人源物質供應鏈追溯**：Regulation (EU) 2024/1938 勘誤釐清人源物質（SoHO）機構的授權要求範圍，以及 EU SoHO Platform 快速警報的觸發條件（影響「多於一個」會員國時觸發，而非「一個或多個」）。此勘誤為 directly_applicable，已直接生效。

- **海事供應鏈制裁持續執行**：Council Decision 2025/2617 針對 41 艘船舶執行港口禁入與海事服務禁止，港口主管機關須驗證船舶身份，海事服務商（加油、拖曳、貨物裝卸、維修）須拒絕為列入名單船舶提供服務。

### 雲端安全（CSA）

<p class="key-answer" data-question="CSA 有哪些供應鏈安全相關更新">
  <strong>CCM v4.1 設定 2027 年 12 月遷移期限</strong>，擴展 STA 供應鏈控制領域，雲端服務供應商須於期限內完成合規遷移。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>框架/指引</th>
      <th>文件編號</th>
      <th>狀態</th>
      <th>重點內容</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>CCM v4.1 遷移時程</strong></td>
      <td>CCM v4.1 / CAIQ v4.1</td>
      <td>final</td>
      <td>STA domain 供應鏈控制擴展，2027 年 12 月遷移期限</td>
    </tr>
    <tr>
      <td><strong>CSA STAR 身分安全</strong></td>
      <td>CSA STAR</td>
      <td>final</td>
      <td>身分安全從被動控制轉向主動韌性，獨立第三方驗證</td>
    </tr>
  </tbody>
</table>

**重點觀察**：

- **雲端供應鏈控制標準化**：CCM v4.1 擴展五個關鍵領域控制，其中 STA（Supply Chain, Transparency, and Accountability）domain 直接強化雲端供應鏈管理。新版加強與 ISO 27001、SOC 2、GDPR 等框架的互操作性，降低多重合規成本。現有 v4.0.x 認證組織須於 2027 年 12 月前完成遷移。

- **供應商身分驗證強化**：CSA STAR 將身分安全從被動控制轉向主動身分韌性，要求獨立第三方驗證和持續監控，而非僅供應商自我證明。此趨勢將影響雲端供應鏈中供應商的信任驗證機制。

---

## 供應鏈責任矩陣

<p class="key-answer" data-question="供應鏈各角色有哪些責任變化">
  <strong>雲端服務供應商新增 CCM v4.1 遷移責任</strong>：須於 2027 年 12 月前完成 STA 供應鏈控制升級。軟體供應商面臨 SSDF 1.2 與 SP 800-53 修補管理雙重責任擴展。
</p>

<table class="comparison-table">
  <thead>
    <tr>
      <th>角色</th>
      <th>美國（NIST）要求</th>
      <th>歐盟要求</th>
      <th>CSA 要求</th>
      <th>本週變動趨勢</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>軟體供應商</strong></td>
      <td>SSDF 1.2 實務作法、修補程式完整性驗證（SP 800-53）、漏洞根因分析、SBOM 揭露</td>
      <td>—</td>
      <td>—</td>
      <td>修補管理責任釐清，SSDF 進入最終階段</td>
    </tr>
    <tr>
      <td><strong>採購方</strong></td>
      <td>要求供應商提供 SSDF 合規證明、SBOM 驗證、威脅建模文件</td>
      <td>供應鏈來源驗證</td>
      <td>驗證供應商 CCM v4.1 合規</td>
      <td>供應商評估標準多元化</td>
    </tr>
    <tr>
      <td><strong>雲端服務供應商</strong></td>
      <td>—</td>
      <td>—</td>
      <td>CCM v4.1 STA domain 供應鏈控制、2027 年 12 月前遷移</td>
      <td>遷移時程確定，新增供應鏈控制</td>
    </tr>
    <tr>
      <td><strong>系統整合商</strong></td>
      <td>供應鏈追溯性機制（IR 8536）、元件來源驗證</td>
      <td>—</td>
      <td>—</td>
      <td>追溯性標準持續深化</td>
    </tr>
    <tr>
      <td><strong>IoT 製造商</strong></td>
      <td>上市前威脅建模（IR 8259 Activity 0）、產品生態系安全、EOL 安全政策</td>
      <td>—</td>
      <td>—</td>
      <td>CSF 2.0 製造業社群檔案草案新增</td>
    </tr>
    <tr>
      <td><strong>CISO/資安主管</strong></td>
      <td>CSF 2.0 社群檔案採用、PQC 遷移能力評估（CSWP 48）</td>
      <td>—</td>
      <td>CSA STAR 身分安全韌性</td>
      <td>框架採用支援強化</td>
    </tr>
    <tr>
      <td><strong>港口主管機關</strong></td>
      <td>—</td>
      <td>對制裁名單船舶執行入港禁令（Decision 2025/2617）</td>
      <td>—</td>
      <td>制裁執行責任持續</td>
    </tr>
    <tr>
      <td><strong>SoHO 機構</strong></td>
      <td>—</td>
      <td>授權要求與快速警報觸發條件釐清（Regulation 2024/1938）</td>
      <td>—</td>
      <td>授權義務釐清</td>
    </tr>
  </tbody>
</table>

---

## 責任變動追蹤

| 來源 | 文件 | affected_roles | shift_type | shift_summary |
|------|------|---------------|------------|---------------|
| NIST | CSF 2.0（社群檔案草案） | CISO、資安主管、供應鏈管理人員、製造業與半導體業資安人員 | expanded | 新增製造業、半導體等七份社群檔案草案，擴大供應鏈風險管理框架支援 |
| CSA | CCM v4.1 / CAIQ v4.1 | 雲端服務供應商、STAR Registry 參與者、合規團隊、雲端安全稽核員 | expanded | 擴展 STA 供應鏈控制領域，設定 2027 年 12 月遷移期限 |
| NIST | SP 800-218r1 (SSDF 1.2) | 軟體生產者、軟體開發者、軟體採購方、聯邦機構、軟體供應鏈廠商 | expanded | SSDF 1.2 版引入新的實務作法、任務與範例，擴大漏洞風險緩解指引 |
| NIST | SP 800-53 Release 5.2.0 | 聯邦機構（系統管理員、資安團隊）、軟體開發者、修補部署組織、資安營運團隊 | expanded | 新增修補程式安全部署控制，劃分組織與開發者修補管理責任 |
| NIST | NIST IR 8536 | 製造業組織、供應鏈管理者、資安專業人員、合規官、採購團隊 | expanded | 製造業供應鏈追溯性元框架擴展供應鏈可見性與追溯性管理責任 |
| NIST | IR 8259（修訂中） | IoT 製造商、產品安全工程師、IoT 生態系統開發者 | expanded | 新增 Activity 0（威脅建模），擴大 pre-market/post-market 活動範圍 |
| NIST | CSWP 48 | CISO、加密系統管理員、風險管理人員、系統架構師 | new | 新增後量子密碼學遷移能力與風險框架映射指引責任 |
| CSA | CSA STAR | CISO、IAM 架構師、合規團隊、雲端安全團隊 | clarified | 身分安全從被動控制轉向主動韌性，要求獨立第三方驗證 |
| EU | Regulation (EU) 2024/1938 Corrigendum | SoHO 機構、主管機關、EU SoHO Platform 營運者 | clarified | 釐清授權要求範圍與快速警報觸發條件 |
| EU | Council Decision (CFSP) 2025/2617 | 港口主管機關、海事服務商、船舶營運商、海關 | expanded | 對 41 艘船舶執行港口禁入與海事服務禁止 |
| NIST | — (軟體開發安全指南) | 軟體開發者、軟體架構師、DevSecOps 團隊、軟體供應商 | new | 新增軟體開發生命週期安全實踐責任標準 |

---

## 義務與舉證要求

### 新增義務摘要

<p class="key-answer" data-question="SBOM 相關義務有何變化">
  <strong>SBOM 義務持續強化</strong>：SSDF 1.2 要求軟體供應商維護 SBOM，SP 800-53 新增修補程式完整性驗證控制進一步強化軟體物料追蹤要求。CCM v4.1 STA domain 將供應鏈透明度納入雲端合規範圍。
</p>

**SBOM 與軟體供應鏈義務**：
- 依 SSDF 1.2 要求，軟體生產者應建立並維護軟體物料清單（SBOM），支援漏洞追蹤與風險評估
- SP 800-53 Release 5.2.0 草案要求軟體完整性驗證，確保修補程式來源可信
- 採購方須驗證供應商提供的 SBOM 完整性

**修補管理義務（SP 800-53 草案）**：
- 實施增強的修補程式安全部署控制
- 建立可靠的修補程式測試與驗證流程
- 確保修補程式完整性驗證
- 明確劃分組織與軟體開發者在修補管理中的責任

**雲端供應鏈義務（CCM v4.1）**：
- 2027 年 12 月前從 CCM v4.0.x 遷移至 v4.1
- 實施 STA domain 供應鏈控制措施
- 強化與 ISO 27001、SOC 2、GDPR 等框架的互操作性對應

**供應鏈追溯義務**：
- IR 8536：製造業組織須建立供應鏈追溯性機制，確保元件來源可驗證
- 須維護供應鏈元件追蹤紀錄與稽核軌跡
- CSF 2.0 製造業社群檔案草案提供產業別實施指引

**IoT 產品安全義務**：
- IR 8259 修訂版：製造商須在產品開發初期納入威脅建模與初始風險評估（Activity 0）
- 須考量完整產品架構（含 app、閘道器、後端），而非僅硬體裝置本身
- 須整合 CSF 2.0、隱私框架、SSDF 於 IoT 產品開發流程

**制裁與追溯合規義務**：
- Council Decision 2025/2617：會員國須禁止 41 艘列入名單船舶進入港口與水閘
- Regulation (EU) 2024/1938 勘誤：釐清 SoHO 機構授權要求與快速警報觸發條件

### 舉證要求摘要

| 領域 | 舉證要求 | 來源 |
|------|----------|------|
| 軟體供應鏈 | SSDF 實踐整合至 SDLC 文件、SBOM、漏洞緩解措施 | NIST SP 800-218r1 |
| 修補管理 | 修補程式測試驗證紀錄、完整性驗證日誌、部署時程與成功率 | NIST SP 800-53 5.2.0 |
| 雲端供應鏈 | CCM v4.1 STA domain 控制實施證明、STAR Registry 認證 | CSA CCM v4.1 |
| 供應鏈追溯性 | 供應鏈追溯文件、製造流程紀錄、元件追蹤紀錄、追溯性稽核軌跡 | NIST IR 8536 |
| IoT 產品安全 | 威脅建模報告、初始風險評估文件、EOL 安全政策 | NIST IR 8259 |
| PQC 遷移 | PQC 遷移能力評估文件、風險框架對應映射表、加密演算法盤點清單 | NIST CSWP 48 |
| 身分安全 | 獨立第三方評估報告、持續監控日誌、行為異常偵測記錄 | CSA STAR |
| 制裁合規 | IMO 船舶登記驗證紀錄、拒絕入港紀錄、服務拒絕紀錄 | Council Decision 2025/2617 |
| 人源物質 | 非 SoHO 機構授權文件、跨境事件報告、Platform 警報紀錄 | Regulation (EU) 2024/1938 |

---

## L5 — Evolution Signals

<p class="key-answer" data-question="供應鏈安全的未來趨勢是什麼">
  <strong>供應鏈安全框架正從「個別標準」匯聚為「互操作生態系」</strong>：CSF 2.0 社群檔案、CCM v4.1 與 SSDF 1.2 的同步推進，顯示各框架間的整合趨勢加速。
</p>

> 以下為基於現有法規與框架動態的趨勢推論，標註「[系統推論]」。

### [系統推論] 供應鏈安全框架正從「個別合規」走向「互操作生態系」

CSF 2.0 新增的資訊性參考文件提供與 PCI DSS 4.0.1、CIS Controls 8.1、ISO 27001:2022 的映射；CCM v4.1 強化與 ISO 27001、SOC 2、GDPR 的互操作性；SSDF 1.2 可整合至 CSF 2.0 供應鏈風險管理。三者的同步推進顯示，未來供應鏈安全合規將從「逐一符合個別標準」轉向「透過統一框架映射實現多重合規」，降低組織的合規成本。

### [系統推論] 雲端供應鏈合規將成為軟體供應鏈安全的關鍵延伸

CCM v4.1 設定 2027 年 12 月遷移期限，結合 CSA STAR 身分安全韌性要求，顯示雲端服務供應商將面臨更嚴格的供應鏈透明度與問責要求。軟體供應鏈安全（SSDF、SBOM）與雲端基礎設施安全（CCM、STAR）的整合，將形成「端對端供應鏈合規」的完整圖景。採購方可能開始要求供應商同時提供 SSDF 合規證明與 STAR Registry 認證。

### [系統推論] 修補管理將成為供應鏈責任劃分的核心議題

SP 800-53 Release 5.2.0 草案明確劃分組織與軟體開發者在修補管理中的責任，結合 SSDF 1.2 對漏洞根因分析的要求，顯示監管機構正推動修補管理從「被動回應」轉向「主動預防」。未來供應鏈合約中，修補程式交付時程、完整性保證與根因分析將成為標準條款。

---

## 統計

| 指標 | 數值 |
|------|------|
| 總變動數 | 11 |
| 來源分布 | NIST Frameworks: 5, NIST Cybersecurity Insights: 2, EU Regulations: 2, CSA Cloud Security: 2 |
| rule_type 分布 | draft: 4, revision: 2, guidance: 2, amendment: 1, new: 1, — (軟體開發安全指南): 1 |
| enforcement_signal 分布 | recommended: 7, mandatory: 3, informational: 1 |
| REVIEW_NEEDED | 0 筆 |

---

## 資料來源

| Layer | Category | 筆數 | 時間範圍 |
|-------|----------|------|----------|
| nist_frameworks | supply_chain | 4 | 2025-07-30 ~ 2025-12-17 |
| nist_frameworks | cybersecurity | 1 | 2025-07-22 |
| nist_cybersecurity_insights | supply_chain | 2 | 2024-11-21 ~ 2025-09-30 |
| nist_cybersecurity_insights | cybersecurity | 1 | 2026-02-24 |
| eu_regulations | supply_chain | 2 | 2025-12-18 ~ 2026-01-30 |
| csa_cloud_security | compliance | 1 | 2026-02-19 |

### 主要引用文件

| 文件 | 來源 | 日期 |
|-----|-----|-----|
| [Celebrating Two Years of CSF 2.0!](https://www.nist.gov/blogs/cybersecurity-insights/celebrating-two-years-csf-20) | NIST | 2026-02-24 |
| [CCM v4.1 Transition Timeline](https://cloudsecurityalliance.org/articles/ccm-v4-1-transition-timeline) | CSA | 2026-02-19 |
| [SSDF Version 1.2 Public Comment](https://www.nist.gov/news-events/news/2025/12/secure-software-development-framework-ssdf-version-12-available-public) | NIST | 2025-12-17 |
| [Draft SP 800-53 Secure and Reliable Patches](https://www.nist.gov/news-events/news/2025/07/draft-sp-800-53-controls-secure-and-reliable-patches-available-comment) | NIST | 2025-07-22 |
| [NIST IR 8536 Supply Chain Traceability](https://www.nist.gov/news-events/news/2025/07/comment-now-nist-internal-report-8536-supply-chain-traceability) | NIST | 2025-07-31 |
| [NIST Consortium and Draft Guidelines - Software Development](https://www.nist.gov/news-events/news/2025/07/nist-consortium-and-draft-guidelines-aim-improve-security-software) | NIST | 2025-07-30 |
| [PQC Migration: Mappings to Risk Framework Docs](https://www.nist.gov/news-events/news/2025/09/new-draft-white-paper-pqc-migration-mappings-risk-framework-docs) | NIST | 2025-09-18 |
| [Sharpening the Focus - IoT Product Manufacturers](https://www.nist.gov/blogs/cybersecurity-insights/sharpening-focus-product-requirements-and-cybersecurity-risks-updating) | NIST | 2025-09-30 |
| [Five Years Later: Evolving IoT Cybersecurity Guidelines](https://www.nist.gov/blogs/cybersecurity-insights/five-years-later-evolving-iot-cybersecurity-guidelines) | NIST | 2025-05-13 |
| [Council Decision (CFSP) 2025/2617](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32025D2617) | EU | 2025-12-18 |
| [Regulation (EU) 2024/1938 Corrigendum](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1938) | EU | 2026-01-30 |

---

*報告產出時間：2026-03-01*
*資料查詢方式：Qdrant 語意搜尋（query: supply chain security vendor risk SBOM SSDF）*
