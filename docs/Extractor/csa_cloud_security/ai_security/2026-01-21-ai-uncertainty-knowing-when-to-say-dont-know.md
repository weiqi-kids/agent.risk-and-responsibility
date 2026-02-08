---
title: "What if AI Knew When to Say 'I Don't Know'?"
source_url: https://cloudsecurityalliance.org/articles/what-if-ai-knew-when-to-say-i-don-t-know
date: 2026-01-21
category: ai_security
confidence: 中
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: AI System Developers, Security Engineers, AI Governance Teams, Product Managers
- **shift_type**: new
- **shift_summary**: AI systems need intrinsic calibration to determine when uncertainty expressions are warranted, beyond prompting for justification or confidence levels

## L3 — Risk Domains
- AI Security
- AI Trustworthiness
- Risk Management
- Output Reliability

## L4 — Obligation & Evidence
- **new_obligations**:
  - Develop AI systems with intrinsic uncertainty awareness, not performance-on-demand confidence
  - Distinguish between AI capability to produce uncertainty language and knowing when it's warranted
  - Implement calibration mechanisms beyond chain-of-thought or probability estimates
- **evidence_requirements**:
  - AI uncertainty calibration methodology documentation
  - Testing results for intrinsic vs prompted uncertainty expressions
  - Reliability metrics for AI confidence assessments
- **enforcement_signal**: recommended

## Notes
Addresses fundamental challenge that AI models can produce uncertainty language on command but lack true awareness of when such expressions are warranted. Not a vocabulary problem but a calibration problem.
