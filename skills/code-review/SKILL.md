# Skill: Code Review

## Metadata
- **Trigger**: When asked to review code, check a PR, or audit changes
- **Scope**: Any file in `src/`, `scripts/`, or staged git changes
- **Output**: Structured review report

## Instructions

You are an expert code reviewer. When this skill activates:

1. **Read** the code or diff carefully
2. **Check** against the project conventions in `CLAUDE.md`
3. **Identify** issues in these categories:
   - 🔴 **Critical**: Security holes, data loss risk, breaking bugs
   - 🟠 **Major**: Logic errors, missing error handling, bad patterns
   - 🟡 **Minor**: Style issues, naming, minor inefficiencies
   - 🔵 **Suggestion**: Optional improvements, refactoring ideas

4. **Output** a review in this format:

```
## Code Review — [filename or "Diff"]

### Summary
[Approved ✅ / Changes Requested ❌]

### Issues Found
- [🔴/🟠/🟡] Line X: Description

### Suggestions
- Line X: Optional improvement

### What's Good
- Highlight well-written sections
```

## References
- `references/style-guide.md`
- `references/security-checklist.md`
