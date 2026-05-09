DELETE FROM `weenie` WHERE `class_Id` = 803554;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803554, 'Elemental Planes Controller', 10, '2024-04-20 10:24:38') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803554,   1,         16) /* ItemType - Creature */
     , (803554,   2,         31) /* CreatureType - Human */
     , (803554,   6,         -1) /* ItemsCapacity */
     , (803554,   7,         -1) /* ContainersCapacity */
     , (803554,  16,         32) /* ItemUseable - Remote */
     , (803554,  25,        275) /* Level */
     , (803554,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803554,  95,          8) /* RadarBlipColor - Yellow */
     , (803554, 113,          1) /* Gender - Male */
     , (803554, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803554, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803554, 146,          0) /* XpOverride */
     , (803554, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803554,   1, True ) /* Stuck */
     , (803554,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803554,   1,       5) /* HeartbeatInterval */
     , (803554,   2,       0) /* HeartbeatTimestamp */
     , (803554,   3,       2) /* HealthRate */
     , (803554,   4,       5) /* StaminaRate */
     , (803554,   5,       1) /* ManaRate */
     , (803554,  13,       1) /* ArmorModVsSlash */
     , (803554,  14,       1) /* ArmorModVsPierce */
     , (803554,  15,       1) /* ArmorModVsBludgeon */
     , (803554,  16,       1) /* ArmorModVsCold */
     , (803554,  17,       1) /* ArmorModVsFire */
     , (803554,  18,       1) /* ArmorModVsAcid */
     , (803554,  19,       1) /* ArmorModVsElectric */
     , (803554,  31,      18) /* VisualAwarenessRange */
     , (803554,  39,     1.5) /* DefaultScale */
     , (803554,  54,       3) /* UseRadius */
     , (803554,  64,       1) /* ResistSlash */
     , (803554,  65,       1) /* ResistPierce */
     , (803554,  66,       1) /* ResistBludgeon */
     , (803554,  67,       1) /* ResistFire */
     , (803554,  68,       1) /* ResistCold */
     , (803554,  69,       1) /* ResistAcid */
     , (803554,  70,       1) /* ResistElectric */
     , (803554,  80,       2) /* AiUseMagicDelay */
     , (803554, 104,      10) /* ObviousRadarRange */
     , (803554, 122,       2) /* AiAcquireHealth */
     , (803554, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803554,   1, 'Elemental Planes Controller') /* Name */
     , (803554,   5, 'Master of the Elemental Planes') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803554,   1, 0x02001908) /* Setup */
     , (803554,   2, 0x090001A8) /* MotionTable */
     , (803554,   3, 0x200000D3) /* SoundTable */
     , (803554,   4, 0x30000000) /* CombatTable */
     , (803554,   8, 0x06002B2E) /* Icon */
     , (803554,  22, 0x34000025) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803554,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803554,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803554,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803554,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803554,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803554,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803554,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803554,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803554,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803554,   1,3000, 0, 0) /* Strength */
     , (803554,   2,3000, 0, 0) /* Endurance */
     , (803554,   3,3000, 0, 0) /* Quickness */
     , (803554,   4,3000, 0, 0) /* Coordination */
     , (803554,   5,6000, 0, 0) /* Focus */
     , (803554,   6,6000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803554,   1, 50000, 0, 0,50000) /* MaxHealth */
     , (803554,   3, 50000, 0, 0,50000) /* MaxStamina */
     , (803554,   5, 50000, 0, 0,50000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803554,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803554,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803554, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803554, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803554, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803554, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803554, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803554, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803554, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803554, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803554, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803554, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803554, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803554, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'Controller@3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803554, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Controller@3', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You must brave the harsh elements ahead of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803554, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Controller@3', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'Chapter8Start@5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803554, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Chapter8Start@5', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Elder Zynth sending you to me was the right choice. Dereth elements are out of balance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 3, 1, NULL, 'This is the worst I''ve ever seen it. I have opened these portals to the areas where activity is spiking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 3, 1, NULL, 'The elemental hotspots are overridden with creatures, and they are being led by Elemental Generals.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 10 /* Tell */, 3, 1, NULL, 'Go to each area and slay each of the four Generals. Check their corpses for anything that might be helpful and take it all back to Elder Zynth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 22 /* StampQuest */, 0, 1, NULL, 'Controller', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803554, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Chapter8Start@5', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'There is nothing you can help me with at this time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803554, 2,  2587,  0,90,  0.5, False) /* Create Shirt (2587) for Wield */
     , (803554, 2,  2601,  0,90,  0.5, False) /* Create Pants (2601) for Wield */
     , (803554, 2, 21150,  0,90,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (803554, 2, 21151,  0,90,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (803554, 2, 80226,  0,90,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (803554, 2, 21153,  0,90,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (803554, 2, 21154,  0,90,    1, False) /* Create Covenant Girth (21154) for Wield */
     , (803554, 2, 21155,  0,90,    1, False) /* Create Covenant Greaves (21155) for Wield */
     , (803554, 2, 21156,  0,90,    1, False) /* Create Covenant Helm (21156) for Wield */
     , (803554, 2, 21157,  0,90,    1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (803554, 2, 21159,  0,90,    1, False) /* Create Covenant Tassets (21159) for Wield */;

