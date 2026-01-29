# Run this in PowerShell *outside* Cursor (e.g. Windows PowerShell).
# Closes Cursor first is not possible from script - close it manually, then run.
Set-Location $PSScriptRoot

Write-Host "Removing lock file..." -ForegroundColor Yellow
Remove-Item -Force .git\index.lock -ErrorAction SilentlyContinue
Start-Sleep -Seconds 2

if (Test-Path .git\index.lock) {
  Write-Host "Lock file still exists. Close Cursor and any Git apps, then run this again." -ForegroundColor Red
  exit 1
}

Write-Host "Resetting to previous commit (HEAD~1)..." -ForegroundColor Yellow
git reset --hard HEAD~1
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host "Done. Local repo is now one commit back." -ForegroundColor Green
Write-Host "To update GitHub, run: git push --force" -ForegroundColor Cyan
