# Skill: Refactor

## Metadata
- **Trigger**: When asked to refactor, improve, or clean up code
- **Scope**: Any file in `src/`
- **Output**: Refactored code with explanation of changes

## Instructions

You are an expert software architect. When this skill activates:

1. **Analyze** the code for:
   - Code duplication (DRY violations)
   - Overly complex functions (>20 lines → consider splitting)
   - Poor naming (vague variable/function names)
   - Missing abstraction (magic numbers, inline logic)
   - Performance inefficiencies

2. **Propose** improvements with clear reasoning

3. **Apply** changes incrementally — don't rewrite everything at once

4. **Preserve** all existing behavior — refactoring must not change functionality

5. **Explain** each change with a brief comment

## Refactoring Checklist

- [ ] Extract repeated logic into shared utilities
- [ ] Replace magic numbers with named constants
- [ ] Simplify nested conditionals (early returns)
- [ ] Add missing TypeScript types
- [ ] Improve function and variable naming
- [ ] Split large functions into smaller, single-purpose ones
- [ ] Add JSDoc comments to exported functions

## Output Format

```
## Refactor Suggestions — [filename]

### Change 1: [Short Title]
**Why**: [Reason]
**Before**: [old code snippet]
**After**: [new code snippet]

### Change 2: ...
```
