#!/bin/bash
set -e

echo "🚀 Starting IoT Usage Kafka Logger..."

# Check if we should seed the database
if [ "$SEED_DATABASE" = "true" ]; then
  echo "🌱 Seeding database with sample data..."
  npm run seed
  echo "✅ Database seeded successfully"
fi

# Start the application
echo "🎯 Starting application..."
exec npm start

# Made with Bob
