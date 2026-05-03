# One-shot: create dust_* databases (if missing) + Base-Realms import. Run on YOUR machine.
#   powershell -ExecutionPolicy Bypass -File "A:\ai\projects\ace-raaj-mods\WindblownContent\scripts\Run-DustBootstrap.ps1"
# Log: dust-bootstrap-last.log (this folder)

param(
    [string] $User = "jeremy",
    [string] $Password = "andersine11"
)

$ErrorActionPreference = "Stop"
$Mysql = "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
$Log = Join-Path $PSScriptRoot "dust-bootstrap-last.log"
$CreateSql = Join-Path $PSScriptRoot "..\sql-backups\2026-05-02\dust-fresh-databases.sql"
$Bootstrap = Join-Path $PSScriptRoot "dust-acrealms-bootstrap-databases.ps1"

if (-not (Test-Path -LiteralPath $Mysql)) { throw "mysql.exe not found: $Mysql" }
if (-not (Test-Path -LiteralPath $CreateSql)) { throw "Missing: $CreateSql" }
if (-not (Test-Path -LiteralPath $Bootstrap)) { throw "Missing: $Bootstrap" }

function Write-Log([string] $m)
{
    $line = "$(Get-Date -Format o) $m"
    Add-Content -LiteralPath $Log -Value $line -Encoding UTF8
    Write-Host $line
}

Remove-Item -LiteralPath $Log -Force -ErrorAction SilentlyContinue
Write-Log "Run-DustBootstrap User=$User"

Write-Log "Step 1: CREATE DATABASE IF NOT EXISTS ..."
$sql = Get-Content -LiteralPath $CreateSql -Raw
$psi = New-Object System.Diagnostics.ProcessStartInfo
$psi.FileName = $Mysql
$psi.Arguments = "--user=$User --password=$Password"
$psi.UseShellExecute = $false
$psi.RedirectStandardError = $true
$psi.RedirectStandardOutput = $true
$psi.RedirectStandardInput = $true
$psi.CreateNoWindow = $true
$p = New-Object System.Diagnostics.Process
$p.StartInfo = $psi
[void]$p.Start()
$p.StandardInput.Write($sql)
$p.StandardInput.Close()
if (-not $p.WaitForExit(120000))
{
    try { $p.Kill() } catch { }
    throw "mysql create DB step timed out"
}

$e1 = $p.StandardError.ReadToEnd()
$o1 = $p.StandardOutput.ReadToEnd()
Write-Log "Step 1 exit=$($p.ExitCode)"
if ($e1.Trim().Length -gt 0) { Write-Log "Step1 stderr: $($e1.Trim())" }
if ($o1.Trim().Length -gt 0) { Write-Log "Step1 stdout: $($o1.Trim())" }
if ($p.ExitCode -ne 0) { throw "Step 1 failed" }

Write-Log "Step 2: dust-acrealms-bootstrap-databases.ps1 ..."
$out2 = [System.IO.Path]::GetTempFileName()
$err2 = [System.IO.Path]::GetTempFileName()
try
{
    $pwArgs = @(
        "-NoProfile",
        "-ExecutionPolicy", "Bypass",
        "-File", $Bootstrap,
        "-User", $User,
        "-Password", $Password
    )
    $p2 = Start-Process -FilePath "powershell.exe" -ArgumentList $pwArgs -Wait -PassThru -NoNewWindow `
        -RedirectStandardOutput $out2 -RedirectStandardError $err2
    $so = Get-Content -LiteralPath $out2 -Raw -ErrorAction SilentlyContinue
    $se = Get-Content -LiteralPath $err2 -Raw -ErrorAction SilentlyContinue
    if ($so) { Write-Log "Step2 stdout: $so" }
    if ($se) { Write-Log "Step2 stderr: $se" }
    Write-Log "Step 2 exit=$($p2.ExitCode)"
    if ($p2.ExitCode -ne 0) { throw "Step 2 bootstrap failed" }
}
finally
{
    Remove-Item -LiteralPath $out2 -Force -ErrorAction SilentlyContinue
    Remove-Item -LiteralPath $err2 -Force -ErrorAction SilentlyContinue
}

Write-Log "All done."
