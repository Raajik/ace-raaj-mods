# Requires Administrator. Registers a Scheduled Task to run AceWbWatchdog.ps1 at user logon (repeatable pattern).
# Live ACE-WB only; does not manage C:\ACE\ test server.
#
# Runs as the interactive user (not SYSTEM) so when the watchdog starts ACE.Server.exe, the server console opens
# on your desktop (live log + in-game console commands). The watchdog PowerShell host is hidden; only ACE shows a window.
#
# Optional: if Register-ScheduledTask fails with a credential error, pass -TaskPassword (plain string; avoid logging it).

param(
    [string] $RunAs = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name,
    [string] $TaskPassword = ""
)

$ErrorActionPreference = "Stop"
$scriptDir = $PSScriptRoot
$watchdogSrc = Join-Path $scriptDir "AceWbWatchdog.ps1"
$watchdogDst = "C:\ACE-WB\Server\AceWbWatchdog.ps1"

# Deploy watchdog to server directory if not already there
if (-not (Test-Path $watchdogDst))
{
    if (-not (Test-Path $watchdogSrc)) { throw "Missing source: $watchdogSrc" }
    Copy-Item -Path $watchdogSrc -Destination $watchdogDst -Force
    Write-Host "Deployed AceWbWatchdog.ps1 to C:\ACE-WB\Server" -ForegroundColor Cyan
}
$watchdog = $watchdogDst

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin)
{
    throw "Run this script elevated (Administrator)."
}

$taskName = "ACE-WB-Watchdog"
$pwsh = Join-Path $env:WINDIR "System32\WindowsPowerShell\v1.0\powershell.exe"
# Hidden host: only ACE.Server.exe should open a visible console (WindowStyle Normal in AceWbWatchdog.ps1).
$watchdogDir = Split-Path $watchdog -Parent
$arg = "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$watchdog`""

$existing = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
if ($existing)
{
    Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}

$action = New-ScheduledTaskAction -Execute $pwsh -Argument $arg -WorkingDirectory $watchdogDir
$trigger = New-ScheduledTaskTrigger -AtLogOn -User $RunAs
$trigger.Repetition.Interval = [System.Xml.XmlConvert]::ToString([TimeSpan]::FromMinutes(1))
$trigger.Repetition.Duration = [System.Xml.XmlConvert]::ToString([TimeSpan]::FromDays(365))
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable `
    -RestartCount 3 -RestartInterval (New-TimeSpan -Minutes 1) `
    -ExecutionTimeLimit (New-TimeSpan -Days 3650)

$principal = New-ScheduledTaskPrincipal -UserId $RunAs -LogonType Interactive -RunLevel Highest

$regArgs = @{
    TaskName    = $taskName
    Action      = $action
    Trigger     = $trigger
    Settings    = $settings
    Principal   = $principal
    Description = "Runs AceWbWatchdog.ps1 as interactive user: restarts C:\ACE-WB\Server\ACE.Server.exe if absent (never touches C:\ACE\). ACE console visible on desktop."
}

if ($TaskPassword.Length -gt 0)
{
    Register-ScheduledTask @regArgs -Password $TaskPassword
}
else
{
    Register-ScheduledTask @regArgs
}

Write-Host "Registered task '$taskName' for $RunAs (Interactive at log on). Watchdog host is hidden; ACE.Server.exe starts visible."
Write-Host "If NSSM service ACE-WB is also installed, stop it first or you will get duplicate live processes."
Write-Host "Start now: Start-ScheduledTask -TaskName '$taskName'"
