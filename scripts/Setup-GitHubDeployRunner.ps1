# One-time setup: self-hosted GitHub Actions runner for deploy-test-servers workflow.
# Run on the Windows PC that has A:\void-test, C:\ACE, and MySQL (your game dev machine).
#
# Usage (PowerShell as Administrator recommended for Windows service install):
#   cd A:\ai\projects\ace-raaj-mods
#   .\scripts\Setup-GitHubDeployRunner.ps1
#
# Optional:
#   .\scripts\Setup-GitHubDeployRunner.ps1 -InstallDir D:\actions-runner\ace-raaj-mods

[CmdletBinding()]
param(
    [string]$RepoUrl = 'https://github.com/Raajik/ace-raaj-mods',
    [string]$InstallDir = 'C:\actions-runner\ace-raaj-mods',
    [string]$RunnerName = $env:COMPUTERNAME,
    [switch]$SkipServiceInstall
)

$ErrorActionPreference = 'Stop'

function Write-Step($msg) {
    Write-Host ''
    Write-Host "==> $msg" -ForegroundColor Cyan
}

function Test-Command($name) {
    return $null -ne (Get-Command $name -ErrorAction SilentlyContinue)
}

Write-Host 'GitHub Actions deploy runner — one-time setup' -ForegroundColor Green
Write-Host "Repo: $RepoUrl"
Write-Host "Install: $InstallDir"
Write-Host "Runner name: $RunnerName"
Write-Host ''

# --- Prerequisites ---
Write-Step 'Checking prerequisites'

$missing = @()
if (-not (Test-Path 'C:\ACE\Server\ACE.Server.dll')) {
    Write-Host '  WARN: C:\ACE\Server\ACE.Server.dll not found — mod builds may clone ACE on first deploy.' -ForegroundColor Yellow
} else {
    Write-Host '  OK: C:\ACE\Server'
}

if (-not (Test-Path 'A:\void-test\Mods')) {
    Write-Host '  WARN: A:\void-test\Mods not found — void-test deploy will fail until void-test exists.' -ForegroundColor Yellow
} else {
    Write-Host '  OK: A:\void-test\Mods'
}

if (-not (Test-Path 'C:\ACE\Mods')) {
    Write-Host '  WARN: C:\ACE\Mods not found — wb_test deploy will fail until C:\ACE exists.' -ForegroundColor Yellow
} else {
    Write-Host '  OK: C:\ACE\Mods'
}

if (-not (Test-Command 'git')) { $missing += 'Git for Windows (git.exe)' }
else { Write-Host '  OK: git' }

if (-not (Test-Command 'dotnet')) { $missing += '.NET 10 SDK (dotnet)' }
else {
    $ver = & dotnet --version 2>$null
    Write-Host "  OK: dotnet $ver"
}

if (-not (Test-Command 'bash')) {
    $gitBash = "${env:ProgramFiles}\Git\bin\bash.exe"
    if (Test-Path $gitBash) { Write-Host '  OK: Git Bash' }
    else { $missing += 'Git Bash (install Git for Windows)' }
} else {
    Write-Host '  OK: bash'
}

if ($missing.Count -gt 0) {
    Write-Host ''
    Write-Host 'Install missing tools, then re-run this script:' -ForegroundColor Red
    $missing | ForEach-Object { Write-Host "  - $_" }
    Write-Host ''
    Write-Host 'Suggested: winget install Git.Git Microsoft.DotNet.SDK.10'
    exit 1
}

# --- Download runner ---
Write-Step 'Downloading GitHub Actions runner (latest win-x64)'

$release = Invoke-RestMethod -Uri 'https://api.github.com/repos/actions/runner/releases/latest' -Headers @{ 'User-Agent' = 'ace-raaj-mods-setup' }
$asset = $release.assets | Where-Object { $_.name -eq 'actions-runner-win-x64-2.331.0.zip' } | Select-Object -First 1
if (-not $asset) {
    $asset = $release.assets | Where-Object { $_.name -like 'actions-runner-win-x64-*.zip' } | Select-Object -First 1
}
if (-not $asset) {
    throw 'Could not find actions-runner-win-x64 zip in latest release.'
}

New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
$zipPath = Join-Path $env:TEMP $asset.name
Write-Host "  Downloading $($asset.name) ..."
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $zipPath -UseBasicParsing
Expand-Archive -Path $zipPath -DestinationPath $InstallDir -Force
Remove-Item $zipPath -Force -ErrorAction SilentlyContinue
Write-Host "  Extracted to $InstallDir"

# --- Registration token (user must copy from GitHub) ---
Write-Step 'GitHub registration token (one-time, expires in ~1 hour)'

$settingsRunnersUrl = ($RepoUrl -replace '\.git$', '') + '/settings/actions/runners/new'
Write-Host ''
Write-Host '  1. Opening GitHub in your browser ...'
Write-Host "     $settingsRunnersUrl"
Start-Process $settingsRunnersUrl

Write-Host ''
Write-Host '  2. On that page, click "New self-hosted runner" if needed.'
Write-Host '  3. Under "Configure", copy the TOKEN from the line like:'
Write-Host '       ./config.cmd --url ... --token XXXXXXXXX'
Write-Host '     (only the long token string, not the whole command)'
Write-Host ''

$token = Read-Host 'Paste registration token here'
$token = $token.Trim()
if ([string]::IsNullOrWhiteSpace($token)) {
    throw 'No token entered. Re-run this script after copying a fresh token from GitHub.'
}

# --- Configure runner ---
Write-Step 'Configuring runner'

Push-Location $InstallDir
try {
    $configArgs = @(
        '--url', $RepoUrl,
        '--token', $token,
        '--name', $RunnerName,
        '--labels', 'self-hosted,windows',
        '--unattended',
        '--replace'
    )
    Write-Host "  Running: config.cmd $($configArgs -join ' ')"
    & .\config.cmd @configArgs
    if ($LASTEXITCODE -ne 0) {
        throw "config.cmd failed with exit code $LASTEXITCODE"
    }

    if (-not $SkipServiceInstall) {
        Write-Step 'Installing runner as Windows service (starts on boot)'
        $isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
        if (-not $isAdmin) {
            Write-Host '  Not elevated — skipping service install. Start manually with:' -ForegroundColor Yellow
            Write-Host "    cd $InstallDir"
            Write-Host '    .\run.cmd'
            Write-Host ''
            Write-Host '  Or re-run this script as Administrator to install the service.'
        } else {
            & .\svc.cmd install
            & .\svc.cmd start
            Write-Host '  Service installed and started.'
        }
    } else {
        Write-Host '  Skipped service install. Start with: .\run.cmd' -ForegroundColor Yellow
    }
}
finally {
    Pop-Location
}

Write-Step 'Runner setup complete'
Write-Host ''
Write-Host 'Next steps:'
Write-Host '  1. Run: .\scripts\Setup-GitHubDeploySecrets.ps1  (MySQL secrets for deploy SQL)'
Write-Host '  2. GitHub → Actions → Deploy test servers → Run workflow'
Write-Host ''
Write-Host 'Repo must have workflow from main (merge PR #10 if not already).'
