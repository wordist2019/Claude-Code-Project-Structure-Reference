#!/bin/bash

# seed.db.sh — Seed the database with initial/test data

set -e

echo "🌱 Seeding database..."

if [ -z "$DATABASE_URL" ]; then
  echo "❌ Error: DATABASE_URL environment variable is not set."
  echo "   Copy .env.example to .env and configure your database URL."
  exit 1
fi

echo "📦 Running seed scripts..."
# Add your seed logic here, e.g.:
# psql "$DATABASE_URL" -f scripts/seeds/users.sql
# psql "$DATABASE_URL" -f scripts/seeds/data.sql

echo "✅ Database seeded successfully!"
