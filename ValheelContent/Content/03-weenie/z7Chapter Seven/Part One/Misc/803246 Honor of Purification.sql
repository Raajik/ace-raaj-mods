DELETE FROM `weenie` WHERE `class_Id` = 803246;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803246, 'Honor of Purification', 10, '2024-01-17 06:38:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803246,   1,         16) /* ItemType - Creature */
     , (803246,   2,         31) /* CreatureType - Human */
     , (803246,   6,         -1) /* ItemsCapacity */
     , (803246,   7,         -1) /* ContainersCapacity */
     , (803246,  16,         32) /* ItemUseable - Remote */
     , (803246,  25,        275) /* Level */
     , (803246,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803246,  95,          8) /* RadarBlipColor - Yellow */
     , (803246, 113,          1) /* Gender - Male */
     , (803246, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803246, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803246, 146,          0) /* XpOverride */
     , (803246, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803246,   1, True ) /* Stuck */
     , (803246,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803246,   1,       5) /* HeartbeatInterval */
     , (803246,   2,       0) /* HeartbeatTimestamp */
     , (803246,   3,       2) /* HealthRate */
     , (803246,   4,       5) /* StaminaRate */
     , (803246,   5,       1) /* ManaRate */
     , (803246,  13,       1) /* ArmorModVsSlash */
     , (803246,  14,       1) /* ArmorModVsPierce */
     , (803246,  15,       1) /* ArmorModVsBludgeon */
     , (803246,  16,       1) /* ArmorModVsCold */
     , (803246,  17,       1) /* ArmorModVsFire */
     , (803246,  18,       1) /* ArmorModVsAcid */
     , (803246,  19,       1) /* ArmorModVsElectric */
     , (803246,  31,      18) /* VisualAwarenessRange */
     , (803246,  39,       0.75) /* DefaultScale */
     , (803246,  54,       3) /* UseRadius */
     , (803246,  64,       1) /* ResistSlash */
     , (803246,  65,       1) /* ResistPierce */
     , (803246,  66,       1) /* ResistBludgeon */
     , (803246,  67,       1) /* ResistFire */
     , (803246,  68,       1) /* ResistCold */
     , (803246,  69,       1) /* ResistAcid */
     , (803246,  70,       1) /* ResistElectric */
     , (803246,  80,       2) /* AiUseMagicDelay */
     , (803246, 104,      10) /* ObviousRadarRange */
     , (803246, 122,       2) /* AiAcquireHealth */
     , (803246, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803246,   1, 'Honor of Purification') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803246,   1, 0x02000ABC) /* Setup */
     , (803246,   2, 0x090001DA) /* MotionTable */
     , (803246,   3, 0x200000CF) /* SoundTable */
     , (803246,   8, 0x060067DD) /* Icon */
     , (803246,  22, 0x3400005D) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803246,   1, 290, 0, 0) /* Strength */
     , (803246,   2, 260, 0, 0) /* Endurance */
     , (803246,   3, 290, 0, 0) /* Quickness */
     , (803246,   4, 290, 0, 0) /* Coordination */
     , (803246,   5, 200, 0, 0) /* Focus */
     , (803246,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803246,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803246,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803246,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803246,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803246,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803246, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803246, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803246, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803246, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803246, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803246, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803246, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803246, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803246, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803246, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803246, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803246, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-803241_11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803246, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-803241_11', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'ShadowSickness@19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803246, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'ShadowSickness@19', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Honor of Purification glows bright blue and shakes. The light dims, and you feel a sense of peace come about you. Aun''s Flame has been purified.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 31 /* EraseQuest */, 0, 1, NULL, 'ShadowToxin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 31 /* EraseQuest */, 0, 1, NULL, 'ShadowSickness', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803246, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'ShadowSickness@19', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Aun''s Flame of Purging vibrates, yet nothing happens.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803246, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-803241_11', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Honor of Purification sits still with ancient writings all over.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

