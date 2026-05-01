-- Pathwarden Chest Update: Sho (33611) - CORRECTED
-- Replaces chest spawn list with ACTUAL Pathwarden gear that exists in DB
-- Includes 7 stacked Lesser Coalesced Mana for new-player LivingEquipment awakening.

UPDATE `weenie_properties_int` SET `value` = 9 WHERE `object_Id` = 33611 AND `type` = 81; /* MaxGeneratedObjects */
UPDATE `weenie_properties_int` SET `value` = 9 WHERE `object_Id` = 33611 AND `type` = 82; /* InitGeneratedObjects */

DELETE FROM `weenie_properties_generator` WHERE `object_Id` = 33611;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES 
-- Mana Stone Great (4616)
 (33611, -1, 4616, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Mana Charge (4616) */
-- Lesser Coalesced Mana (42516) x7 stacked
,(33611, -1, 42516, 0, 1, 1, 2, 8, 7, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Lesser Coalesced Mana (42516) stack of 7 */
-- Pathwarden Trinket (41513)
,(33611, -1, 41513, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pathwarden Trinket (41513) */
-- Pathwarden Robe (Sho) (40455)
,(33611, -1, 40455, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pathwarden Robe (Sho) (40455) */
-- Pathwarden Yoroi Hauberk (33599)
,(33611, -1, 33599, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Yoroi Hauberk (33599) */
-- Pathwarden Yoroi Leggings (33603)
,(33611, -1, 33603, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Yoroi Leggings (33603) */
-- Pathwarden Sollerets (33605)
,(33611, -1, 33605, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Sollerets (33605) */
-- Pathwarden Gauntlets (33606)
,(33611, -1, 33606, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Gauntlets (33606) */
-- Pathwarden Helm (33607)
,(33611, -1, 33607, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Helm (33607) */;
