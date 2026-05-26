# Deploy to void-test and wb_test without GitHub Actions (same as deploy scripts).
# Double-click or run from PowerShell on your Windows dev machine.
#
# Usage:
#   cd A:\ai\projects\ace-raaj-mods
#   .\scripts\Deploy-All-Test.ps1
#
# Requires: Git Bash, scripts\.deploy-mysql.env (or exported ACE_MYSQL_*), ACE at C:\ACE\Server

[CmdletBinding()]
param(
    [switch]$SkipSql,
    [switch]$SkipWorldSync,
    [switch]$VoidOnly,
    [switch]$WbOnly
)

$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir

function Test-UsableGitBash([string]$path) {
    if (-not $path) { return $false }
    if (-not (Test-Path $path)) { return $false }
    if ($path -match '(?i)\\Windows\\System32\\bash\.exe$') { return $false }
    if ($path -match '(?i)\\WindowsApps\\') { return $false }
    return $true
}

$bash = $null
foreach ($candidate in @(
        $env:GITHUB_BASH,
        "${env:ProgramFiles}\Git\bin\bash.exe",
        "${env:ProgramFiles(x86)}\Git\bin\bash.exe",
        'C:\Program Files\Git\bin\bash.exe'
    )) {
    if (Test-UsableGitBash $candidate) {
        $bash = $candidate
        break
    }
}
if (-not $bash) {
    foreach ($cmd in Get-Command bash -All -ErrorAction SilentlyContinue) {
        if (Test-UsableGitBash $cmd.Source) {
            $bash = $cmd.Source
            break
        }
    }
}
if (-not $bash) {
    throw 'Git Bash not found. Install Git for Windows (not WSL). Standard path: C:\Program Files\Git\bin\bash.exe'
}

$envFile = Join-Path $repoRoot 'scripts\.deploy-mysql.env'
if (Test-Path $envFile) {
    Write-Host "Sourcing $envFile"
    Get-Content $envFile | ForEach-Object {
        if ($_ -match '^\s*export\s+(\w+)=(.+)$') {
            $name = $matches[1]
            $val = $matches[2].Trim().Trim('"', "'")
            Set-Item -Path "Env:$name" -Value $val
        }
    }
}

if ($env:ACE_EMULATOR_PATH) {
    $acePath = $env:ACE_EMULATOR_PATH
} elseif (Test-Path 'C:\ACE\Server\ACE.Server.dll') {
    $acePath = 'C:\ACE\Server'
} else {
    throw 'Set ACE_EMULATOR_PATH or install ACE at C:\ACE\Server'
}

$aceUnix = $acePath -replace '\\', '/'
$bashUnix = $bash -replace '\\', '/'

if ($SkipSql) {
    $env:VOID_TEST_SKIP_SQL = '1'
    $env:WB_TEST_SKIP_SQL = '1'
}
if ($SkipWorldSync) {
    $env:DEPLOY_WB_TEST_SKIP_WORLD_SYNC = '1'
}

$runDeployScript = {
    param([string]$scriptRel)
    Set-Location $repoRoot
    & $bash -c "export ACE_EMULATOR_PATH='$aceUnix'; exec '$bashUnix' $scriptRel"
    if ($LASTEXITCODE -ne 0) { throw "Command failed: $scriptRel" }
}

if (-not $WbOnly) {
    Write-Host '=== deploy void-test ===' -ForegroundColor Cyan
    & $runDeployScript 'scripts/deploy-void-test.sh'
}

if (-not $VoidOnly) {
    Write-Host '=== deploy wb_test ===' -ForegroundColor Cyan
    & $runDeployScript 'scripts/deploy-wb-test.sh'
}

Write-Host ''
Write-Host 'Deploy finished. Restart void-test and C:\ACE ACE servers.' -ForegroundColor Green
