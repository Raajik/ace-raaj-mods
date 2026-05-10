-- ============================================================
-- Add Sharp Tusker Slave Tusk (19478) to Timewalker Kaleb (810001)
-- This item was removed from drop tables by the TrophyLines revamp.
-- Players can buy it from Kaleb as fallback for crafting.
-- Vendor destination_Type 1 = Shop.
-- ============================================================

INSERT IGNORE INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(810001, 1, 19478, 1, 0, 1, 0);

SELECT ROW_COUNT() AS rows_inserted;