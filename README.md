# DevSecOps - Continuous Integration 🛡️
This project is a Continuous Integration pipeline implemented using GitHub Actions, embodying the "shift-left" security approach.  
By integrating security checks directly into the CI process, it aims to identify and mitigate potential vulnerabilities early in the software development process, preventing costly and time-consuming fixes later on 💰⌚.  
It integrates several security scanning tools to achieve this goal.  
The pipeline's end result is a secure, deployable artifact ready for deployment🛡️
## Key Features

* **Secret Scanning with TruffleHog (Proactive Secret Exposure Prevention):**
    * TruffleHog is integrated to meticulously scan the entire codebase's commit history for accidentally committed secrets, such as API keys, passwords, private keys, and other sensitive information.
    * Significantly reduces the risk of data breaches and unauthorized access by identifying and flagging exposed secrets before they can be exploited.
    * Detailed reports pinpoint the exact locations of detected secrets, facilitating immediate remediation.

* **Dependency Vulnerability Analysis with OWASP Dependency-Check (Secure Dependency Management):**
    * OWASP Dependency-Check is employed to comprehensively analyze all project dependencies, including libraries and frameworks, for known security vulnerabilities listed in the Common Vulnerabilities and Exposures (CVE) database.
    * This ensures that the application relies on secure and up-to-date libraries, mitigating the risk of exploiting known vulnerabilities.
    * The tool generates detailed reports that highlight identified vulnerabilities, their severity, and recommended remediation steps.

* **Static Code Analysis with SonarQube (Code Quality and Security Assurance):**
    * SonarQube performs in-depth static code analysis, examining the codebase for bugs, code smells, and security vulnerabilities without executing the code.
    * This analysis helps identify potential security flaws, coding errors, and maintainability issues early in the development lifecycle, leading to higher code quality and reduced security risks.
    * SonarQube provides detailed reports with actionable insights and recommendations for improving code quality and security.

* **Container Image Scanning with Trivy (Container Security Hardening):**
    * Trivy's comprehensive scanning capabilities detect vulnerabilities in both operating system packages and application-level dependencies, providing a holistic view of container security.
    * This critical step ensures that containerized applications are free from known vulnerabilities, securing the deployment environment.

* **Slack Integration (Pipeline Monitoring):**
    * Integrating with Slack to provide real-time, actionable alerts and notifications.
    * Pipeline success notification include the total workflow duration, providing insights into pipeline performance.
## Diagram
![diagram](https://github.com/user-attachments/assets/7be761c4-b38e-4912-8fae-7568d47baaf1)

### Slack
Example of failing to pass one of the security gates of the pipeline due to a bad commit
![failure](https://github.com/user-attachments/assets/cbd0993e-77c8-42a7-89e3-0270bbaba968)
![scanresult](https://github.com/user-attachments/assets/ecf4d2b2-c71f-45cf-a49a-489483c95166)

When the code passes all the gates  
![pipelinesuccess](https://github.com/user-attachments/assets/53e64a0b-8a10-4c74-9a8d-0c36af0c2c89)
