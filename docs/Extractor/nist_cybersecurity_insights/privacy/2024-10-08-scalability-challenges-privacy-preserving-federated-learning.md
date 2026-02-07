---
title: "Scalability Challenges in Privacy-Preserving Federated Learning"
source_url: https://www.nist.gov/blogs/cybersecurity-insights/scalability-challenges-privacy-preserving-federated-learning
date: 2024-10-08
category: privacy
issuing_body: NIST Cybersecurity Insights Blog
confidence: medium
fetched_at: 2026-01-27
---

# Scalability Challenges in Privacy-Preserving Federated Learning

## L1 — Core Facts

This blog post is part of a collaborative series between NIST and the UK government's Responsible Technology Adoption Unit (RTA, formerly Centre for Data Ethics and Innovation) on privacy-preserving federated learning (PPFL). The post examines scalability obstacles in PPFL systems.

**Authors:** Joseph Near (University of Vermont), David Darais (Galois, Inc.), Mark Durkee (Centre for Data Ethics and Innovation)

**Interviewees (Prize Competition Winners):**
- Dr. Xiaowei Huang & Dr. Yi Dong (University of Liverpool)
- Dr. Mat Weldon (UK Office of National Statistics)
- Sikha Pentyala (University of Washington Tacoma)

**Three Primary Scalability Challenges:**

1. **Scaling Up: Cryptographic Overhead** — Techniques like fully-homomorphic encryption and secure multiparty computation introduce significant performance overhead. Data distribution patterns (horizontal vs. vertical) require different approaches, with arbitrary partitions incurring substantial computational costs.

2. **Scaling Down: Accuracy Trade-offs** — Differentially private methods like DP-SGD require very large quantities of data to maintain performance. An optimal number of participating clients exists for accuracy, but identifying this optimal point is difficult.

3. **Data Quality & Coordination** — Without centralized data access, PPFL systems cannot perform global quality evaluation. Challenges include distinguishing malicious participants from poor-quality data contributions and aligning data specifications "in an eyes-off setting."

## L2 — Context & Background

Federated learning enables collaborative machine learning training across distributed datasets without centralizing data. Privacy-preserving techniques (cryptographic methods, differential privacy) add protections but introduce computational and coordination challenges.

The blog post synthesizes insights from competition winners who proposed solutions to PPFL scalability problems. The UK-NIST collaboration reflects international recognition of PPFL as a critical technology for privacy-respecting data analysis, particularly for sensitive domains like national statistics.

Horizontal partitioning distributes data by rows (different entities holding records of same type), while vertical partitioning distributes by columns (different entities holding different attributes of same records). Each pattern presents distinct cryptographic challenges.

## L3 — Implications & Analysis

**Cryptographic Overhead Trade-offs:**
The "significant performance overhead" of techniques like fully-homomorphic encryption and secure multiparty computation creates practical barriers to PPFL deployment. Organizations must balance privacy protections against computational costs and latency requirements. The distinction between horizontal and vertical partitioning overhead suggests that data architecture decisions significantly impact PPFL feasibility.

**Differential Privacy Scalability Limitations:**
The requirement that DP-SGD needs "very large quantities of data" to maintain model performance creates a paradox: privacy-preserving techniques may be most needed for small, sensitive datasets, but work best with large datasets. This limitation particularly affects domains with inherently limited data availability (rare diseases, small populations, specialized applications).

**Data Quality Coordination:**
The inability to perform centralized data quality evaluation represents a fundamental challenge for PPFL deployment. Traditional ML pipelines rely heavily on data profiling, cleaning, and validation—all difficult in "eyes-off" settings. The difficulty distinguishing malicious actors from poor-quality contributors suggests that PPFL systems require sophisticated trust and reputation mechanisms.

**Optimal Client Number Problem:**
The existence of an optimal number of participating clients for accuracy, combined with difficulty identifying this optimum, creates deployment uncertainty. Organizations cannot easily determine whether their PPFL system has sufficient (or excessive) participation for effective learning.

**Proposed Solutions:**
- Lightweight cryptography with Bloom filters for vertical scenarios may reduce overhead for common use cases
- Secure input validation and data valuation techniques address quality coordination challenges
- Pre-training on public data improves model accuracy, suggesting hybrid approaches combining public and private data may be more practical than pure PPFL

## L4 — Actionable Intelligence

**For PPFL System Designers:**
- Evaluate cryptographic approach based on data partitioning pattern (horizontal vs. vertical)
- Consider hybrid architectures combining public data pre-training with federated fine-tuning
- Implement lightweight cryptography (e.g., Bloom filters) for vertical partitioning scenarios where applicable
- Design for data quality validation in distributed settings from the outset

**For Organizations Considering PPFL:**
- Assess whether dataset size meets DP-SGD requirements for acceptable accuracy
- Evaluate computational budget against cryptographic overhead requirements
- Develop trust frameworks and reputation mechanisms for participant quality assessment
- Consider whether centralized privacy-preserving alternatives (e.g., synthetic data, secure enclaves) may be more practical for specific use cases

**For Policymakers:**
- Recognize that PPFL technical limitations may affect feasibility of privacy-preserving data sharing mandates
- Support research into lightweight cryptographic methods and hybrid approaches
- Consider computational resource requirements when evaluating PPFL proposals for government applications

**For Researchers:**
- Focus on reducing cryptographic overhead for practical deployment scenarios
- Develop methods for determining optimal client participation levels
- Investigate secure data quality assessment techniques for federated settings
- Explore hybrid public-private training approaches

## Notes

- **Confidence Level Justification:** Medium confidence based on blog post baseline; content synthesizes expert interviews but is not peer-reviewed research
- **International Collaboration:** UK RTA and NIST joint series indicates coordinated approach to privacy-preserving ML challenges
- **Competition Context:** Featured solutions won prizes in competition, suggesting expert review but not formal peer review process
- **Original Content:** Expert interviews and technical analysis of PPFL scalability challenges
- **No Contradictions Detected:** Content aligns with established literature on federated learning and differential privacy trade-offs
- **Source Type:** Blog post synthesizing competition winner insights (not original research publication)
- **Related Resources:** Full series available at NIST's Privacy Engineering Collaboration Space and RTA's blog
