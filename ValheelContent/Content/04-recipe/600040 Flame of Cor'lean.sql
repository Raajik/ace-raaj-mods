DELETE FROM `recipe` WHERE `id` = 600040;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600040, 0, 0, 0, 0, 0, 0, 'You have imbued your armor with the Flame of Cragstone!', 0, 0, 'if you ever see this, oh man did you fuck it up.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600040, 0,    17, 696969, 3, 'This Item have already been imbued by the Flame of Cragstone.') /* Target.Tinker Total GreaterThanEqual 20 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600040, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 17, 696969, 2, 1) /* On Source.SuccessTarget Add RareID to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 28, 2500, 2, 1) /* On Source.SuccessTarget Add ArmorLevel to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 370, 250, 2, 1) /* On Source.SuccessTarget Add GearStat to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 371, 250, 2, 1) /* On Source.SuccessTarget Add GearStat to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 374, 250, 2, 1) /* On Source.SuccessTarget Add GearStat to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 375, 250, 2, 1) /* On Source.SuccessTarget Add GearStat to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 376, 250, 2, 1) /* On Source.SuccessTarget Add GearStat to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 379, 250, 2, 1) /* On Source.SuccessTarget Add GearStat to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 9041, 1, 2, 1) /* On Source.SuccessTarget Add Mirra Slot to Target */;

INSERT INTO `recipe_mods_d_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  52, 100686604, 1, 1) /* On Source.SuccessTarget SetValue IconUnderlay to Target */;

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  15, 'This item has been imbued with the Flame of Cragstone.', 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget CraftsmanName to Result */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600040;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600040, 804042 /* Drakin Forge Hammer */,    803883 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803884 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803885 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803886 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803887 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803888 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803889 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803890 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803891 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803892 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803893 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803894 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803895 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803896 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803897 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803898 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803899 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803900 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803901 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803902 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803903 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803904 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803905 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803906 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803907 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803908 /* Tradewinds Path Armor */, '2022-06-25 18:42:13')
     , (600040, 804042 /* Drakin Forge Hammer */,    803909 /* Tradewinds Path Armor */, '2022-06-25 18:42:13');