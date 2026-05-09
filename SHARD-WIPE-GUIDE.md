# Test Shard Wipe Guide — Backup & Restore Characters + Housing

## Purpose

Wipe the `ace_shard` database to flush out any stale/unwanted world-spawned biota, then restore only player characters, their inventories, and housing permissions. This lets you see whether unwanted content lives in the `ace_world` templates (source) or was injected at runtime into the shard.

---

## Step 1: Verify current state

Run these to snapshot the test server state before touching anything:

```powershell
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard -e "SELECT id, account_Id, name FROM ace_shard.character WHERE is_Deleted = 0;"

call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard -e "SELECT COUNT(*) FROM biota;"

call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard -e "SELECT COUNT(*) FROM house_permission;"

call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_auth -e "SELECT accountId, accountName, accessLevel FROM account;"
```

---

## Step 2: Stop ACE test server

```powershell
taskkill /F /IM ACE.Server.exe
timeout /t 5
tasklist | findstr ACE.Server
```

Confirm zero instances running before proceeding.

---

## Step 3: Create backup directory

```powershell
mkdir A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe
```

---

## Step 4: Full shard dump (safety rollback point)

```powershell
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysqldump.exe" -u jeremy -pandersine11 ace_shard > A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\ace_shard_full.sql
```

> Revert if needed: `call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard < A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\ace_shard_full.sql`

---

## Step 5: Dump accounts (`ace_auth`)

```powershell
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysqldump.exe" -u jeremy -pandersine11 ace_auth > A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\ace_auth_full.sql
```

---

## Step 6: Create dump batch script

> **How housing ownership works:** ACE links houses/apartments to characters via `biota_properties_i_i_d` entries using specific IID types:
> - `type=1` (Owner) — items in inventory/packs/equipment ✅
> - `type=32` (HouseOwner) — owned house/apartment biota 🏠
> - `type=33` (House) — items that belong to a house (decorations, storage)
> - `type=34` (Slumlord) — the slumlord entity for each apartment
>
> The script below grabs **all three housing types** plus the standard `type=1` inventory chain. Items placed on hooks or in house storage chain through the house biota's own `type=1` IIDs and are picked up by the nested-container pass.

Save this as `A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\dump_chars.bat`:

```batch
@echo off
REM === Dump character tables and character-owned biota from ace_shard ===
SET MYSQL="C:\Program Files\MySQL\MySQL Server 8.4\bin\mysqldump.exe"
SET DB=ace_shard
SET DIR=A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe

echo Dumping characters...
call %MYSQL% -u jeremy -pandersine11 %DB% character character_properties_contract_registry character_properties_fill_comp_book character_properties_friend_list character_properties_quest_registry character_properties_shortcut_bar character_properties_spell_bar character_properties_squelch character_properties_title_book > %DIR%\characters.sql

echo Creating temp biota ID set...
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 %DB% -e "DROP TABLE IF EXISTS _backup_biota_ids; CREATE TABLE _backup_biota_ids SELECT object_Id FROM biota_properties_i_i_d WHERE type=1 AND value IN (SELECT id FROM ace_shard.character WHERE is_Deleted = 0);"

REM Add houses/apartments owned via IID type 32 (HouseOwner), type 33 (House), and type 34 (Slumlord)
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 %DB% -e "INSERT IGNORE INTO _backup_biota_ids SELECT object_Id FROM biota_properties_i_i_d WHERE type IN (32,33,34) AND value IN (SELECT id FROM ace_shard.character WHERE is_Deleted = 0);"

REM Add the character player biota rows themselves
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 %DB% -e "INSERT IGNORE INTO _backup_biota_ids SELECT id FROM ace_shard.character WHERE is_Deleted = 0;"

REM Add one level of nested containers (bags inside bags)
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 %DB% -e "INSERT IGNORE INTO _backup_biota_ids SELECT object_Id FROM biota_properties_i_i_d WHERE type=1 AND value IN (SELECT object_Id FROM _backup_biota_ids);"

echo Dumping character biota...
call %MYSQL% -u jeremy -pandersine11 %DB% biota --where="id IN (SELECT object_Id FROM _backup_biota_ids)" > %DIR%\biota_character_owned.sql

echo Dumping biota property tables...
for %%t in (allegiance anim_part attribute attribute_2nd body_part book book_page_data bool create_list d_i_d emote emote_action enchantment_registry event_filter float generator i_i_d int int64 palette position skill spell_book string texture_map) do (
    call %MYSQL% -u jeremy -pandersine11 %DB% biota_properties_%%t --where="object_Id IN (SELECT object_Id FROM _backup_biota_ids)" > %DIR%\biota_props_%%t.sql
)

echo Dumping house permissions...
call %MYSQL% -u jeremy -pandersine11 %DB% house_permission > %DIR%\house_permission.sql

echo Cleaning up temp table...
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 %DB% -e "DROP TABLE IF EXISTS _backup_biota_ids;"

echo Done. All character data backed up to %DIR%
```

