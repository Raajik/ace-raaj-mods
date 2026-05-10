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

-- Step 9: Add Give emotes for missing head base WCIDs
-- These cover heads that existing collectors (24215/3917) don't accept.
-- TrophyLines PreEnqueue_Trophy intercepts and gives t3 XP+bank.
INSERT IGNORE INTO weenie_properties_emote (object_Id, category, probability, weenie_Class_Id)
VALUES
(810003, 1, 1, 9097),   -- Ursuin Head
(810003, 1, 1, 12215),  -- Pumpkin Head
(810003, 1, 1, 12216),  -- Sclavus Head
(810003, 1, 1, 12225),  -- Zombie Head
(810003, 1, 1, 4121),   -- Lich Skull
(810003, 1, 1, 22059),  -- Eviscerator Head
(810003, 1, 1, 24846),  -- Mutilator Head
(810003, 1, 1, 25554),  -- Knath Head
(810003, 1, 1, 25561),  -- Moarsman Head
(810003, 1, 1, 28886),  -- Burun Guruk Head
(810003, 1, 1, 28888),  -- Chittick Head
(810003, 1, 1, 28889),  -- Mite Head
(810003, 1, 1, 34029),  -- Shadow Head
(810003, 1, 1, 36359),  -- Cow Head
(810003, 1, 1, 36362),  -- Mukkir Head
(810003, 1, 1, 10864);  -- Olthoi Ichor (vanilla) — MirrorEmoteFromWcid for 850339