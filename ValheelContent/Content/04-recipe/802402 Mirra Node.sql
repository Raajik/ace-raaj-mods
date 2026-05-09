DELETE FROM `recipe` WHERE `id` = 802402;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (802402, 0, 40, 380, 0, 802401 /* Raw Chunk of Vhorma */, 1, 'You mine Glistening Ore.', 0 /* Nothing */, 0, 'You have failed to gather ore.', 0, 0, NULL, 1, 1, 'You have depleted the Glistening Node of it''s resources.', 0, 0, NULL, 1, 1, 'You have destroyed the Glistening Node.', 0, '2005-02-09 10:00:00');

DELETE FROM `cook_book` WHERE `recipe_Id` = 802402;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (802402, 802577 /* Mirra Inlaid Pick Axe */,  802400 /* Glistening Node */, '2005-02-09 10:00:00');
