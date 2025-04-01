# Security

Developers working on projects should adhere to industry-recommended standard practices for secure design and implementation of code. For the purposes of our customers, this means our engineers should understand the [OWASP Top 10 Web Application Security Risks](https://owasp.org/www-project-top-ten/), as well as how to mitigate as many of them as possible, using the resources below. OWASP 2021 focuses on key issues such as Insecure Design, Identification & Authentication Failures, and Software and Data Integrity Failures.


**If you are looking for a fast way to get started** evaluating your application or design, check out the "Secure Coding Practices Quick Reference" document below, which contains an itemized checklist of high-level concepts you can validate are being done properly. This checklist covers many common errors associated with the OWASP Top 10 list linked above, and should be the minimum amount of effort being put into security.

## Requesting Security Reviews

When requesting a security review for your application, please make sure you have familiarized yourself with the [Rules of Engagement](rules-of-engagement.md). This will help you to prepare the application for testing, as well as understand the scope limits of the test.

## Quick References

- [Secure Coding Practices Quick Reference](https://owasp.org/www-pdf-archive/OWASP_SCP_Quick_Reference_Guide_v2.pdf)
- [Web Application Security Quick Reference](https://owasp.org/www-pdf-archive//OWASP_Web_Application_Security_Quick_Reference_Guide_0.3.pdf)
- [Security Mindset/Creating a Security Program Quick Start](https://github.com/OWASP/Quick-Start-Guide/blob/master/OWASP%20Quick%20Start%20Guide.pdf?raw=true)
- [Credential Scanning / Secret Detection](../continuous-integration/dev-sec-ops/secret-management/credential_scanning.md)
- [Threat Modelling](./threat-modelling.md)

## Azure DevOps Security

- [Security Engineering DevSecOps Practices](https://www.microsoft.com/en-us/securityengineering/devsecops)
- [Azure DevOps Data Protection Overview](https://learn.microsoft.com/en-us/azure/devops/organizations/security/data-protection?view=azure-devops)
- [Security and Identity in Azure DevOps](https://learn.microsoft.com/en-us/azure/devops/organizations/security/about-security-identity?view=azure-devops)
- [Security Code Analysis](https://secdevtools.azurewebsites.net/)

## DevSecOps
Security should be introduced early in the development lifecycle. The DevSecOps process integrates security practices, automation, and tools directly into CI/CD pipelines. Recommended actions include:
	· Static Application Security Testing (SAST): Detect code-level issues (e.g., buffer overflows, SQL injection).
	· Dynamic Application Security Testing (DAST): Scan running applications to identify vulnerabilities at runtime.
	· Container Image Scanning: Validate base images and dependencies for known CVEs before production release.
	· Dependency Vulnerability Checks: Monitor open-source libraries using tools like Snyk or Dependabot.
Introduce security to your project at early stages. The [DevSecOps section](../continuous-integration/dev-sec-ops/README.md) covers security practices, automation, tools and frameworks as part of the application CI.

## OWASP Cheat Sheets

> Note: OWASP is considered to be the gold-standard in computer security information. OWASP maintains an extensive series of cheat sheets which cover all the OWASP Top 10 and more. Below, many of the more relevant cheat sheets have been summarized. To view all the cheat sheets, check out their [Cheat Sheet Index](https://github.com/OWASP/CheatSheetSeries/blob/master/Index.md).

- [Access Control Basics](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Access_Control_Cheat_Sheet.md)
- [Attack Surface Analysis](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Attack_Surface_Analysis_Cheat_Sheet.md)
- [Content Security Policy (CSP)](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Content_Security_Policy_Cheat_Sheet.md)
- [Cross-Site Request Forgery (CSRF) Prevention](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.md)
- [Cross-Site Scripting (XSS) Prevention](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.md)
- [Cryptographic Storage](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cryptographic_Storage_Cheat_Sheet.md)
- [Deserialization](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Deserialization_Cheat_Sheet.md)
- [Docker/Kubernetes (k8s) Security](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Docker_Security_Cheat_Sheet.md)
- [Input Validation](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Input_Validation_Cheat_Sheet.md)
- [Key Management](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Key_Management_Cheat_Sheet.md)
- [OS Command Injection Defense](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/OS_Command_Injection_Defense_Cheat_Sheet.md)
- [Query Parameterization Examples](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Query_Parameterization_Cheat_Sheet.md)
- [Server-Side Request Forgery Prevention](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.md)
- [SQL Injection Prevention](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.md)
- [Unvalidated Redirects and Forwards](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
- [Web Service Security](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Web_Service_Security_Cheat_Sheet.md)
- [XML Security](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/XML_Security_Cheat_Sheet.md)

## LLM Application Security
Projects leveraging AI-driven services and Large Language Models (LLMs)  require additional security considerations beyond traditional web risks. Although still evolving, [OWASP Top 10 for Large Language Model (LLM) Applications](https://owasp.org/www-project-top-10-for-large-language-model-applications/) highlights unique threats such as:

1. Prompt Injection: Manipulating input prompts to produce unintended or malicious content.
2. Data Poisoning: Influencing model training or fine-tuning with corrupted data.
3. Model Evasion: Crafting inputs that bypass content filters or cause the model to reveal sensitive data.
4. Unintended Data Disclosure: LLM outputs that inadvertently leak proprietary or personal information.

If your project uses LLM APIs (e.g., Azure OpenAI Services) the following practices are recommmended:
	1. Strict Input Validation & Filtering: Sanitize user-generated prompts.
	2. Output Inspection: Filter or moderate outputs to prevent malicious or disallowed content.
	3. Data Governance: Limit storage of sensitive data and adhere to privacy regulations.
	4. Model Audit & Monitoring: Continuously track performance and analyze logs for anomalies or policy violations.

We will continue updating this section with formal guidance as LLM security matures with more detailed best practices and references. For further reading, see [LLM security threats and mitigations](https://owasp.org/www-project-top-10-for-large-language-model-applications/).

## Recommended Tools

Check out the list of tools to help enable security in your projects.

> **Note:** Although some tools are agnostic, the below list is geared towards Cloud Native security, with a focus on Kubernetes.

- Vulnerability Scanning 
  - [SonarCloud](https://sonarcloud.io/)
    - Integrates with Azure Devops with the click of a button.
  - [Snyk](https://github.com/snyk/snyk)
  - [Trivy](https://github.com/aquasecurity/trivy)
  - [Cloudsploit](https://github.com/aquasecurity/cloudsploit)
  - [Anchore](https://github.com/anchore/anchore-engine)
  - [Other tools from OWASP](https://owasp.org/www-community/Vulnerability_Scanning_Tools)
  - [See why you should check for vulnerabilities at all layers of the stack](https://sysdig.com/blog/image-scanning-best-practices/), as well as a couple of other useful tips to reduce surface area for attacks.
  - Azure DevOps Extensions: Microsoft Security Code Analysis: A suite of tasks (CredScan, Roslyn Analyzers, etc.) that integrate into Azure DevOps pipelines for .NET applications.
  - Language-Specific Linters/Analyzers
    - [ESLint (JavaScript)](https://eslint.org/), [Bandit (Python)](https://bandit.readthedocs.io/en/latest/), etc.: Enable them within build pipelines.
    - Run these tools automatically via pipeline tasks or scripts in YAML.
  - [Microsoft Defender for Cloud](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-containers-introduction): Can scan images in Azure Container Registry (ACR) automatically. Its recommended linking ACR to Defender for Cloud for continuous scanning.
  - Dependency Vulnerability Checks
    - [Snyk](https://docs.snyk.io/scan-with-snyk/snyk-open-source/scan-open-source-libraries-and-licenses) for scanning open-source libraries used in your application.
    - Built-in features in [GitHub Dependabot](https://docs.github.com/en/code-security/getting-started/dependabot-quickstart-guide) (if you mirror repos on GitHub) or 3rd-party tools that plug into Azure DevOps.


- DAST (Dynamic Application Security Testing)
  
  1. OWASP ZAP
     - Provide a sample Azure DevOps pipeline config for spinning up a test environment and running ZAP scans automatically.
     - Emphasize ephemeral test deployments (e.g., spin up container environments in AKS for scanning, then tear them down)
  2. Integration tips
     - Outline how to parse DAST reports and mark pipeline runs as “failed” if critical findings are discovered.

- Runtime Security

  - [Falco](https://github.com/falcosecurity/falco)
  - [Tracee](https://github.com/aquasecurity/tracee)
  - [Kubelinter](https://github.com/stackrox/kube-linter)
    - May not fully qualify as runtime security, but helps ensure you're enabling best practices.
  - Azure Monitor / Microsoft Defender for Cloud: Use built-in anomaly detection for AKS clusters, VMs, and PaaS services. 

- Binary Authorization

  Binary authorization can happen both at the docker registry layer, and runtime (ie: via a K8s admission controller).
  The authorization check ensures that the image is signed by a trusted authority. This can occur for both (pre-approved) 3rd party images,
  and internal images. Taking this a step further the signing should occur _only_ on images where all code has been reviewed and approved.
  Binary authorization can both reduce the impact of damage from a compromised hosting environment, and the damage from malicious insiders.

  - [Harbor](https://github.com/goharbor/harbor/)
    - [Operator available](https://github.com/goharbor/harbor-operator)
  - [Portieris](https://github.com/IBM/portieris)
  - [Notary](https://github.com/theupdateframework/notary)
    - Note harbor leverages notary internally.
  - [TUF](https://github.com/theupdateframework/tuf)
  - [Cosign(from the Sigstore project)](https://github.com/sigstore/cosign)
  - Azure CLI or ACR Tasks can also sign and verify images as part of the build or release process
  - Admission Controls
    - For AKS, integrate Gatekeeper or other admission control solutions to enforce “only signed images can be deployed.
    - See here for references to an example Azure Policy or Gatekeeper constraint template (Coming soon)

- Other K8s Security

  - [OPA](https://github.com/open-policy-agent/opa), [Gatekeeper](https://github.com/open-policy-agent/gatekeeper), and the [Gatekeeper Library](https://github.com/open-policy-agent/gatekeeper-library/tree/master/library)
  - [cert-manager](https://github.com/jetstack/cert-manager) for easy certificate provisioning and automatic rotation.
  - [Service mesh (e.g. Linkerd): enable mTLS between and secure communication between microservices](https://linkerd.io/2/features/automatic-mtls/).

- Secret Management and Governance
  - [Credential Scanning:](https://www.gitguardian.com/) Identify hard-coded secrets in source repos using GitGuardian or Azure DevOps extensions
  - [Azure Key Vault:](https://azure.microsoft.com/en-us/products/key-vault) Centrally store and manage keys, secrets, and certificates with strict access policies

## Useful links

- [Non-Functional Requirements Guidance](../design/design-patterns/non-functional-requirements-capture-guide.md)
