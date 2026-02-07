---
layout: default
title: Critical Infrastructure Resilience
parent: 報告總覽
nav_order: 4
has_children: true
---

# Critical Infrastructure Resilience — 關鍵基礎設施韌性

每週彙整全球關鍵基礎設施保護動態，供 CISO、OT 安全團隊、合規主管掌握韌性要求變化。

## 來源
- NIST Frameworks (critical_infrastructure)
- NIST Cybersecurity Insights (critical_infrastructure)
- EU Regulations (critical_infrastructure)

## 報告清單

{% assign reports = site.pages | where_exp: "page", "page.path contains 'Narrator/critical_infrastructure_resilience/' and page.path != 'docs/Narrator/critical_infrastructure_resilience/index.md'" | sort: "title" | reverse %}
{% for report in reports %}
- [{{ report.title | default: report.name }}]({{ report.url | relative_url }})
{% endfor %}
