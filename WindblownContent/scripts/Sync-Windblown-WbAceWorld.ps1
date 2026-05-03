# Apply WindblownContent (+ Overtinked forward world SQL) to wb_ace_world to match repo / test intent.
# Excludes: Facility Hub Valheel mirror, *Rollback*, zzz_Salvage_Defense_*, baseline, artifacts.
# Requires: MySQL 8 client on PATH or default install path below.
$ErrorActionPreference = 'Stop'
$Repo = Split-Path (Split-Path $PSScriptRoot)
$Mysql = 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe'
$Dump = 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe'
$Auth = @('-u', 'jeremy', '-pandersine11')
$DbW = 'wb_ace_world'
$DbS = 'wb_ace_shard'
$BackupDir = Join-Path $Repo 'WindblownContent\sql-backups\2026-05-03'
$Log = Join-Path $BackupDir 'wb-windblown-sync-apply.log'
if (-not (Test-Path $BackupDir)) { New-Item -ItemType Directory -Path $BackupDir -Force | Out-Null }

function Invoke-SqlFile {
    param([string]$Path, [string]$Database)
    $name = Split-Path $Path -Leaf
    "`n==== $Database <= $name ====" | Tee-Object -FilePath $Log -Append
    $args = @('-u', 'jeremy', '-pandersine11', $Database)
    $errF = Join-Path $env:TEMP ("mysql-err-" + [Guid]::NewGuid().ToString() + ".txt")
    $p = Start-Process -FilePath $Mysql -ArgumentList $args -RedirectStandardInput $Path -Wait -PassThru -NoNewWindow -RedirectStandardError $errF
    if (Test-Path $errF) { Get-Content $errF -ErrorAction SilentlyContinue | Add-Content -Path $Log; Remove-Item $errF -Force -ErrorAction SilentlyContinue }
    if ($p.ExitCode -ne 0) { throw "mysql failed on $name exit $($p.ExitCode)" }
}

"# wb sync start $(Get-Date -Format o)" | Set-Content -Path $Log -Encoding utf8

# Scoped backup before landblock 0130 replace
& $Dump @Auth $DbW landblock_instance '--where=landblock=304' '--single-transaction' '--skip-comments' |
    Set-Content -Path (Join-Path $BackupDir 'pre-wb-landblock-304-instances.sql') -Encoding utf8

# Overtinked forward only (not WindblownContent but required for imbue salvage parity)
$over = Join-Path $Repo 'Overtinked\Content\SQL'
foreach ($f in @(
        'SalvagedYellowGarnet-Hemorrhage-weapon-style.sql',
        'SalvageCleavingNether-tinker-bags.sql',
        'SalvageCleavingNether-longdesc.sql'
    )) {
    Invoke-SqlFile -Path (Join-Path $over $f) -Database $DbW
}

# Windblown numbered buckets + Content (no Facility Hub subtree)
$wind = Join-Path $Repo 'WindblownContent'
$files = @()
$files += Get-ChildItem -LiteralPath (Join-Path $wind '01-weenies') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind '08-custom-items') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind '09-pricing') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind '03-vendor-stock') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind 'Content\SQL') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind '07-containers') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind '05-cleanup') -Recurse -Filter 'QuestItem_StackFix.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind '02-landblocks') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue
$files += Get-ChildItem -LiteralPath (Join-Path $wind 'Content\06-landblock') -Recurse -Filter '*.sql' -File -ErrorAction SilentlyContinue

$ordered = $files | Sort-Object -Property FullName
foreach ($item in $ordered) {
    $p = $item.FullName
    if ($p -match '\\baseline\\|\\artifacts\\') { continue }
    if ($p -match '\\Content\\03-weenie\\Facility Hub\\') { continue }
    if ($item.Name -match 'Rollback') { continue }
    if ($item.Name -match '^zzz_Salvage_Defense') { continue }
    if ($item.Name -eq 'PathwardenGear_BiotaValueFix.sql') {
        Invoke-SqlFile -Path $p -Database $DbS
    }
    else {
        Invoke-SqlFile -Path $p -Database $DbW
    }
}

"# wb_ace_shard biota cleanup (3669)" | Tee-Object -FilePath $Log -Append
& $Dump @Auth $DbS biota '--where=weenie_class_id=3669' '--single-transaction' '--skip-comments' |
    Set-Content -Path (Join-Path $BackupDir 'pre-wb-shard-biota-wcid-3669.sql') -Encoding utf8
Invoke-SqlFile -Path (Join-Path $wind '05-cleanup\QuestItem_BiotaCleanup.sql') -Database $DbS

"# done $(Get-Date -Format o)" | Tee-Object -FilePath $Log -Append
Write-Host "Log: $Log"
