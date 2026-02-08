---
source_url: https://www.nist.gov/blogs/cybersecurity-insights/digital-identities-getting-know-verifiable-digital-credential-ecosystem
fetched_at: 2026-02-08
original_content: |
  If you are interested in the world of digital identities, you have probably heard some of the buzzwords that have been floating around for a few years now… "verifiable credential," "digital wallet," "mobile driver's license" or "mDL." These terms, among others, all reference a growing ecosystem around what we are calling "verifiable digital credentials." But what exactly is a verifiable digital credential? Take any physical credential you use in everyday life – your driver's license, your medical insurance card, a certification or diploma – and turn it into a digital format stored on your
---

# Verifiable Digital Credentials: Technical Architecture and Ecosystem Components

## 核心定義

**Verifiable Digital Credentials (VDCs)** are "cryptographically verifiable, digital representations of credentials" that individuals store in mobile wallet applications. They function as digital equivalents to physical documents (driver's licenses, diplomas, insurance cards) converted into secure, smartphone-based formats.

**Cryptographic Foundation**
- Leverage public key cryptography for authenticity verification
- Enable recipients to mathematically verify credential authenticity and issuer legitimacy
- Eliminate requirement for real-time verification connections with issuers

## 生態系統架構

### Functional Components

**1. Digital Wallet**
- Native mobile application (iOS, Android) for secure credential storage and management
- Requires local user authentication before credential presentation
- Maintains user control over personal data sharing decisions

**2. Issuer**
- Authoritative entity provisioning credentials after identity proofing
- Cryptographically signs VDCs using private keys
- Enables later verification without issuer involvement

**3. Verifier**
- Performs two-step validation:
  - Cryptographically confirms credential integrity
  - Assesses whether presented claims meet relying party requirements
- Can operate offline using publicly available issuer keys

**4. Trust Service**
- Centralized hub connecting verifiers with multiple issuers' public keys
- Reduces integration complexity through "hub and spoke" architecture
- Alternative to point-to-point connections between each verifier and issuer

**5. Relying Party**
- Organizations (banks, government agencies, healthcare providers) consuming verified identity information
- Make access control or transaction decisions based on verified credentials

**6. Identity Management System (IDMS)**
- Backend infrastructure handling account creation, authenticator issuance, access management
- Integrates verifier functions into organizational systems

## Mobile Driver's License (mDL) Use Case

**Practical Implementation Workflow**

1. User requests mDL through wallet application
2. DMV performs identity verification and issues credential
3. User presents mDL to relying party via QR code
4. Relying party cryptographically verifies credential using publicly available DMV keys
5. Identity information flows directly to relying party without DMV notification

**Privacy Preservation**
- Issuers cannot track credential usage patterns
- Direct presentation prevents surveillance of transaction events

## 技術標準

**Foundational Guidance**
- NIST Special Publication 800-63 (*Digital Identity Guidelines*)
- Future posts promised on evolving protocols, data formats, and design patterns
- Ongoing standards development across international standards bodies

## Security and Privacy Features

**Security Mechanisms**
- Cryptographic verification eliminating reliance on issuer confirmation
- Biometric authentication before credential presentation
- Offline verification capability
- User control over information disclosure

**Privacy Protections**
- Issuers cannot track usage patterns
- Users select which attributes to present (selective disclosure)
- Selective disclosure of credential claims
- Direct peer-to-peer presentation without intermediary notification

## Implementation Challenges

**Complexity Factors**
- Navigating evolving terminology and buzzwords
- Multiple technology standards in development
- Various data format specifications
- Interoperability protocols across government and industry stakeholders
- Rapidly evolving landscape requiring coordination

---

**分類維度**

- **category**: identity
- **shift_type**: clarified
- **enforcement_signal**: informational
- **confidence**: 中

**詮釋說明**

This blog post **clarifies** the emerging VDC ecosystem architecture and terminology rather than establishing new requirements. The enforcement signal is **informational** (educational content explaining concepts and components), consistent with NIST's role in fostering understanding of digital identity technologies. While SP 800-63 is referenced as foundational guidance, this specific post focuses on ecosystem education rather than normative requirements. The confidence level is **中** (medium) as this is explanatory blog content describing an evolving technological landscape, not a finalized standard or policy directive.
