# wb_test ACE Server Watchdog (C:\ACE\)
# Polls for ACE.Server.exe running from C:\ACE\Server\ and restarts if down.
# Never touches void-test or live instances.
# Run via Scheduled Task at logon, or manually:
#   powershell -NoProfile -ExecutionPolicy Bypass -File .\WbTestWatchdog.ps1
# Disable: .\Unregister-WbTestWatchdogTask.ps1 (elevated), or create BLOCKED file.

param(
    [string] $ServerDir = "C:\ACE\Server",
    [string] $AceExeName = "ACE.Server.exe",
    [int] $PollSeconds = 30,
    [int] $MaxRestartsPerHour = 10,
    [int] $RestartDelaySeconds = 10
)

$ErrorActionPreference = "Stop"
$AceExePath = Join-Path $ServerDir $AceExeName
$StatePath  = Join-Path $ServerDir "wb_test_watchdog_state.json"
$BlockPath  = Join-Path $ServerDir "wb_test_watchdog_BLOCKED.txt"
$LogPath    = Join-Path $ServerDir "wb_test_watchdog.log"

function Write-Log([string] $msg)
{
    $line = "{0:u} {1}" -f (Get-Date).ToUniversalTime(), $msg
    Add-Content -Path $LogPath -Value $line -Encoding utf8
}

# Try Windows Terminal tabs first, fall back to Start-Process (separate window).
$wt = Get-Command "wt.exe" -ErrorAction SilentlyContinue

function Start-AceInstance()
{
    param([string]$ExePath, [string]$ServerDir, [string]$TabTitle)

    if ($global:wt) {
        Write-Log "Launching via Windows Terminal tab (title: $TabTitle)"
        try {
            & $global:wt.Source -w 0 nt -d "$ServerDir" --title "$TabTitle" "$ExePath" 2>&1 | Out-Null
            return $true
        } catch {
            Write-Log "Windows Terminal failed: $($_.Exception.Message); falling back to Start-Process"
        }
    }
    Start-Process -FilePath $ExePath -WorkingDirectory $ServerDir -WindowStyle Normal
    return $true
}

function Get-WbTestAceProcess()
{
    Get-CimInstance -ClassName Win32_Process -Filter "Name = '$AceExeName'" -ErrorAction SilentlyContinue |
        Where-Object { $_.ExecutablePath -and ($_.ExecutablePath -like "*C:\\ACE\\Server*") }
}

function Test-RestartStormCap()
{
    if (-not (Test-Path $StatePath)) { return $false }
    try
    {
        $raw = Get-Content -Path $StatePath -Raw -Encoding utf8 | ConvertFrom-Json
        $times = @()
        if ($raw.restarts) {
            foreach ($t in $raw.restarts) {
                $times += [datetime]::Parse($t, $null, [System.Globalization.DateTimeStyles]::AdjustToUniversal)
            }
        }
        $cutoff = [datetime]::UtcNow.AddHours(-1)
        $recent = $times | Where-Object { $_ -ge $cutoff }
        if ($recent.Count -ge $MaxRestartsPerHour)
        {
            $msg = "Restart storm cap: $($recent.Count) restarts in the last hour (max $MaxRestartsPerHour). Delete $BlockPath and trim $StatePath to resume."
            Write-Log $msg
            Set-Content -Path $BlockPath -Value $msg -Encoding utf8
            return $true
        }
    }
    catch
    {
        Write-Log "State file parse error: $($_.Exception.Message). Ignoring cap."
    }
    return $false
}

function Add-RestartRecord()
{
    $now = [datetime]::UtcNow.ToString("o")
    $times = New-Object System.Collections.Generic.List[string]
    if (Test-Path $StatePath) {
        try {
            $raw = Get-Content -Path $StatePath -Raw -Encoding utf8 | ConvertFrom-Json
            if ($raw.restarts) {
                foreach ($t in $raw.restarts) {
                    $dt = [datetime]::Parse($t, $null, [System.Globalization.DateTimeStyles]::AdjustToUniversal)
                    if ($dt -ge [datetime]::UtcNow.AddHours(-2)) { $times.Add($t) }
                }
            }
        } catch { }
    }
    $times.Add($now)
    $obj = [ordered]@{ restarts = $times.ToArray() }
    ($obj | ConvertTo-Json -Depth 5) | Set-Content -Path $StatePath -Encoding utf8 -NoNewline
}

if (-not (Test-Path $AceExePath))
{
    throw "Missing wb_test ACE executable: $AceExePath"
}

Write-Log "WbTestWatchdog started. Poll=${PollSeconds}s cap=${MaxRestartsPerHour}/hour delay=${RestartDelaySeconds}s"

while ($true)
{
    try
    {
        $proc = Get-WbTestAceProcess
        if (-not $proc)
        {
            if (Test-Path $BlockPath)
            {
                Write-Log "Blocked file present; not starting. Remove $BlockPath to clear."
            }
            elseif (Test-RestartStormCap)
            {
                Write-Log "Restart cap active; skipping start."
            }
            else
            {
                Write-Log "wb_test ACE process not found; starting after ${RestartDelaySeconds}s delay."
                Start-Sleep -Seconds $RestartDelaySeconds
                $proc2 = Get-WbTestAceProcess
                if (-not $proc2)
                {
                    Start-AceInstance -ExePath $AceExePath -ServerDir $ServerDir -TabTitle "wb_test"
                    Add-RestartRecord
                }
                else
                {
                    Write-Log "Process appeared during delay; skip duplicate start."
                }
            }
        }
    }
    catch
    {
        Write-Log "Loop error: $($_.Exception.Message)"
    }
    Start-Sleep -Seconds $PollSeconds
}
