# Returns the full path to Git for Windows bash.exe (stdout). Exits 1 if not found.
# Used by GitHub Actions deploy workflow and Deploy-All-Test.ps1 — avoids passing paths
# with spaces through GITHUB_OUTPUT or workflow env interpolation.

$ErrorActionPreference = 'Stop'

function Test-UsableGitBash([string]$path)
{
    if (-not $path) { return $false }
    if (-not (Test-Path -LiteralPath $path)) { return $false }
    if ($path -match '(?i)\\Windows\\System32\\bash\.exe$') { return $false }
    if ($path -match '(?i)\\WindowsApps\\') { return $false }
    return $true
}

$candidates = @(
    $env:GITHUB_BASH,
    (Join-Path $env:ProgramFiles 'Git\bin\bash.exe'),
    (Join-Path ${env:ProgramFiles(x86)} 'Git\bin\bash.exe'),
    'C:\Program Files\Git\bin\bash.exe'
) | Where-Object { $_ }

$bash = $null
foreach ($candidate in $candidates)
{
    if (Test-UsableGitBash $candidate)
    {
        $bash = $candidate
        break
    }
}

if (-not $bash)
{
    foreach ($cmd in Get-Command bash -All -ErrorAction SilentlyContinue)
    {
        if (Test-UsableGitBash $cmd.Source)
        {
            $bash = $cmd.Source
            break
        }
    }
}

if (-not $bash)
{
    Write-Error 'Git Bash not found. Install Git for Windows (not WSL). Expected: C:\Program Files\Git\bin\bash.exe'
}

Write-Output $bash
