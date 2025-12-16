#!/bin/bash
# Deployment script to merge PR and deploy to GitHub Pages

set -e

echo "🚀 Starting deployment process..."

# Ensure we're on the right branch
git checkout main

# Merge the PR branch
echo "📦 Merging PR branch into main..."
git merge copilot/publish-website-without-errors --no-edit

# Push to main
echo "⬆️  Pushing changes to main branch..."
git push origin main

echo "✅ Deployment complete!"
echo "🌐 Your site will be live at: https://ismath162.github.io/portfolio-ismath-master/"
echo "⏱️  Please wait 1-2 minutes for GitHub Pages to build and deploy."
