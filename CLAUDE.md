# CLAUDE.md — Project Memory & Context

> This file is the brain of your Claude Code workspace.
> Keep it under 500 lines. Link to docs — don't copy them.

---

## Tech Stack & Architecture

- **Language**: TypeScript / Node.js
- **Framework**: (your framework here — e.g. Next.js, Express, NestJS)
- **Database**: (e.g. PostgreSQL, MongoDB)
- **Testing**: (e.g. Jest, Vitest, Playwright)
- **CI/CD**: (e.g. GitHub Actions)
- **Infra**: (e.g. Docker, AWS, Vercel)

---

## Project Conventions & Style Guide

- Use **camelCase** for variables and functions
- Use **PascalCase** for classes and components
- Use **kebab-case** for file names
- Always write **JSDoc** comments for exported functions
- Prefer **async/await** over `.then()` chains
- Max line length: **100 characters**
- Always handle errors explicitly — no silent failures

---

## Testing Requirements & Patterns

- All new features must have unit tests
- Critical paths must have integration tests
- E2E tests live in `tests/e2e/`
- Use `describe` blocks to group related tests
- Test file naming: `*.test.ts` or `*.spec.ts`
- Aim for >80% code coverage on business logic

---

## Git Workflow & Branch Strategy

- `main` — production-ready code only
- `develop` — integration branch
- Feature branches: `feature/<ticket-id>-short-description`
- Bugfix branches: `fix/<ticket-id>-short-description`
- Commit format: `type(scope): short description`
  - Types: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

---

## Security & Compliance Rules

- **Never** commit secrets, API keys, or tokens
- Use `.env.example` for environment variable templates
- `settings.local.json` is always git-ignored
- Run security audit skill before any release
- All dependencies must be from trusted, maintained packages

---

## Links & References

- Architecture diagram: `docs/architecture.md`
- API reference: `docs/api-reference.md`
- Onboarding guide: `docs/onboarding.md`
