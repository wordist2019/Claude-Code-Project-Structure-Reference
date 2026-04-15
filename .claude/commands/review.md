# /review — Code Review Command

Perform a thorough code review on the current diff or specified files.

## Instructions

1. Analyze the diff for the following:
   - Code correctness and logic errors
   - Adherence to project conventions (see CLAUDE.md)
   - Security vulnerabilities or exposed secrets
   - Performance concerns
   - Missing or incomplete tests
   - Documentation gaps

2. Output a structured review with:
   - **Summary**: Overall assessment (Approved / Changes Requested)
   - **Issues**: List of problems found (Critical / Major / Minor)
   - **Suggestions**: Optional improvements
   - **Praise**: What was done well

## Usage

```
/review
/review src/services/api.ts
/review --since HEAD~1
```
