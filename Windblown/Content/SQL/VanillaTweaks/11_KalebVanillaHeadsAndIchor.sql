-- ============================================================
-- Add vanilla head WCIDs + ichor to Timewalker Kaleb (810001)
-- These were replaced by custom TrophyLines versions and removed
-- from creature loot. Available as purchasable fallback.
-- ============================================================

INSERT IGNORE INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(810001, 4, 8144, 1, 0, 1, 0),    -- Banderling Head
(810001, 4, 8145, 1, 0, 1, 0),    -- Drudge Head
(810001, 4, 8146, 1, 0, 1, 0),    -- Mosswart Head
(810001, 4, 8147, 1, 0, 1, 0),    -- Tusker Head
(810001, 4, 9097, 1, 0, 1, 0),    -- Ursuin Head
(810001, 4, 12215, 1, 0, 1, 0),   -- Pumpkin Head
(810001, 4, 12216, 1, 0, 1, 0),   -- Sclavus Head
(810001, 4, 12225, 1, 0, 1, 0),   -- Zombie Head
(810001, 4, 3680, 1, 0, 1, 0),    -- Olthoi Head
(810001, 4, 19446, 1, 0, 1, 0),   -- Olthoi Head (sibling)
(810001, 4, 3687, 1, 0, 1, 0),    -- Skeleton's Skull
(810001, 4, 4121, 1, 0, 1, 0),    -- Lich Skull
(810001, 4, 22059, 1, 0, 1, 0),   -- Eviscerator Head
(810001, 4, 24846, 1, 0, 1, 0),   -- Mutilator Head
(810001, 4, 25554, 1, 0, 1, 0),   -- Knath Head
(810001, 4, 25561, 1, 0, 1, 0),   -- Moarsman Head
(810001, 4, 28886, 1, 0, 1, 0),   -- Burun Guruk Head
(810001, 4, 28887, 1, 0, 1, 0),   -- Burun Guruk Head (sibling)
(810001, 4, 28888, 1, 0, 1, 0),   -- Chittick Head
(810001, 4, 28889, 1, 0, 1, 0),   -- Mite Head
(810001, 4, 34029, 1, 0, 1, 0),   -- Shadow Head
(810001, 4, 36359, 1, 0, 1, 0),   -- Cow Head
(810001, 4, 36362, 1, 0, 1, 0),   -- Mukkir Head
(810001, 4, 12219, 1, 0, 1, 0),   -- Ursuin Head (sibling)
(810001, 4, 10864, 1, 0, 1, 0),   -- Olthoi Ichor (vanilla)
(810001, 4, 19478, 1, 0, 1, 0);   -- Sharp Tusker Slave Tusk