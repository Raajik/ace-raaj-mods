# Push MySQL credentials to GitHub Actions secrets (for deploy-test-servers workflow).
# Run on any machine with GitHub CLI logged in as a user who can manage repo secrets.
#
# Usage:
#   cd A:\ai\projects\ace-raaj-mods
#   .\scripts\Setup-GitHubDeploySecrets.ps1
#
# Reads scripts\.deploy-mysql.env when present; otherwise prompts.

[CmdletBinding()]
param(
    [string]$Repo = 'Raajik/ace-raaj-mods',
    [string]$EnvFile = ''
)

$ErrorActionPreference = 'Stop'

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host 'GitHub CLI (gh) is not installed.' -ForegroundColor Red
    Write-Host 'Install: winget install GitHub.cli'
    Write-Host 'Then: gh auth login'
    Write-Host ''
    Write-Host 'Or set secrets manually in the browser:'
    Write-Host "  https://github.com/$Repo/settings/secrets/actions"
    Write-Host '  Names: ACE_MYSQL_USER, ACE_MYSQL_PASSWORD'
    exit 1
}

$authOk = $false
try {
    gh auth status 2>&1 | Out-Null
    if ($LASTEXITCODE -eq 0) { $authOk = $true }
} catch { }

if (-not $authOk) {
    Write-Host 'Run: gh auth login' -ForegroundColor Yellow
    exit 1
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir
if ([string]::IsNullOrWhiteSpace($EnvFile)) {
    $EnvFile = Join-Path $repoRoot 'scripts\.deploy-mysql.env'
}

$user = $null
$pass = $null

if (Test-Path $EnvFile) {
    Write-Host "Reading $EnvFile"
    Get-Content $EnvFile | ForEach-Object {
        if ($_ -match '^\s*export\s+ACE_MYSQL_USER=(.+)$') { $user = $matches[1].Trim().Trim('"', "'") }
        if ($_ -match '^\s*export\s+ACE_MYSQL_PASSWORD=(.+)$') { $pass = $matches[1].Trim().Trim('"', "'") }
    }
}

if (-not $user) {
    $user = Read-Host 'ACE_MYSQL_USER'
}
if ($null -eq $pass) {
    $secure = Read-Host 'ACE_MYSQL_PASSWORD' -AsSecureString
    $pass = [Runtime.InteropServices.Marshal]::PtrToStringAuto(
        [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure))
}

if ([string]::IsNullOrWhiteSpace($user) -or [string]::IsNullOrWhiteSpace($pass)) {
    throw 'User and password are required.'
}

Write-Host "Setting secrets on $Repo ..."
$user | gh secret set ACE_MYSQL_USER --repo $Repo
$pass | gh secret set ACE_MYSQL_PASSWORD --repo $Repo

Write-Host 'Done. Secrets ACE_MYSQL_USER and ACE_MYSQL_PASSWORD are set.' -ForegroundColor Green
Write-Host 'Optional: add repository variable ACE_EMULATOR_PATH = C:\ACE\Server'
Write-Host "  https://github.com/$Repo/settings/variables/actions"
