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
