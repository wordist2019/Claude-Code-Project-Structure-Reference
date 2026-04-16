#!/bin/bash

# notify.sh — Send notifications via Slack webhook or other channels
# Configure SLACK_WEBHOOK_URL in your .env file.

EVENT="$1"
MESSAGE="$2"

if [ -z "$SLACK_WEBHOOK_URL" ]; then
  echo "ℹ️  SLACK_WEBHOOK_URL not set — skipping notification."
  exit 0
fi

PAYLOAD="{\"text\": \"[Claude Code] $EVENT: $MESSAGE\"}"

curl -s -X POST "$SLACK_WEBHOOK_URL" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" > /dev/null

echo "📣 Notification sent: $EVENT"
exit 0
