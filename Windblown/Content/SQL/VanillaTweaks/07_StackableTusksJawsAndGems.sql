-- ============================================================
-- Make tusker tusks and eater jaws stackable — 2026-05-10
-- These are now dropped via TrophyLines (per-creature gating)
-- and need to stack in inventory for turn-in. MaxStackSize=100.
-- Portal gems (quest rewards) also need stacking for turn-in.
-- ============================================================

-- Tusker Tusks (15 tusk WCIDs + 1 crafting item removed from drops)
INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(22419, 100, 100),  -- Armored Tusker Tusk
(22420, 100, 100),  -- Assailer Tusk
(22421, 100, 100),  -- Tusker Crimsonback Tusk
(22422, 100, 100),  -- Devastator Tusk
(22423, 100, 100),  -- Female Tusker Tusk
(22424, 100, 100),  -- Goldenback Tusker Tusk
(22425, 100, 100),  -- Tusker Guard Tusk
(22426, 100, 100),  -- Tusker Liberator Tusk
(22427, 100, 100),  -- Male Tusker Tusk
(22428, 100, 100),  -- Plated Tusker Tusk
(22429, 100, 100),  -- Rampager Tusk
(22430, 100, 100),  -- Tusker Redeemer Tusk
(22431, 100, 100),  -- Silver Tusker Tusk
(22432, 100, 100),  -- Tusker Slave Tusk
(51351, 100, 100),  -- Snow Tusker Leader Tusk
(19478, 100, 100)   -- Sharp Tusker Slave Tusk (crafting, removed from drops)
ON DUPLICATE KEY UPDATE value = 100;

-- Eater Jaws (6 jaw WCIDs)
INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(28718, 100, 100),  -- Ravenous Eater Jaw
(28719, 100, 100),  -- Insatiable Eater Jaw
(28725, 100, 100),  -- Engorged Eater Jaw
(28726, 100, 100),  -- Voracious Eater Jaw
(28727, 100, 100),  -- Abhorrent Eater Jaw
(42104, 100, 100)   -- Upper Insatiable Eater Jaw
ON DUPLICATE KEY UPDATE value = 100;

-- Portal Gems (quest reward items, turned in for XP)
INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(22729, 100, 100),  -- Aphus Lassel Portal Gem
(51372, 100, 100)   -- Frozen Valley Portal Gem
ON DUPLICATE KEY UPDATE value = 100;

SELECT 'OK' AS status, COUNT(*) AS row_count FROM weenie_properties_int WHERE type = 100 AND object_Id IN (22419,22420,22421,22422,22423,22424,22425,22426,22427,22428,22429,22430,22431,22432,51351,19478,28718,28719,28725,28726,28727,42104,22729,51372);