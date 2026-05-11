# Apply every repo mod's Content/SQL/**/*.sql to a MySQL database (default ace_world for wb_test).
# Excludes ValheelContent and Shared; only directories with ModName/ModName.csproj.
#
# Credentials (required for non-WhatIf):
#   $env:ACE_MYSQL_USER
#   $env:ACE_MYSQL_PASSWORD
# Optional:
#   $env:MYSQL_EXE - path to mysql.exe (default: MySQL 8.0 under Program Files)
#
# Usage:
#   $env:ACE_MYSQL_USER='jeremy'; $env:ACE_MYSQL_PASSWORD='...'
#   powershell -NoProfile -ExecutionPolicy Bypass -File scripts\Apply-RepoModSqlToMysql.ps1 -RepoRoot 'A:\ai\projects\ace-raaj-mods' -Database ace_world

param(
    [Parameter(Mandatory = $true)]
    [string] $RepoRoot,

    [string] $Database = 'ace_world',

    [string] $MysqlExe = $(if ($env:MYSQL_EXE) { $env:MYSQL_EXE } else { 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe' }),

    [string] $MysqlUser = $env:ACE_MYSQL_USER,

    [string] $MysqlPassword = $env:ACE_MYSQL_PASSWORD,

    [switch] $WhatIf
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $RepoRoot)) { throw "RepoRoot not found: $RepoRoot" }
if (-not (Test-Path -LiteralPath $MysqlExe)) { throw "mysql.exe not found: $MysqlExe (set MYSQL_EXE)" }

$repoRootFull = (Resolve-Path -LiteralPath $RepoRoot).Path

$mods = @(Get-ChildItem -LiteralPath $repoRootFull -Directory -ErrorAction Stop | Where-Object {
        $n = $_.Name
        if ($n -in @('ValheelContent', 'Shared', 'build', '.git')) { return $false }
        $cs = Join-Path $_.FullName ($n + '.csproj')
        Test-Path -LiteralPath $cs
    })

$sqlFiles = New-Object System.Collections.Generic.List[System.IO.FileInfo]
foreach ($m in $mods) {
    $sqlRoot = Join-Path $m.FullName 'Content\SQL'
    if (-not (Test-Path -LiteralPath $sqlRoot)) { continue }
    foreach ($f in Get-ChildItem -LiteralPath $sqlRoot -Recurse -File -Filter '*.sql' -ErrorAction SilentlyContinue) {
        # Sorted path order can run *-rollback.sql before its forward script; skip rollbacks unless explicitly enabled.
        if (($f.Name -like '*-rollback.sql') -and ($env:ACE_SQL_INCLUDE_ROLLBACK -ne '1')) { continue }
        [void]$sqlFiles.Add($f)
    }
}

$ordered = $sqlFiles | Sort-Object -Property FullName

Write-Host '=== Apply-RepoModSqlToMysql ==='
Write-Host ("Repo: {0}" -f $repoRootFull)
Write-Host ("Database: {0}" -f $Database)
Write-Host ("SQL files: {0}" -f $ordered.Count)
Write-Host ''

if ($ordered.Count -eq 0) {
    Write-Host 'No Content\SQL\*.sql under mod folders - nothing to apply.'
    exit 0
}

if ($WhatIf) {
    foreach ($f in $ordered) {
        $rel = $f.FullName.Substring($repoRootFull.Length).TrimStart('\')
        Write-Host ("  [WhatIf] {0}" -f $rel)
    }
    Write-Host ("WhatIf: would apply {0} file(s) to {1}." -f $ordered.Count, $Database)
    exit 0
}

if ([string]::IsNullOrWhiteSpace($MysqlUser)) { throw 'Set ACE_MYSQL_USER (and ACE_MYSQL_PASSWORD) to apply SQL.' }
if ($null -eq $MysqlPassword) { throw 'Set ACE_MYSQL_PASSWORD to apply SQL.' }

$cnf = Join-Path ([IO.Path]::GetTempPath()) ('ace-repo-sql-' + [Guid]::NewGuid().ToString('n') + '.cnf')
$cnfLines = @(
    '[client]',
    "user=$MysqlUser",
    "password=$MysqlPassword"
)
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[IO.File]::WriteAllLines($cnf, $cnfLines, $utf8NoBom)

$applied = 0
try {
    foreach ($f in $ordered) {
        $rel = $f.FullName.Substring($repoRootFull.Length).TrimStart('\')
        Write-Host ("  Applying: {0}" -f $rel)
        $src = ($f.FullName -replace '\\', '/')
        if ($src.Contains([char]39)) { throw 'SQL path contains apostrophe in path (unsupported).' }
        $q = [char]39
        $stmt = 'source ' + $q + $src + $q
        & $MysqlExe --defaults-extra-file=$cnf $Database -e $stmt
        if ($LASTEXITCODE -ne 0) {
            throw "mysql failed (exit $LASTEXITCODE) on file: $($f.FullName)"
        }
        $applied++
    }
}
finally {
    if (Test-Path -LiteralPath $cnf) {
        Remove-Item -LiteralPath $cnf -Force -ErrorAction SilentlyContinue
    }
}

Write-Host ''
Write-Host ("Applied {0} SQL file(s) to {1}." -f $applied, $Database)
