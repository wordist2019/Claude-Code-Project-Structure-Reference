#!/bin/bash

# pre-commit.sh — Secret detection gate
# Blocks commits that contain potential secrets or credentials.

echo "🔍 Running pre-commit secret scan..."

# Patterns to detect
PATTERNS=(
  "AKIA[0-9A-Z]{16}"          # AWS Access Key
  "sk-[a-zA-Z0-9]{32,}"       # OpenAI / Anthropic API key
  "ghp_[a-zA-Z0-9]{36}"       # GitHub Personal Access Token
  "xoxb-[a-zA-Z0-9-]+"        # Slack Bot Token
  "password\s*=\s*['\"][^'\"]+['\"]"  # Hardcoded passwords
)

FOUND=0

for pattern in "${PATTERNS[@]}"; do
  if git diff --cached --name-only | xargs grep -lE "$pattern" 2>/dev/null | grep -q .; then
    echo "❌ Potential secret detected matching pattern: $pattern"
    FOUND=1
  fi
done

if [ "$FOUND" -eq 1 ]; then
  echo ""
  echo "🚫 Commit blocked. Remove secrets before committing."
  echo "   Use .env files for secrets and add them to .gitignore."
  exit 1
fi

echo "✅ No secrets detected. Proceeding with commit."
exit 0
