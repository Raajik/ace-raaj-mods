DELETE FROM `recipe` WHERE `id` = 600013;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600013, 0, 30 /* MagicItemTinkering */, 3000, 1, 0, 0, 'You apply the green garnet.', 0, 0, 'You apply the green garnet, but in the process you destroy the target.', 1, 1, '', 0, 0, '', 1, 1, '', 1, 1, '', 0, '2021-11-01 00:00:00');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600013, 0, 105, 1, 2, 'The target item cannot be tinkered!') /* Target.ItemWorkmanship LessThan 1 */
     , (600013, 0, 171, 1, 3, 'The target item has been tinkered too many times already!') /* Target.NumTimesTinkered GreaterThanEqual 1 */
     , (600013, 0,  47, 32, 3, 'You cannot tinker hilted weapons!') /* Target.AttackType - DoubleSlash GreaterThanEqual 32 */
     , (600013, 1,  92, 100, 2, 'The material is not complete!') /* Source.Structure LessThan 100 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600013, True, 0, 0, 0, False, 0, 0, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 171, 20, 1, 1) /* On Source.SuccessTarget Set Tinks to 20 */;

INSERT INTO `recipe_mods_float` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 152, 0.2, 2, 1) /* On Source.SuccessTarget Add Elemental Damage Mod +20% to Target */;

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  39, '', 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget TinkerName to Result */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600013;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600013, 803337 /* Ultra Green Garnet Salvage */,   43383 /* Battle Axe */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   43382 /* Hand Axe */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   43381 /* Budiaq */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31824 /* Club */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31823 /* Dabus */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31822 /* Dagger */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31821 /* Jambiya */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31820 /* Jitte */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31819 /* Jo */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   31825 /* Kaskara */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29259 /* Kasrullah */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29260 /* Katar */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29261 /* Ken */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29262 /* Khanjar */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29263 /* Knife */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29264 /* Mace */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   29265 /* Morning Star */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37222 /* Nabut */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37223 /* Nayin */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37224 /* Ono */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37225 /* Quarter Staff */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37219 /* Scimitar */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37220 /* Shamshir */, '2022-12-04 19:04:52')
     , (600013, 803337 /* Ultra Green Garnet Salvage */,   37221 /* Shou-ono */, '2022-12-04 19:04:52');
