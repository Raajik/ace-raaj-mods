# SqlDocumentationGenerator.ps1
# Scans ValheelContent and ace-sql projects, generates documentation and conflict reports.

param(
    [string]$ValheelPath = "A:\ai\projects\ace-raaj-mods\ValheelContent",
    [string]$AceSqlPath = "A:\ai\projects\ace-sql",
    [string]$OutputDir = "A:\ai\projects\ace-raaj-mods\docs\sql-comparison"
)

$ErrorActionPreference = "Stop"
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

function Extract-WcidsFromContent {
    param([string]$content)
    $wcids = @()
    # Match class_Id or weenie_Class_Id values
    $matches = [regex]::Matches($content, '(?i)(?:class_id|weenie_class_id)\s*,\s*(\d+)')
    foreach ($m in $matches) { $wcids += [int]$m.Groups[1].Value }
    return $wcids | Select-Object -Unique
}

function Extract-TablesFromContent {
    param([string]$content)
    $tables = @()
    $matches = [regex]::Matches($content, '(?i)INSERT\s+INTO\s+`?(\w+)`?')
    foreach ($m in $matches) { $tables += $m.Groups[1].Value.ToLower() }
    $matches = [regex]::Matches($content, '(?i)UPDATE\s+`?(\w+)`?')
    foreach ($m in $matches) { $tables += $m.Groups[1].Value.ToLower() }
    $matches = [regex]::Matches($content, '(?i)DELETE\s+FROM\s+`?(\w+)`?')
    foreach ($m in $matches) { $tables += $m.Groups[1].Value.ToLower() }
    return $tables | Select-Object -Unique | Sort-Object
}

function Get-FileHashQuick {
    param([string]$path)
    $stream = [System.IO.File]::OpenRead($path)
    $hash = [System.BitConverter]::ToString($md5.ComputeHash($stream)).Replace("-","")
    $stream.Close()
    return $hash
}

$md5 = [System.Security.Cryptography.MD5]::Create()

# ===========================
# 1. Scan ValheelContent
# ===========================
Write-Host "Scanning ValheelContent..."
$valheelFiles = Get-ChildItem -Path "$ValheelPath\Content" -Recurse -Filter "*.sql"
$valheelData = @()
$valheelWcidMap = @{}
$idx = 0
foreach ($file in $valheelFiles) {
    $idx++
    if ($idx % 500 -eq 0) { Write-Host "  Processed $idx / $($valheelFiles.Count)" }
    $relPath = $file.FullName.Substring($ValheelPath.Length + 1)
    $content = [System.IO.File]::ReadAllText($file.FullName)
    $wcids = Extract-WcidsFromContent -content $content
    $tables = Extract-TablesFromContent -content $content
    $hash = Get-FileHashQuick -path $file.FullName

    # Also try to extract from filename
    if ($file.BaseName -match '(\d{3,})') {
        $fileWcid = [int]$matches[1]
        if ($fileWcid -gt 0 -and $wcids -notcontains $fileWcid) {
            $wcids += $fileWcid
        }
    }

    foreach ($wcid in $wcids) {
        if (-not $valheelWcidMap.ContainsKey($wcid)) { $valheelWcidMap[$wcid] = @() }
        $valheelWcidMap[$wcid] += $relPath
    }

    $valheelData += [PSCustomObject]@{
        File = $relPath
        Size = $file.Length
        Lines = ($content -split "`n").Count
        Wcids = ($wcids -join ", ")
        Tables = ($tables -join ", ")
        Hash = $hash
    }
}
Write-Host "ValheelContent: $($valheelData.Count) files, $($valheelWcidMap.Count) unique WCIDs"

# ===========================
# 2. Scan ace-sql
# ===========================
Write-Host "Scanning ace-sql..."
$aceFiles = Get-ChildItem -Path $AceSqlPath -Recurse -Filter "*.sql"
$aceData = @()
$aceWcidMap = @{}
$idx = 0
foreach ($file in $aceFiles) {
    $idx++
    if ($idx % 200 -eq 0) { Write-Host "  Processed $idx / $($aceFiles.Count)" }
    $relPath = $file.FullName.Substring($AceSqlPath.Length + 1)
    $content = [System.IO.File]::ReadAllText($file.FullName)
    $wcids = Extract-WcidsFromContent -content $content
    $tables = Extract-TablesFromContent -content $content
    $hash = Get-FileHashQuick -path $file.FullName

    if ($file.BaseName -match '(\d{3,})') {
        $fileWcid = [int]$matches[1]
        if ($fileWcid -gt 0 -and $wcids -notcontains $fileWcid) {
            $wcids += $fileWcid
        }
    }

    foreach ($wcid in $wcids) {
        if (-not $aceWcidMap.ContainsKey($wcid)) { $aceWcidMap[$wcid] = @() }
        $aceWcidMap[$wcid] += $relPath
    }

    $aceData += [PSCustomObject]@{
        File = $relPath
        Size = $file.Length
        Lines = ($content -split "`n").Count
        Wcids = ($wcids -join ", ")
        Tables = ($tables -join ", ")
        Hash = $hash
    }
}
Write-Host "ace-sql: $($aceData.Count) files, $($aceWcidMap.Count) unique WCIDs"

