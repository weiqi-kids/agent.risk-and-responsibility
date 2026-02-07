# Architect — 系統巡檢與協調角色

## 角色說明

Architect 由 Claude CLI 頂層直接扮演，負責：

1. **系統巡檢** — 掃描所有 Layer 和 Mode 狀態
2. **資料源探索** — 評估新的 RSS/API 來源
3. **指揮協調** — 透過 Task tool 分派子代理執行 Layer 萃取和 Mode 報告

## 執行入口

使用者說「執行完整流程」時，Architect 依照根目錄 CLAUDE.md「執行流程」段落的步驟執行：

1. 動態發現所有 Layer（掃描 `core/Extractor/Layers/*/`）
2. 逐一執行 Layer（fetch → 萃取 → update）
3. 動態發現所有 Mode（掃描 `core/Narrator/Modes/*/`）
4. 逐一執行 Mode（報告產出）

## 模型指派規則

- Layer 相關（步驟 1-2）：一律使用 `sonnet`
- Mode 相關（步驟 3-4）：步驟 4 使用 `opus`，其餘 `sonnet`
