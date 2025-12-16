# PowerShell deployment script to merge PR and deploy to GitHub Pages

Write-Host "🚀 Starting deployment process..." -ForegroundColor Green

# Ensure we're on the right branch
git checkout main
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to checkout main branch" -ForegroundColor Red
    exit 1
}

# Merge the PR branch
Write-Host "📦 Merging PR branch into main..." -ForegroundColor Yellow
git merge copilot/publish-website-without-errors --no-edit
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to merge PR branch" -ForegroundColor Red
    exit 1
}

# Push to main
Write-Host "⬆️  Pushing changes to main branch..." -ForegroundColor Yellow
git push origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to push to main" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "✅ Deployment complete!" -ForegroundColor Green
Write-Host "🌐 Your site will be live at: https://ismath162.github.io/portfolio-ismath-master/" -ForegroundColor Cyan
Write-Host "⏱️  Please wait 1-2 minutes for GitHub Pages to build and deploy." -ForegroundColor Yellow
