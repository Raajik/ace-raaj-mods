# ACRealms (`C:\ACE-REALMS`) auto-restart

Same pattern as **ACE-WB** (`scripts/README-ACE-WB-supervisor.md`), but **only** `C:\ACE-REALMS\Server\ACE.Server.exe`. The watchdog matches processes whose **executable path contains `ACE-REALMS`**. It does **not** start or stop `C:\ACE\` or `C:\ACE-WB\`.

## PowerShell watchdog (no extra binaries)

Task runs **at logon** as **you** (`Interactive`), not `SYSTEM`, so `ACE.Server.exe` opens a **normal console** on the desktop. The watchdog PowerShell window is **Hidden**.

If `Register-ScheduledTask` fails on credentials, use `-TaskPassword 'yourWindowsPassword'` once (do not commit), or create the task manually in `taskschd.msc` (At log on, Run only when user is logged on).

1. **Register** (elevated PowerShell):

   ```powershell
   Set-Location A:\ai\projects\ace-raaj-mods\scripts
   .\Register-AceRealmsWatchdogTask.ps1
   ```

2. **Start once** (or log off and back on):

   ```powershell
   Start-ScheduledTask -TaskName ACE-REALMS-Watchdog
   ```

3. **Remove** auto-restart (e.g. while debugging):

   ```powershell
   .\Unregister-AceRealmsWatchdogTask.ps1
   ```

4. **Storm cap** (`ace_realms_watchdog_BLOCKED.txt` under `C:\ACE-REALMS\Server\`): delete the block file and optionally trim `ace_realms_watchdog_state.json`.

**Logs:** `C:\ACE-REALMS\Server\ace_realms_watchdog.log`

**Tuning:** edit `AceRealmsWatchdog.ps1` parameters: `PollSeconds`, `MaxRestartsPerHour`, `RestartDelaySeconds`, or `-AceRealmsServerDir` if your install is not under `C:\ACE-REALMS\Server`.

## Notes

- Do not run two watchdogs that could both match the same `ACE.Server.exe` (same path). WB + ACRealms watchdogs are safe together (different path filters).
- Avoid blanket `taskkill /IM ACE.Server.exe` when multiple instances run; scope by path or PID (`AGENTS.md`).
