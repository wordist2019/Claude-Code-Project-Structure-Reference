# Architecture Overview

## System Design

This project follows a layered architecture:

```
┌─────────────────────────────────────┐
│            Claude Code              │
│  (AI-assisted development layer)    │
├─────────────────────────────────────┤
│   Skills │ Hooks │ Agents │ MCP     │
│         (extension layer)           │
├─────────────────────────────────────┤
│         Application Layer           │
│    src/components │ src/services    │
├─────────────────────────────────────┤
│           Data Layer                │
│        src/services/database.ts     │
└─────────────────────────────────────┘
```

## Key Design Decisions

- **Separation of Concerns**: AI extensions (skills, agents) are isolated from application code
- **Composable Skills**: Each skill is self-contained with its own SKILL.md, scripts, and references
- **MCP for External Integrations**: All external tool access goes through MCP servers defined in `.mcp.json`
- **Hook-based Automation**: Lifecycle automation (linting, secret scanning, notifications) is handled by hooks

## Directory Roles

| Directory | Role |
|---|---|
| `src/` | Application source code |
| `skills/` | Claude Code AI workflow definitions |
| `agents/` | Autonomous subagent configurations |
| `.claude/` | Claude Code settings and slash commands |
| `docs/` | Project documentation |
| `tests/` | Automated test suites |