# ===========================
# 3. Generate ValheelContent DOCUMENTATION.md
# ===========================
Write-Host "Generating ValheelContent DOCUMENTATION.md..."
$sb = [System.Text.StringBuilder]::new()
[void]$sb.AppendLine("# ValheelContent SQL Documentation")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("> Auto-generated on $(Get-Date -Format 'yyyy-MM-dd HH:mm')")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("## Summary")
[void]$sb.AppendLine("- **Total SQL files:** $($valheelData.Count)")
[void]$sb.AppendLine("- **Unique WCIDs:** $($valheelWcidMap.Count)")
[void]$sb.AppendLine("- **Total size:** $([math]::Round(($valheelData | Measure-Object -Property Size -Sum).Sum / 1MB, 2)) MB")
[void]$sb.AppendLine("")

# Folder breakdown
$folderGroups = $valheelData | Group-Object { ($_.File -split '\\')[0] }
[void]$sb.AppendLine("## Folder Breakdown")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Folder | Files | WCIDs | Total Size (KB) |")
[void]$sb.AppendLine("|--------|-------|-------|-----------------|")
foreach ($g in $folderGroups | Sort-Object Name) {
    $folderWcids = @()
    foreach ($item in $g.Group) {
        if ($item.Wcids) { $folderWcids += $item.Wcids -split ", " }
    }
    $uniqueWcids = ($folderWcids | Select-Object -Unique).Count
    $sizeKB = [math]::Round(($g.Group | Measure-Object -Property Size -Sum).Sum / 1KB, 1)
    [void]$sb.AppendLine("| $($g.Name) | $($g.Count) | $uniqueWcids | $sizeKB |")
}
[void]$sb.AppendLine("")

# Full file list
[void]$sb.AppendLine("## File Index")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| File | Size (B) | Lines | WCIDs | Tables |")
[void]$sb.AppendLine("|------|----------|-------|-------|--------|")
foreach ($item in $valheelData | Sort-Object File) {
    $wcidsShort = if ($item.Wcids.Length -gt 30) { $item.Wcids.Substring(0, 30) + "..." } else { $item.Wcids }
    $tablesShort = if ($item.Tables.Length -gt 40) { $item.Tables.Substring(0, 40) + "..." } else { $item.Tables }
    [void]$sb.AppendLine("| $($item.File) | $($item.Size) | $($item.Lines) | $wcidsShort | $tablesShort |")
}
[void]$sb.AppendLine("")

[System.IO.File]::WriteAllText("$OutputDir\ValheelContent-DOCUMENTATION.md", $sb.ToString())

# ===========================
# 4. Generate ace-sql DOCUMENTATION.md
# ===========================
Write-Host "Generating ace-sql DOCUMENTATION.md..."
$sb2 = [System.Text.StringBuilder]::new()
[void]$sb2.AppendLine("# ace-sql SQL Documentation")
[void]$sb2.AppendLine("")
[void]$sb2.AppendLine("> Auto-generated on $(Get-Date -Format 'yyyy-MM-dd HH:mm')")
[void]$sb2.AppendLine("")
[void]$sb2.AppendLine("## Summary")
[void]$sb2.AppendLine("- **Total SQL files:** $($aceData.Count)")
[void]$sb2.AppendLine("- **Unique WCIDs:** $($aceWcidMap.Count)")
[void]$sb2.AppendLine("- **Total size:** $([math]::Round(($aceData | Measure-Object -Property Size -Sum).Sum / 1MB, 2)) MB")
[void]$sb2.AppendLine("")

$folderGroups2 = $aceData | Group-Object { ($_.File -split '\\')[0] }
[void]$sb2.AppendLine("## Folder Breakdown")
[void]$sb2.AppendLine("")
[void]$sb2.AppendLine("| Folder | Files | WCIDs | Total Size (KB) |")
[void]$sb2.AppendLine("|--------|-------|-------|-----------------|")
foreach ($g in $folderGroups2 | Sort-Object Name) {
    $folderWcids = @()
    foreach ($item in $g.Group) {
        if ($item.Wcids) { $folderWcids += $item.Wcids -split ", " }
    }
    $uniqueWcids = ($folderWcids | Select-Object -Unique).Count
    $sizeKB = [math]::Round(($g.Group | Measure-Object -Property Size -Sum).Sum / 1KB, 1)
    [void]$sb2.AppendLine("| $($g.Name) | $($g.Count) | $uniqueWcids | $sizeKB |")
}
[void]$sb2.AppendLine("")

