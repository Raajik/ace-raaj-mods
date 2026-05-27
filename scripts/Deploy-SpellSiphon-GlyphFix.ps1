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

function Get-DeployMysqlExe {
    $candidates = @(
        $env:MYSQL_EXE,
        'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe',
        'C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe',
        'C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe'
    ) | Where-Object { $_ -and ($_ = $_.Trim()) }

    foreach ($path in $candidates) {
        if (Test-Path -LiteralPath $path) {
            return $path
        }
    }

    $onPath = Get-Command mysql.exe -ErrorAction SilentlyContinue
    if ($onPath) {
        return $onPath.Source
    }

    return $null
}

function Import-DeployMysqlEnv {
    param([string]$EnvFilePath)

    if (-not (Test-Path -LiteralPath $EnvFilePath)) {
        return
    }

    Get-Content -LiteralPath $EnvFilePath | ForEach-Object {
        $line = $_.Trim()
        if ($line -match '^\s*#' -or $line -eq '') { return }
        if ($line -match '^\s*export\s+') { $line = ($line -replace '^\s*export\s+', '').Trim() }
        $eq = $line.IndexOf('=')
        if ($eq -lt 1) { return }
        $name = $line.Substring(0, $eq).Trim()
        $val = $line.Substring($eq + 1).Trim().Trim('"', "'")
        if ($name) {
            Set-Item -Path "Env:$name" -Value $val
        }
    }
}

function Invoke-ShardSqlFile {
    param(
        [string]$SqlFilePath,
        [string]$ShardDatabase,
        [string]$MysqlExe,
        [string]$MysqlUser,
        [string]$MysqlPassword
    )

    $cnf = Join-Path ([IO.Path]::GetTempPath()) ('ace-glyphsql-' + [Guid]::NewGuid().ToString('n') + '.cnf')
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [IO.File]::WriteAllLines($cnf, @('[client]', "user=$MysqlUser", "password=$MysqlPassword"), $utf8NoBom)

    try {
        Get-Content -LiteralPath $SqlFilePath -Raw -Encoding utf8 | & $MysqlExe `
            --defaults-extra-file=$cnf --default-character-set=utf8mb4 $ShardDatabase
        if ($LASTEXITCODE -ne 0) {
            throw "mysql failed (exit $LASTEXITCODE) on: $SqlFilePath"
        }
    }
    finally {
        if (Test-Path -LiteralPath $cnf) {
            Remove-Item -LiteralPath $cnf -Force -ErrorAction SilentlyContinue
        }
    }
}

$deployArgs = @{}
if ($VoidOnly) { $deployArgs.VoidOnly = $true }
if ($WbOnly) { $deployArgs.WbOnly = $true }
if ($SkipSql) { $deployArgs.SkipSql = $true }
if ($SkipWorldSync) { $deployArgs.SkipWorldSync = $true }

Write-Host '=== Step 1: Build + deploy mods (Deploy-All-Test) ===' -ForegroundColor Cyan
& (Join-Path $repoRoot 'scripts\Deploy-All-Test.ps1') @deployArgs

if (-not $SkipSql) {
    Import-DeployMysqlEnv -EnvFilePath (Join-Path $repoRoot 'scripts\.deploy-mysql.env')

    $shardDb = $env:VOID_SHARD_DATABASE
    if (-not $shardDb) { $shardDb = $env:WB_TEST_SHARD_DATABASE }
    if (-not $shardDb) { $shardDb = $env:SHARD_DATABASE }

    $mysqlExe = Get-DeployMysqlExe
    $mysqlUser = $env:ACE_MYSQL_USER
    $mysqlPass = $env:ACE_MYSQL_PASSWORD

    if ($shardDb -and $mysqlUser -and ($null -ne $mysqlPass) -and $mysqlExe) {
        Write-Host "=== Step 2: Shard biota cleanup (glyph TargetType) -> $shardDb ===" -ForegroundColor Cyan
        Write-Host "Using: $mysqlExe"
        $sqlFile = Join-Path $repoRoot 'SpellSiphon\Content\SQL-shard\Biota_Cleanup.sql'
        Invoke-ShardSqlFile -SqlFilePath $sqlFile -ShardDatabase $shardDb -MysqlExe $mysqlExe `
            -MysqlUser $mysqlUser -MysqlPassword $mysqlPass
        Write-Host 'Shard biota cleanup applied.' -ForegroundColor Green
    }
    else {
        Write-Host '=== Step 2: Skipped shard SQL ===' -ForegroundColor Yellow
        if (-not $mysqlExe) {
            Write-Host 'mysql.exe not found. Set MYSQL_EXE in scripts\.deploy-mysql.env or install MySQL 8.0 under Program Files.'
        }
        if (-not $shardDb) {
            Write-Host 'Set VOID_SHARD_DATABASE (or WB_TEST_SHARD_DATABASE) in scripts\.deploy-mysql.env'
        }
        if (-not $mysqlUser -or $null -eq $mysqlPass) {
            Write-Host 'Set ACE_MYSQL_USER and ACE_MYSQL_PASSWORD in scripts\.deploy-mysql.env'
        }
        Write-Host 'Or run: powershell -File scripts\Apply-RepoModSqlToMysql.ps1 -RepoRoot . -Database void-test_world'
        Write-Host 'Manual file: SpellSiphon\Content\SQL-shard\Biota_Cleanup.sql'
    }
}

Write-Host ''
Write-Host '=== Step 3: Restart ACE ===' -ForegroundColor Cyan
Write-Host 'Restart void-test ACE and/or C:\ACE so Spellsiphon.dll AND Overtinked.dll reload.'
Write-Host 'Both mods required for glyph fix (OvertinkedInterop skip).'
Write-Host 'Ace_Log.txt should show:'
Write-Host '  [Spellsiphon] Recipe hook applied (UseObjectOnTarget prefix)'
Write-Host '  [Spellsiphon] Recipe hook applied (GetRecipe postfix, Priority.Last)'
Write-Host ''
Write-Host 'See SpellSiphon\docs\Glyph-Regression-Timeline.md for history.' -ForegroundColor Green
