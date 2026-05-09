# Requires Administrator. Registers a Scheduled Task to run AceRealmsWatchdog.ps1 at user logon.
# ACRealms at C:\ACE-REALMS\Server only; does not manage C:\ACE\ or C:\ACE-WB\.
#
# Runs as the interactive user (not SYSTEM) so ACE.Server.exe opens a visible console on your desktop.
# Watchdog PowerShell host is Hidden.
#
# Optional: Register-ScheduledTask credential error -> pass -TaskPassword once (plain string; do not commit).

param(
    [string] $RunAs = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name,
    [string] $TaskPassword = ""
)

$ErrorActionPreference = "Stop"
$scriptDir = $PSScriptRoot
$watchdog = Join-Path $scriptDir "AceRealmsWatchdog.ps1"
if (-not (Test-Path $watchdog))
{
    throw "Missing $watchdog"
}

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin)
{
    throw "Run this script elevated (Administrator)."
}

$taskName = "ACE-REALMS-Watchdog"
$pwsh = Join-Path $env:WINDIR "System32\WindowsPowerShell\v1.0\powershell.exe"
$arg = "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$watchdog`""

$existing = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
if ($existing)
{
    Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}

$action = New-ScheduledTaskAction -Execute $pwsh -Argument $arg -WorkingDirectory $scriptDir
$trigger = New-ScheduledTaskTrigger -AtLogOn -User $RunAs
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
    Description = "Runs AceRealmsWatchdog.ps1: restarts C:\ACE-REALMS\Server\ACE.Server.exe if absent (path must contain ACE-REALMS). Never touches C:\ACE\ or C:\ACE-WB\."
}

if ($TaskPassword.Length -gt 0)
{
    Register-ScheduledTask @regArgs -Password $TaskPassword
}
else
{
    Register-ScheduledTask @regArgs
}

Write-Host "Registered task '$taskName' for $RunAs (Interactive at log on). Watchdog host hidden; ACE.Server.exe visible."
Write-Host "Start now: Start-ScheduledTask -TaskName '$taskName'"
