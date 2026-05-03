# One-time: apply ACRealms Base-Realms schema to empty dust_* MySQL databases (fresh install).
# Run: powershell -ExecutionPolicy Bypass -File "...\dust-acrealms-bootstrap-databases.ps1"
# Stop ACE.Server before running.
#
# Default MySQL login is root (bootstrap only: creates schema inside existing dust_* DBs).
# ACE Server still uses Config.js MySql.Username (e.g. jeremy) at runtime; do not change that here.
#
# Runs mysql via System.Diagnostics.Process (stderr never becomes PowerShell ErrorRecord).
# Imports use -e source <path> (forward slashes, no single quotes around path; quoted path only if needed).
# Single-quoted paths caused ERROR 22 / doubled '' under Windows mysql client.

param(
    [string] $User = "root",
    [string] $Password = "andersine11"
)

$ErrorActionPreference = "Stop"
$Mysql = "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
$Base = "C:\ACE-REALMS\Server\DatabaseSetupScripts\Base-Realms"

if (-not (Test-Path -LiteralPath $Mysql)) { throw "mysql.exe not found: $Mysql" }
if (-not (Test-Path -LiteralPath $Base)) { throw "Base-Realms folder not found: $Base" }

# One string for ProcessStartInfo.Arguments: wrap in " if value has space/tab/double-quote (Windows argv rules).
function Escape-Arg([string] $s)
{
    if ($null -eq $s) { return '""' }
    $t = $s.Replace('\', '\\').Replace('"', '\"')
    if ($t -match '[\s"]') { return "`"$t`"" }
    return $t
}

function Invoke-MysqlExe([string] $Arguments)
{
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = $Mysql
    $psi.Arguments = $Arguments
    $psi.UseShellExecute = $false
    $psi.RedirectStandardError = $true
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardInput = $false
    $psi.CreateNoWindow = $true
    $psi.StandardOutputEncoding = [System.Text.Encoding]::UTF8
    $psi.StandardErrorEncoding = [System.Text.Encoding]::UTF8

    $p = New-Object System.Diagnostics.Process
    $p.StartInfo = $psi
    if (-not $p.Start()) { throw "Failed to start mysql.exe" }

    if (-not $p.WaitForExit(7200000))
    {
        try { $p.Kill() } catch { }
        throw "mysql.exe timed out after 2h"
    }

    $out = $p.StandardOutput.ReadToEnd()
    $err = $p.StandardError.ReadToEnd()
    $code = $p.ExitCode

    if ($code -ne 0)
    {
        Write-Host "--- mysql stderr ---"
        Write-Host $err
        Write-Host "--- mysql stdout ---"
        Write-Host $out
    }

    return $code
}

$userQ = Escape-Arg $User
$passQ = Escape-Arg $Password

Write-Host "Testing login ..."
$loginArgs = "--user=$userQ --password=$passQ -e " + (Escape-Arg "SELECT 1 AS ok;")
$code = Invoke-MysqlExe $loginArgs
if ($code -ne 0) { throw "MySQL login failed (exit $code; 1045 = wrong user/password for this script). Use -User/-Password (default root + same password as Config.js MySql.Password if you keep them aligned)." }

function Build-SourceExecute([string] $SqlPath)
{
    $full = [System.IO.Path]::GetFullPath($SqlPath)
    $norm = $full.Replace('\', '/')
    if ($norm.IndexOfAny(@(' ', "`t")) -ge 0)
    {
        return 'source "' + $norm.Replace('"', '\"') + '"'
    }

    return "source $norm"
}

function Import-SqlFile([string] $SqlPath, [string] $Database)
{
    Write-Host "Importing $(Split-Path $SqlPath -Leaf) -> $Database ..."
    $sourceSql = Build-SourceExecute $SqlPath
    $dbQ = Escape-Arg $Database
    $args = "--user=$userQ --password=$passQ $dbQ -e " + (Escape-Arg $sourceSql)
    $code = Invoke-MysqlExe $args
    if ($code -ne 0) { throw "Import failed for $Database (exit $code)" }
}

Import-SqlFile (Join-Path $Base "AuthenticationBase.sql") "dust_ace_auth"
Import-SqlFile (Join-Path $Base "ShardBase.sql") "dust_ace_shard"
Import-SqlFile (Join-Path $Base "WorldBase.sql") "dust_ace_world"

Write-Host "Done. Start ACE.Server; AutoUpdateWorldDatabase can then patch world from GitHub if configured."
