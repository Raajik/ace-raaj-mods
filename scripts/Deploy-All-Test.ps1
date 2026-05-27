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

$bash = & (Join-Path $repoRoot 'scripts/Get-GitBashPath.ps1')

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
    $env:ACE_EMULATOR_PATH = $acePath
    & "$bash" $scriptRel
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
