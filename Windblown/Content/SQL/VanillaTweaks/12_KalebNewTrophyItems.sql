-- ============================================================
-- Add new trophy base items to Timewalker Kaleb (810001)
-- These were removed from drop tables by the TrophyLines revamp.
-- Players can buy them from Kaleb as fallback for crafting.
-- destination_Type 4 = Shop (vendor sells these items).
-- ============================================================

INSERT IGNORE INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond) VALUES
(810001, 4, 266, 1, 0, 1, 0),    -- Auroch Horn
(810001, 4, 7039, 1, 0, 1, 0),    -- Fire Auroch Horn
(810001, 4, 23202, 1, 0, 1, 0),    -- Platinum Golem Heart
(810001, 4, 11350, 1, 0, 1, 0),    -- Elaniwood Golem Heart
(810001, 4, 11351, 1, 0, 1, 0),    -- Mud Golem Heart
(810001, 4, 11352, 1, 0, 1, 0),    -- Sand Golem Heart
(810001, 4, 11353, 1, 0, 1, 0),    -- Vapor Golem Heart
(810001, 4, 11354, 1, 0, 1, 0),    -- Water Golem Heart
(810001, 4, 23201, 1, 0, 1, 0),    -- Glacial Golem Heart
(810001, 4, 23203, 1, 0, 1, 0),    -- Pyreal Golem Heart
(810001, 4, 28520, 1, 0, 1, 0),    -- Gold Golem Heart
(810001, 4, 34962, 1, 0, 1, 0),    -- Infused Blood Golem Heart
(810001, 4, 48941, 1, 0, 1, 0),    -- Burning Sands Golem Heart
(810001, 4, 3673, 1, 0, 1, 0),    -- Wood Heart
(810001, 4, 3672, 1, 0, 1, 0),    -- Iron Heart
(810001, 4, 3670, 1, 0, 1, 0),    -- Copper Heart
(810001, 4, 7338, 1, 0, 1, 0),    -- Diamond Heart
(810001, 4, 3671, 1, 0, 1, 0),    -- Granite Heart
(810001, 4, 9324, 1, 0, 1, 0),    -- Obsidian Heart
(810001, 4, 3689, 1, 0, 1, 0),    -- Grey Spine
(810001, 4, 3688, 1, 0, 1, 0),    -- Bronze Armoredillo Spine
(810001, 4, 3690, 1, 0, 1, 0),    -- Sandy Armoredillo Spine
(810001, 4, 3691, 1, 0, 1, 0),    -- Shore Armoredillo Spine
(810001, 4, 8424, 1, 0, 1, 0),    -- Island Armoredillo Spine
(810001, 4, 22950, 1, 0, 1, 0),    -- Hoary Armoredillo Spine
(810001, 4, 22951, 1, 0, 1, 0),    -- Plate Armoredillo Spine
(810001, 4, 10868, 1, 0, 1, 0),    -- Canescent Mattekar Pelt
(810001, 4, 23096, 1, 0, 1, 0),    -- Swarthy Mattekar Hide
(810001, 4, 12003, 1, 0, 1, 0),    -- Tundra Mattekar Hide
(810001, 4, 14589, 1, 0, 1, 0),    -- Ebon Mattekar Hide
(810001, 4, 5892, 1, 0, 1, 0),    -- Hoary Mattekar Hide
(810001, 4, 4240, 1, 0, 1, 0),    -- Small Mattekar Hide
(810001, 4, 4241, 1, 0, 1, 0),    -- Mattekar Hide
(810001, 4, 7044, 1, 0, 1, 0),    -- Great Mattekar Horn
(810001, 4, 9412, 1, 0, 1, 0),    -- Dire Mattekar Paw
(810001, 4, 9413, 1, 0, 1, 0),    -- Dread Mattekar Paw
(810001, 4, 19476, 1, 0, 1, 0),    -- Grievver Tibia
(810001, 4, 9098, 1, 0, 1, 0);    -- Vial of Grievver Acid

SELECT ROW_COUNT() AS rows_inserted;

