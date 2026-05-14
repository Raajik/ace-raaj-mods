# void-test ACE Server Watchdog
# Polls for ACE.Server.exe running from A:\void-test\Server\ and restarts if down.
# Run via Scheduled Task at logon, or manually:
#   powershell -NoProfile -ExecutionPolicy Bypass -File .\VoidTestWatchdog.ps1
# Disable: .\Unregister-VoidTestWatchdogTask.ps1 (elevated), or create BLOCKED file.

param(
    [string] $ServerDir = "A:\void-test\Server",
    [string] $AceExeName = "ACE.Server.exe",
    [int] $PollSeconds = 30,
    [int] $MaxRestartsPerHour = 10,
    [int] $RestartDelaySeconds = 10
)

$ErrorActionPreference = "Stop"
$AceExePath = Join-Path $ServerDir $AceExeName
$StatePath  = Join-Path $ServerDir "void-test_watchdog_state.json"
$BlockPath  = Join-Path $ServerDir "void-test_watchdog_BLOCKED.txt"
$LogPath    = Join-Path $ServerDir "void-test_watchdog.log"

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

    Write-Log "Launching tab (no-focus): $TabTitle"
    try {
        & $wt.Source -w 0 -f 0 nt -d "$ServerDir" --title "$TabTitle" "$ExePath" 2>&1 | Out-Null
    } catch {
        Write-Log "Windows Terminal failed: $($_.Exception.Message); starting hidden"
        Start-Process -FilePath $ExePath -WorkingDirectory $ServerDir -WindowStyle Hidden
    }
    return $true
}

function Get-VoidAceProcess()
{
    Get-CimInstance -ClassName Win32_Process -Filter "Name = '$AceExeName'" -ErrorAction SilentlyContinue |
        Where-Object { $_.ExecutablePath -and ($_.ExecutablePath -like "*void-test*") }
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
    throw "Missing void-test ACE executable: $AceExePath"
}

Write-Log "VoidTestWatchdog started. Poll=${PollSeconds}s cap=${MaxRestartsPerHour}/hour delay=${RestartDelaySeconds}s"

while ($true)
{
    try
    {
        $proc = Get-VoidAceProcess
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
                Write-Log "void-test ACE process not found; starting after ${RestartDelaySeconds}s delay."
                Start-Sleep -Seconds $RestartDelaySeconds
                $proc2 = Get-VoidAceProcess
                if (-not $proc2)
                {
                    Start-AceInstance -ExePath $AceExePath -ServerDir $ServerDir -TabTitle "void-test"
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



