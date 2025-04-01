# Zero Trust Principles for Cloud-Native Apps

Zero Trust is a security framework that assumes breaches can occur at any layer. Rather than trusting anything inside a network perimeter by default, every access request—no matter where it originates—must be authenticated, authorized, and continuously validated. When building or migrating applications to Microsoft Azure, adopting Zero Trust principles helps ensure that all communication, identities, and resources are treated with the least privilege approach.


# Key Zero Trust Pillars
1. Strong Identity & Authentication
			- Enforce multi-factor authentication (MFA) and robust identity federation using Azure Active Directory (Azure AD).
			- Use managed identities for applications and services to avoid sharing credentials.
2. Least Privilege & Micro-Segmentation
			- Implement role-based access control (RBAC), network isolation, and granular permissions for every service, container, or microservice.
			- Use network policies or service meshes in Kubernetes for micro-segmentation.
3. Secure Configuration & Continuous Compliance
			- Mandate use of TLS encryption in transit and encryption at rest (e.g., using Azure Key Vault for key management).
			- Use Azure Policy to enforce mandatory security configurations and continuously assess compliance.
4. Continuous Monitoring & Threat Detection
			- Integrate with Microsoft Defender for Cloud to monitor resources and detect abnormal behaviors.
			- Enable real-time logging and alerting with Azure Monitor, Log Analytics, or Microsoft Sentinel for advanced threat detection.
5. Automated Governance & Deployment
			- Shift-left by integrating security checks (SAST, DAST, container scanning) into your Azure DevOps or GitHub Actions pipelines.
			- Automate environment configurations with Infrastructure as Code (Bicep, ARM, Terraform) and adopt policy as code to ensure consistent Zero Trust posture.

# Core Principles & How to Implement Them in Azure

## 1. Strong Identity & Authentication

TBD

## 2. Least Privilege & Micro-Segmentation

TBD

## 3. Secure Configuration & Continuous Compliance

TBD
## 4. Continuous Monitoring & Threat Detection

TBD

## 5. Automated Governance and Deployment

# Additional Considerations



#References

* [STRIDE (Threat modeling framework)](https://learn.microsoft.com/en-us/training/modules/tm-use-a-framework-to-identify-threats-and-find-ways-to-reduce-or-eliminate-risk/1b-threat-modeling-framework)
