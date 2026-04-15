# 🤖 Claude Code — Project Structure Reference

> A professional, production-ready project scaffold for building AI-assisted development workflows with **Claude Code**.  
> Includes Skills, Hooks, MCP integrations, Subagents, Plugins, and best practices — all in one place.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Quick Start](#quick-start)
- [Key Components](#key-components)
- [Skills](#skills)
- [Hook Events](#hook-events)
- [MCP Servers](#mcp-servers)
- [Agent Team Patterns](#agent-team-patterns)
- [Slash Commands](#slash-commands)
- [Context Management](#context-management)
- [Security Best Practices](#security-best-practices)
- [Anti-Patterns to Avoid](#anti-patterns-to-avoid)
- [Debugging & Logging](#debugging--logging)
- [Pro Tips](#pro-tips)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This repository serves as a **complete reference scaffold** for Claude Code projects. It demonstrates:

- ✅ How to structure a Claude Code workspace
- ✅ How to write effective `CLAUDE.md` files
- ✅ How to create and use Skills, Hooks, and Subagents
- ✅ How to configure MCP servers
- ✅ Agent team coordination patterns
- ✅ Security, context management, and debugging best practices

---

## Project Structure

```
Claude-Code-Project-Structure-Reference/
├── CLAUDE.md                          # ← Project memory & context (keep under 500 lines)
├── .claude/
│   ├── settings.json                  # Claude Code settings
│   ├── settings.local.json            # Local overrides (git-ignored)
│   └── commands/                      # Custom slash commands
│       ├── review.md                  # /review — Run code review on diff
│       ├── deploy.md                  # /deploy — Build & push to staging
│       ├── test-all.md                # /test-all — Execute full test suite
│       └── bootstrap.md               # /bootstrap — Scaffold new module
├── skills/                            # Auto-activated AI workflows
│   ├── code-review/
│   │   ├── SKILL.md                   # Instructions & metadata
│   │   ├── scripts/                   # Executable automation
│   │   ├── references/                # Docs loaded on demand
│   │   └── assets/                    # Templates & static files
│   ├── test-writer/
│   │   └── SKILL.md
│   ├── security-audit/
│   │   └── SKILL.md
│   └── refactor/
│       └── SKILL.md
├── agents/                            # Subagent definitions (yml)
│   ├── code-reviewer.yml
│   ├── test-writer.yml
│   ├── security-auditor.yml
│   └── devops.yml
├── plugins/                           # Bundled distributable setups
│   ├── manifest.json
│   └── my-plugin/
├── .mcp.json                          # MCP server definitions
├── src/
│   ├── components/
│   │   ├── auth/
│   │   ├── dashboard/
│   │   └── shared/
│   ├── services/
│   │   ├── api.ts
│   │   ├── auth.ts
│   │   └── database.ts
│   ├── utils/
│   │   ├── logger.ts
│   │   ├── validators.ts
│   │   └── helpers.ts
│   ├── types/
│   │   └── index.ts
│   └── index.ts
├── tests/
│   ├── unit/
│   ├── integration/
│   └── e2e/
├── docs/
│   ├── architecture.md
│   ├── api-reference.md
│   └── onboarding.md
├── scripts/
│   ├── deploy.sh
│   └── seed.db.sh
├── package.json
├── tsconfig.json
├── .env.example
├── .gitignore
└── Dockerfile
```

---

## Quick Start

```bash
# 1. Install Claude Code globally
npm i -g @anthropic-ai/claude-code

# 2. Clone this reference repo
git clone https://github.com/YOUR_USERNAME/Claude-Code-Project-Structure-Reference.git
cd Claude-Code-Project-Structure-Reference

# 3. Launch Claude in your project
claude

# 4. Add your own slash commands in .claude/commands/
# 5. Configure MCP servers in .mcp.json
# 6. Expand skills/ as your workflows grow
```

---

## Key Components

| File / Folder | Purpose |
|---|---|
| `CLAUDE.md` | Project memory & context — the brain of your Claude workspace |
| `.claude/` | Config & extensions hub |
| `commands/` | Slash commands (one `.md` file per command) |
| `skills/` | Auto-activated AI workflows triggered by task type |
| `.mcp.json` | MCP server definitions (GitHub, Slack, Postgres, etc.) |
| `agents/` | Subagent definitions in `.yml` format |
| `plugins/` | Bundled, distributable workspace setups |

---

## Skills

Skills are **auto-activated AI workflows** that trigger based on the task at hand.

### Skill Structure

```
skills/
└── my-skill/
    ├── SKILL.md        ← Instructions & metadata (required)
    ├── scripts/        ← Executable automation scripts
    ├── references/     ← Docs loaded on demand
    └── assets/         ← Templates & static files
```

### Included Skills

| Skill | Purpose |
|---|---|
| `code-review` | Automated PR review with style enforcement |
| `test-writer` | Generates unit, integration, and e2e tests |
| `security-audit` | Scans for vulnerabilities and secret exposure |
| `refactor` | Suggests and applies code improvements |

---

## Hook Events

Hooks are lifecycle scripts that fire at specific Claude Code events.

| Hook | Trigger |
|---|---|
| `PreToolUse` | Block execution before a tool runs |
| `PostToolUse` | Auto-lint or format after file writes |
| `SessionStart` | Load context or state when Claude launches |
| `SessionEnd` | Save session summaries or logs |
| `PreCommit` | Secret detection gate before git commits |
| `Notification` | Send alerts to Slack or webhooks |

---

## MCP Servers

Configure external tool connections in `.mcp.json`:

| Server | Use Case |
|---|---|
| **GitHub** | PRs, issues, repository management |
| **JIRA / Linear** | Ticket and project workflows |
| **Slack** | Notifications and team search |
| **Postgres / DB** | Direct database queries |
| **Playwright** | Browser automation and testing |

---

## Agent Team Patterns

Use these patterns for multi-agent coordination:

| Pattern | Description |
|---|---|
| **Orchestrator** | Central task dispatcher — coordinates all agents |
| **Pipeline** | Sequential handoff chain — output of one becomes input of next |
| **Map-Reduce** | Run agents in parallel, then merge results |
| **Supervisor** | Monitor agents and retry on failure |
| **Swarm** | Dynamic peer delegation — agents self-organize |

---

## Slash Commands

| Command | Action |
|---|---|
| `/review` | Run code review on current diff |
| `/deploy` | Build & push to staging |
| `/test-all` | Execute the full test suite |
| `/bootstrap` | Scaffold a new module |
| `/document` | Auto-generate documentation |
| `/refactor` | Suggest code improvements |

---

## Context Management

Monitor and manage Claude's context window to maintain performance:

| Context Level | Recommended Action |
|---|---|
| 0 – 50% | Work freely |
| 50 – 70% | Monitor token usage |
| 70 – 80% | Run `/compact` |
| 80 – 90% | Run `/compact` immediately |
| 90%+ | `/clear` is mandatory |

---

## Security Best Practices

- 🔒 **Secrets** — Never store API keys or tokens in `CLAUDE.md`
- 📄 **`.env.example`** — Use for environment variable templates
- 🙈 **`settings.local.json`** — Always add to `.gitignore`
- 🛡️ **PreCommit Hook** — Enable secret scanning before every commit
- 🔑 **MCP Scope** — Grant minimum permissions only

---

## Anti-Patterns to Avoid

| Anti-Pattern | Why It's Harmful |
|---|---|
| `CLAUDE.md` over 500 lines | Causes context bloat and degraded performance |
| Vague instructions ("write good code") | Claude needs specific, actionable guidance |
| Replicating docs inside `CLAUDE.md` | Link to docs instead — don't copy them |
| No test guidance | Leads to skipped or low-quality tests |
| No error handling patterns | Results in poor failure recovery |

---

## Debugging & Logging

| Flag / Hook | Purpose |
|---|---|
| `--verbose` | Enable detailed track logs |
| `/cost` | Monitor real-time token usage and speed |
| `--resume` | Resume a failed or interrupted session |
| `Notification hook` | Alert on errors via Slack or webhook |

---

## Pro Tips

- 🧵 **Subagents** — Use them for parallel research tasks
- 📝 **CLAUDE.md** — Keep it under 500 lines at all times
- 🙈 **`settings.local.json`** — Git-ignore it (contains local overrides)
- 📚 **Skills + Prompts** — Use skills for heavy, repeated instructions
- 🔁 **Hooks + Deterministic** — Combine hooks (deterministic) with AI skills
- 🚀 **/init** — Run `/init` in a new project to auto-generate `CLAUDE.md`

---

## Contributing

Contributions are welcome! If you have improvements to the structure, new skill templates, or additional patterns:

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/my-improvement`
3. Commit your changes: `git commit -m 'Add: my improvement'`
4. Push to the branch: `git push origin feature/my-improvement`
5. Open a Pull Request

---

## License

MIT License — free to use, modify, and distribute.

---

> Built with ❤️ for the Claude Code community.  
> If this helped you, give it a ⭐ and share it with others!
