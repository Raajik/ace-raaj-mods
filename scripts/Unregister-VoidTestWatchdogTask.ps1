# Unregister void-test ACE Server watchdog scheduled task.
# Also kill any stray watchdog PowerShell host.

$TaskName = "void-test-Watchdog"
Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false -ErrorAction SilentlyContinue

# Kill stray watchdog PowerShell processes that are running the void-test watchdog script
Get-CimInstance -ClassName Win32_Process -Filter "Name = 'powershell.exe'" -ErrorAction SilentlyContinue |
    Where-Object { $_.CommandLine -and $_.CommandLine -like "*VoidTestWatchdog*" } |
    ForEach-Object { Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue }

Write-Host "Scheduled task '$TaskName' unregistered." -ForegroundColor Green
