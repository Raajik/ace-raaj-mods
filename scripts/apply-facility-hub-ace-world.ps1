# Apply Valheel Facility Hub weenie SQL + landblock 0130 to ace_world (test).
# Backs up prior rows under WindblownContent/sql-backups/<UTC-date>/ per AGENTS.md.
param(
    [string]$Database = 'ace_world',
    [string]$MysqlExe = 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe',
    [string]$MysqldumpExe = 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe',
    [string]$MysqlUser = 'jeremy',
    [string]$MysqlPassword = 'andersine11',
    [switch]$WhatIf
)

$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$hubRoot = Join-Path $repoRoot 'ValheelContent\Content\03-weenie\Facility Hub'
$lbSql = Join-Path $repoRoot 'ValheelContent\Content\06-landblock\0130.sql'
$backupRoot = Join-Path $repoRoot ("WindblownContent\sql-backups\{0:yyyy-MM-dd}-facility-hub" -f [DateTime]::UtcNow)

if (-not (Test-Path $MysqlExe)) { throw "mysql.exe not found: $MysqlExe" }
if (-not (Test-Path $MysqldumpExe)) { throw "mysqldump.exe not found: $MysqldumpExe" }
if (-not (Test-Path $hubRoot)) { throw "Facility Hub folder missing: $hubRoot" }
if (-not (Test-Path $lbSql)) { throw "0130.sql missing: $lbSql" }

function Invoke-MysqlArgs([string[]]$ExtraArgs)
{
    $all = @('-u', $MysqlUser, "-p$MysqlPassword", $Database) + $ExtraArgs
    & $MysqlExe @all
    if ($LASTEXITCODE -ne 0) { throw "mysql failed exit $LASTEXITCODE" }
}

function Invoke-MysqlScalarLines([string[]]$ExtraArgs)
{
    $all = @('-u', $MysqlUser, "-p$MysqlPassword", $Database) + $ExtraArgs
    $lines = & $MysqlExe @all
    if ($LASTEXITCODE -ne 0) { throw "mysql failed exit $LASTEXITCODE" }
    return $lines
}

function Invoke-Mysqldump([string[]]$DumpArgs)
{
    $all = @('-u', $MysqlUser, "-p$MysqlPassword", $Database) + $DumpArgs
    & $MysqldumpExe @all
    if ($LASTEXITCODE -ne 0) { throw "mysqldump failed exit $LASTEXITCODE" }
}

New-Item -ItemType Directory -Force -Path $backupRoot | Out-Null

# WCIDs from leading digits in each .sql filename (leading zeros collapse to int, e.g. 02391 -> 2391).
$wcids = New-Object System.Collections.Generic.HashSet[int]
Get-ChildItem -Path $hubRoot -Recurse -File -Filter '*.sql' | ForEach-Object {
    if ($_.BaseName -match '^([0-9]+)\s') {
        [void]$wcids.Add([int]$Matches[1])
    }
}
$sorted = $wcids | Sort-Object
$wcidIn = ($sorted -join ',')
Write-Host ("Unique WCIDs from filenames: {0}" -f $wcids.Count)
if ($wcids.Count -eq 0) { throw "No WCIDs parsed from Facility Hub .sql filenames (expected names like '02391 Foo.sql')." }

if ($WhatIf)
{
    Write-Host "WhatIf: backups -> $backupRoot ; then apply $($wcids.Count) weenie files + 0130.sql"
    exit 0
}

Write-Host "Backing up landblock_instance (landblock 304 = 0x0130)..."
Invoke-Mysqldump @(
    'landblock_instance', '--where=landblock=304', '--single-transaction', '--skip-comments',
    '--result-file', (Join-Path $backupRoot 'pre-landblock_instance-0x0130.sql')
)

Write-Host "Backing up weenie rows (class_Id IN ...)..."
Invoke-Mysqldump @(
    'weenie', "--where=class_Id IN ($wcidIn)", '--single-transaction', '--skip-comments',
    '--result-file', (Join-Path $backupRoot 'pre-weenie-class_ids.sql')
)

$tablesWithObjectId = Invoke-MysqlScalarLines @(
    '-N', '-B', '-e',
    "SELECT TABLE_NAME FROM information_schema.COLUMNS WHERE TABLE_SCHEMA='$Database' AND COLUMN_NAME='object_Id' AND TABLE_NAME LIKE 'weenie_properties%' AND TABLE_NAME <> 'weenie_properties_emote_action' ORDER BY TABLE_NAME;"
)
foreach ($t in $tablesWithObjectId)
{
    if ([string]::IsNullOrWhiteSpace($t)) { continue }
    $safe = $t.Trim()
    $out = Join-Path $backupRoot ("pre-{0}.sql" -f $safe)
    Write-Host "  dump $safe ..."
    Invoke-Mysqldump @(
        $safe, "--where=object_Id IN ($wcidIn)", '--single-transaction', '--skip-comments',
        '--result-file', $out
    )
}

Write-Host "Backing up weenie_properties_emote_action (via emote ids)..."
Invoke-Mysqldump @(
    'weenie_properties_emote_action',
    "--where=emote_Id IN (SELECT id FROM weenie_properties_emote WHERE object_Id IN ($wcidIn))",
    '--single-transaction', '--skip-comments',
    '--result-file', (Join-Path $backupRoot 'pre-weenie_properties_emote_action.sql')
)

$sqlFiles = Get-ChildItem -Path $hubRoot -Recurse -File -Filter '*.sql' | Sort-Object FullName
$i = 0
foreach ($f in $sqlFiles)
{
    $i++
    Write-Host ("[{0}/{1}] {2}" -f $i, $sqlFiles.Count, $f.Name)
    Get-Content -LiteralPath $f.FullName -Raw -Encoding UTF8 | & $MysqlExe '-u', $MysqlUser, "-p$MysqlPassword", '--default-character-set=utf8mb4', $Database
    if ($LASTEXITCODE -ne 0) { throw "mysql apply failed on $($f.FullName) exit $LASTEXITCODE" }
}

Write-Host "Applying landblock 0130.sql..."
Get-Content -LiteralPath $lbSql -Raw -Encoding UTF8 | & $MysqlExe '-u', $MysqlUser, "-p$MysqlPassword", '--default-character-set=utf8mb4', $Database
if ($LASTEXITCODE -ne 0) { throw "mysql apply failed on 0130.sql exit $LASTEXITCODE" }

Write-Host "Done. Backups in: $backupRoot"
Invoke-MysqlArgs @('-e', "SELECT COUNT(*) AS landblock_rows_304 FROM landblock_instance WHERE landblock=304;")
Invoke-MysqlArgs @('-e', "SELECT COUNT(*) AS weenie_defs FROM weenie WHERE class_Id IN ($wcidIn);")
