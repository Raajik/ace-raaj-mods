# One-shot: deploy SpellSiphon glyph fix (DLLs + world SQL + shard biota cleanup).
# Run on your Windows dev PC where void-test and/or C:\ACE exist.
#
# Usage:
#   cd A:\ai\projects\ace-raaj-mods
#   git pull
#   .\scripts\Deploy-SpellSiphon-GlyphFix.ps1
#
# Optional:
#   -VoidOnly     — only A:\void-test
#   -WbOnly       — only C:\ACE (wb_test)
#   -SkipSql      — mods only (no MySQL)
#   -SkipWorldSync — wb_test: skip void→ace world clone

[CmdletBinding()]
param(
    [switch]$VoidOnly,
    [switch]$WbOnly,
    [switch]$SkipSql,
    [switch]$SkipWorldSync
)

$ErrorActionPreference = 'Stop'
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir

$deployArgs = @{}
if ($VoidOnly) { $deployArgs.VoidOnly = $true }
if ($WbOnly) { $deployArgs.WbOnly = $true }
if ($SkipSql) { $deployArgs.SkipSql = $true }
if ($SkipWorldSync) { $deployArgs.SkipWorldSync = $true }

Write-Host '=== Step 1: Build + deploy mods (Deploy-All-Test) ===' -ForegroundColor Cyan
& (Join-Path $repoRoot 'scripts\Deploy-All-Test.ps1') @deployArgs

if (-not $SkipSql) {
    $envFile = Join-Path $repoRoot 'scripts\.deploy-mysql.env'
    if (Test-Path $envFile) {
        Get-Content $envFile | ForEach-Object {
            if ($_ -match '^\s*export\s+(\w+)=(.+)$') {
                $name = $matches[1]
                $val = $matches[2].Trim().Trim('"', "'")
                Set-Item -Path "Env:$name" -Value $val
            }
        }
    }

    $shardDb = $env:WB_TEST_SHARD_DATABASE
    if (-not $shardDb) { $shardDb = $env:VOID_SHARD_DATABASE }
    if (-not $shardDb) { $shardDb = $env:SHARD_DATABASE }

    if ($shardDb -and $env:ACE_MYSQL_USER -and $null -ne $env:ACE_MYSQL_PASSWORD) {
        Write-Host "=== Step 2: Shard biota cleanup (glyph TargetType) -> $shardDb ===" -ForegroundColor Cyan
        $sqlFile = Join-Path $repoRoot 'SpellSiphon\Content\SQL-shard\Biota_Cleanup.sql'
        $mysql = $env:MYSQL_EXE
        if (-not $mysql) { $mysql = 'mysql' }
        & $mysql -h localhost -u $env:ACE_MYSQL_USER "-p$($env:ACE_MYSQL_PASSWORD)" $shardDb -e "source $($sqlFile -replace '\\','/')"
        if ($LASTEXITCODE -ne 0) { throw "Shard SQL failed (exit $LASTEXITCODE)" }
        Write-Host 'Shard biota cleanup applied.' -ForegroundColor Green
    }
    else {
        Write-Host '=== Step 2: Skipped shard SQL (set WB_TEST_SHARD_DATABASE + ACE_MYSQL_* in scripts\.deploy-mysql.env) ===' -ForegroundColor Yellow
        Write-Host 'Apply manually: SpellSiphon\Content\SQL-shard\Biota_Cleanup.sql to ace_shard (or your shard DB).'
    }
}

Write-Host ''
Write-Host '=== Step 3: Restart ACE ===' -ForegroundColor Cyan
Write-Host 'Restart void-test ACE and/or C:\ACE so Spellsiphon.dll reloads.'
Write-Host 'Ace_Log.txt should show:'
Write-Host '  [Spellsiphon] Recipe hook applied (UseObjectOnTarget prefix)'
Write-Host '  [Spellsiphon] Recipe hook applied (GetRecipe postfix, Priority.Last)'
Write-Host ''
Write-Host 'See SpellSiphon\docs\Glyph-Regression-Timeline.md for history.' -ForegroundColor Green