[void]$sb2.AppendLine("## File Index")
[void]$sb2.AppendLine("")
[void]$sb2.AppendLine("| File | Size (B) | Lines | WCIDs | Tables |")
[void]$sb2.AppendLine("|------|----------|-------|-------|--------|")
foreach ($item in $aceData | Sort-Object File) {
    $wcidsShort = if ($item.Wcids.Length -gt 30) { $item.Wcids.Substring(0, 30) + "..." } else { $item.Wcids }
    $tablesShort = if ($item.Tables.Length -gt 40) { $item.Tables.Substring(0, 40) + "..." } else { $item.Tables }
    [void]$sb2.AppendLine("| $($item.File) | $($item.Size) | $($item.Lines) | $wcidsShort | $tablesShort |")
}
[void]$sb2.AppendLine("")

[System.IO.File]::WriteAllText("$OutputDir\ace-sql-DOCUMENTATION.md", $sb2.ToString())

# ===========================
# 5. Overlap Analysis
# ===========================
Write-Host "Running overlap analysis..."
$overlapWcids = $valheelWcidMap.Keys | Where-Object { $aceWcidMap.ContainsKey($_) } | Sort-Object

$exactDuplicates = @()
$partialOverlaps = @()
$trueConflicts = @()

foreach ($wcid in $overlapWcids) {
    $valheelFiles = $valheelWcidMap[$wcid]
    $aceFiles = $aceWcidMap[$wcid]
    
    $valheelHashes = @()
    $aceHashes = @()
    
    foreach ($vf in $valheelFiles) {
        $fullPath = Join-Path $ValheelPath $vf
        $valheelHashes += ($valheelData | Where-Object { $_.File -eq $vf }).Hash
    }
    foreach ($af in $aceFiles) {
        $fullPath = Join-Path $AceSqlPath $af
        $aceHashes += ($aceData | Where-Object { $_.File -eq $af }).Hash
    }
    
    $matchingHashes = Compare-Object -ReferenceObject $valheelHashes -DifferenceObject $aceHashes -IncludeEqual -ExcludeDifferent | Select-Object -ExpandProperty InputObject
    
    if ($matchingHashes.Count -gt 0 -and $valheelHashes.Count -eq $aceHashes.Count -and $matchingHashes.Count -eq $valheelHashes.Count) {
        $exactDuplicates += [PSCustomObject]@{ WCID = $wcid; ValheelFiles = ($valheelFiles -join "; "); AceFiles = ($aceFiles -join "; "); Type = "Exact Duplicate" }
    } elseif ($matchingHashes.Count -gt 0) {
        $partialOverlaps += [PSCustomObject]@{ WCID = $wcid; ValheelFiles = ($valheelFiles -join "; "); AceFiles = ($aceFiles -join "; "); Type = "Partial Overlap (some files identical)" }
    } else {
        $trueConflicts += [PSCustomObject]@{ WCID = $wcid; ValheelFiles = ($valheelFiles -join "; "); AceFiles = ($aceFiles -join "; "); Type = "True Conflict (different content)" }
    }
}

Write-Host "Exact duplicates: $($exactDuplicates.Count)"
Write-Host "Partial overlaps: $($partialOverlaps.Count)"
Write-Host "True conflicts: $($trueConflicts.Count)"

# ===========================
# 6. Generate CONFLICTS.md
# ===========================
Write-Host "Generating CONFLICTS.md..."
$sb3 = [System.Text.StringBuilder]::new()
[void]$sb3.AppendLine("# SQL WCID Conflict Report: ValheelContent vs. ace-sql")
[void]$sb3.AppendLine("")
[void]$sb3.AppendLine("> Auto-generated on $(Get-Date -Format 'yyyy-MM-dd HH:mm')")
[void]$sb3.AppendLine("")
[void]$sb3.AppendLine("## Summary")
[void]$sb3.AppendLine("- **Total overlapping WCIDs:** $($overlapWcids.Count)")
[void]$sb3.AppendLine("- **Exact duplicates:** $($exactDuplicates.Count) (safe to deduplicate in future merge)")
[void]$sb3.AppendLine("- **Partial overlaps:** $($partialOverlaps.Count) (some files identical, others differ)")
[void]$sb3.AppendLine("- **True conflicts:** $($trueConflicts.Count) (ValheelContent considered authoritative)")
[void]$sb3.AppendLine("")
[void]$sb3.AppendLine("## ValheelContent is considered authoritative for all conflicts.")
[void]$sb3.AppendLine("Differences are documented below for reference during any future merge.")
[void]$sb3.AppendLine("")

