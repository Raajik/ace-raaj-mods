DELETE FROM `recipe` WHERE `id` = 600026;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600026, 0, 0, 0, 0, 0, 0, 'You have applied Green Garnett Mirra to this item!', 0, 0, 'if you ever see this, oh man did you fuck it up.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600026, 0,  9041,      0, 6, 'This item''s sockets are already filled.') /* Target.Tinker Total GreaterThanEqual 20 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600026, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 9041, -1, 2, 0) /* On Source.SuccessTarget Add MirraSlot to Target */;

INSERT INTO `recipe_mods_float` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 152, 0.25, 2, 0) /* On Source.SuccessTarget Add MirraSlot to Target */;

INSERT INTO `recipe_mods_d_i_d` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0,  50, 100690997, 1, 0) /* On Source.SuccessTarget SetValue IconUnderlay to Target */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600026;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600026, 803952 /* Drakin Forge Orb */,   43383 /* Battle Axe */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   43382 /* Hand Axe */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   43381 /* Budiaq */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31824 /* Club */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31823 /* Dabus */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31822 /* Dagger */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31821 /* Jambiya */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31820 /* Jitte */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31819 /* Jo */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   31825 /* Kaskara */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29259 /* Kasrullah */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29260 /* Katar */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29261 /* Ken */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29262 /* Khanjar */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29263 /* Knife */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29264 /* Mace */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   29265 /* Morning Star */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37222 /* Nabut */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37223 /* Nayin */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37224 /* Ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37225 /* Quarter Staff */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37219 /* Scimitar */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37220 /* Shamshir */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   37221 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803156 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803157 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803158 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803159 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803160 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803161 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803162 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803163 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803943 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803416 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803417 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803418 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803419 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803420 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803421 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803422 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803423 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803945 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803424 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803425 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803426 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803427 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803428 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803429 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803430 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803431 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803952 /* Drakin Forge Orb */,   803946 /* Shou-ono */, '2022-12-04 19:04:52')
     , (600026, 803951 /* Drakin Forge Orb */,   803408 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803409 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803410 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803411 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803412 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803413 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803414 /* Shou-ono */, '2005-02-09 10:00:00')
     , (600026, 803951 /* Drakin Forge Orb */,   803415 /* Shou-ono */, '2005-02-09 10:00:00');