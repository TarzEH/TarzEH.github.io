# Run this in PowerShell to commit and push your site to GitHub Pages
# Usage: .\deploy.ps1
# Or: powershell -ExecutionPolicy Bypass -File deploy.ps1

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "1. Removing Git lock file (if any)..." -ForegroundColor Cyan
Remove-Item -Force .git\index.lock -ErrorAction SilentlyContinue
Start-Sleep -Seconds 1

Write-Host "2. Adding files..." -ForegroundColor Cyan
git add index.html styles.css README.md deploy.ps1
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host "3. Committing..." -ForegroundColor Cyan
git commit -m "Add landing page - cyber dark AI theme"
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host "4. Checking remote..." -ForegroundColor Cyan
$remote = git remote get-url origin 2>$null
if (-not $remote) {
    $username = Read-Host "Enter your GitHub username (e.g. TarzEH)"
    git remote add origin "https://github.com/$username/$username.github.io.git"
    git branch -M main
    Write-Host "5. Pushing to GitHub (you may be asked to log in)..." -ForegroundColor Cyan
} else {
    git branch -M main 2>$null
    Write-Host "5. Pushing to GitHub..." -ForegroundColor Cyan
}
git push -u origin main
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host ""
Write-Host "Done! Your site will be live in 1-2 minutes at:" -ForegroundColor Green
$user = ($remote -replace ".*github.com[:/]([^/]+).*", '$1')
if (-not $user -or $user -eq $remote) { $user = "YOUR_USERNAME" }
Write-Host "  https://$user.github.io" -ForegroundColor Yellow
Write-Host ""
