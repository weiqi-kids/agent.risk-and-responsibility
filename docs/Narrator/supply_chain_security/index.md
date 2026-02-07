---
layout: default
title: Supply Chain Security
parent: 報告總覽
nav_order: 3
has_children: true
---

# Supply Chain Security — 供應鏈安全趨勢

每週彙整全球供應鏈安全動態，供採購主管、資安團隊、法遵團隊掌握供應鏈責任變化。

## 來源
- NIST Frameworks (supply_chain)
- NIST Cybersecurity Insights (supply_chain)
- EU Regulations (supply_chain)

## 報告清單

{% assign reports = site.pages | where_exp: "page", "page.path contains 'Narrator/supply_chain_security/' and page.path != 'docs/Narrator/supply_chain_security/index.md'" | sort: "title" | reverse %}
{% for report in reports %}
- [{{ report.title | default: report.name }}]({{ report.url | relative_url }})
{% endfor %}
