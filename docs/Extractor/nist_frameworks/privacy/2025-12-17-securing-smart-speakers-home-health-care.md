---
title: "Securing Smart Speakers for Home Health Care: NIST Offers New Guidelines"
source_url: https://www.nist.gov/news-events/news/2025/12/securing-smart-speakers-home-health-care-nist-offers-new-guidelines
date: 2025-12-17
category: privacy
confidence: 高
---

## L1 — Rule Signal
- **rule_type**: guidance
- **issuing_body**: NIST
- **document_id**: SP 1800-30
- **status**: final

## L2 — Responsibility Structure
- **affected_roles**: Technical specialists, information security professionals, hospital-at-home (HaH) program administrators, patients, caregivers, healthcare IoT integrators
- **shift_type**: new
- **shift_summary**: 為智慧音箱整合至遠距醫療環境建立網路安全與隱私保護指引,要求透過加密、網路分段及存取控制保護病患醫療資訊,並需遵循 CSF 2.0、PF 1.0 及 IoT Core Baseline

## L3 — Risk Domains
- Data interception and exfiltration of personal/medical information
- Data manipulation compromising patient integrity
- Denial-of-service disruptions in healthcare delivery
- Voice command alteration and incorrect processing
- Unauthorized access through weak device/network controls
- Patient confidentiality threats
- Consumer IoT integration into medical-grade systems

## L4 — Obligation & Evidence
- **new_obligations**: Enable encryption of messages and limit access to authorized individuals; implement network segmentation dividing networks into subsections using firewalls; apply NIST Cybersecurity Framework (CSF 2.0); apply Privacy Framework (PF 1.0); follow IoT Core Baseline (NISTIR 8425); secure smart speaker integration in hospital-at-home programs
- **evidence_requirements**: Encryption implementation documentation; network segmentation architecture; access control logs; CSF 2.0 compliance mapping; PF 1.0 compliance mapping; IoT baseline adherence evidence; patient data protection audits
- **enforcement_signal**: recommended

## Notes
Guidance published by NCCoE (National Cybersecurity Center of Excellence). Addresses five primary threat categories specific to telehealth smart home integration. Builds on NIST Special Publication 1800-30 titled "Mitigating Cybersecurity and Privacy Risks in Telehealth Smart Home Integration."
