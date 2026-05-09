-- ==========================================================================
-- Pathwarden Chest Update: Add 10x Lesser Coalesced Mana (800000)
-- All 4 racial chests: Aluvian (33609), Gharundim (33610), Sho (33611), Viamontian (33612)
-- ==========================================================================

-- Add Lesser Coalesced Mana x10 to each chest's generator list
INSERT IGNORE INTO weenie_properties_generator (object_Id, probability, weenie_Class_Id, delay, init_Create, max_Create, when_Create, where_Create, stack_Size, palette_Id, shade, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z)
VALUES
 (33609, -1, 800000, 0, 1, 1, 2, 8, 10, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Aluvian - Lesser Coalesced Mana x10 */
,(33610, -1, 800000, 0, 1, 1, 2, 8, 10, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Gharundim */
,(33611, -1, 800000, 0, 1, 1, 2, 8, 10, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Sho */
,(33612, -1, 800000, 0, 1, 1, 2, 8, 10, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0); /* Viamontian */
