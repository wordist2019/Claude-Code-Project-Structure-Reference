#!/bin/bash

# deploy.sh — Deploy script for staging and production

set -e  # Exit immediately on error

ENVIRONMENT=${1:-staging}

echo "🚀 Starting deployment to: $ENVIRONMENT"

# Step 1: Lint
echo "🔍 Running linter..."
npm run lint

# Step 2: Tests
echo "🧪 Running tests..."
npm run test

# Step 3: Build
echo "🏗️  Building project..."
npm run build

# Step 4: Deploy
echo "📦 Deploying to $ENVIRONMENT..."

if [ "$ENVIRONMENT" == "production" ]; then
  echo "⚠️  Deploying to PRODUCTION — are you sure? (y/N)"
  read -r confirm
  if [ "$confirm" != "y" ]; then
    echo "❌ Deployment cancelled."
    exit 1
  fi
fi

echo "✅ Deployment to $ENVIRONMENT complete!"
