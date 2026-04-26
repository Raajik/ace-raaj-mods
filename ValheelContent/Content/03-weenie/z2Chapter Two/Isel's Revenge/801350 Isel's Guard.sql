DELETE FROM `weenie` WHERE `class_Id` = 801350;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801350, 'irguard', 10, '2022-10-01 10:32:50') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801350,   1,         16) /* ItemType - Creature */
     , (801350,   2,         31) /* CreatureType - Human */
     , (801350,   6,         -1) /* ItemsCapacity */
     , (801350,   7,         -1) /* ContainersCapacity */
     , (801350,  16,         32) /* ItemUseable - Remote */
     , (801350,  25,        275) /* Level */
     , (801350,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801350,  95,          8) /* RadarBlipColor - Yellow */
     , (801350, 113,          1) /* Gender - Male */
     , (801350, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801350, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801350, 146,          0) /* XpOverride */
     , (801350, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801350,   1, True ) /* Stuck */
     , (801350,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801350,   1,       5) /* HeartbeatInterval */
     , (801350,   2,       0) /* HeartbeatTimestamp */
     , (801350,   3,       2) /* HealthRate */
     , (801350,   4,       5) /* StaminaRate */
     , (801350,   5,       1) /* ManaRate */
     , (801350,  13,       1) /* ArmorModVsSlash */
     , (801350,  14,       1) /* ArmorModVsPierce */
     , (801350,  15,       1) /* ArmorModVsBludgeon */
     , (801350,  16,       1) /* ArmorModVsCold */
     , (801350,  17,       1) /* ArmorModVsFire */
     , (801350,  18,       1) /* ArmorModVsAcid */
     , (801350,  19,       1) /* ArmorModVsElectric */
     , (801350,  31,      18) /* VisualAwarenessRange */
     , (801350,  54,       3) /* UseRadius */
     , (801350,  64,       1) /* ResistSlash */
     , (801350,  65,       1) /* ResistPierce */
     , (801350,  66,       1) /* ResistBludgeon */
     , (801350,  67,       1) /* ResistFire */
     , (801350,  68,       1) /* ResistCold */
     , (801350,  69,       1) /* ResistAcid */
     , (801350,  70,       1) /* ResistElectric */
     , (801350,  80,       2) /* AiUseMagicDelay */
     , (801350, 104,      10) /* ObviousRadarRange */
     , (801350, 122,       2) /* AiAcquireHealth */
     , (801350, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801350,   1, 'Isel''s Guard') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801350,   1,   33554433) /* Setup */
     , (801350,   2,  150994945) /* MotionTable */
     , (801350,   3,  536870913) /* SoundTable */
     , (801350,   6,   67108990) /* PaletteBase */
     , (801350,   8,  100667446) /* Icon */
     , (801350,  31,     801289) /* LinkedPortalOne - Isel's Revenge */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801350,   1, 290, 0, 0) /* Strength */
     , (801350,   2, 260, 0, 0) /* Endurance */
     , (801350,   3, 290, 0, 0) /* Quickness */
     , (801350,   4, 290, 0, 0) /* Coordination */
     , (801350,   5, 200, 0, 0) /* Focus */
     , (801350,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801350,   1,   196, 0, 0, 326) /* MaxHealth */
     , (801350,   3,   196, 0, 0, 456) /* MaxStamina */
     , (801350,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801350,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801350,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801350, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801350, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801350, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801350, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801350, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801350, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801350, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801350, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801350, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801350, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801350, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801350,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801350,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801350,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801350,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801350,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801350,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801350,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801350,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801350,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801350,  6 /* Give */,      1, 801349 /* Isel's Revenge Ticket */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0.5, 1, NULL, 'This will surely mean your end.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  14 /* CastSpell */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157 /* Summon Primary Portal I */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  23 /* StartEvent */, 0, 1, NULL, 'IRActive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  17 /* LocalBroadcast */, 0.5, 1, NULL, 'Death will find you quickly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801350,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   8 /* Say */, 0, 0, NULL, 'Master Isel is a stern and fierce leader, I would do anything to protect him, although he does not need my protection.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801350, 2, 21159,  1, 85, 0, False) /* Create Covenant Tassets (21159) for Wield */
     , (801350, 2, 21152,  1, 85, 0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (801350, 2, 21157,  1, 85, 0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (801350, 2, 21151,  1, 85, 0, False) /* Create Covenant Bracers (21151) for Wield */
     , (801350, 2, 21153,  1, 85, 0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801350, 2, 21154,  1, 85, 0, False) /* Create Covenant Girth (21154) for Wield */
     , (801350, 2, 21155,  1, 85, 0, False) /* Create Covenant Greaves (21155) for Wield */
     , (801350, 2, 21150,  1, 85, 0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801350, 2,  2597,  1, 85, 0, False) /* Create Pants (2597) for Wield */
     , (801350, 2,  2588,  1, 85, 0, False) /* Create Shirt (2588) for Wield */;
