# Zero Trust Principles for Cloud-Native Apps

Zero Trust is a security framework that assumes breaches can occur at any layer. Rather than trusting anything inside a network perimeter by default, every access request—no matter where it originates—must be authenticated, authorized, and continuously validated. When building or migrating applications to Microsoft Azure, adopting Zero Trust principles helps ensure that all communication, identities, and resources are treated with the least privilege approach.


# Key Zero Trust Pillars
1. Strong Identity & Authentication
- Enforce multi-factor authentication (MFA) and robust identity federation using Entra ID.
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

1. Entra ID Integration
-  All services (API, web apps, microservices) should use Entra ID for authentication.
- For CLI-based operations, enforce MFA and conditional access policies.
2.Managed Identities
- Use System Assigned or User Assigned Managed Identities for Azure services (e.g., Azure Functions, Azure Web Apps, AKS pods).
- This removes the need to store credentials in code or configuration.

Example: In this [Bicep snippet](./ZT/authsample.bicep), we deploy an Azure Web App with SystemAssigned managed identity and enforce HTTPs only. 


## 2. Least Privilege & Micro-Segmentation

1. Azure RBAC
- Assign the minimal set of permissions at the resource group or resource level to service principals, identities, and users.
- Regularly audit role assignments to remove excess privileges.
2. Kubernetes Network Policies
- In Azure Kubernetes Service (AKS), define NetworkPolicy objects to limit pod-to-pod traffic.
- Consider service mesh solutions like Linkerd or Istio for fine-grained traffic management and mTLS.

Example: This [policy](./ZT/leastprivilege.yaml) ensures nginx pods in the production namespace only accept traffic from pods in a backend namespace, and only send outgoing traffic to a logging namespace.

## 3. Secure Configuration & Continuous Compliance

1. Enforce TLS in Transit
- Enable HTTPS-only endpoints in Azure Web Apps or secure your AKS ingress with TLS certificates (e.g., cert-manager or Azure Front Door).
- For internal microservices, use a service mesh to enforce mTLS.
2. Azure Policy
- Use Azure Policy to require encryption at rest, specific SKU types, or to block public IP assignments.
- Integrate Azure Policy with DevOps for gating deployments that violate policy.

Example: This [Azure Policy](./ZT/SecureConfig.json) audits any App Service (Web App) configuration that does not enable HTTPS-only.

## 4. Continuous Monitoring & Threat Detection

1. Microsoft Defender for Cloud
- Continuously scan Azure services (VMs, containers, databases, etc.) for vulnerabilities and compliance.
- Enable advanced threat detection modules for Azure resources (e.g., SQL, Key Vault, Storage).
2. Logging & Observability
- Use Azure Monitor and Log Analytics to capture logs from AKS, App Services, VMs.
- Configure alerts for suspicious patterns, resource anomalies, or repeated authentication failures.

## 5. Automated Governance and Deployment

1. Shift-Left Approach
- Implement SAST, DAST, container image scanning in the Azure DevOps pipeline.
- Use Git branching policies and environment gates to ensure critical vulnerabilities are not released.
2. Policy as Code
- Store Azure Policy definitions in source control.
- Auto-deploy them via pipelines to keep environment configurations consistent and validated.

Example: This [pipeline](./ZT/AutomatedGovernance.yaml) does the following:
1.	Triggers on the main branch.
2.	Prepares SonarCloud for SAST.
3.	Builds the .NET solution.
4.	Runs SAST analysis.
5.	Queries assigned Azure Policies (as a simplistic example of policy checks).
6.	Publishes the SAST results back to SonarCloud.



# Additional Considerations for Zero Trust in Azure

1. Just-in-Time (JIT) Access
- Use Microsoft Defender for Cloud JIT to dynamically allow inbound traffic to VMs or ephemeral debug ports.
- Minimizes the permanent attack surface.
2. Conditional Access
- Combine Azure AD Conditional Access with device compliance checks, risk-based sign-in detection, and location-based policies.
3. Data Protection
- Leverage Azure Key Vault for storing secrets and keys.
- Use client-side encryption or Always Encrypted for sensitive data in SQL databases.
4. DevSecOps
- Maintain a single source of truth in version control for IaC (Bicep, Terraform, ARM) and Policy as Code.
-Automate testing, scanning, and environment creation within Azure DevOps.


# References

* [Microsoft Zero Trust Adoption Framework](https://www.microsoft.com/en-us/security/business/zero-trust)
* [Azure Kuberenetes Services(AKS) Best Practices](https://learn.microsoft.com/en-us/azure/aks/best-practices)
* [Microsoft Defender for Cloud - JIT Access](https://learn.microsoft.com/en-us/azure/defender-for-cloud/just-in-time-access-overview?tabs=defender-for-container-arch-aks)

