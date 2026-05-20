-- ============================================================
-- Diamond Scarab (7299) drops from Diamond Golems — 2026-05-19
-- Adds a 50% chance for 1-3 Diamond Scarabs from any Diamond
-- Golem variant, replacing removed Diamond Hearts (7338).
-- Uses destination_Type = 9 (ContainTreasure) with probability
-- sets: each golem gets 4 rows forming one set:
--   7299 stack=1 (17%), 7299 stack=2 (17%), 7299 stack=3 (16%),
--   nothing (50%)
--
-- Restore file: 14_DiamondScarabDrops_restore_hearts.sql
-- ============================================================

-- Step 1: Remove existing Diamond Heart (7338) entries
DELETE FROM weenie_properties_create_list
WHERE weenie_Class_Id = 7338
  AND object_Id IN (4216,7421,11991,15267,19543,27798,36829,36830);

SELECT CONCAT('Removed ', ROW_COUNT(), ' Diamond Heart entries') AS step1;

-- Step 2: Add Diamond Scarab drops
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES
-- Diamond Golem (4216)
(4216, 9, 7299, 1, 0, 0.17, False),
(4216, 9, 7299, 2, 0, 0.17, False),
(4216, 9, 7299, 3, 0, 0.16, False),
(4216, 9,    0, 0, 0, 0.50, False),

-- Diamond Golem (7421)
(7421, 9, 7299, 1, 0, 0.17, False),
(7421, 9, 7299, 2, 0, 0.17, False),
(7421, 9, 7299, 3, 0, 0.16, False),
(7421, 9,    0, 0, 0, 0.50, False),

-- Diamond Lord (11991)
(11991, 9, 7299, 1, 0, 0.17, False),
(11991, 9, 7299, 2, 0, 0.17, False),
(11991, 9, 7299, 3, 0, 0.16, False),
(11991, 9,    0, 0, 0, 0.50, False),

-- Acidic Diamond Golem (15267)
(15267, 9, 7299, 1, 0, 0.17, False),
(15267, 9, 7299, 2, 0, 0.17, False),
(15267, 9, 7299, 3, 0, 0.16, False),
(15267, 9,    0, 0, 0, 0.50, False),

-- Diamond Golem Suzerain (19543)
(19543, 9, 7299, 1, 0, 0.17, False),
(19543, 9, 7299, 2, 0, 0.17, False),
(19543, 9, 7299, 3, 0, 0.16, False),
(19543, 9,    0, 0, 0, 0.50, False),

-- Diamond Guardian (23998)
(23998, 9, 7299, 1, 0, 0.17, False),
(23998, 9, 7299, 2, 0, 0.17, False),
(23998, 9, 7299, 3, 0, 0.16, False),
(23998, 9,    0, 0, 0, 0.50, False),

-- Diamond Guardian (23999)
(23999, 9, 7299, 1, 0, 0.17, False),
(23999, 9, 7299, 2, 0, 0.17, False),
(23999, 9, 7299, 3, 0, 0.16, False),
(23999, 9,    0, 0, 0, 0.50, False),

-- Diamond Guardian (24000)
(24000, 9, 7299, 1, 0, 0.17, False),
(24000, 9, 7299, 2, 0, 0.17, False),
(24000, 9, 7299, 3, 0, 0.16, False),
(24000, 9,    0, 0, 0, 0.50, False),

-- Ancient Diamond Golem (27798)
(27798, 9, 7299, 1, 0, 0.17, False),
(27798, 9, 7299, 2, 0, 0.17, False),
(27798, 9, 7299, 3, 0, 0.16, False),
(27798, 9,    0, 0, 0, 0.50, False),

-- Acidic Diamond Golem (36829)
(36829, 9, 7299, 1, 0, 0.17, False),
(36829, 9, 7299, 2, 0, 0.17, False),
(36829, 9, 7299, 3, 0, 0.16, False),
(36829, 9,    0, 0, 0, 0.50, False),

-- Diamond Golem (36830)
(36830, 9, 7299, 1, 0, 0.17, False),
(36830, 9, 7299, 2, 0, 0.17, False),
(36830, 9, 7299, 3, 0, 0.16, False),
(36830, 9,    0, 0, 0, 0.50, False);

SELECT CONCAT('INSERTED ', COUNT(*), ' rows into weenie_properties_create_list') AS result
FROM weenie_properties_create_list
WHERE object_Id IN (4216,7421,11991,15267,19543,23998,23999,24000,27798,36829,36830)
  AND weenie_Class_Id = 7299;

-- Show final create_list entries for verification
SELECT cl.object_Id, w.class_Name, cl.weenie_Class_Id, cl.stack_Size, cl.destination_Type, cl.shade, cl.try_To_Bond
FROM weenie_properties_create_list cl
JOIN weenie w ON w.class_Id = cl.object_Id
WHERE cl.object_Id IN (4216,7421,11991,15267,19543,23998,23999,24000,27798,36829,36830)
  AND cl.weenie_Class_Id = 7299
ORDER BY cl.object_Id, cl.stack_Size;