if ($exactDuplicates.Count -gt 0) {
    [void]$sb3.AppendLine("## Exact Duplicates ($($exactDuplicates.Count))")
    [void]$sb3.AppendLine("")
    [void]$sb3.AppendLine("| WCID | Valheel File(s) | ace-sql File(s) |")
    [void]$sb3.AppendLine("|------|-----------------|-----------------|")
    foreach ($item in $exactDuplicates | Sort-Object WCID) {
        [void]$sb3.AppendLine("| $($item.WCID) | $($item.ValheelFiles) | $($item.AceFiles) |")
    }
    [void]$sb3.AppendLine("")
}

if ($partialOverlaps.Count -gt 0) {
    [void]$sb3.AppendLine("## Partial Overlaps ($($partialOverlaps.Count))")
    [void]$sb3.AppendLine("")
    [void]$sb3.AppendLine("| WCID | Valheel File(s) | ace-sql File(s) |")
    [void]$sb3.AppendLine("|------|-----------------|-----------------|")
    foreach ($item in $partialOverlaps | Sort-Object WCID) {
        [void]$sb3.AppendLine("| $($item.WCID) | $($item.ValheelFiles) | $($item.AceFiles) |")
    }
    [void]$sb3.AppendLine("")
}

if ($trueConflicts.Count -gt 0) {
    [void]$sb3.AppendLine("## True Conflicts ($($trueConflicts.Count))")
    [void]$sb3.AppendLine("")
    [void]$sb3.AppendLine("| WCID | Valheel File(s) | ace-sql File(s) |")
    [void]$sb3.AppendLine("|------|-----------------|-----------------|")
    foreach ($item in $trueConflicts | Sort-Object WCID) {
        [void]$sb3.AppendLine("| $($item.WCID) | $($item.ValheelFiles) | $($item.AceFiles) |")
    }
    [void]$sb3.AppendLine("")
}

# Add categorization proposal
[void]$sb3.AppendLine("## Future Merge: Categorization Proposal")
[void]$sb3.AppendLine("")
[void]$sb3.AppendLine("If ace-sql content is eventually merged into ValheelContent (or a new `AceSqlImporter` mod), the following folder mapping is proposed:")
[void]$sb3.AppendLine("")
[void]$sb3.AppendLine("| ace-sql Folder | Proposed ValheelCategory | Notes |")
[void]$sb3.AppendLine("|----------------|--------------------------|-------|")
[void]$sb3.AppendLine("| 01 Beyond-AC-Working | 06-landblock, 03-weenie | Mixed content (landblocks, weenies, vendors, world bosses) |")
[void]$sb3.AppendLine("| 02 Beyond-AC-Bug-Patches | 03-weenie | Bug fix weenies/portals |")
[void]$sb3.AppendLine("| 03 Sampson Admin Armor | 03-weenie | Admin-only gear |")
[void]$sb3.AppendLine("| 04 Spell Instructor Upgrades | 03-weenie | NPC updates |")
[void]$sb3.AppendLine("| 05 Update Quest Givers | 03-weenie | Quest NPC modifications |")
[void]$sb3.AppendLine("| 06 Update Vendors | 03-weenie | Vendor weenie updates |")
[void]$sb3.AppendLine("| 07 Shorten Timers | 02-quest | Quest timer adjustments |")
[void]$sb3.AppendLine("| 08 Stackable Adjustments | 03-weenie | Item property updates |")
[void]$sb3.AppendLine("| 09 Updated Housing Chests | 03-weenie | Housing item updates |")
[void]$sb3.AppendLine("| 10 Rare Items Quest | 02-quest, 03-weenie | Quest + reward weenies |")
[void]$sb3.AppendLine("| 11 mob patches | 03-weenie | Creature modifications |")
[void]$sb3.AppendLine("| 12 Noob Quests | 02-quest | New player quest content |")
[void]$sb3.AppendLine("| 13 gem wand vendor | 03-weenie | Vendor weenies |")
[void]$sb3.AppendLine("| Misc NPC's | 03-weenie | Miscellaneous NPCs |")
[void]$sb3.AppendLine("| Misc Portals | 03-weenie, 06-landblock | Portal weenies + landblock links |")
[void]$sb3.AppendLine("")

[System.IO.File]::WriteAllText("$OutputDir\CONFLICTS.md", $sb3.ToString())

Write-Host "Done! Output files:"
Write-Host "  $OutputDir\ValheelContent-DOCUMENTATION.md"
Write-Host "  $OutputDir\ace-sql-DOCUMENTATION.md"
Write-Host "  $OutputDir\CONFLICTS.md"
