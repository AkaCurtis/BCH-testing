# Add Git to PATH
$env:Path += ";C:\Program Files\Git\bin"

Write-Host "=== Pushing to GitHub ===" -ForegroundColor Cyan
Write-Host ""

# Add all files
Write-Host "Adding files..." -ForegroundColor Yellow
git add .

# Show what will be committed
Write-Host ""
Write-Host "Files to be committed:" -ForegroundColor Cyan
git status --short

Write-Host ""
$continue = Read-Host "Continue with commit? (y/n)"

if ($continue -eq "y") {
    # Commit
    Write-Host ""
    Write-Host "Committing..." -ForegroundColor Yellow
    git commit -m "Add AxeBCH ATH Watcher Umbrel app"
    
    Write-Host ""
    Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
    Write-Host "You may be prompted for GitHub credentials..." -ForegroundColor Gray
    
    # Push to main branch
    git push -u origin main
    
    Write-Host ""
    Write-Host "Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "View at: https://github.com/AkaCurtis/BCH-testing" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "To install on Umbrel:" -ForegroundColor White
    Write-Host "1. App Store -> Settings" -ForegroundColor Gray
    Write-Host "2. Add App Store" -ForegroundColor Gray
    Write-Host "3. Enter: https://github.com/AkaCurtis/BCH-testing" -ForegroundColor Cyan
    Write-Host "4. Install your app!" -ForegroundColor Gray
} else {
    Write-Host "Cancelled" -ForegroundColor Yellow
}
