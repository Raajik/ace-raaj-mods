# Requires Administrator. Registers a Scheduled Task to run AceWbWatchdog.ps1 at user logon (repeatable pattern).
# Live ACE-WB only; does not manage C:\ACE\ test server.

$ErrorActionPreference = "Stop"
$scriptDir = $PSScriptRoot
$watchdog = Join-Path $scriptDir "AceWbWatchdog.ps1"
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

$taskName = "ACE-WB-Watchdog"
$pwsh = Join-Path $env:WINDIR "System32\WindowsPowerShell\v1.0\powershell.exe"
$arg = "-NoProfile -ExecutionPolicy Bypass -File `"$watchdog`""

$existing = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
if ($existing)
{
    Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}

$action = New-ScheduledTaskAction -Execute $pwsh -Argument $arg -WorkingDirectory $scriptDir
$trigger = New-ScheduledTaskTrigger -AtStartup
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable `
    -RestartCount 3 -RestartInterval (New-TimeSpan -Minutes 1) `
    -ExecutionTimeLimit (New-TimeSpan -Days 3650)

Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings `
    -User "SYSTEM" -RunLevel Highest `
    -Description "Runs AceWbWatchdog.ps1: restarts C:\ACE-WB\Server\ACE.Server.exe if absent (never touches C:\ACE\)."
