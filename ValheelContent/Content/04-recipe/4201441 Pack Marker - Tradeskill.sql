DELETE FROM `recipe` WHERE `id` = 4201441;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (4201441, 0, 0, 0, 0, 0, 0, 'You mark the pack for Tradeskills', 0, 0, 'this should not show ever', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (4201441, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  18, 1, 1, 1) /* On Source.SuccessTarget SetValue UiEffects - Magical to Target */;

INSERT INTO `recipe_mods_d_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  50, 100673210, 1, 0) /* On Player.SuccessTarget SetValue IconOverlay to Target */;

INSERT INTO `recipe_mods_i_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  38, 0, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget AllowedWielder to Result */;

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  25, NULL, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget CraftsmanName to Result */
     , (@parent_id, 0,  14, 'This Pack is marked to hold Tradeskill goods', 1, 1) /* On Source.SuccessTarget SetValue Use to Target */
     , (@parent_id, 0,   1, 'Tradeskill Pack', 1, 1) /* On Source.SuccessTarget SetValue Name to Target */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 4201441;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (4201441, 420144 /* Pack Marker - Tradeskill */,   136 /* Pack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */,   166 /* Sack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 12200 /* Tusker Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 12201 /* Large Tusker Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 12202 /* Small Tusker Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 34110 /* T-Mon BackPack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 36561 /* Colosseum Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 52734 /* Gauntlet Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 52735 /* Gauntlet Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 52736 /* Gauntlet Backpack */, '2021-12-14 05:15:31')
     , (4201441, 420144 /* Pack Marker - Tradeskill */, 802116 /* Pack of the Mule */, '2021-12-14 05:15:31');
