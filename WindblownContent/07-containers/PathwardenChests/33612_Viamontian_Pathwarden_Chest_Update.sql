-- Pathwarden Chest Update: Viamontian (33612) - CORRECTED
-- Replaces chest spawn list with ACTUAL Pathwarden gear that exists in DB
-- Includes 7 stacked Lesser Coalesced Mana for new-player LivingEquipment awakening.

UPDATE `weenie_properties_int` SET `value` = 9 WHERE `object_Id` = 33612 AND `type` = 81; /* MaxGeneratedObjects */
UPDATE `weenie_properties_int` SET `value` = 9 WHERE `object_Id` = 33612 AND `type` = 82; /* InitGeneratedObjects */

DELETE FROM `weenie_properties_generator` WHERE `object_Id` = 33612;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES 
-- Mana Stone Great (4616)
 (33612, -1, 4616, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Mana Charge (4616) */
-- Lesser Coalesced Mana (42516) x7 stacked
,(33612, -1, 42516, 0, 1, 1, 2, 8, 7, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Lesser Coalesced Mana (42516) stack of 7 */
-- Pathwarden Trinket (41513)
,(33612, -1, 41513, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pathwarden Trinket (41513) */
-- Pathwarden Robe (Viamontian) (40456)
,(33612, -1, 40456, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pathwarden Robe (Viamontian) (40456) */
-- Pathwarden Scale Hauberk (33598)
,(33612, -1, 33598, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Scale Hauberk (33598) */
-- Pathwarden Scale Leggings (33602)
,(33612, -1, 33602, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Scale Leggings (33602) */
-- Pathwarden Sollerets (33605)
,(33612, -1, 33605, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Sollerets (33605) */
-- Pathwarden Gauntlets (33606)
,(33612, -1, 33606, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Gauntlets (33606) */
-- Pathwarden Helm (33607)
,(33612, -1, 33607, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Helm (33607) */;
