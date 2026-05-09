DELETE FROM `weenie` WHERE `class_Id` = 802079;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802079, 'BrighteyesProtoge', 10, '2023-02-22 09:29:30') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802079,   1,         16) /* ItemType - Creature */
     , (802079,   2,         31) /* CreatureType - Human */
     , (802079,   6,         -1) /* ItemsCapacity */
     , (802079,   7,         -1) /* ContainersCapacity */
     , (802079,  16,         32) /* ItemUseable - Remote */
     , (802079,  25,        275) /* Level */
     , (802079,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802079,  95,          8) /* RadarBlipColor - Yellow */
     , (802079, 113,          1) /* Gender - Male */
     , (802079, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802079, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802079, 146,          0) /* XpOverride */
     , (802079, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802079,   1, True ) /* Stuck */
     , (802079,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802079,   1,      60) /* HeartbeatInterval */
     , (802079,   2,       0) /* HeartbeatTimestamp */
     , (802079,   3,       2) /* HealthRate */
     , (802079,   4,       5) /* StaminaRate */
     , (802079,   5,       1) /* ManaRate */
     , (802079,  13,       1) /* ArmorModVsSlash */
     , (802079,  14,       1) /* ArmorModVsPierce */
     , (802079,  15,       1) /* ArmorModVsBludgeon */
     , (802079,  16,       1) /* ArmorModVsCold */
     , (802079,  17,       1) /* ArmorModVsFire */
     , (802079,  18,       1) /* ArmorModVsAcid */
     , (802079,  19,       1) /* ArmorModVsElectric */
     , (802079,  31,      18) /* VisualAwarenessRange */
     , (802079,  39,       1) /* DefaultScale */
     , (802079,  54,       3) /* UseRadius */
     , (802079,  64,       1) /* ResistSlash */
     , (802079,  65,       1) /* ResistPierce */
     , (802079,  66,       1) /* ResistBludgeon */
     , (802079,  67,       1) /* ResistFire */
     , (802079,  68,       1) /* ResistCold */
     , (802079,  69,       1) /* ResistAcid */
     , (802079,  70,       1) /* ResistElectric */
     , (802079,  80,       2) /* AiUseMagicDelay */
     , (802079, 104,      10) /* ObviousRadarRange */
     , (802079, 122,       2) /* AiAcquireHealth */
     , (802079, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802079,   1, 'Brighteyes'' Protoge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802079,   1,   33554433) /* Setup */
     , (802079,   2,  150994945) /* MotionTable */
     , (802079,   3,  536870913) /* SoundTable */
     , (802079,   4,  805306368) /* CombatTable */
     , (802079,   8,  100667446) /* Icon */
     , (802079,   9,   83890515) /* EyesTexture */
     , (802079,  10,   83890557) /* NoseTexture */
     , (802079,  11,   83890566) /* MouthTexture */
     , (802079,  15,   67116979) /* HairPalette */
     , (802079,  16,   67110063) /* EyesPalette */
     , (802079,  17,   67109559) /* SkinPalette */
     , (802079,  22,  872415236) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802079,   1, 290, 0, 0) /* Strength */
     , (802079,   2, 260, 0, 0) /* Endurance */
     , (802079,   3, 290, 0, 0) /* Quickness */
     , (802079,   4, 290, 0, 0) /* Coordination */
     , (802079,   5, 200, 0, 0) /* Focus */
     , (802079,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802079,   1,   196, 0, 0, 326) /* MaxHealth */
     , (802079,   3,   196, 0, 0, 456) /* MaxStamina */
     , (802079,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802079,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802079,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802079, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802079, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802079, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802079, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802079, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802079, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802079, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802079, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802079, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802079, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802079, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802079,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802079,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802079,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802079,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802079,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802079,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802079,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802079,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802079,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802079,  6 /* Give */,      1, 802078 /* Papa Tusker Tusk */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  36 /* InqIntStat */, 0, 1, NULL, 'Level_180_7', NULL, 180, 2147483647, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802079,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I am a collector of fine Ivory, and Tusker Tusks are the finest! Do you have any?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802079, 22 /* TestSuccess */,      1, NULL, NULL, NULL, 'Level_180_7', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You are beyond level 180, you cannot complete this quest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802079, 23 /* TestFailure */,      1, NULL, NULL, NULL, 'Level_180_7', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ahh! Thank you, friend! Here is payment for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  49 /* AwardLevelProportionalXP */, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,   3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20630 /* Trade Note (250,000) */, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
