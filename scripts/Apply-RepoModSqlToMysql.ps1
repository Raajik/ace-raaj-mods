# Apply every repo mod's Content/SQL/**/*.sql to a MySQL database (default ace_world for wb_test).
# Applies Content/SQL-shard/**/*.sql to $ShardDatabase when WB_TEST_SHARD_DATABASE is set (split world/shard installs).
# Excludes ValheelContent and Shared; only directories with ModName/ModName.csproj.
#
# Credentials (required for non-WhatIf):
#   $env:ACE_MYSQL_USER
#   $env:ACE_MYSQL_PASSWORD
# Optional:
#   $env:MYSQL_EXE - path to mysql.exe (default: MySQL 8.0 under Program Files)
#   $env:WB_TEST_SHARD_DATABASE - shard DB name for Content/SQL-shard (e.g. ace_shard). If unset, shard SQL is skipped with a warning when present.
#
# Usage:
#   $env:ACE_MYSQL_USER='jeremy'; $env:ACE_MYSQL_PASSWORD='...'
#   powershell -NoProfile -ExecutionPolicy Bypass -File scripts\Apply-RepoModSqlToMysql.ps1 -RepoRoot 'A:\ai\projects\ace-raaj-mods' -Database ace_world

param(
    [Parameter(Mandatory = $true)]
    [string] $RepoRoot,

    [string] $Database = 'ace_world',

    [string] $ShardDatabase = $env:WB_TEST_SHARD_DATABASE,

    [string] $MysqlExe = $(if ($env:MYSQL_EXE) { $env:MYSQL_EXE } else { 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe' }),

    [string] $MysqlUser = $env:ACE_MYSQL_USER,

    [string] $MysqlPassword = $env:ACE_MYSQL_PASSWORD,

    [switch] $WhatIf
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $RepoRoot)) { throw "RepoRoot not found: $RepoRoot" }
if (-not (Test-Path -LiteralPath $MysqlExe)) { throw "mysql.exe not found: $MysqlExe (set MYSQL_EXE)" }

$repoRootFull = (Resolve-Path -LiteralPath $RepoRoot).Path

# WSL bash does not pass exported vars to powershell.exe unless WSLENV is set; load same file bash deploy sources.
$deployMysqlEnv = Join-Path $repoRootFull 'scripts\.deploy-mysql.env'
if ((Test-Path -LiteralPath $deployMysqlEnv) -and
    ([string]::IsNullOrWhiteSpace($MysqlUser) -or [string]::IsNullOrWhiteSpace($MysqlPassword))) {
    Get-Content -LiteralPath $deployMysqlEnv | ForEach-Object {
        $line = $_.Trim()
        if ($line -match '^\s*#' -or $line -eq '') { return }
        if ($line -match '^\s*export\s+') { $line = ($line -replace '^\s*export\s+', '').Trim() }
        $eq = $line.IndexOf('=')
        if ($eq -lt 1) { return }
        $k = $line.Substring(0, $eq).Trim()
        $v = $line.Substring($eq + 1).Trim()
        if (($v.Length -ge 2) -and (($v.StartsWith('"') -and $v.EndsWith('"')) -or ($v.StartsWith("'") -and $v.EndsWith("'")))) {
            $v = $v.Substring(1, $v.Length - 2)
        }
        if ($k -eq 'ACE_MYSQL_USER' -and [string]::IsNullOrWhiteSpace($MysqlUser)) {
            Set-Item -Path Env:ACE_MYSQL_USER -Value $v
        }
        if ($k -eq 'ACE_MYSQL_PASSWORD' -and [string]::IsNullOrWhiteSpace($MysqlPassword)) {
            Set-Item -Path Env:ACE_MYSQL_PASSWORD -Value $v
        }
    }
    if ([string]::IsNullOrWhiteSpace($MysqlUser)) { $MysqlUser = $env:ACE_MYSQL_USER }
    if ([string]::IsNullOrWhiteSpace($MysqlPassword)) { $MysqlPassword = $env:ACE_MYSQL_PASSWORD }
}

$mods = @(Get-ChildItem -LiteralPath $repoRootFull -Directory -ErrorAction Stop | Where-Object {
        $n = $_.Name
        if ($n -in @('ValheelContent', 'Shared', 'build', '.git')) { return $false }
        $cs = Join-Path $_.FullName ($n + '.csproj')
        Test-Path -LiteralPath $cs
    })

$sqlFiles = New-Object System.Collections.Generic.List[System.IO.FileInfo]
$shardSqlFiles = New-Object System.Collections.Generic.List[System.IO.FileInfo]
foreach ($m in $mods) {
    $sqlRoot = Join-Path $m.FullName 'Content\SQL'
    if (Test-Path -LiteralPath $sqlRoot) {
        foreach ($f in Get-ChildItem -LiteralPath $sqlRoot -Recurse -File -Filter '*.sql' -ErrorAction SilentlyContinue) {
            if (($f.Name -like '*-rollback.sql') -and ($env:ACE_SQL_INCLUDE_ROLLBACK -ne '1')) { continue }
            [void]$sqlFiles.Add($f)
        }
    }
    $sqlShardRoot = Join-Path $m.FullName 'Content\SQL-shard'
    if (Test-Path -LiteralPath $sqlShardRoot) {
        foreach ($f in Get-ChildItem -LiteralPath $sqlShardRoot -Recurse -File -Filter '*.sql' -ErrorAction SilentlyContinue) {
            if (($f.Name -like '*-rollback.sql') -and ($env:ACE_SQL_INCLUDE_ROLLBACK -ne '1')) { continue }
            [void]$shardSqlFiles.Add($f)
        }
    }
}

$ordered = $sqlFiles | Sort-Object -Property FullName
$shardOrdered = $shardSqlFiles | Sort-Object -Property FullName

Write-Host '=== Apply-RepoModSqlToMysql ==='
Write-Host ("Repo: {0}" -f $repoRootFull)
Write-Host ("World database: {0}" -f $Database)
Write-Host ("World SQL files: {0}" -f $ordered.Count)
Write-Host ("Shard SQL files: {0}" -f $shardOrdered.Count)
if (-not [string]::IsNullOrWhiteSpace($ShardDatabase)) {
    Write-Host ("Shard database: {0}" -f $ShardDatabase)
}
else {
    Write-Host 'Shard database: (not set — Content\SQL-shard will be skipped if any)'
}
Write-Host ''

if (($ordered.Count -eq 0) -and ($shardOrdered.Count -eq 0)) {
    Write-Host 'No Content\SQL or Content\SQL-shard *.sql under mod folders - nothing to apply.'
    exit 0
}

if ($WhatIf) {
    foreach ($f in $ordered) {
        $rel = $f.FullName.Substring($repoRootFull.Length).TrimStart('\')
        Write-Host ("  [WhatIf world] {0} -> {1}" -f $rel, $Database)
    }
    foreach ($f in $shardOrdered) {
        $rel = $f.FullName.Substring($repoRootFull.Length).TrimStart('\')
        if ([string]::IsNullOrWhiteSpace($ShardDatabase)) {
            Write-Host ("  [WhatIf shard skipped] {0}" -f $rel)
        }
        else {
            Write-Host ("  [WhatIf shard] {0} -> {1}" -f $rel, $ShardDatabase)
        }
    }
    Write-Host ("WhatIf: would apply {0} world + {1} shard file(s)." -f $ordered.Count, $shardOrdered.Count)
    exit 0
}

if ([string]::IsNullOrWhiteSpace($MysqlUser)) { throw 'Set ACE_MYSQL_USER (and ACE_MYSQL_PASSWORD) to apply SQL.' }
if ([string]::IsNullOrWhiteSpace($MysqlPassword)) { throw 'Set ACE_MYSQL_PASSWORD to apply SQL.' }

$cnf = Join-Path ([IO.Path]::GetTempPath()) ('ace-repo-sql-' + [Guid]::NewGuid().ToString('n') + '.cnf')
$cnfLines = @(
    '[client]',
    "user=$MysqlUser",
    "password=$MysqlPassword"
)
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[IO.File]::WriteAllLines($cnf, $cnfLines, $utf8NoBom)

$appliedWorld = 0
$appliedShard = 0
try {
    foreach ($f in $ordered) {
        $rel = $f.FullName.Substring($repoRootFull.Length).TrimStart('\')
        Write-Host ("  Applying (world): {0}" -f $rel)
        Get-Content -LiteralPath $f.FullName -Raw -Encoding utf8 | & $MysqlExe `
            --defaults-extra-file=$cnf --default-character-set=utf8mb4 $Database
        if ($LASTEXITCODE -ne 0) {
            throw "mysql failed (exit $LASTEXITCODE) on file: $($f.FullName)"
        }
        $appliedWorld++
    }

    if ($shardOrdered.Count -gt 0) {
        if ([string]::IsNullOrWhiteSpace($ShardDatabase)) {
            Write-Warning ("Skipping {0} Content\SQL-shard file(s); set WB_TEST_SHARD_DATABASE (e.g. ace_shard)." -f $shardOrdered.Count)
        }
        else {
            Write-Host ''
            Write-Host ("=== Shard SQL -> {0} ===" -f $ShardDatabase)
            foreach ($f in $shardOrdered) {
                $rel = $f.FullName.Substring($repoRootFull.Length).TrimStart('\')
                Write-Host ("  Applying (shard): {0}" -f $rel)
                Get-Content -LiteralPath $f.FullName -Raw -Encoding utf8 | & $MysqlExe `
                    --defaults-extra-file=$cnf --default-character-set=utf8mb4 $ShardDatabase
                if ($LASTEXITCODE -ne 0) {
                    throw "mysql failed (exit $LASTEXITCODE) on shard file: $($f.FullName)"
                }
                $appliedShard++
            }
        }
    }
}
finally {
    if (Test-Path -LiteralPath $cnf) {
        Remove-Item -LiteralPath $cnf -Force -ErrorAction SilentlyContinue
    }
}

Write-Host ''
Write-Host ("Applied {0} world SQL file(s) to {1}." -f $appliedWorld, $Database)
if ($appliedShard -gt 0) {
    Write-Host ("Applied {0} shard SQL file(s) to {1}." -f $appliedShard, $ShardDatabase)
}
