DELETE FROM `weenie` WHERE `class_Id` = 800843;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800843, 'Vhormian Guard', 10, '2021-11-07 08:12:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800843,   1,         16) /* ItemType - Creature */
     , (800843,   2,         31) /* CreatureType - Human */
     , (800843,   6,         -1) /* ItemsCapacity */
     , (800843,   7,         -1) /* ContainersCapacity */
     , (800843,  16,         32) /* ItemUseable - Remote */
     , (800843,  25,        275) /* Level */
     , (800843,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800843,  95,          8) /* RadarBlipColor - Yellow */
     , (800843, 113,          1) /* Gender - Male */
     , (800843, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800843, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800843, 146,          0) /* XpOverride */
     , (800843, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800843,   1, True ) /* Stuck */
     , (800843,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800843,   1,       5) /* HeartbeatInterval */
     , (800843,   2,       0) /* HeartbeatTimestamp */
     , (800843,   3,       2) /* HealthRate */
     , (800843,   4,       5) /* StaminaRate */
     , (800843,   5,       1) /* ManaRate */
     , (800843,  13,       1) /* ArmorModVsSlash */
     , (800843,  14,       1) /* ArmorModVsPierce */
     , (800843,  15,       1) /* ArmorModVsBludgeon */
     , (800843,  16,       1) /* ArmorModVsCold */
     , (800843,  17,       1) /* ArmorModVsFire */
     , (800843,  18,       1) /* ArmorModVsAcid */
     , (800843,  19,       1) /* ArmorModVsElectric */
     , (800843,  31,      18) /* VisualAwarenessRange */
     , (800843,  54,       3) /* UseRadius */
     , (800843,  64,       1) /* ResistSlash */
     , (800843,  65,       1) /* ResistPierce */
     , (800843,  66,       1) /* ResistBludgeon */
     , (800843,  67,       1) /* ResistFire */
     , (800843,  68,       1) /* ResistCold */
     , (800843,  69,       1) /* ResistAcid */
     , (800843,  70,       1) /* ResistElectric */
     , (800843,  80,       2) /* AiUseMagicDelay */
     , (800843, 104,      10) /* ObviousRadarRange */
     , (800843, 122,       2) /* AiAcquireHealth */
     , (800843, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800843,   1, 'Vhormian Guard') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800843,   1,   33554433) /* Setup */
     , (800843,   2,  150994945) /* MotionTable */
     , (800843,   3,  536870913) /* SoundTable */
     , (800843,   6,   67108990) /* PaletteBase */
     , (800843,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800843,   1, 290, 0, 0) /* Strength */
     , (800843,   2, 260, 0, 0) /* Endurance */
     , (800843,   3, 290, 0, 0) /* Quickness */
     , (800843,   4, 290, 0, 0) /* Coordination */
     , (800843,   5, 200, 0, 0) /* Focus */
     , (800843,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800843,   1,   196, 0, 0, 326) /* MaxHealth */
     , (800843,   3,   196, 0, 0, 456) /* MaxStamina */
     , (800843,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800843,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (800843,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (800843, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (800843, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (800843, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (800843, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (800843, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (800843, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (800843, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (800843, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (800843, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (800843, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800843,  0,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800843,  1,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800843,  2,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800843,  3,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800843,  4,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800843,  5,  4,  4, 0.75,  250,  225,  250,  275,  100,  100,  250,  150,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800843,  6,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800843,  7,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800843,  8,  4,  8, 0.75,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800843,  5 /* HeartBeat */,  0.085, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800843,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800843,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435539 /* Twitch3 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800843,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 318767242 /* Salute */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  10 /* Tell */, 0.5, 1, NULL, 'New Vhorma is our home now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800843, 2, 24611,  1, 0, 0, False) /* Create Sword of Lost Light (24611) for Wield */
     , (800843, 2, 42717,  1, 0, 0, False) /* Create Shield of Borelean's Royal Guard (42717) for Wield */
     , (800843, 2,  2587,  0, 14, 0.5, False) /* Create Shirt (2587) for Wield */
     , (800843, 2,  2601,  0, 14, 0.5, False) /* Create Pants (2601) for Wield */
     , (800843, 2, 21150,  0, 91, 1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (800843, 2, 21151,  0, 91, 1, False) /* Create Covenant Bracers (21151) for Wield */
     , (800843, 2, 80226,  0, 91, 1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (800843, 2, 21153,  0, 91, 1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (800843, 2, 21154,  0, 91, 1, False) /* Create Covenant Girth (21154) for Wield */
     , (800843, 2, 21155,  0, 91, 1, False) /* Create Covenant Greaves (21155) for Wield */
     , (800843, 2, 21156,  0, 91, 1, False) /* Create Covenant Helm (21156) for Wield */
     , (800843, 2, 21157,  0, 91, 1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (800843, 2, 21159,  0, 91, 1, False) /* Create Covenant Tassets (21159) for Wield */;
