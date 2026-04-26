DELETE FROM `recipe` WHERE `id` = 600003 ;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600003 , 0, 0, 0, 0, 0, 0, 'You have forged your caster with the fires of the Drakin!', 0, 0, 'if you ever see this, oh man did you fuck it up.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600003, 0,   171,     20, 2, 'This Item must be tinkered at least 20 times to use the Drakin Forge Orb on it.') /* Target.Tinker Total GreaterThanEqual 20 */
     , (600003, 0,  9041,      1, 2, 'This Item is not of Arramoran craftsmanship.') /* Target.Tinker Total GreaterThanEqual 20 */
     , (600003, 0,    17, 696969, 3, 'This Item have already been bathed in the flames of Drakin.') /* Target.Tinker Total GreaterThanEqual 20 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600003 , True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 17, 696969, 2, 1) /* On Source.SuccessTarget Add RareID to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 9041, 1, 2, 1) /* On Source.SuccessTarget Add MirraSlot to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 114, 0, 2, 1) /* On Source.SuccessTarget Remove Attuned to Target */;

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 171, -5, 2, 1) /* On Source.SuccessTarget Set Tinker Amount to Target */;

INSERT INTO `recipe_mods_d_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  52, 100686604, 1, 1) /* On Source.SuccessTarget SetValue IconUnderlay to Target */;

INSERT INTO `recipe_mods_i_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  38, 0, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget AllowedWielder to Result */;

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  25, NULL, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget CraftsmanName to Result */;

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  15, 'This item has been forged with the fires of the Drakin.', 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget CraftsmanName to Result */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600003 ;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600003, 803253 /* Drakin Forge Orb */,   43383 /* Battle Axe */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   43382 /* Hand Axe */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   43381 /* Budiaq */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31824 /* Club */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31823 /* Dabus */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31822 /* Dagger */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31821 /* Jambiya */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31820 /* Jitte */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31819 /* Jo */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   31825 /* Kaskara */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29259 /* Kasrullah */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29260 /* Katar */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29261 /* Ken */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29262 /* Khanjar */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29263 /* Knife */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29264 /* Mace */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   29265 /* Morning Star */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37222 /* Nabut */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37223 /* Nayin */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37224 /* Ono */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37225 /* Quarter Staff */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37219 /* Scimitar */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37220 /* Shamshir */, '2022-12-04 19:04:52')
     , (600003, 803253 /* Drakin Forge Orb */,   37221 /* Shou-ono */, '2022-12-04 19:04:52');