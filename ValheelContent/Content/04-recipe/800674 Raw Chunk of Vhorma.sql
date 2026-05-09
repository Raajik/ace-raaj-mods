DELETE FROM `recipe` WHERE `id` = 800674;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (800674, 0, 40, 200, 0, 800474 /* Raw Chunk of Vhorma */, 1, 'You mine a chunk of raw Ethereal Vhorma.', 800474 /* chunk of raw Vhorma */, 1, 'You mine a chunk of raw Vhorma.', 0, 0, NULL, 1, 1, NULL, 0, 0, NULL, 1, 1, 'You have depleted this resource', 0, '2005-02-09 10:00:00');

DELETE FROM `cook_book` WHERE `recipe_Id` = 800674;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (800674, 300168 /* Tungsten Pick Axe */,  300166 /* Vhorma Crystal */, '2005-02-09 10:00:00');