---

## Step 7: Run the backup script

```powershell
A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\dump_chars.bat
```

Verify files exist:

```powershell
dir A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\*.sql
```

---

## Step 8: Wipe the shard database

```powershell
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 -e "DROP DATABASE ace_shard; CREATE DATABASE ace_shard;"
```

---

## Step 9: Let ACE recreate empty schema

Start ACE.Server to let it build fresh empty tables:

```powershell
powershell -Command "Start-Process -FilePath 'C:\ACE\Server\ACE.Server.exe' -WorkingDirectory 'C:\ACE\Server' -WindowStyle Normal"
```

Wait **15 seconds** (enough for schema creation, not enough for heavy world processing), then kill it:

```powershell
taskkill /F /IM ACE.Server.exe
timeout /t 3
tasklist | findstr ACE.Server
```

---

## Step 10: Restore character data

```powershell
REM Restore characters and their properties
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard < A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\characters.sql

REM Restore character-owned biota
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard < A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\biota_character_owned.sql

REM Restore all biota property tables
for %%t in (allegiance anim_part attribute attribute_2nd body_part book book_page_data bool create_list d_i_d emote emote_action enchantment_registry event_filter float generator i_i_d int int64 palette position skill spell_book string texture_map) do (
    call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard < A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\biota_props_%%t.sql
)

REM Restore house permissions
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard < A:\ai\projects\ace-raaj-mods\WindblownContent\sql-backups\shard-wipe\house_permission.sql
```

---

## Step 11: Verify no duplicate biota IDs

```powershell
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard -e "SELECT id, COUNT(*) FROM biota GROUP BY id HAVING COUNT(*) > 1;"
```

If this returns any rows, there's a collision that needs fixing.

---

## Step 12: Start ACE and test

```powershell
powershell -Command "Start-Process -FilePath 'C:\ACE\Server\ACE.Server.exe' -WorkingDirectory 'C:\ACE\Server' -WindowStyle Normal"
```

Wait 30 seconds, then:

1. Log in with Wb/infinitewind
2. Verify all 4 characters appear
3. Verify each character has their items and skills
4. Walk around to see the world spawned fresh

---

## Checking for unwanted content after wipe

If you suspect a specific WCID range (e.g., custom 850xxx items), run:

```powershell
call "C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe" -u jeremy -pandersine11 ace_shard -e "SELECT b.id, b.weenie_Class_Id, w.class_Name FROM biota b JOIN ace_world.weenie w ON b.weenie_Class_Id = w.class_Id WHERE b.weenie_Class_Id >= 850000 ORDER BY b.weenie_Class_Id;"
```

If custom items appear in the shard after wipe, they're being spawned from `ace_world` templates — meaning the content is in your source database, not leaked data.

---

## Notes

- **Character GUIDs on test:** `1342177281` (Wb), `1342177282` (Muckphage), `1342177283` (Empanada Chaos), `1342177284` (Squiggles). If these change (e.g., you delete and recreate characters), update the script accordingly.
- **Housing IID types:** The script scans `biota_properties_i_i_d` for `type=1` (inventory containers), `type=32` (HouseOwner — owned house/apartment), `type=33` (House — items belonging to a house), and `type=34` (Slumlord — slumlord entity). Items placed in house storage or on hooks chain via the house biota's own type-1 IIDs and are picked up by the one-level nesting pass. Source: `ACE.Entity.Enum.Properties.PropertyInstanceId`.
- **Nested containers:** The dump script handles one level of nesting (items inside bags, items inside house containers). Deeply nested bags may require manual `INSERT IGNORE` recursion.
- **house_permission:** Currently empty on this test server. The script still dumps/restores it defensively for when housing is active.
- **Slumlord biota:** The slumlord entity for each apartment is linked to the character via IID type 34 and will be captured by the housing pass.
- **Server logs:** Check `C:\ACE\Server\ACE_Log.txt` after restart for any FK constraint errors.
