DELETE FROM `recipe` WHERE `id` = 600006;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600006, 0, 30 /* MagicItemTinkering */, 0, 2, 0, 0, 'You apply Stone of the Spirit Drinker.', 0, 0, 'You apply the Stone of the Spirit Drinker, but in the process you destroy the target.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2005-02-09 10:00:00');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600006, 0,    17, 717171, 3, 'This Item has already been blessed by a Prodigal Stone.') /* Target.Tinker Total GreaterThanEqual 20 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600006, True, 0, 0, 0, False, 0x38000041, 0, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 17, 717171, 2, 1) /* On Source.SuccessTarget Add RareID to Target */
     , (@parent_id, 0, 3735, -1, 7, 0) /* On Player.SuccessTarget AddSpell Legendary Mana Gain to Target */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600006, True, 0, 0, 0, False, 0, 0, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  40, NULL, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget ImbuerName to Result */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600006;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600006, 803309 /* Stone of the Spirit Drinker */,   43383 /* Battle Axe */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   43382 /* Hand Axe */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   43381 /* Budiaq */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31824 /* Club */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31823 /* Dabus */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31822 /* Dagger */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31821 /* Jambiya */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31820 /* Jitte */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31819 /* Jo */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   31825 /* Kaskara */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29259 /* Kasrullah */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29260 /* Katar */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29261 /* Ken */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29262 /* Khanjar */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29263 /* Knife */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29264 /* Mace */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   29265 /* Morning Star */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37222 /* Nabut */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37223 /* Nayin */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37224 /* Ono */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37225 /* Quarter Staff */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37219 /* Scimitar */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37220 /* Shamshir */, '2022-12-04 19:04:52')
     , (600006, 803309 /* Stone of the Spirit Drinker */,   37221 /* Shou-ono */, '2022-12-04 19:04:52');
