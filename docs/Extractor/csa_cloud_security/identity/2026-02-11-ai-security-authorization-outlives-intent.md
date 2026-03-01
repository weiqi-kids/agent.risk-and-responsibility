---
title: "AI Security: When Authorization Outlives Intent — Credential Lifecycle and the Salesloft Drift Breach"
source_url: https://cloudsecurityalliance.org/articles/ai-security-when-authorization-outlives-intent
date: 2026-02-11
category: identity
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: Cloud Security Alliance (CSA)
- **document_id**: N/A (Part 2 of a 7-part series on identity security as AI security)
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Identity and access management teams, security architects, CISOs, SaaS platform operators, cloud security teams, compliance officers
- **shift_type**: new
- **shift_summary**: The proliferation of non-human AI agent identities (outnumbering human identities 144:1 in some enterprises) creates critical authorization drift risks, requiring organizations to implement lifecycle-aware authorization with purpose-built identities, continuously renewable access, instant cross-system revocation, and real-time validation at execution time.

## L3 — Risk Domains
- Authorization drift: credentials remaining active after their business purpose ends
- OAuth token lifecycle management for AI agents and SaaS integrations
- Non-human identity (NHI) governance at scale — 144:1 NHI-to-human ratio in enterprises
- Supply chain identity risk: compromised GitHub credentials enabling downstream OAuth token theft
- EU AI Act Article 14 compliance: proving AI actions were authorized at execution time
- Continuous AI agent sessions creating persistent access risks unlike human login/logout patterns

## L4 — Obligation & Evidence
- **new_obligations**:
  - Issue purpose-built, separate identities for AI agents distinct from user credentials
  - Implement continuously renewable access that adapts to real-time context rather than long-lived tokens
  - Enable instant cross-system revocation when AI agent tasks complete
  - Validate authorization at execution time, not merely at token issuance
  - Audit all OAuth tokens and machine credentials for staleness; revoke unused credentials
  - Treat credentials as short-lived by default with automatic renewal mechanisms
  - Prepare for EU AI Act Article 14 enforcement (August 2, 2026): demonstrate every AI action was authorized at execution time; penalties up to €35 million or 7% of global revenue
- **evidence_requirements**:
  - Credential inventory showing NHI lifecycle management and revocation records
  - Token issuance and expiry logs demonstrating short-lived credential policies
  - Real-time authorization validation logs at AI agent execution events
  - Cross-system revocation audit trail
  - EU AI Act Article 14 compliance documentation (for EU-applicable organizations)
- **enforcement_signal**: mandatory

## Notes
WebFetch used to supplement description. References the Salesloft Drift breach (August 2025): attackers accessed GitHub credentials between March–June 2025, planted malicious workflows, and stole customer OAuth tokens that remained active months after issuance — affecting 700+ organizations. EU AI Act Article 14 enforcement date: August 2, 2026, creating mandatory regulatory pressure. This is Part 2 of a 7-part CSA series on identity security as AI security.
