# Register void-test ACE Server watchdog as a scheduled task.
# Runs at user logon (interactive user) so the ACE console window opens visibly.
# Re-run after script changes.
# Unregister: .\Unregister-VoidTestWatchdogTask.ps1

param(
    [string] $RunAs = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name,
    [string] $TaskPassword = ""
)

$ErrorActionPreference = "Stop"
$watchdog = "A:\void-test\Server\VoidTestWatchdog.ps1"

if (-not (Test-Path $watchdog))
{
    throw "Missing watchdog script: $watchdog"
}

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin)
{
    throw "Run this script elevated (Administrator)."
}

$taskName = "void-test-Watchdog"
$pwsh = Join-Path $env:WINDIR "System32\WindowsPowerShell\v1.0\powershell.exe"
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
    Description = "Runs VoidTestWatchdog.ps1 as interactive user: restarts A:\void-test\Server\ACE.Server.exe if absent. ACE console visible on desktop."
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
Write-Host "Start now: Start-ScheduledTask -TaskName '$taskName'"
