# Deployment Procedures

This document details the procedures for building and deploying mods to the various ACE server environments.

## Environments

- **void-test (`C:\ACE\`)**: The primary testing environment. Uses `void-test_world` database.
- **wb_test (`C:\ACE\`)**: The target testing environment for Windblown. Uses `ace_world` database.
- **Live (`C:\ACE-WB\`)**: The live production server. **NEVER deploy here without explicit "push live" command.**

## Local Build Process

Build mods locally using `dotnet build`. Output is directed to:
`A:\ai\projects\ace-raaj-mods\build\$(AssemblyName)\`

**Note:** This-internal-directory `build/` is NEVER copied to any server.

## Deployment Workflow

### 1. void-test Deploy (`push void` / `deploy void`)
Run from repo root using Git Bash:
```bash
bash scripts/deploy-void-test.sh
```

**Process:**
1.  Builds ALL mods (skips failures).
2.  **Wipes** `A:\void-test\Mods\` entirely.
3.  Copies **DLL + Meta.json + Settings.json** from each mod's `build/` output.
4.  Applies **`ModName/Content/SQL/**/*.sql`** to MySQL **`void-test_world`** via `scripts/Apply-RepoModSqlToMysql.ps1`.
    - Requires `ACE_MYSQL_USER` and `ACE_MYSQL_PASSWORD`.
    - Use `VOID_TEST_SKIP_SQL=1` to skip SQL.
    - Use `VOID_SQL_DATABASE` to override database.
    - Use `ACE_SQL_INCLUDE_ROLLBACK=1` to apply `*-rollback.sql` files.
5.  Excludes `ValheelContent`, `Shared`, and `build/`.

**Post-deploy:** Restart the void-test ACE server.

### 2. wb_test Deploy (`push wb test` / `deploy wb test` / `deploy test` full tree)
Run from repo root:
```bash
bash scripts/deploy-wb-test.sh
```

**Process:**
1.  Builds mods.
2.  Stops `C:\ACE\`.
3.  **Wipes + copies mods** to `C:\ACE\Mods\`.
4.  **`sync-world-void-test-to-wb-test.sh`** (by default) synchronizes `void-test_world` $\rightarrow$ `ace_world`.
    - Requires `ACE_MYSQL_USER` and `ACE_MYSQL_PASSWORD`.
    - Use `DEPLOY_WB_TEST_SKIP_WORLD_SYNC=1` to skip world clone.
5.  Applies repo `Content/SQL` to `ace_world`.

**Note:** Wipe overwrites `Settings.json` under each mod. Back up `C:\ACE\Mods` if needed.

### 3. World Synchronization (`sync-world-void-test-to-wb-test.sh`)
Used to align `ace_world` with `void-test_world`.
- Creates backups under `sql-backups/world-sync/`.
- Uses `SYNC_WORLD_BACKUP_DIR` and `SYNC_WORLD_DRY_RUN=1` for safe testing.
- If `WB_TEST_SHARD_DATABASE` is set and $\neq$ `void-test_world`, it will perform a full character/housing safety dump.

### 4. Ad-hoc Server Updates (`C:\ACE\`, `C:\ACE-WB\`)
For non-standard environments:
- Manually copy `build/ModName/` DLLs + `Meta.json` only.
- **Preserve** existing `Settings.json` unless explicitly requested to refresh.

## Environment Variables
Refer to `scripts/.deploy-mysql.env.example` for required variables. Local overrides should be set in `scripts/.deploy-mysql.env` (gitignored).

## Advanced Topics

### Matching wb_test DB to void-test DB
To point wb_test at the **same world database as void-test** (instead of `ace_world`), run with:
```bash
DEPLOY_TEST_MATCH_VOID_WORLD_DB=1 bash scripts/deploy-wb-test.sh
```
This sets `WB_TEST_SQL_DATABASE` to `VOID_SQL_DATABASE` (default `void-test_world`).

**⚠️ Warning:** Two live ACE instances writing to one shared world DB is unsafe. Use one writer at a time, or clone DB snapshots.

### Recommended Workflow: void-test First, Then wb_test
For 24/7 server operation:
1. Maintain two separate world databases: `void-test_world` (used by void-test ACE) and `ace_world` (used by `C:\ACE\`).
2. While iterating: deploy to void-test only (`bash scripts/deploy-void-test.sh`).
3. When void-test is stable: run `bash scripts/deploy-wb-test.sh` — it stops `C:\ACE\`, wipes mods, syncs world, re-applies SQL.

To clone the world without a full deploy, use the sync script alone:
```bash
bash scripts/sync-world-void-test-to-wb-test.sh
```

### Characters & Biota Safety
- Typical ACE config keeps **static world data** in `WorldDatabase` (e.g., `ace_world`) and **player data/biota/housing** in a separate `ShardDatabase`.
- The sync script (`sync-world-void-test-to-wb-test.sh`) only replaces the **world database**. If world and shard are truly **split** databases, your characters are safe.
- If world and shard share one database name, treat a full world sync as destructive.
- Use `SYNC_WORLD_TABLES` for a partial table sync, or `DEPLOY_WB_TEST_SKIP_WORLD_SYNC=1` to skip the bulk world replace.

### GUID Hygiene
`ValheelContent` SQL (which is never applied by normal deploy scripts) reserves `0x7013...` instance GUIDs. If that SQL was ever manually run on your DB, it can collide with Windblown Town Network GUIDs, causing `INSERT IGNORE` rows to silently fail. Prefer never applying Valheel world SQL to your QA databases.
