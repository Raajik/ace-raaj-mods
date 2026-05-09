# Schedule a one-time reminder to register the wb_test watchdog
# Runs ~4.5 hours from now, repeating every 15 min for 2 hours

$ErrorActionPreference = "Stop"

$now = Get-Date
$target = $now.AddHours(4.5)
$timeStr = $target.ToString("HH:mm")

Write-Host "Current time: $($now.ToString('HH:mm'))" -ForegroundColor Cyan
Write-Host "Reminder at:  $timeStr" -ForegroundColor Cyan
Write-Host ""

$taskName = "wb_test-Watchdog-reminder"

# Remove existing if stale
Unregister-ScheduledTask -TaskName $taskName -Confirm:$false -ErrorAction SilentlyContinue

$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument @"
-NoProfile -WindowStyle Normal -Command "Write-Host '===== TIME TO REGISTER wb_test WATCHDOG =====' -ForegroundColor Cyan; Write-Host 'Run elevated: scripts\Register-WbTestWatchdogTask.ps1'; Start-Sleep 30"
"@

$trigger = New-ScheduledTaskTrigger -Once -At $timeStr -RepetitionInterval (New-TimeSpan -Minutes 15) -RepetitionDuration (New-TimeSpan -Hours 2)
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -AllowStartIfOnBatteries
$principal = New-ScheduledTaskPrincipal -UserId "jeremy" -LogonType Interactive -RunLevel Limited

Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -Principal $principal -Force | Out-Null

$task = Get-ScheduledTask -TaskName $taskName
Write-Host "Reminder registered: $taskName" -ForegroundColor Green
Write-Host "Next run: $($task.NextRun)" -ForegroundColor Cyan
Write-Host ""
Write-Host "When it fires, a PowerShell window will open reminding you to run:" -ForegroundColor Yellow
Write-Host "  scripts\Register-WbTestWatchdogTask.ps1 (elevated)" -ForegroundColor White
