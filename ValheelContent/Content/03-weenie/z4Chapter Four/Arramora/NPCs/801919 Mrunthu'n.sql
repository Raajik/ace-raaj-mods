DELETE FROM `weenie` WHERE `class_Id` = 801919;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801919, 'Mrunthun', 10, '2023-01-23 11:04:40') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801919,   1,         16) /* ItemType - Creature */
     , (801919,   2,         31) /* CreatureType - Human */
     , (801919,   6,         -1) /* ItemsCapacity */
     , (801919,   7,         -1) /* ContainersCapacity */
     , (801919,  16,         32) /* ItemUseable - Remote */
     , (801919,  25,        275) /* Level */
     , (801919,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801919,  95,          8) /* RadarBlipColor - Yellow */
     , (801919, 113,          1) /* Gender - Male */
     , (801919, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801919, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801919, 146,          0) /* XpOverride */
     , (801919, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801919,   1, True ) /* Stuck */
     , (801919,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801919,   1,       5) /* HeartbeatInterval */
     , (801919,   2,       0) /* HeartbeatTimestamp */
     , (801919,   3,       2) /* HealthRate */
     , (801919,   4,       5) /* StaminaRate */
     , (801919,   5,       1) /* ManaRate */
     , (801919,  13,       1) /* ArmorModVsSlash */
     , (801919,  14,       1) /* ArmorModVsPierce */
     , (801919,  15,       1) /* ArmorModVsBludgeon */
     , (801919,  16,       1) /* ArmorModVsCold */
     , (801919,  17,       1) /* ArmorModVsFire */
     , (801919,  18,       1) /* ArmorModVsAcid */
     , (801919,  19,       1) /* ArmorModVsElectric */
     , (801919,  31,      18) /* VisualAwarenessRange */
     , (801919,  39,     1.3) /* DefaultScale */
     , (801919,  54,       3) /* UseRadius */
     , (801919,  64,       1) /* ResistSlash */
     , (801919,  65,       1) /* ResistPierce */
     , (801919,  66,       1) /* ResistBludgeon */
     , (801919,  67,       1) /* ResistFire */
     , (801919,  68,       1) /* ResistCold */
     , (801919,  69,       1) /* ResistAcid */
     , (801919,  70,       1) /* ResistElectric */
     , (801919,  80,       2) /* AiUseMagicDelay */
     , (801919, 104,      10) /* ObviousRadarRange */
     , (801919, 122,       2) /* AiAcquireHealth */
     , (801919, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801919,   1, 'Mrunthu''n') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801919,   1, 0x02000041) /* Setup */
     , (801919,   2, 0x09000028) /* MotionTable */
     , (801919,   3, 0x20000012) /* SoundTable */
     , (801919,   4, 0x3000000D) /* CombatTable */
     , (801919,   6, 0x040009B2) /* PaletteBase */
     , (801919,   7, 0x100000C1) /* ClothingBase */
     , (801919,   8, 0x06001227) /* Icon */
     , (801919,  22, 0x34000029) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801919,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801919,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801919,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801919,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801919,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801919,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801919,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801919,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801919,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801919,   1, 290, 0, 0) /* Strength */
     , (801919,   2, 260, 0, 0) /* Endurance */
     , (801919,   3, 290, 0, 0) /* Quickness */
     , (801919,   4, 290, 0, 0) /* Coordination */
     , (801919,   5, 200, 0, 0) /* Focus */
     , (801919,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801919,   1,   196, 0, 0,  326) /* MaxHealth */
     , (801919,   3,   196, 0, 0,  456) /* MaxStamina */
     , (801919,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801919,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801919,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801919, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801919, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801919, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801919, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801919, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801919, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801919, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801919, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801919, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801919, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801919, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801919, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'BlainesOrders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801919, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'BlainesOrders', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Normally I would tear a Derethian to shreds, however, something seems different about you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 1, 1, NULL, 'You face inner turmoil. A darkness fighting light within, in order to maintain the power you weild.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 1, 1, NULL, 'The Kingdom of Light wants to come to an agreement, do they? Do they not understand what they have done to our kind?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 10 /* Tell */, 1, 1, NULL, 'We have suffered for years, and all we have tried to do was survive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 10 /* Tell */, 1, 1, NULL, 'The only way I would consder a treaty was if the Kingdom of Dominion was to agree as well, but they never will.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 10 /* Tell */, 1, 1, NULL, 'Go speak to Henthaw the Blind. What he lacks in sight he makes up for in spirit. But a hardened heart burdens him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6, 10 /* Tell */, 1, 1, NULL, 'If he will agree to a treaty among the kingdoms, we will take it into consideration. Go now troubled one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 7, 22 /* StampQuest */, 0, 1, NULL, 'MruthunsOrders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801919, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'BlainesOrders', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Normally I would tear a Derethian to shreds, however, something seems different about you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801919, 2,  2587,  0,14,  0.5, False) /* Create Shirt (2587) for Wield */
     , (801919, 2,  2601,  0,14,  0.5, False) /* Create Pants (2601) for Wield */
     , (801919, 2, 21150,  0,93,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801919, 2, 21151,  0,93,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (801919, 2, 80226,  0,93,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (801919, 2, 21153,  0,93,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801919, 2, 21154,  0,93,    1, False) /* Create Covenant Girth (21154) for Wield */
     , (801919, 2, 21155,  0,93,    1, False) /* Create Covenant Greaves (21155) for Wield */
     , (801919, 2, 21157,  0,93,    1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (801919, 2, 21159,  0,93,    1, False) /* Create Covenant Tassets (21159) for Wield */;

