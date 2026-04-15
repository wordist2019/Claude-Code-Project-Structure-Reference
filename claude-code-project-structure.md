# Claude Code Project Structure — Complete Reference

> A comprehensive cheat sheet covering all aspects of a production-grade Claude Code workspace.

---

## Project File Tree

```
my_project/
├── CLAUDE.md                          # Project memory & context
├── .claude/
│   ├── settings.json                  # Claude Code settings
│   ├── settings.local.json            # Local overrides (git-ignored)
│   └── commands/                      # Custom slash commands (md files)
│       ├── review.md
│       ├── deploy.md
│       ├── test-all.md
│       └── bootstrap.md
├── skills/                            # Auto-activated AI workflows
│   ├── code-review/
│   │   ├── SKILL.md
│   │   ├── scripts/
│   │   ├── references/
│   │   └── assets/
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
├── Dockerfile
└── README.md
```

---

## Section 1: Project Overview

Complete Claude Code workspace with Skills, Hooks, MCP Subagents & Plugins configured for production AI-assisted development.

---

## Section 2: Key Components

| File / Folder | Purpose |
|---|---|
| `CLAUDE.md` | Project memory & context |
| `.claude/` | Config & extensions hub |
| `commands/` | Slash commands (md files) |
| `skills/` | Auto-activated workflows |
| `.mcp.json` | MCP server definitions |
| `agents/` | Subagent definitions (yml) |
| `plugins/` | Bundled distributions |

---

## Section 3: CLAUDE.md Essentials

1. Tech stack & architecture overview
2. Project conventions & style guide
3. Testing requirements & patterns
4. Git workflow & branch strategy
5. Security & compliance rules

---

## Section 4: Extension Types

- **Skills** — Auto-activate on task match
- **Hooks** — Lifecycle event scripts
- **MCP** — External tool connections
- **Subagents** — Isolated parallel work
- **Agent Teams** — Multi-agent coordination
- **Plugins** — Bundled distributable setups

---

## Section 5: Hook Events

| Hook | Description |
|---|---|
| `PreToolUse` | Block before execution |
| `PostToolUse` | Auto-lint after writes |
| `SessionStart` | Load context on launch |
| `SessionEnd` | Save session summaries |
| `PreCommit` | Secret detection gate |
| `Notification` | Slack/webhook alerts |

---

## Section 6: Skill Structure

```
skills/
└── my-skill/
    ├── SKILL.md       ← Instructions & metadata
    ├── scripts/       ← Executable automation
    ├── references/    ← Docs loaded on demand
    └── assets/        ← Templates & static files
```

---

## Section 7: Popular MCP Servers

| Server | Use Case |
|---|---|
| **GitHub** | PRs, issues, repos |
| **JIRA / Linear** | Ticket workflows |
| **Slack** | Notifications & search |
| **Postgres / DB** | Direct queries |
| **Playwright** | Browser automation |

---

## Section 8: Common Slash Commands

| Command | Action |
|---|---|
| `/review` | Run code review on diff |
| `/deploy` | Build & push to staging |
| `/test-all` | Execute full test suite |
| `/bootstrap` | Scaffold new module |
| `/document` | Auto-generate docs |
| `/refactor` | Suggest improvements |

---

## Section 9: Agent Team Patterns

| Pattern | Description |
|---|---|
| **Orchestrator** | Central task dispatcher |
| **Pipeline** | Sequential handoff chain |
| **Map-Reduce** | Parallel then merge |
| **Supervisor** | Monitor & retry failed |
| **Swarm** | Dynamic peer delegation |

---

## Section 10: Getting Started

```bash
# Step 1: Install Claude Code
npm i -g @anthropic-ai/claude-code

# Step 2: Navigate to your project
cd your-project && claude

# Step 3: Create CLAUDE.md with your conventions
# Step 4: Add slash commands in .claude/commands/
# Step 5: Configure MCP in .mcp.json
# Step 6: Add skills as workflows grow
```

---

## Section 11: Context Management

| Context Level | Recommended Action |
|---|---|
| 0 – 50% | Work freely |
| 50 – 70% | Monitor token usage |
| 70 – 80% | Run `/compact` |
| 80 – 90% | Run `/compact` immediately |
| 90%+ | `/clear` is mandatory |

---

## Section 12: Security Best Practices

- 🔒 **Secrets** — Never store in `CLAUDE.md`
- 📄 **`.env.example`** — Use for env templates
- 🙈 **`settings.local.json`** — Add to `.gitignore`
- 🛡️ **PreCommit Hook** — Enable secret scanning
- 🔑 **MCP Scope** — Minimum permissions only

---

## Section 13: CLAUDE.md Anti-Patterns

| Anti-Pattern | Why It's Harmful |
|---|---|
| 500+ lines | Causes context bloat |
| Vague instructions | e.g. "Write good code" |
| Replicating docs | Link, don't copy |
| No test guidance | Leads to skipped tests |
| No error patterns | Poor failure handling |

---

## Section 14: Debugging & Logging

| Flag / Hook | Purpose |
|---|---|
| `--verbose` | Enable track logs |
| `/cost` | Monitor token speed |
| `--resume` | Resume failed sessions |
| `Notification hook` | Alert on failures |

---

## Section 15: Pro Tips

- 🧵 **Subagents** — Use for parallel research
- 📝 **CLAUDE.md** — Keep under 500 lines
- 🙈 **`settings.local.json`** — Git-ignore it
- 📚 **Skills + Prompts** — For heavy instructions
- 🔁 **Hooks + Deterministic** — Skills + AI
- 🚀 **/init** — Auto-generate `CLAUDE.md`

---

## Color Legend (from original cheat sheet)

| Color | Meaning |
|---|---|
| 🔵 Blue | Key config files (`CLAUDE.md`, `SKILL.md`) |
| 🟢 Green | Source & doc files (`.ts`, `.json`, `.js`) |
| 🟠 Orange | Directories / folders (`.yml`, `.md`) |
| ⚪ Gray | Config & data files (`.env`, `.json`) |
