-- ============================================================
-- Olthoi Pincer Revamp — 2026-05-06
-- 1. Remove quest cooldowns on all pincer quests
-- 2. Add purple glow (UiEffects=4096=Nether) to pincer WCIDs
-- ============================================================

-- Step 1: Remove cooldowns — pincers drop rarely, no timer needed
UPDATE quest SET min_Delta = 0
WHERE name IN (
  'OlthoiHunting1','OlthoiHunting2','OlthoiHunting3','OlthoiHunting4',
  'OlthoiHunting5','OlthoiHunting6','OlthoiHunting7','OlthoiHunting8',
  'HiveEvisPincer_0513','HiveWarriorPincer_0513',
  'BroodPincerPickup','BroodMatronPincerPickedUp'
);

-- Step 2: Purple glow on the 10 main pincer WCIDs
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(10843, 18, 4096),  -- Eviscerator Pincer
(10844, 18, 4096),  -- Gardener Pincer
(10845, 18, 4096),  -- Harvester Pincer
(10846, 18, 4096),  -- Legionary Pincer
(10847, 18, 4096),  -- Soldier Pincer
(27589, 18, 4096),  -- Mutilator Pincer
(27590, 18, 4096),  -- Warrior Pincer
(27591, 18, 4096),  -- Worker Pincer
(51211, 18, 4096),  -- Hive Eviscerator Pincer
(51214, 18, 4096)   -- Hive Warrior Pincer
ON DUPLICATE KEY UPDATE value = 4096;

SELECT 'OK' as status, COUNT(*) as rows_affected FROM quest WHERE min_Delta = 0 AND name LIKE 'OlthoiHunting%';
