# Path-scoped supervisor for ACRealms at C:\ACE-REALMS\Server only.
# Does not touch C:\ACE\ (test) or C:\ACE-WB\ (live Windblown).
# Run: powershell -NoProfile -ExecutionPolicy Bypass -File .\AceRealmsWatchdog.ps1
# Stop: disable the task or close this window; optional: .\Unregister-AceRealmsWatchdogTask.ps1

param(
    [string] $AceRealmsServerDir = "C:\ACE-REALMS\Server",
    [string] $AceExeName = "ACE.Server.exe",
    [int] $PollSeconds = 30,
    [int] $MaxRestartsPerHour = 5,
    [int] $RestartDelaySeconds = 20
)

$ErrorActionPreference = "Stop"
$AceExePath = Join-Path $AceRealmsServerDir $AceExeName
$StatePath = Join-Path $AceRealmsServerDir "ace_realms_watchdog_state.json"
$BlockPath = Join-Path $AceRealmsServerDir "ace_realms_watchdog_BLOCKED.txt"
$LogPath = Join-Path $AceRealmsServerDir "ace_realms_watchdog.log"

function Write-WatchdogLog([string] $msg)
{
    $line = "{0:u} {1}" -f (Get-Date).ToUniversalTime(), $msg
    Add-Content -Path $LogPath -Value $line -Encoding utf8
}

function Get-AceRealmsProcess()
{
    Get-CimInstance -ClassName Win32_Process -Filter "Name = '$AceExeName'" -ErrorAction SilentlyContinue |
        Where-Object { $_.ExecutablePath -and ($_.ExecutablePath -like "*ACE-REALMS*") }
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
    throw "Missing ACRealms ACE executable: $AceExePath"
}

Write-WatchdogLog "AceRealmsWatchdog started. Poll=${PollSeconds}s cap=${MaxRestartsPerHour}/hour delay=${RestartDelaySeconds}s"

while ($true)
{
    try
    {
        $ar = Get-AceRealmsProcess
        if (-not $ar)
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
                Write-WatchdogLog "ACRealms ACE.Server.exe not found; starting after ${RestartDelaySeconds}s delay."
                Start-Sleep -Seconds $RestartDelaySeconds
                $ar2 = Get-AceRealmsProcess
                if (-not $ar2)
                {
                    Start-Process -FilePath $AceExePath -WorkingDirectory $AceRealmsServerDir -WindowStyle Normal -CreateNoWindow:$false
                    Add-RestartRecord
                    Write-WatchdogLog "Start-Process issued for $AceExePath"
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
