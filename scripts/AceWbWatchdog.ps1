# Path-scoped supervisor for live Windblown ACE only (C:\ACE-WB\). Never touches C:\ACE\ test server.
# Run via Scheduled Task at startup, or manually: powershell -NoProfile -ExecutionPolicy Bypass -File .\AceWbWatchdog.ps1
# Stop: disable the task or close this window; optional: .\Unregister-AceWbWatchdogTask.ps1

param(
    [string] $AceWbServerDir = "C:\ACE-WB\Server",
    [string] $AceExeName = "ACE.Server.exe",
    [int] $PollSeconds = 30,
    [int] $MaxRestartsPerHour = 5,
    [int] $RestartDelaySeconds = 20
)

$ErrorActionPreference = "Stop"
$AceExePath = Join-Path $AceWbServerDir $AceExeName
$StatePath = Join-Path $AceWbServerDir "ace_wb_watchdog_state.json"
$BlockPath = Join-Path $AceWbServerDir "ace_wb_watchdog_BLOCKED.txt"
$LogPath = Join-Path $AceWbServerDir "ace_wb_watchdog.log"

function Write-WatchdogLog([string] $msg)
{
    $line = "{0:u} {1}" -f (Get-Date).ToUniversalTime(), $msg
    Add-Content -Path $LogPath -Value $line -Encoding utf8
}

$wt = Get-Command "wt.exe" -ErrorAction SilentlyContinue

function Start-AceInstance()
{
    param([string]$ExePath, [string]$ServerDir, [string]$TabTitle)

    if ($wt) {
        Write-WatchdogLog "Launching WT tab (no focus): $TabTitle"
        try {
            & $wt.Source -w 0 -f 0 nt -d "$ServerDir" --title "$TabTitle" "$ExePath" 2>&1 | Out-Null
            return $true
        } catch {
            Write-WatchdogLog "Windows Terminal failed: $($_.Exception.Message); starting hidden"
        }
    }
    Start-Process -FilePath $ExePath -WorkingDirectory $ServerDir -WindowStyle Hidden
    return $true
}

function Get-WbAceProcess()
{
    Get-CimInstance -ClassName Win32_Process -Filter "Name = '$AceExeName'" -ErrorAction SilentlyContinue |
        Where-Object { $_.ExecutablePath -and ($_.ExecutablePath -like "*ACE-WB*") }
}

function Test-RestartStormCap()
{
    if (-not (Test-Path $StatePath))
    {
        return $false
    }

    try
    {
        $raw = Get-Content -Path $StatePath -Raw -Encoding utf8 | ConvertFrom-Json
        $times = @()
        if ($raw.restarts)
        {
            foreach ($t in $raw.restarts)
            {
                $dt = [datetime]::Parse($t, $null, [System.Globalization.DateTimeStyles]::AdjustToUniversal)
                $times += $dt
            }
        }

        $cutoff = [datetime]::UtcNow.AddHours(-1)
        $recent = $times | Where-Object { $_ -ge $cutoff }
        if ($recent.Count -ge $MaxRestartsPerHour)
        {
            $msg = "Restart storm cap: $($recent.Count) restarts in the last hour (max $MaxRestartsPerHour). Delete $BlockPath and trim $StatePath to resume."
            Write-WatchdogLog $msg
            Set-Content -Path $BlockPath -Value $msg -Encoding utf8
            return $true
        }
    }
    catch
    {
        Write-WatchdogLog "State file parse error: $($_.Exception.Message). Ignoring cap for this cycle."
    }

    return $false
}

function Add-RestartRecord()
{
    $now = [datetime]::UtcNow.ToString("o")
    $times = New-Object System.Collections.Generic.List[string]
    if (Test-Path $StatePath)
    {
        try
        {
            $raw = Get-Content -Path $StatePath -Raw -Encoding utf8 | ConvertFrom-Json
            if ($raw.restarts)
            {
                foreach ($t in $raw.restarts)
                {
                    $dt = [datetime]::Parse($t, $null, [System.Globalization.DateTimeStyles]::AdjustToUniversal)
                    if ($dt -ge [datetime]::UtcNow.AddHours(-2))
                    {
                        $times.Add($t)
                    }
                }
            }
        }
        catch { }
    }

    $times.Add($now)
    $obj = [ordered]@{ restarts = $times.ToArray() }
    ($obj | ConvertTo-Json -Depth 5) | Set-Content -Path $StatePath -Encoding utf8 -NoNewline
}

if (-not (Test-Path $AceExePath))
{
    throw "Missing live ACE executable: $AceExePath"
}

Write-WatchdogLog "AceWbWatchdog started. Poll=${PollSeconds}s cap=${MaxRestartsPerHour}/hour delay=${RestartDelaySeconds}s"

while ($true)
{
    try
    {
        $wb = Get-WbAceProcess
        if (-not $wb)
        {
            if (Test-Path $BlockPath)
            {
                Write-WatchdogLog "Blocked file present; not starting. Remove $BlockPath to clear."
            }
            elseif (Test-RestartStormCap)
            {
                Write-WatchdogLog "Restart cap active; skipping start."
            }
            else
            {
                Write-WatchdogLog "Live ACE-WB process not found; starting after ${RestartDelaySeconds}s delay."
                Start-Sleep -Seconds $RestartDelaySeconds
                $wb2 = Get-WbAceProcess
                if (-not $wb2)
                {
                    # Foreground console when the scheduled task runs as an interactive user (not SYSTEM).
                    Start-AceInstance -ExePath $AceExePath -ServerDir $AceWbServerDir -TabTitle "live"
                    Add-RestartRecord
                }
                else
                {
                    Write-WatchdogLog "Process appeared during delay; skip duplicate start."
                }
            }
        }
    }
    catch
    {
        Write-WatchdogLog "Loop error: $($_.Exception.Message)"
    }

    Start-Sleep -Seconds $PollSeconds
}
