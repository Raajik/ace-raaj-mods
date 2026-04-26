DELETE FROM `weenie` WHERE `class_Id` = 850055;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850055, 'ace850055-mordantbrigand', 10, '2025-04-08 01:47:41') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850055,   0,          0) /*  */
     , (850055,   1,         16) /* ItemType - Creature */
     , (850055,   2,         31) /* CreatureType - Human */
     , (850055,   6,         -1) /* ItemsCapacity */
     , (850055,   7,         -1) /* ContainersCapacity */
     , (850055,  16,          1) /* ItemUseable - No */
     , (850055,  25,        550) /* Level */
     , (850055,  27,          0) /* ArmorType - None */
     , (850055,  40,          2) /* CombatMode - Melee */
     , (850055,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (850055,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850055, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850055, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850055, 140,          1) /* AiOptions - CanOpenDoors */
     , (850055, 146,   35490701) /* XpOverride */
     , (850055, 332,      55000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850055,   1, True ) /* Stuck */
     , (850055,   6, False) /* AiUsesMana */
     , (850055,  11, False) /* IgnoreCollisions */
     , (850055,  12, True ) /* ReportCollisions */
     , (850055,  13, False) /* Ethereal */
     , (850055,  14, True ) /* GravityStatus */
     , (850055,  19, True ) /* Attackable */
     , (850055,  50, True ) /* NeverFailCasting */
     , (850055,  65, True ) /* IgnoreMagicResist */
     , (850055, 101, True ) /* CanGenerateRare */
     , (850055, 102, True ) /* CorpseGeneratedRare */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850055,   1,       5) /* HeartbeatInterval */
     , (850055,   2,       0) /* HeartbeatTimestamp */
     , (850055,   3,     0.4) /* HealthRate */
     , (850055,   4,     2.5) /* StaminaRate */
     , (850055,   5,       1) /* ManaRate */
     , (850055,  12,     0.1) /* Shade */
     , (850055,  13,     0.1) /* ArmorModVsSlash */
     , (850055,  14,     0.1) /* ArmorModVsPierce */
     , (850055,  15,     0.5) /* ArmorModVsBludgeon */
     , (850055,  16,     0.1) /* ArmorModVsCold */
     , (850055,  17,     0.1) /* ArmorModVsFire */
     , (850055,  18,     0.1) /* ArmorModVsAcid */
     , (850055,  19,     0.1) /* ArmorModVsElectric */
     , (850055,  31,      20) /* VisualAwarenessRange */
     , (850055,  34,     0.9) /* PowerupTime */
     , (850055,  36,       1) /* ChargeSpeed */
     , (850055,  39,       1) /* DefaultScale */
     , (850055,  64,     0.1) /* ResistSlash */
     , (850055,  65,     0.1) /* ResistPierce */
     , (850055,  66,    0.12) /* ResistBludgeon */
     , (850055,  67,     0.1) /* ResistFire */
     , (850055,  68,     0.1) /* ResistCold */
     , (850055,  69,     0.1) /* ResistAcid */
     , (850055,  70,     0.1) /* ResistElectric */
     , (850055,  71,       1) /* ResistHealthBoost */
     , (850055,  72,       1) /* ResistStaminaDrain */
     , (850055,  73,       1) /* ResistStaminaBoost */
     , (850055,  74,       1) /* ResistManaDrain */
     , (850055,  75,       1) /* ResistManaBoost */
     , (850055,  76,     0.5) /* Translucency */
     , (850055,  80,     3.2) /* AiUseMagicDelay */
     , (850055, 104,      10) /* ObviousRadarRange */
     , (850055, 122,       5) /* AiAcquireHealth */
     , (850055, 125,    0.03) /* ResistHealthDrain */
     , (850055, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850055,   1, 'Mordant Brigand') /* Name */
     , (850055,   3, 'Male') /* Sex */
     , (850055,  45, 'dbinKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850055,   1, 0x02000001) /* Setup */
     , (850055,   2, 0x09000001) /* MotionTable */
     , (850055,   3, 0x20000001) /* SoundTable */
     , (850055,   4, 0x30000000) /* CombatTable */
     , (850055,   6, 0x0400007E) /* PaletteBase */
     , (850055,   8, 0x06001036) /* Icon */
     , (850055,   9, 0x0500114D) /* EyesTexture */
     , (850055,  10, 0x05001177) /* NoseTexture */
     , (850055,  11, 0x050011D2) /* MouthTexture */
     , (850055,  15, 0x04001FE3) /* HairPalette */
     , (850055,  16, 0x040002BF) /* EyesPalette */
     , (850055,  17, 0x040002B6) /* SkinPalette */
     , (850055,  22, 0x34000004) /* PhysicsEffectTable */
     , (850055,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850055,  0,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850055,  1,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850055,  2,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850055,  3,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850055,  4,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850055,  5,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850055,  6,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850055,  7,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850055,  8,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850055,   1,1500, 0, 0) /* Strength */
     , (850055,   2,1360, 0, 0) /* Endurance */
     , (850055,   3, 320, 0, 0) /* Quickness */
     , (850055,   4, 600, 0, 0) /* Coordination */
     , (850055,   5, 500, 0, 0) /* Focus */
     , (850055,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850055,   1, 27000, 0, 0,27000) /* MaxHealth */
     , (850055,   3, 50000, 0, 0,50000) /* MaxStamina */
     , (850055,   5,150000, 0, 0,150000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850055,  6, 0, 3, 0, 400, 0, 0) /* MeleeDefense        Specialized */
     , (850055,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (850055, 15, 0, 3, 0, 400, 0, 0) /* MagicDefense        Specialized */
     , (850055, 16, 0, 3, 0, 325, 0, 0) /* ManaConversion      Specialized */
     , (850055, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (850055, 24, 0, 3, 0, 440, 0, 0) /* Run                 Specialized */
     , (850055, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@29', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_69', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_69', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +4 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850055, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850055, 2, 31207,  0,90,    0, False) /* Create Vestiri Life Master Robe (31207) for Wield */
     , (850055, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

