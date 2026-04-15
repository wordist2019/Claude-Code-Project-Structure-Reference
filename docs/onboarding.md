# Onboarding Guide

Welcome to the Claude Code Project Structure Reference! This guide gets you up and running in minutes.

## Prerequisites

- Node.js v18 or higher
- npm or yarn
- [Claude Code](https://www.anthropic.com) installed globally

## Step 1: Install Claude Code

```bash
npm i -g @anthropic-ai/claude-code
```

## Step 2: Clone & Setup

```bash
git clone https://github.com/YOUR_USERNAME/Claude-Code-Project-Structure-Reference.git
cd Claude-Code-Project-Structure-Reference
cp .env.example .env
npm install
```

## Step 3: Configure Environment

Edit `.env` and fill in your values:

```bash
ANTHROPIC_API_KEY=your-api-key-here
# ... other variables
```

## Step 4: Configure MCP Servers

Edit `.mcp.json` to enable the MCP servers you need (GitHub, Slack, Postgres, etc.).

## Step 5: Launch Claude Code

```bash
claude
```

Claude will automatically load `CLAUDE.md` and your configured skills and hooks.

## Step 6: Try a Slash Command

```
/review
/test-all
/bootstrap my-feature
```

## Folder Quick Reference

| Folder | What to put here |
|---|---|
| `.claude/commands/` | New slash command `.md` files |
| `skills/` | New skill folders with `SKILL.md` |
| `agents/` | New subagent `.yml` definitions |
| `src/` | Your application source code |
| `docs/` | Project documentation |
