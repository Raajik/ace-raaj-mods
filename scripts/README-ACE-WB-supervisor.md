# ACE-WB live auto-restart (Windblown)

Two supported options. Both target **only** `C:\ACE-WB\Server\ACE.Server.exe`. The test server (`C:\ACE\`) is never stopped or started by these tools.

## Option A: PowerShell watchdog (no extra binaries)

1. **Register** (elevated PowerShell):

   ```powershell
   Set-Location A:\ai\projects\ace-raaj-mods\scripts
   .\Register-AceWbWatchdogTask.ps1
   ```

2. **Start the task once** (or reboot):

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
