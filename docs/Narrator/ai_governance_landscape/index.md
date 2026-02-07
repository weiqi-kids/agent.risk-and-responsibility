---
layout: default
title: AI Governance Landscape
parent: 報告總覽
nav_order: 2
has_children: true
---

# AI Governance Landscape — AI 治理全景

每月彙整全球 AI 治理動態，供 AI 風險管理團隊、法遵主管掌握跨區域趨勢。

## 來源
- NIST Frameworks (ai_risk)
- NIST Cybersecurity Insights (ai_risk)
- EU Regulations (ai_governance)

## 報告清單

{% assign reports = site.pages | where_exp: "page", "page.path contains 'Narrator/ai_governance_landscape/' and page.path != 'docs/Narrator/ai_governance_landscape/index.md'" | sort: "title" | reverse %}
{% for report in reports %}
- [{{ report.title | default: report.name }}]({{ report.url | relative_url }})
{% endfor %}
