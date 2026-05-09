# Modify existing scheduled tasks' RunLevel without re-registering
# Uses Task Scheduler COM directly - no elevation needed for reading, but needs admin to write.
# If this fails, the fallback is to re-run _fix_runlevel.ps1 elevated.

$taskNames = @("void-test-Watchdog", "ACE-WB-Watchdog")

function Set-TaskRunLevel {
    param([string]$TaskName)

    try {
        $service = New-Object -ComObject "Schedule.Service"
        $service.Connect()
        $folder = $service.GetFolder("\")
        $task = $folder.GetTask($TaskName)

        # Read the XML definition, modify RunLevel
        $xml = [xml]$task.Xml
        $ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
        $ns.AddNamespace("t", "http://schemas.microsoft.com/windows/2004/02/mit/task")

        $principals = $xml.SelectNodes("//t:Principals/t:Principal", $ns)
        foreach ($p in $principals) {
            $runLevel = $p.SelectSingleNode("t:RunLevel", $ns)
            if ($runLevel) {
                Write-Host "$TaskName: current RunLevel = $($runLevel.InnerText)"
                $runLevel.InnerText = "Limited"
            } else {
                Write-Host "$TaskName: no RunLevel element found, adding Limited"
                $elem = $xml.CreateElement("RunLevel", $ns.LookupNamespace("t"))
                $elem.InnerText = "Limited"
                $p.AppendChild($elem) | Out-Null
            }
        }

        # Register the modified XML - this needs elevation
        $service = $null
        Write-Host "$TaskName: XML modified but this method needs admin too. Manual fix needed."
        return $false
    } catch {
        Write-Host "$TaskName: COM error: $($_.Exception.Message)"
        return $false
    }
}

foreach ($tn in $taskNames) {
    Set-TaskRunLevel $tn
}

Write-Host ""
Write-Host "Cannot fix RunLevel from WSL without elevation."
Write-Host "Please run the following script elevated (right-click PowerShell -> Run as Administrator):"
Write-Host ""
Write-Host "  powershell -NoProfile -ExecutionPolicy Bypass -File A:\ai\projects\ace-raaj-mods\scripts\_fix_runlevel.ps1"
Write-Host ""
