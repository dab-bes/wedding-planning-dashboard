#!/bin/bash

# Quick deployment script for wedding planning dashboard
echo "🚀 Deploying wedding planning dashboard..."

# Add all changes
git add .

# Commit with timestamp
git commit -m "Auto-deploy: $(date '+%Y-%m-%d %H:%M:%S')"

# Deploy to production
vercel --prod

echo "✅ Deployment complete!"
echo "🌐 Your site: https://weddingplan-nine.vercel.app"
