DELETE FROM `weenie` WHERE `class_Id` = 800921;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800921, 'Vhormaian Gunsmith', 10, '2022-08-04 09:08:32') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800921,   1,         16) /* ItemType - Creature */
     , (800921,   2,         31) /* CreatureType - Human */
     , (800921,   6,         -1) /* ItemsCapacity */
     , (800921,   7,         -1) /* ContainersCapacity */
     , (800921,  16,         32) /* ItemUseable - Remote */
     , (800921,  25,        275) /* Level */
     , (800921,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800921,  95,          8) /* RadarBlipColor - Yellow */
     , (800921, 113,          1) /* Gender - Male */
     , (800921, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800921, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800921, 146,          0) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800921,   1, True ) /* Stuck */
     , (800921,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800921,   1,       5) /* HeartbeatInterval */
     , (800921,   2,       0) /* HeartbeatTimestamp */
     , (800921,   3,       2) /* HealthRate */
     , (800921,   4,       5) /* StaminaRate */
     , (800921,   5,       1) /* ManaRate */
     , (800921,  13,       1) /* ArmorModVsSlash */
     , (800921,  14,       1) /* ArmorModVsPierce */
     , (800921,  15,       1) /* ArmorModVsBludgeon */
     , (800921,  16,       1) /* ArmorModVsCold */
     , (800921,  17,       1) /* ArmorModVsFire */
     , (800921,  18,       1) /* ArmorModVsAcid */
     , (800921,  19,       1) /* ArmorModVsElectric */
     , (800921,  31,      18) /* VisualAwarenessRange */
     , (800921,  39,       1) /* DefaultScale */
     , (800921,  54,       3) /* UseRadius */
     , (800921,  64,       1) /* ResistSlash */
     , (800921,  65,       1) /* ResistPierce */
     , (800921,  66,       1) /* ResistBludgeon */
     , (800921,  67,       1) /* ResistFire */
     , (800921,  68,       1) /* ResistCold */
     , (800921,  69,       1) /* ResistAcid */
     , (800921,  70,       1) /* ResistElectric */
     , (800921,  80,       2) /* AiUseMagicDelay */
     , (800921, 104,      10) /* ObviousRadarRange */
     , (800921, 122,       2) /* AiAcquireHealth */
     , (800921, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800921,   1, 'Vhormaian Gunsmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800921,   1, 0x02000001) /* Setup */
     , (800921,   2, 0x09000001) /* MotionTable */
     , (800921,   3, 0x20000001) /* SoundTable */
     , (800921,   6, 0x0400007E) /* PaletteBase */
     , (800921,   8, 0x06001036) /* Icon */
     , (800921,   9, 0x05001133) /* EyesTexture */
     , (800921,  10, 0x0500116A) /* NoseTexture */
     , (800921,  11, 0x050011B9) /* MouthTexture */
     , (800921,  15, 0x04002018) /* HairPalette */
     , (800921,  16, 0x040004AE) /* EyesPalette */
     , (800921,  17, 0x040002AE) /* SkinPalette */
     , (800921,  18, 0x01004802) /* HeadObject */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800921,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800921,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800921,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800921,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800921,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800921,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800921,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800921,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800921,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800921,   1, 290, 0, 0) /* Strength */
     , (800921,   2, 260, 0, 0) /* Endurance */
     , (800921,   3, 290, 0, 0) /* Quickness */
     , (800921,   4, 290, 0, 0) /* Coordination */
     , (800921,   5, 200, 0, 0) /* Focus */
     , (800921,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800921,   1,   196, 0, 0,  326) /* MaxHealth */
     , (800921,   3,   196, 0, 0,  456) /* MaxStamina */
     , (800921,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800921,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (800921,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (800921, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (800921, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (800921, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (800921, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (800921, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (800921, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (800921, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (800921, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (800921, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (800921, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (800921, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800921, 6 /* Give */, 1, 800687 /* Crystalized Wood */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 3, 3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800512 /* Gun Stock */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800921, 6 /* Give */, 1, 800474 /* Raw Chunk of Vhorma*/, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 3, 3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800510 /* Rifle Barrel */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800921,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 318767242 /* Salute */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  10 /* Tell */, 0.5, 1, NULL, 'Guns are my life! Give me some crystalized wood and a refined bar of Vhorma and I will smith some gun parts for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	 
	 INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800921, 2,   130,  0, 9, 0, False) /* Create Shirt (130) for Wield */
     , (800921, 2,   126,  0, 4, 0.6, False) /* Create Leggings (126) for Wield */
     , (800921, 2,   133,  0, 16, 1, False) /* Create Slippers (133) for Wield */
     , (800921, 2, 10696,  0, 13, 0.6, False) /* Create Apron (10696) for Wield */;