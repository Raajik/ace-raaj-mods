# ACE-WB live auto-restart (Windblown)

Two supported options. Both target **only** `C:\ACE-WB\Server\ACE.Server.exe`. The test server (`C:\ACE\`) is never stopped or started by these tools.

## Option A: PowerShell watchdog (no extra binaries)

The task runs **at your Windows logon** as **you** (`Interactive` logon), **not** `SYSTEM`, so when the watchdog starts `ACE.Server.exe` it opens a **normal console window on your desktop** (server log output + ACE console commands). The watchdog’s own PowerShell host is **Hidden** so you do not get an extra blank PS window.

If `Register-ScheduledTask` fails with a **password / credential** error while elevated, either:

- Run `Register-AceWbWatchdogTask.ps1 -TaskPassword 'yourWindowsPassword'` once (plain string; do not commit it), or  
- Create the task in **Task Scheduler** (`taskschd.msc`): trigger **At log on**, user **your account**, check **Run only when user is logged on**, action same as in `Register-AceWbWatchdogTask.ps1`.

Optional: `-RunAs 'DOMAIN\User'` if the account that should own the visible ACE console is not the one elevating the script.

1. **Register** (elevated PowerShell):

   ```powershell
   Set-Location A:\ai\projects\ace-raaj-mods\scripts
   .\Register-AceWbWatchdogTask.ps1
   ```

2. **Start the task once** (or reboot / log off and back on):

   ```powershell
   Start-ScheduledTask -TaskName ACE-WB-Watchdog
   ```

3. **Disable** auto-restart (e.g. while debugging):

   ```powershell
   .\Unregister-AceWbWatchdogTask.ps1
   ```

4. **Storm cap tripped** (`ace_wb_watchdog_BLOCKED.txt` under `C:\ACE-WB\Server\`):

   - Delete `ace_wb_watchdog_BLOCKED.txt`
   - Optionally trim old entries in `ace_wb_watchdog_state.json` or delete it to reset the hourly counter.

Logs: `C:\ACE-WB\Server\ace_wb_watchdog.log`

Parameters (edit `AceWbWatchdog.ps1` top or wrap in another script): `PollSeconds`, `MaxRestartsPerHour`, `RestartDelaySeconds`.

## Option B: NSSM Windows service

1. Download NSSM from https://nssm.cc/download and note the path to `nssm.exe` (use `win64` on 64-bit Windows).

2. **Do not** run both NSSM service and the watchdog task for the same ACE-WB instance (double start risk).

3. Elevated:

   ```powershell
   .\Setup-NssmAceWb.ps1 -NssmExe "C:\Path\to\nssm.exe"
   nssm start ACE-WB
   ```

4. Optional: in `services.msc`, open **ACE-WB** → **Recovery** tab for additional Windows-level restart policy.

5. Remove service when switching back to manual/watchdog:

   ```text
   nssm stop ACE-WB
   nssm remove ACE-WB confirm
   ```

## Notes

- Never use `taskkill /IM ACE.Server.exe` for maintenance when both test and live run; it kills **both**. Stop by executable path or PID (see `AGENTS.md`).
- NSSM may restart on clean exit if exit code is treated as failure; verify behavior for your ACE build if you rely on graceful shutdown.
