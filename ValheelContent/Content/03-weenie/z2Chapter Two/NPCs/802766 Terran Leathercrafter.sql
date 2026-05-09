DELETE FROM `weenie` WHERE `class_Id` = 802766;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802766, 'TerranLeathercrafter', 10, '2023-07-12 11:06:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802766,   1,         16) /* ItemType - Creature */
     , (802766,   2,         31) /* CreatureType - Human */
     , (802766,   6,         -1) /* ItemsCapacity */
     , (802766,   7,         -1) /* ContainersCapacity */
     , (802766,  16,         32) /* ItemUseable - Remote */
     , (802766,  25,        275) /* Level */
     , (802766,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802766,  95,          8) /* RadarBlipColor - Yellow */
     , (802766, 113,          1) /* Gender - Male */
     , (802766, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802766, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802766, 146,          0) /* XpOverride */
     , (802766, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802766,   1, True ) /* Stuck */
     , (802766,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802766,   1,       5) /* HeartbeatInterval */
     , (802766,   2,       0) /* HeartbeatTimestamp */
     , (802766,   3,       2) /* HealthRate */
     , (802766,   4,       5) /* StaminaRate */
     , (802766,   5,       1) /* ManaRate */
     , (802766,  13,       1) /* ArmorModVsSlash */
     , (802766,  14,       1) /* ArmorModVsPierce */
     , (802766,  15,       1) /* ArmorModVsBludgeon */
     , (802766,  16,       1) /* ArmorModVsCold */
     , (802766,  17,       1) /* ArmorModVsFire */
     , (802766,  18,       1) /* ArmorModVsAcid */
     , (802766,  19,       1) /* ArmorModVsElectric */
     , (802766,  31,      18) /* VisualAwarenessRange */
     , (802766,  39,       1) /* DefaultScale */
     , (802766,  54,       3) /* UseRadius */
     , (802766,  64,       1) /* ResistSlash */
     , (802766,  65,       1) /* ResistPierce */
     , (802766,  66,       1) /* ResistBludgeon */
     , (802766,  67,       1) /* ResistFire */
     , (802766,  68,       1) /* ResistCold */
     , (802766,  69,       1) /* ResistAcid */
     , (802766,  70,       1) /* ResistElectric */
     , (802766,  80,       2) /* AiUseMagicDelay */
     , (802766, 104,      10) /* ObviousRadarRange */
     , (802766, 122,       2) /* AiAcquireHealth */
     , (802766, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802766,   1, 'Terran Leathercrafter') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802766,   1, 0x02000001) /* Setup */
     , (802766,   2, 0x09000001) /* MotionTable */
     , (802766,   3, 0x20000001) /* SoundTable */
     , (802766,   6, 0x0400007E) /* PaletteBase */
     , (802766,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802766,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802766,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802766,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802766,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802766,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802766,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802766,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802766,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802766,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802766,   1, 290, 0, 0) /* Strength */
     , (802766,   2, 260, 0, 0) /* Endurance */
     , (802766,   3, 290, 0, 0) /* Quickness */
     , (802766,   4, 290, 0, 0) /* Coordination */
     , (802766,   5, 200, 0, 0) /* Focus */
     , (802766,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802766,   1,   196, 0, 0,  326) /* MaxHealth */
     , (802766,   3,   196, 0, 0,  456) /* MaxStamina */
     , (802766,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802766,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802766,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802766, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802766, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802766, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802766, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802766, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802766, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802766, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802766, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802766, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802766, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802766, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802766, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Give me some Island Shreth Hide and I will treat it for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802766, 6 /* Give */, 1, 800849, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Here is your treated Shreth Hide!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 801142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802766, 2,  2587,  0,14,  0.5, False) /* Create Shirt (2587) for Wield */
     , (802766, 2,  2601,  0,14,  0.5, False) /* Create Loose Pants (2601) for Wield */
     , (802766, 2, 21150,  0,80,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (802766, 2, 21151,  0,80,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (802766, 2, 80226,  0,80,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (802766, 2, 21153,  0,80,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (802766, 2, 21154,  0,80,    1, False) /* Create Covenant Girth (21154) for Wield */
     , (802766, 2, 21155,  0,80,    1, False) /* Create Covenant Greaves (21155) for Wield */
     , (802766, 2, 21157,  0,80,    1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (802766, 2, 21159,  0,80,    1, False) /* Create Covenant Tassets (21159) for Wield */;

