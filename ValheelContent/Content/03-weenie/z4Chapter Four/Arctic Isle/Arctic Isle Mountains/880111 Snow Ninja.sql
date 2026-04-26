DELETE FROM `weenie` WHERE `class_Id` = 880111;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880111, 'Snow Ninja', 10, '2024-04-01 02:23:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880111,   1,         16) /* ItemType - Creature */
     , (880111,   2,         31) /* CreatureType */
     , (880111,   3,         10) /* PaletteTemplate */
     , (880111,   6,         -1) /* ItemsCapacity */
     , (880111,   7,         -1) /* ContainersCapacity */
     , (880111,  16,          1) /* ItemUseable - No */
     , (880111,  25,        635) /* Level */
     , (880111,  27,          0) /* ArmorType - None */
     , (880111,  40,          2) /* CombatMode - Melee */
     , (880111,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (880111,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (880111, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (880111, 146,   49785174) /* XpOverride */
     , (880111, 332,     175000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880111,   1, True ) /* Stuck */
     , (880111,   6, False) /* AiUsesMana */
     , (880111,  12, True ) /* ReportCollisions */
     , (880111,  13, False) /* Ethereal */
     , (880111,  14, True ) /* GravityStatus */
     , (880111,  19, True ) /* Attackable */
     , (880111,  65, True ) /* IgnoreMagicResist */
     , (880111,  66, True ) /* IgnoreMagicArmor */
     , (880111, 101, True ) /* CanGenerateRare */
     , (880111, 102, True ) /* CorpseGeneratedRare */
     , (880111, 103, True ) /* NonProjectileMagicImmune */
     , (880111, 120, False) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880111,   1,       5) /* HeartbeatInterval */
     , (880111,   2,       0) /* HeartbeatTimestamp */
     , (880111,   3,     0.4) /* HealthRate */
     , (880111,   4,       5) /* StaminaRate */
     , (880111,   5,       1) /* ManaRate */
     , (880111,  13,       1) /* ArmorModVsSlash */
     , (880111,  14,     1.8) /* ArmorModVsPierce */
     , (880111,  15,     1.8) /* ArmorModVsBludgeon */
     , (880111,  16,       1) /* ArmorModVsCold */
     , (880111,  17,     1.8) /* ArmorModVsFire */
     , (880111,  18,       1) /* ArmorModVsAcid */
     , (880111,  19,       1) /* ArmorModVsElectric */
     , (880111,  31,      30) /* VisualAwarenessRange */
     , (880111,  34,       1) /* PowerupTime */
     , (880111,  36,       1) /* ChargeSpeed */
     , (880111,  39,     1.4) /* DefaultScale */
     , (880111,  64,    0.01) /* ResistSlash */
     , (880111,  65,    0.08) /* ResistPierce */
     , (880111,  66,    0.08) /* ResistBludgeon */
     , (880111,  67,    0.08) /* ResistFire */
     , (880111,  68,    0.01) /* ResistCold */
     , (880111,  69,    0.01) /* ResistAcid */
     , (880111,  70,    0.01) /* ResistElectric */
     , (880111,  71,       1) /* ResistHealthBoost */
     , (880111,  72,       1) /* ResistStaminaDrain */
     , (880111,  73,       1) /* ResistStaminaBoost */
     , (880111,  74,       1) /* ResistManaDrain */
     , (880111,  75,       1) /* ResistManaBoost */
     , (880111,  80,       3) /* AiUseMagicDelay */
     , (880111, 104,      10) /* ObviousRadarRange */
     , (880111, 117,     0.5) /* FocusedProbability */
     , (880111, 122,       2) /* AiAcquireHealth */
     , (880111, 125,    0.03) /* ResistHealthDrain */
     , (880111, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880111,   1, 'Snow Ninja') /* Name */
     , (880111,  45, 'snowninjaKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880111,   1, 0x02000001) /* Setup */
     , (880111,   2, 0x09000001) /* MotionTable */
     , (880111,   3, 0x20000001) /* SoundTable */
     , (880111,   4, 0x30000005) /* CombatTable */
     , (880111,   6, 0x0400007E) /* PaletteBase */
     , (880111,   7, 0x100006CA) /* Clothingbase */
     , (880111,   8, 0x06001036) /* Icon */
     , (880111,  22, 0x34000004) /* PhysicsEffectTable */
     , (880111,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (880111,  0,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (880111,  1,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (880111,  2,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (880111,  3,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (880111,  4,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (880111,  5,  4,5000, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (880111,  6,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (880111,  7,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (880111,  8,  4,5000, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (880111,   1,3500, 0, 0) /* Strength */
     , (880111,   2,1575, 0, 0) /* Endurance */
     , (880111,   3, 520, 0, 0) /* Quickness */
     , (880111,   4, 500, 0, 0) /* Coordination */
     , (880111,   5, 150, 0, 0) /* Focus */
     , (880111,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (880111,   1, 40000, 0, 0,40000) /* MaxHealth */
     , (880111,   3, 15000, 0, 0,15000) /* MaxStamina */
     , (880111,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (880111,  6, 0, 3, 0, 250, 0, 0) /* MeleeDefense        Specialized */
     , (880111,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (880111, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (880111, 20, 0, 3, 0, 320, 0, 0) /* Deception           Specialized */
     , (880111, 22, 0, 3, 0, 370, 0, 0) /* Jump                Specialized */
     , (880111, 24, 0, 3, 0, 310, 0, 0) /* Run                 Specialized */
     , (880111, 44, 0, 3, 0,880, 0, 0) /* HeavyWeapons        Specialized */
     , (880111, 45, 0, 3, 0,880, 0, 0) /* LightWeapons        Specialized */
     , (880111, 46, 0, 3, 0,880, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_61', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_61', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +4 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880111, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
