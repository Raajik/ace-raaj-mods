-- ============================================================
-- Remove old tusker tusk create_list entries — 2026-05-15
-- Tusker tusk drops are now handled entirely by TrophyLines
-- (Windblown/Content/TrophyLines/tusker-tusk.json) with
-- per-creature WCID gating at 2.5% drop rate.
-- These 100%-rate create_list entries are no longer needed.
-- ============================================================

DELETE FROM weenie_properties_create_list
WHERE weenie_Class_Id IN (
    22583,  -- Assailer → Assailer Tusk (22420)
    22585,  -- Tusker Crimsonback → Tusker Crimsonback Tusk (22421)
    22587,  -- Devastator → Devastator Tusk (22422)
    22589,  -- Female Tusker → Female Tusker Tusk (22423)
    22591,  -- Goldenback Tusker → Goldenback Tusker Tusk (22424)
    22593,  -- Tusker Guard → Tusker Guard Tusk (22425)
    22595,  -- Tusker Liberator → Tusker Liberator Tusk (22426)
    22597,  -- Male Tusker → Male Tusker Tusk (22427)
    22599,  -- Rampager → Rampager Tusk (22429)
    22601,  -- Tusker Redeemer → Tusker Redeemer Tusk (22430)
    22603,  -- Silver Tusker → Silver Tusker Tusk (22431)
    22605,  -- Tusker Slave → Tusker Slave Tusk (22432)
    22611,  -- Armored Tusker → Armored Tusker Tusk (22419)
    22613   -- Plated Tusker → Plated Tusker Tusk (22428)
)
-- Only remove entries where destination_Type = 1 (Contain)
-- to avoid accidentally removing other loot entries on these creatures
AND destination_Type = 1;

SELECT ROW_COUNT() AS rows_deleted;
