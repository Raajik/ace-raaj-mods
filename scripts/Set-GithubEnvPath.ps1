# Writes a path (may contain spaces) to GITHUB_ENV using heredoc syntax.
# Usage: .\scripts\Set-GithubEnvPath.ps1 -Name ACE_EMULATOR_PATH -Value 'C:\ACE\Server'

param(
    [Parameter(Mandatory = $true)]
    [string]$Name,

    [Parameter(Mandatory = $true)]
    [string]$Value
)

if (-not $env:GITHUB_ENV)
{
    throw 'GITHUB_ENV is not set (run only inside GitHub Actions).'
}

$delim = "${Name}_$(New-Guid)"
Add-Content -Path $env:GITHUB_ENV -Value "${Name}<<${delim}"
Add-Content -Path $env:GITHUB_ENV -Value $Value
Add-Content -Path $env:GITHUB_ENV -Value $delim
