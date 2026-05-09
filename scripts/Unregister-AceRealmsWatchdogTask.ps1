# Requires Administrator. Removes the ACE-REALMS-Watchdog scheduled task (does not stop a running ACE.Server).

$ErrorActionPreference = "Stop"
$taskName = "ACE-REALMS-Watchdog"

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin)
{
    throw "Run this script elevated (Administrator)."
}

$existing = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
if ($existing)
{
    Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
    Write-Host "Removed scheduled task: $taskName"
}
else
{
    Write-Host "Task not found: $taskName"
}
