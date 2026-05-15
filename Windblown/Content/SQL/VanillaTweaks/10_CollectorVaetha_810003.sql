-- ============================================================
-- Collector Vaetha (810003) — Emote clone + additions
-- Part 2: Clone Give emotes (category 1) from 24215, then add
-- missing head/collector source WCIDs.
-- ============================================================

-- Step 7: Clone Give emotes (category 1) from 24215 to 810003
-- These let Vaetha accept the same head WCIDs as Black Hill Collector:
-- 3680, 3687, 8144-8147, 8148-8154, 8204-8206, 8232, 12212-12214,
-- 22015-22017, 22247, 45875-45876
INSERT IGNORE INTO weenie_properties_emote (object_Id, category, probability, weenie_Class_Id, style, substyle, quest, vendor_Type, min_Health, max_Health)
SELECT 810003, category, probability, weenie_Class_Id, style, substyle, quest, vendor_Type, min_Health, max_Health
FROM weenie_properties_emote
WHERE object_Id = 24215 AND category = 1;

-- Step 8: Clone emote actions for the Give emotes
INSERT IGNORE INTO weenie_properties_emote_action
(`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
SELECT a.emote_Id + (810003 - 24215), `a`.`order`, a.`type`, a.`delay`, a.`extent`, a.`motion`, a.`message`, a.`test_String`, a.`min`, a.`max`, a.`min_64`, a.`max_64`, a.`min_Dbl`, a.`max_Dbl`, a.`stat`, a.`display`, a.`amount`, a.`amount_64`, a.`hero_X_P_64`, a.`percent`, a.`spell_Id`, a.`wealth_Rating`, a.`treasure_Class`, a.`treasure_Type`, a.`p_Script`, a.`sound`, a.`destination_Type`, a.`weenie_Class_Id`, a.`stack_Size`, a.`palette`, a.`shade`, a.`try_To_Bond`, a.`obj_Cell_Id`, a.`origin_X`, a.`origin_Y`, a.`origin_Z`, a.`angles_W`, a.`angles_X`, a.`angles_Y`, a.`angles_Z`
FROM weenie_properties_emote_action a
JOIN weenie_properties_emote e ON e.id = a.emote_Id
WHERE e.object_Id = 24215 AND e.category = 1;

-- Step 9: Clean up orphan Give emote headers on missing-head WCIDs
-- These were previously inserted WITHOUT corresponding emote_action rows,
-- causing a server crash (ArgumentOutOfRangeException in EmoteManager.Enqueue)
-- when a player gave one of these heads to Collector Vaetha.
--
-- Now handled at runtime by TrophyLineRegistry sibling-lookup in TryGetTier
-- (Windblown/TrophyLines/TrophyLineRegistry.cs), which maps old vanilla head
-- WCIDs (listed in ReplaceSiblingWcids) to their tier configs. The turn-in
-- patches intercept these via PreGiveObjectToNPC_TurnInReward and return
-- false, skipping vanilla GiveObjectToNPC entirely — so no DB emote needed.
--
-- Affected WCIDs: 9097, 12215, 12216, 12225, 4121, 22059, 24846, 25554,
-- 25561, 28886, 28888, 28889, 34029, 36359, 36362, 10864
--
-- Remove any lingering orphan actions first, then the headers.
DELETE a FROM weenie_properties_emote_action a
INNER JOIN weenie_properties_emote e ON e.id = a.emote_Id
WHERE e.object_Id = 810003 AND e.category = 1
AND e.weenie_Class_Id IN (9097, 12215, 12216, 12225, 4121, 22059, 24846, 25554, 25561, 28886, 28888, 28889, 34029, 36359, 36362, 10864);

DELETE FROM weenie_properties_emote
WHERE object_Id = 810003 AND category = 1
AND weenie_Class_Id IN (9097, 12215, 12216, 12225, 4121, 22059, 24846, 25554, 25561, 28886, 28888, 28889, 34029, 36359, 36362, 10864);