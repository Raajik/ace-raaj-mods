DELETE FROM `recipe` WHERE `id` = 600007;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600007, 0, 30 /* MagicItemTinkering */, 0, 2, 0, 0, 'You apply Stone of the Heart Seeker .', 0, 0, 'You apply the Stone of the Heart Seeker , but in the process you destroy the target.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2005-02-09 10:00:00');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600007, 0,    17, 717171, 3, 'This Item has already been blessed by a Prodigal Stone.') /* Target.Tinker Total GreaterThanEqual 20 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600007, True, 0, 0, 0, False, 0x38000041, 0, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 17, 717171, 2, 1) /* On Source.SuccessTarget Add RareID to Target */
     , (@parent_id, 0, 3708, -1, 7, 0) /* On Player.SuccessTarget AddSpell Legendary Mana Gain to Target */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600007, True, 0, 0, 0, False, 0, 0, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  40, NULL, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget ImbuerName to Result */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 600007;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600007 , 803310 /* Stone of the Heart Seeker  */,   306 /* Longbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   307 /* Shortbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   311 /* Heavy Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   312 /* Light Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   334 /* Nayin */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   341 /* Shouyumi */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   360 /* Yag */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */,   363 /* Yumi */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 12463 /* Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 20640 /* Royal Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29238 /* Acid Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29239 /* Blunt Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29240 /* Electric Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29241 /* Fire Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29242 /* Frost Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29243 /* Piercing Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29244 /* Slashing Bow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29245 /* Acid Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29246 /* Blunt Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29247 /* Electric Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29248 /* Fire Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29249 /* Frost Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29250 /* Piercing Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29251 /* Slashing Crossbow */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29252 /* Acid Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29253 /* Blunt Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29254 /* Electric Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29255 /* Fire Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29256 /* Frost Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29257 /* Piercing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 29258 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31798 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31799 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31800 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31801 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31802 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31803 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31804 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31812 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31813 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31814 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31815 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31816 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31817 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600007 , 803310 /* Stone of the Heart Seeker  */, 31818 /* Slashing Atlatl */, '2005-02-09 10:00:00');
