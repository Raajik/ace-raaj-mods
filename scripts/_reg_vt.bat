@echo off
REM Run me elevated
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cd /d "A:\ai\projects\ace-raaj-mods\scripts"
powershell -NoProfile -ExecutionPolicy Bypass "& '.\Register-VoidTestWatchdogTask.ps1'"
if %errorlevel% neq 0 (echo FAILED void-test & pause & exit /b)
powershell -NoProfile -ExecutionPolicy Bypass "& '.\Register-AceWbWatchdogTask.ps1'"
if %errorlevel% neq 0 (echo FAILED ACE-WB & pause & exit /b)
powershell -NoProfile -ExecutionPolicy Bypass "Get-ScheduledTask -TaskName 'void-test-Watchdog','ACE-WB-Watchdog' | Start-ScheduledTask"
powershell -NoProfile -ExecutionPolicy Bypass "Get-ScheduledTask -TaskName '*Watchdog*' | Format-Table TaskName,State,@{N='RunLevel';E={$_.Principal.RunLevel}} -AutoSize"
echo Done.
pause
