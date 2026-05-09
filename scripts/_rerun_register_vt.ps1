# Schedule self-elevation
$script = "A:\ai\projects\ace-raaj-mods\scripts\Register-VoidTestWatchdogTask.ps1"
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-NoProfile -ExecutionPolicy Bypass -File `"$script`""
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddSeconds(15) -RepetitionInterval (New-TimeSpan -Minutes 1) -RepetitionDuration (New-TimeSpan -Minutes 5)
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -DeleteExpiredTaskAfter ([TimeSpan]::Zero)
$principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -RunLevel Highest -LogonType ServiceAccount
Register-ScheduledTask -TaskName "ReReg-VoidTest" -Action $action -Trigger $trigger -Settings $settings -Principal $principal -Force
Write-Host "Scheduled ReReg-VoidTest to run in 15 seconds as SYSTEM."
