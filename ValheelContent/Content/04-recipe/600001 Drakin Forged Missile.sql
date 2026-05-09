DELETE FROM `recipe` WHERE `id` = 600001 ;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (600001 , 0, 0, 0, 0, 0, 0, 'You have forged your weapon with the fires of the Drakin!', 0, 0, 'if you ever see this, oh man did you fuck it up.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (600001, 0,   171,     20, 2, 'This Item must be tinkered at least 20 times to use the Drakin Forge Whittling Knife on it.') /* Target.Tinker Total GreaterThanEqual 20 */
     , (600001, 1,  9041,      1, 2, 'This Item is not of Arramoran craftsmanship.') /* Target.Tinker Total GreaterThanEqual 20 */
     , (600001, 2,    17, 696969, 3, 'This Item have already been bathed in the flames of Drakin.') /* Target.Tinker Total GreaterThanEqual 20 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (600001 , True, 0, 0, 0, False, 0, 1, 0);

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

DELETE FROM `cook_book` WHERE `recipe_Id` = 600001 ;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (600001 , 803250 /* Drakin Forge Whittling Knife */,   306 /* Longbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   307 /* Shortbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   311 /* Heavy Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   312 /* Light Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   334 /* Nayin */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   341 /* Shouyumi */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   360 /* Yag */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */,   363 /* Yumi */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 12463 /* Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 15870 /* Bronze Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 20640 /* Royal Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 27368 /* Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28221 /* Searing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28222 /* Smashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28223 /* Zapping Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28224 /* Flaming Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28225 /* Freezing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28226 /* Prickly Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 28227 /* Slicing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29238 /* Acid Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29239 /* Blunt Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29240 /* Electric Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29241 /* Fire Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29242 /* Frost Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29243 /* Piercing Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29244 /* Slashing Bow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29245 /* Acid Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29246 /* Blunt Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29247 /* Electric Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29248 /* Fire Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29249 /* Frost Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29250 /* Piercing Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29251 /* Slashing Crossbow */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29252 /* Acid Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29253 /* Blunt Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29254 /* Electric Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29255 /* Fire Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29256 /* Frost Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29257 /* Piercing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 29258 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31798 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31799 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31800 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31801 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31802 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31803 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31804 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31812 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31813 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31814 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31815 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31816 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31817 /* Slashing Atlatl */, '2005-02-09 10:00:00')
     , (600001 , 803250 /* Drakin Forge Whittling Knife */, 31818 /* Slashing Atlatl */, '2005-02-09 10:00:00');