@echo off
REM This batch auto-elevates itself
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cd /d "A:\ai\projects\ace-raaj-mods\scripts"
powershell -NoProfile -ExecutionPolicy Bypass -File "Register-VoidTestWatchdogTask.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "Register-AceWbWatchdogTask.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-ScheduledTask -TaskName 'void-test-Watchdog'; Start-ScheduledTask -TaskName 'ACE-WB-Watchdog'"
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ScheduledTask -TaskName '*Watchdog*' | Format-Table TaskName,State,@{N='RunLevel';E={$_.Principal.RunLevel}} -AutoSize"
pause
