# Optional: install Windows service "ACE-WB" via NSSM (Non-Sucking Service Manager).
# Requires Administrator and nssm.exe on PATH or -NssmExe path.
# Conflicts with manual Start-Process / duplicate ACE-WB instances: stop other ACE-WB starters before enabling.
#
# Download: https://nssm.cc/download (extract nssm.exe for your architecture).
# Example: .\Setup-NssmAceWb.ps1 -NssmExe "C:\Tools\nssm-2.24\win64\nssm.exe"

param(
    [string] $ServiceName = "ACE-WB",
    [string] $AceWbServerDir = "C:\ACE-WB\Server",
    [string] $AceExeName = "ACE.Server.exe",
    [string] $NssmExe = ""
)

$ErrorActionPreference = "Stop"
if (-not $NssmExe)
{
    $NssmExe = $env:NSSM_EXE
}
if (-not $NssmExe)
{
    $cmd = Get-Command nssm -ErrorAction SilentlyContinue
    if ($cmd) { $NssmExe = $cmd.Source }
}
if (-not $NssmExe -or -not (Test-Path $NssmExe))
{
    throw "nssm.exe not found. Set -NssmExe or NSSM_EXE env var. See scripts/README-ACE-WB-supervisor.md"
}

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin)
{
    throw "Run elevated (Administrator)."
}

$app = Join-Path $AceWbServerDir $AceExeName
if (-not (Test-Path $app))
{
    throw "Missing $app"
}

& $NssmExe install $ServiceName $app
& $NssmExe set $ServiceName AppDirectory $AceWbServerDir
# Restart process if it exits for any reason; tune delay (ms) to avoid tight DB reconnect loops
& $NssmExe set $ServiceName AppExit Default Restart
& $NssmExe set $ServiceName AppRestartDelay 20000
& $NssmExe set $ServiceName DisplayName "ACE Server (Windblown live)"
& $NssmExe set $ServiceName Description "Live ACEmulator for ACE-WB (port 9002). Managed by NSSM."

Write-Host "Installed service $ServiceName. Start with: nssm start $ServiceName  (or services.msc)"
Write-Host "Remove with: nssm remove $ServiceName confirm"
