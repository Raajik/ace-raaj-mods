# Run me elevated to fix RunLevel on void-test and ACE-WB watchdogs
Write-Host "=== Re-registering void-test-Watchdog ==="
& "A:\ai\projects\ace-raaj-mods\scripts\Register-VoidTestWatchdogTask.ps1"
Write-Host "=== Re-registering ACE-WB-Watchdog ==="
& "A:\ai\projects\ace-raaj-mods\scripts\Register-AceWbWatchdogTask.ps1"
Write-Host "=== Starting tasks ==="
Start-ScheduledTask -TaskName "void-test-Watchdog" -ErrorAction SilentlyContinue
Start-ScheduledTask -TaskName "ACE-WB-Watchdog" -ErrorAction SilentlyContinue
Write-Host "=== Verification ==="
Get-ScheduledTask -TaskName "*Watchdog*" | Sort-Object TaskName | Format-Table TaskName,State,@{N='RunLevel';E={$_.Principal.RunLevel}} -AutoSize
Write-Host "Done."
