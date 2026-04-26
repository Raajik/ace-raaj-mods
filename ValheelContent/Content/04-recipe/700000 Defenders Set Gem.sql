DELETE FROM `recipe` WHERE `id` = 700000;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (700000, 0, 0, 0, 0, 0, 0, 'You have applied Defenders set gem to this item!', 0, 0, 'This should not be the message you receive.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (700000, 0,  265,      16, 6, 'The item is already a part of the Defenders set.') /* Target.Tinker Total Equal to 16 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (700000, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 265, 16, 1, 0) /* On Source.SuccessTarget SetValue Set to Target */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600027;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (700000, 800000 /* Customer Gem */,    800001 /* Customer Armor Piece */, '2022-06-25 18:42:13')
     , (700000, 800000 /* Customer Gem */,    800002 /* Customer Armor Piece */, '2022-06-25 18:42:13')
     , (700000, 800000 /* Customer Gem */,    800003 /* Customer Armor Piece */, '2022-06-25 18:42:13')
     , (700000, 800000 /* Customer Gem */,    800004 /* Customer Armor Piece */, '2022-06-25 18:42:13');