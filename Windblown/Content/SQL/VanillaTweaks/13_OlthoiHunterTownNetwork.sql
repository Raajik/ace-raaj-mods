-- Clone Olthoi Hunter (3930) to Town Network (810004) with emote actions
SET @next_id = (SELECT AUTO_INCREMENT FROM information_schema.TABLES
  WHERE TABLE_SCHEMA = 'void-test_world' AND TABLE_NAME = 'weenie_properties_emote');
SET @rownum = 0;

-- Clone emotes with explicit incrementing IDs
INSERT IGNORE INTO weenie_properties_emote (id, object_Id, category, probability, weenie_Class_Id, style, substyle, quest, vendor_Type, min_Health, max_Health)
SELECT @next_id + (@rownum := @rownum + 1), 810004, category, probability, weenie_Class_Id, style, substyle, quest, vendor_Type, min_Health, max_Health
FROM weenie_properties_emote WHERE object_Id = 3930 ORDER BY id;

-- Clone emote actions mapping old emote IDs to new ones via category+weenie_Class_Id matching
INSERT IGNORE INTO weenie_properties_emote_action
SELECT
  (SELECT e2.id FROM weenie_properties_emote e2
   WHERE e2.object_Id = 810004
     AND e2.category = e1.category
     AND (e2.weenie_Class_Id = e1.weenie_Class_Id OR (e2.weenie_Class_Id IS NULL AND e1.weenie_Class_Id IS NULL))
   LIMIT 1),
  a.`order`, a.`type`, a.`delay`, a.`extent`, a.`motion`, a.`message`, a.`test_String`,
  a.`min`, a.`max`, a.`min_64`, a.`max_64`, a.`min_Dbl`, a.`max_Dbl`, a.`stat`, a.`display`,
  a.`amount`, a.`amount_64`, a.`hero_X_P_64`, a.`percent`, a.`spell_Id`, a.`wealth_Rating`,
  a.`treasure_Class`, a.`treasure_Type`, a.`p_Script`, a.`sound`, a.`destination_Type`,
  a.`weenie_Class_Id`, a.`stack_Size`, a.`palette`, a.`shade`, a.`try_To_Bond`, a.`obj_Cell_Id`,
  a.`origin_X`, a.`origin_Y`, a.`origin_Z`, a.`angles_W`, a.`angles_X`, a.`angles_Y`, a.`angles_Z`
FROM weenie_properties_emote_action a
JOIN weenie_properties_emote e1 ON e1.id = a.emote_Id
WHERE e1.object_Id = 3930;