# Dust (ACRealms) fresh setup — what was added

## On disk (`C:\ACE-REALMS\Server`)

1. **`Config.realms.js`** — `DefaultRealm` = **`Dust`**, realm selector off, no ACE migration.
2. **`Content/json/realms/realm/Dust.jsonc`** — minimal homeworld realm matching that name (alongside existing `Basic Realm*.jsonc`).

## MySQL (you must run locally if not already done)

**PowerShell** (no `<` redirect — use pipe or `cmd /c`):

```powershell
Get-Content "A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\2026-05-02\dust-fresh-databases.sql" -Raw | & "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u jeremy -pandersine11
```

Or **cmd.exe** (classic redirect works):

```powershell
cmd /c "\"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe\" -u jeremy -pandersine11 < \"A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\2026-05-02\dust-fresh-databases.sql\""
```

Workbench: open `dust-fresh-databases.sql`, run against localhost.

Creates **`dust_ace_auth`**, **`dust_ace_shard`**, **`dust_ace_world`**.

### Base schema (required once — empty DBs have no tables)

ACRealms startup runs **world update** and **customization SQL** before auto DB patching is effective; empty DBs therefore log errors like **`version` doesn't exist** (world) and **`config_properties_string` doesn't exist** (shard). **Stop the server**, then import the shipped **Base-Realms** scripts:

```powershell
powershell -ExecutionPolicy Bypass -File "A:\ai\projects\ace-raaj-mods\WindblownContent\scripts\dust-acrealms-bootstrap-databases.ps1"
```

Or one wrapper (create `dust_*` DBs from `dust-fresh-databases.sql`, then bootstrap; log beside scripts):

```powershell
powershell -ExecutionPolicy Bypass -File "A:\ai\projects\ace-raaj-mods\WindblownContent\scripts\Run-DustBootstrap.ps1"
```

That runs `DatabaseSetupScripts/Base-Realms/AuthenticationBase.sql`, `ShardBase.sql`, and `WorldBase.sql` into your three `dust_*` databases. **Default CLI user is `root`** with the same password as the `-Password` param (defaults to `andersine11`); override with `-User jeremy` if you only grant imports to that account. ACE runtime still uses **`Config.js` → `MySql.Username`** (typically `jeremy`) for the server process, not this script.

After bootstrap, start the server again; **`AutoUpdateWorldDatabase`** can pull the latest **ACE-World** patch release into `dust_ace_world` if still enabled.

**PowerShell + mysql stderr:** The bootstrap script runs `mysql.exe` via **`System.Diagnostics.Process`** (not `& mysql`) and reads stderr **after** `WaitForExit`, so the “password on the command line” warning does not become a terminating `NativeCommandError`. Imports use **`-e "source C:/…/file.sql"`** (forward slashes, no single quotes around the path; Windows `mysql` otherwise errors 22). Paths with spaces use `source "C:/…/file.sql"`. No stdin redirection.

**`ERROR 1045` on bootstrap:** Defaults are **`root`** + `-Password` (same default as before). Override if needed:

```powershell
powershell -ExecutionPolicy Bypass -File "...\dust-acrealms-bootstrap-databases.ps1" -Password "your_root_password"
powershell -ExecutionPolicy Bypass -File "...\dust-acrealms-bootstrap-databases.ps1" -User jeremy -Password "your_actual_password"
```

If login still fails, confirm in Workbench that the chosen account works on `localhost`, and that it can run `source` / DDL into `dust_*` (create empty DBs first with `dust-fresh-databases.sql` or as root).

## Still required (cannot automate from repo)

- **`C:\ACE-REALMS\Dats\`** — Copy full client **`.dat`** set here (`client_cell_1.dat`, `client_portal.dat`, `client_highres.dat`, `client_local_English.dat`, etc.). Server will not boot without them.
- **`C:\ACE-REALMS\Mods\`** — Empty folder is fine; deploy Harmony DLLs here when ready.

## First boot vs offline shard maintenance

Empty shard DB has **no tables** until migrations run. These **`Offline`** options run **before** that and must stay **`false`** until the first successful boot, then you can re-enable for maintenance:

- **`PurgeOrphanedBiotas`** — otherwise `biota` missing errors.
- **`PruneDeletedCharactersFromFriendLists`** — otherwise `character` missing errors.

Both are set **`false`** in `Config.js` with comments; flip back after the server comes up cleanly.

## Start

From `C:\ACE-REALMS\Server`, run `ACE.Server.exe` (or your `start_server.bat`). Then **`check logs dust`** per `AGENTS.md`.
