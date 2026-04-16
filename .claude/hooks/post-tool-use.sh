#!/bin/bash

# post-tool-use.sh — Auto-lint after file writes
# Runs lint on any TypeScript files modified by Claude.

TOOL_NAME="$1"
FILE_PATH="$2"

# Only lint on write operations to TypeScript files
if [[ "$TOOL_NAME" == "write_file" || "$TOOL_NAME" == "str_replace" ]]; then
  if [[ "$FILE_PATH" == *.ts || "$FILE_PATH" == *.tsx ]]; then
    echo "🔧 Auto-linting: $FILE_PATH"
    npx eslint "$FILE_PATH" --fix 2>/dev/null || true
  fi
fi

exit 0
