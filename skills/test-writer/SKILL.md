# Skill: Test Writer

## Metadata
- **Trigger**: When asked to write tests, generate test coverage, or add specs
- **Scope**: Any file in `src/`
- **Output**: Ready-to-run test files in `tests/`

## Instructions

You are an expert test engineer. When this skill activates:

1. **Analyze** the source file to understand:
   - All exported functions and their signatures
   - Edge cases and error conditions
   - Dependencies that need mocking

2. **Generate** tests covering:
   - ✅ Happy path (expected inputs → expected outputs)
   - ❌ Error cases (invalid inputs, failures)
   - 🔲 Edge cases (empty, null, boundary values)

3. **Follow** the project test patterns:
   - Use `describe` blocks to group related tests
   - Use clear `it('should ...')` descriptions
   - Mock external dependencies
   - Assert specific values, not just truthiness

4. **Place** test files at:
   - `tests/unit/` for unit tests
   - `tests/integration/` for integration tests

## Template

```typescript
import { describe, it, expect, vi } from 'vitest'
import { myFunction } from '../../src/module'

describe('myFunction', () => {
  it('should return expected output for valid input', () => {
    expect(myFunction('input')).toBe('output')
  })

  it('should throw an error for invalid input', () => {
    expect(() => myFunction(null)).toThrow('Expected error message')
  })
})
```
