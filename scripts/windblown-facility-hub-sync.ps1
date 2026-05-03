# One-shot: populate WindblownContent Facility Hub mirror + landblock diff artifact.
# Run: powershell -NoProfile -ExecutionPolicy Bypass -File scripts/windblown-facility-hub-sync.ps1
$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path

$root = Join-Path $repoRoot 'WindblownContent'
$valheel0130 = Join-Path $repoRoot 'ValheelContent\Content\06-landblock\0130.sql'
$ace0130 = 'A:\ai\projects\ace-sql\AC Production\01 Beyond-AC-Working\Landblock\0130.sql'
$fhSrc = Join-Path $repoRoot 'ValheelContent\Content\03-weenie\Facility Hub'
$fhDst = Join-Path $root 'Content\03-weenie\Facility Hub'

New-Item -ItemType Directory -Force -Path @(
    (Join-Path $root 'Content\06-landblock'),
    $fhDst,
    (Join-Path $root 'baseline\ace-sql\Landblock'),
    (Join-Path $root 'artifacts'),
    (Join-Path $root 'docs')
) | Out-Null

Copy-Item -Force $valheel0130 (Join-Path $root 'Content\06-landblock\0130.sql')
if (-not (Test-Path $ace0130)) {
    Write-Warning "ACE baseline missing: $ace0130 — skip baseline copy and diff."
}
else {
    Copy-Item -Force $ace0130 (Join-Path $root 'baseline\ace-sql\Landblock\0130.sql')
    $diffOut = Join-Path $root 'artifacts\0130-ace-vs-valheel.diff'
    git -C $repoRoot diff --no-index -- $ace0130 $valheel0130 2>$null | Set-Content -Encoding utf8 $diffOut
}

$robolog = Join-Path $root 'artifacts\robocopy-facility-hub.log'
$null = robocopy $fhSrc $fhDst /E /COPY:DAT /R:2 /W:2 /LOG:"$robolog"
if ($LASTEXITCODE -ge 8) {
    Write-Error "robocopy failed code $LASTEXITCODE — see $robolog"
    exit $LASTEXITCODE
}

Write-Host "WindblownContent updated under $root"
