---
layout: default
title: Rule Change Brief
parent: 報告總覽
nav_order: 1
has_children: true
---

# Rule Change Brief — 規則變動簡報

每週彙整 NIST 框架與標準的規則變動，供資安主管、法遵團隊快速掌握最新動態。

## 來源
- NIST Frameworks

## 報告清單

{% assign reports = site.pages | where_exp: "page", "page.path contains 'Narrator/rule_change_brief/' and page.path != 'docs/Narrator/rule_change_brief/index.md'" | sort: "title" | reverse %}
{% for report in reports %}
- [{{ report.title | default: report.name }}]({{ report.url | relative_url }})
{% endfor %}
