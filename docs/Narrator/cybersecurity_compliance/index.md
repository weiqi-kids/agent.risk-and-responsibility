---
layout: default
title: Cybersecurity Compliance
parent: 報告總覽
nav_order: 5
has_children: true
---

# Cybersecurity Compliance — 資安合規動態

每週彙整全球資安框架與法規動態，供 CISO、資安團隊、法遵團隊掌握合規要求變化。

## 來源
- NIST Frameworks (cybersecurity)
- NIST Cybersecurity Insights (cybersecurity)
- EU Regulations (cybersecurity)

## 報告清單

{% assign reports = site.pages | where_exp: "page", "page.path contains 'Narrator/cybersecurity_compliance/' and page.path != 'docs/Narrator/cybersecurity_compliance/index.md'" | sort: "title" | reverse %}
{% for report in reports %}
- [{{ report.title | default: report.name }}]({{ report.url | relative_url }})
{% endfor %}
