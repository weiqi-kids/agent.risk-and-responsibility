---
title: "RBI's .bank.in Mandate: A New Trust Anchor for Digital Banking"
source_url: https://cloudsecurityalliance.org/articles/rbi-s-bank-in-mandate-a-new-trust-anchor-for-digital-banking-and-why-it-s-only-the-beginning
date: 2026-02-11
category: compliance
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: final
- **issuing_body**: Cloud Security Alliance (CSA) — analysis of Reserve Bank of India (RBI) mandate
- **document_id**: RBI .bank.in Domain Mandate
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Indian banks and financial institutions, digital banking platform operators, fintech compliance teams, cybersecurity teams at banking institutions
- **shift_type**: new
- **shift_summary**: The Reserve Bank of India mandates that all Indian banks migrate customer-facing digital banking services exclusively to the .bank.in domain by October 31, 2025, establishing a new regulatory trust anchor to combat phishing, impersonation fraud, and look-alike banking website attacks.

## L3 — Risk Domains
- Phishing and brand impersonation attacks targeting digital banking customers
- Look-alike banking website fraud and domain spoofing
- Digital trust establishment for customer-facing banking services in India
- Regulatory compliance for India-based financial institutions
- Domain infrastructure security and DNS control for banking services

## L4 — Obligation & Evidence
- **new_obligations**:
  - Migrate all customer-facing digital banking services to the .bank.in domain (deadline: October 31, 2025)
  - Decommission or redirect legacy domain-based digital banking services
  - Update customer communications and authentication flows to reference .bank.in domains
  - Review what the mandate does not solve (internal systems, third-party integrations, and deeper trust infrastructure gaps) and plan accordingly
- **evidence_requirements**:
  - Domain migration completion records showing all customer-facing services moved to .bank.in
  - DNS configuration audit confirming .bank.in exclusivity for customer-facing services
  - Customer notification records for domain transition
  - Residual risk assessment for non-.bank.in-covered attack surfaces
- **enforcement_signal**: mandatory

## Notes
Description length was sufficient (>150 chars); WebFetch not triggered. RBI mandate deadline was October 31, 2025 (past at time of article publication: February 11, 2026). CSA article frames this as a necessary but incomplete measure — domain restriction addresses impersonation risk but does not resolve all digital banking trust challenges. Applicable specifically to India-regulated financial institutions.
