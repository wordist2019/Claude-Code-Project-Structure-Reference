# /test-all — Run Full Test Suite

Execute all unit, integration, and e2e tests.

## Instructions

1. Run in sequence:
   - Unit tests: `npm run test:unit`
   - Integration tests: `npm run test:integration`
   - E2E tests: `npm run test:e2e`

2. Generate a coverage report after unit + integration tests

3. Report:
   - ✅ Pass / ❌ Fail per suite
   - Total coverage percentage
   - Any failing test names with error messages

## Usage

```
/test-all
/test-all --coverage
/test-all --watch
```
