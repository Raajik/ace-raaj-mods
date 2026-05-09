DELETE FROM `weenie` WHERE `class_Id` = 802743;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802743, 'Justice', 10, '2023-07-03 11:43:01') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802743,   1,         16) /* ItemType - Creature */
     , (802743,   2,         31) /* CreatureType - Human */
     , (802743,   6,         -1) /* ItemsCapacity */
     , (802743,   7,         -1) /* ContainersCapacity */
     , (802743,  16,         32) /* ItemUseable - Remote */
     , (802743,  25,        275) /* Level */
     , (802743,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802743,  95,          8) /* RadarBlipColor - Yellow */
     , (802743, 113,          1) /* Gender - Male */
     , (802743, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802743, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802743, 146,          0) /* XpOverride */
     , (802743, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802743,   1, True ) /* Stuck */
     , (802743,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802743,   1,       5) /* HeartbeatInterval */
     , (802743,   2,       0) /* HeartbeatTimestamp */
     , (802743,   3,       2) /* HealthRate */
     , (802743,   4,       5) /* StaminaRate */
     , (802743,   5,       1) /* ManaRate */
     , (802743,  13,       1) /* ArmorModVsSlash */
     , (802743,  14,       1) /* ArmorModVsPierce */
     , (802743,  15,       1) /* ArmorModVsBludgeon */
     , (802743,  16,       1) /* ArmorModVsCold */
     , (802743,  17,       1) /* ArmorModVsFire */
     , (802743,  18,       1) /* ArmorModVsAcid */
     , (802743,  19,       1) /* ArmorModVsElectric */
     , (802743,  31,      18) /* VisualAwarenessRange */
     , (802743,  54,       3) /* UseRadius */
     , (802743,  64,       1) /* ResistSlash */
     , (802743,  65,       1) /* ResistPierce */
     , (802743,  66,       1) /* ResistBludgeon */
     , (802743,  67,       1) /* ResistFire */
     , (802743,  68,       1) /* ResistCold */
     , (802743,  69,       1) /* ResistAcid */
     , (802743,  70,       1) /* ResistElectric */
     /* , (802743,  76,       1) /* Translucency */
     , (802743,  80,       2) /* AiUseMagicDelay */
     , (802743, 104,      10) /* ObviousRadarRange */
     , (802743, 122,       2) /* AiAcquireHealth */
     , (802743, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802743,   1, 'Easy Speedrun Agent') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802743,   1, 0x02000001) /* Setup */
     , (802743,   2, 0x09000001) /* MotionTable */
     , (802743,   3, 0x20000001) /* SoundTable */
     , (802743,   6, 0x0400007E) /* PaletteBase */
     , (802743,   8, 0x06001036) /* Icon */
     , (802743,  31,       1595) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802743,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802743,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802743,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802743,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802743,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802743,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802743,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802743,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802743,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802743,   1, 290, 0, 0) /* Strength */
     , (802743,   2, 260, 0, 0) /* Endurance */
     , (802743,   3, 290, 0, 0) /* Quickness */
     , (802743,   4, 290, 0, 0) /* Coordination */
     , (802743,   5, 200, 0, 0) /* Focus */
     , (802743,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802743,   1,   196, 0, 0,  326) /* MaxHealth */
     , (802743,   3,   196, 0, 0,  456) /* MaxStamina */
     , (802743,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802743,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802743,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802743, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802743, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802743, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802743, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802743, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802743, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802743, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802743, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802743, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802743, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802743, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802743, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'I am Justice. I stand for all that is right and true.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 2, 1, NULL, 'What I need from you, warrior, is to bring Justice to this great town by destroying Injustice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 2, 1, NULL, 'Bring me the Coin of Injustice, so that I may melt it down and rid this town of it for good.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802743, 6 /* Give */, 1, 802746, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You have done it! Justice has been served!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 49 /* AwardLevelProportionalXP */, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 113 /* AwardLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 801690, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802749, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802743, 2,  2587,  0,91,  0.5, False) /* Create Shirt (2587) for Wield */
     , (802743, 2,  2601,  0,91,  0.5, False) /* Create Pants (2601) for Wield */
     , (802743, 2, 21150,  0,91,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (802743, 2, 21151,  0,91,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (802743, 2, 80226,  0,91,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (802743, 2, 21153,  0,91,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (802743, 2, 21154,  0,91,    1, False) /* Create Covenant Girth (21154) for Wield */
     , (802743, 2, 21155,  0,91,    1, False) /* Create Covenant Greaves (21155) for Wield */
     , (802743, 2, 21157,  0,91,    1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (802743, 2, 21159,  0,91,    1, False) /* Create Covenant Tassets (21159) for Wield */;

