DELETE FROM `recipe` WHERE `id` = 600021;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600021, 0, 0, 0, 0, 803342, 250, 'You have removed all Mirra Gemstones from this Item.', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600021, 0,  9041,      0, 0, 'This item does not have any Mirra Gemstones attached.') /* Target.Tinker Total GreaterThanEqual 5 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600021, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 9041, 1, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 4, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 9, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 28, 5, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 265, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 370, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 371, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 374, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 375, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 376, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 379, 0, 1, 0) /* On Source.SuccessTarget SetValue MirraSlot to Target */;

INSERT INTO `recipe_mods_float` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 29, 1, 1, 0) /* On Source.SuccessTarget SetValue IconOverlay to Target */;

INSERT INTO `recipe_mods_float` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 149, 1, 1, 0) /* On Source.SuccessTarget SetValue IconOverlay to Target */;

INSERT INTO `recipe_mods_float` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 150, 1, 1, 0) /* On Source.SuccessTarget SetValue IconOverlay to Target */;

INSERT INTO `recipe_mods_d_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 50, 100667896, 1, 0) /* On Source.SuccessTarget SetValue IconOverlay to Target */;

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 15, 'This item is broken', 1, 0) /* On Source.SuccessTarget SetValue IconOverlay to Target */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600021;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850012 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850013 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850014 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850015 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850016 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850017 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850018 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850019 /* Ascended Armor Piece */, '2022-06-25 18:42:13')
     , (600021, 803947 /* Ascended Armor Mirra Removal Tool */, 850020 /* Ascended Armor Piece */, '2022-06-25 18:42:13');