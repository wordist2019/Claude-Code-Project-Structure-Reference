# Skill: Security Audit

## Metadata
- **Trigger**: When asked to audit security, check for vulnerabilities, or scan code
- **Scope**: All project files
- **Output**: Security audit report

## Instructions

You are a security expert. When this skill activates, scan for:

### 1. Secret Exposure
- Hardcoded API keys, tokens, passwords
- Credentials in comments or logs
- `.env` files accidentally committed

### 2. Injection Vulnerabilities
- SQL injection (unsanitized queries)
- XSS (unescaped user input in HTML)
- Command injection (shell exec with user data)

### 3. Authentication & Authorization
- Missing auth checks on sensitive routes
- Insecure JWT handling
- Overly permissive CORS settings

### 4. Dependency Vulnerabilities
- Run `npm audit` and report findings
- Flag packages with known CVEs

### 5. Data Handling
- Sensitive data logged to console
- PII stored without encryption
- Insecure data transmission (HTTP vs HTTPS)

## Output Format

```
## Security Audit Report — [Date]

### 🔴 Critical Issues (fix immediately)
- [Issue]: [File:Line] — [Description]

### 🟠 High Issues (fix before release)
- [Issue]: [File:Line] — [Description]

### 🟡 Medium Issues (fix soon)
- [Issue]: [File:Line] — [Description]

### ✅ Passed Checks
- [What was checked and found clean]
```
