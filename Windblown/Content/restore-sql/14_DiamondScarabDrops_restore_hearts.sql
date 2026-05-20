-- ============================================================
-- Restore Diamond Heart (7338) create_list entries — 2026-05-19
-- Re-inserts the entries removed by 14_DiamondScarabDrops.sql
-- when restoring from Diamond Heart removal.
-- ============================================================

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES
-- Diamond Golem (4216)
(4216, 9, 7338, 0, 0, 0.05, False),

-- Diamond Golem (7421)
(7421, 9, 7338, 0, 0, 0.05, False),

-- Diamond Lord (11991)
(11991, 9, 7338, 0, 0, 0.75, False),

-- Acidic Diamond Golem (15267)
(15267, 9, 7338, 0, 0, 0.05, False),

-- Diamond Golem Suzerain (19543)
(19543, 9, 7338, 0, 0, 0.15, False),

-- Ancient Diamond Golem (27798)
(27798, 9, 7338, 0, 0, 0.05, False),

-- Acidic Diamond Golem (36829)
(36829, 9, 7338, 0, 0, 0.05, False),

-- Diamond Golem (36830)
(36830, 9, 7338, 0, 0, 0.05, False);

SELECT CONCAT('Restored ', COUNT(*), ' Diamond Heart entries') AS result
FROM weenie_properties_create_list
WHERE weenie_Class_Id = 7338
  AND object_Id IN (4216,7421,11991,15267,19543,27798,36829,36830);