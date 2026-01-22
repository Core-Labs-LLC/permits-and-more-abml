# Quick Fix Script for Git Push Error
# Run this in PowerShell

Write-Host "=== Git Push Error Fix ===" -ForegroundColor Cyan
Write-Host ""

# Check current remote
Write-Host "Current remote:" -ForegroundColor Yellow
git remote -v
Write-Host ""

Write-Host "Choose an option:" -ForegroundColor Green
Write-Host "1. Create NEW repository 'permits-and-more-abml' on GitHub, then push"
Write-Host "2. Use EXISTING repository 'permits-and-more' (will pull first)"
Write-Host "3. Force push to new repo (only if repo exists and is empty)"
Write-Host ""

$choice = Read-Host "Enter choice (1, 2, or 3)"

if ($choice -eq "1") {
    Write-Host ""
    Write-Host "Step 1: Create repository on GitHub:" -ForegroundColor Yellow
    Write-Host "  Go to: https://github.com/new" -ForegroundColor White
    Write-Host "  Name: permits-and-more-abml" -ForegroundColor White
    Write-Host "  Owner: Core-Labs-LLC" -ForegroundColor White
    Write-Host "  Don't initialize with README" -ForegroundColor White
    Write-Host ""
    Write-Host "Step 2: After creating, press Enter to push..." -ForegroundColor Yellow
    Read-Host
    git push -u origin main
}
elseif ($choice -eq "2") {
    Write-Host ""
    Write-Host "Switching to existing repository..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/Core-Labs-LLC/permits-and-more.git
    Write-Host "Pulling remote changes..." -ForegroundColor Yellow
    git pull origin main --allow-unrelated-histories
    Write-Host "Pushing your changes..." -ForegroundColor Yellow
    git push -u origin main
}
elseif ($choice -eq "3") {
    Write-Host ""
    Write-Host "⚠️  WARNING: This will overwrite remote repository!" -ForegroundColor Red
    $confirm = Read-Host "Are you sure? (yes/no)"
    if ($confirm -eq "yes") {
        git push -u origin main --force
    } else {
        Write-Host "Cancelled." -ForegroundColor Yellow
    }
}
else {
    Write-Host "Invalid choice." -ForegroundColor Red
}

