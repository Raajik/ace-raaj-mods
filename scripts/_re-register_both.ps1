# Run me elevated to re-register void-test and ACE-WB watchdogs with RunLevel Limited
Write-Host "Re-registering void-test-Watchdog..."
& "A:\ai\projects\ace-raaj-mods\scripts\Register-VoidTestWatchdogTask.ps1"
Write-Host ""
Write-Host "Re-registering ACE-WB-Watchdog..."
& "A:\ai\projects\ace-raaj-mods\scripts\Register-AceWbWatchdogTask.ps1"
Write-Host ""
Write-Host "Done. Starting tasks..."
Start-ScheduledTask -TaskName "void-test-Watchdog" -ErrorAction SilentlyContinue
Start-ScheduledTask -TaskName "ACE-WB-Watchdog" -ErrorAction SilentlyContinue
Get-ScheduledTask -TaskName "*Watchdog*" | Format-Table TaskName,State,@{N='RunLevel';E={$_.Principal.RunLevel}} -AutoSize
