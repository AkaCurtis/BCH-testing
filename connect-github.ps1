# Add Git to PATH
$env:Path += ";C:\Program Files\Git\bin"

Write-Host "=== Connecting to GitHub ===" -ForegroundColor Cyan
Write-Host ""

# Check if already a git repo
if (Test-Path ".git") {
    Write-Host "Git repository already initialized" -ForegroundColor Yellow
} else {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
    Write-Host "Initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "Configuring git..." -ForegroundColor Yellow

# Set your email
$email = Read-Host "Enter your GitHub email"
git config user.name "AkaCurtis"
git config user.email $email

Write-Host "User configured" -ForegroundColor Green
Write-Host ""

# Check if remote exists
$remoteExists = git remote | Select-String "origin"
if ($remoteExists) {
    Write-Host "Remote already exists, updating URL..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/AkaCurtis/BCH-testing.git
} else {
    Write-Host "Adding remote..." -ForegroundColor Yellow
    git remote add origin https://github.com/AkaCurtis/BCH-testing.git
}

Write-Host "Remote configured" -ForegroundColor Green
Write-Host ""

# Show remote
Write-Host "Remote repository:" -ForegroundColor Cyan
git remote -v

Write-Host ""
Write-Host "=== Next Steps ===" -ForegroundColor Green
Write-Host ""
Write-Host "1. Add files:     git add ." -ForegroundColor White
Write-Host "2. Commit:        git commit -m 'Add AxeBCH ATH Watcher Umbrel app'" -ForegroundColor White
Write-Host "3. Push:          git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "Or run the push script: .\push-to-github.ps1" -ForegroundColor Cyan
