DELETE FROM `weenie` WHERE `class_Id` = 803388;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803388, 'Linvak Invader', 10, '2024-03-28 01:18:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803388,   1,         16) /* ItemType - Creature */
     , (803388,   2,         70) /* CreatureType */
     , (803388,   3,         10) /* PaletteTemplate */
     , (803388,   6,         -1) /* ItemsCapacity */
     , (803388,   7,         -1) /* ContainersCapacity */
     , (803388,  16,          1) /* ItemUseable - No */
     , (803388,  25,        635) /* Level */
     , (803388,  27,          0) /* ArmorType - None */
     , (803388,  40,          2) /* CombatMode - Melee */
     , (803388,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803388,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803388, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803388, 146,   49785174) /* XpOverride */
     , (803388, 332,     175000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803388,   1, True ) /* Stuck */
     , (803388,   6, False) /* AiUsesMana */
     , (803388,  12, True ) /* ReportCollisions */
     , (803388,  13, False) /* Ethereal */
     , (803388,  14, True ) /* GravityStatus */
     , (803388,  19, True ) /* Attackable */
     , (803388,  65, True ) /* IgnoreMagicResist */
     , (803388,  66, True ) /* IgnoreMagicArmor */
     , (803388, 101, True ) /* CanGenerateRare */
     , (803388, 102, True ) /* CorpseGeneratedRare */
     , (803388, 103, True ) /* NonProjectileMagicImmune */
     , (803388, 120, False) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803388,   1,       5) /* HeartbeatInterval */
     , (803388,   2,       0) /* HeartbeatTimestamp */
     , (803388,   3,     0.4) /* HealthRate */
     , (803388,   4,       5) /* StaminaRate */
     , (803388,   5,       1) /* ManaRate */
     , (803388,  13,       1) /* ArmorModVsSlash */
     , (803388,  14,       1) /* ArmorModVsPierce */
     , (803388,  15,       1) /* ArmorModVsBludgeon */
     , (803388,  16,       1) /* ArmorModVsCold */
     , (803388,  17,       1) /* ArmorModVsFire */
     , (803388,  18,       1) /* ArmorModVsAcid */
     , (803388,  19,     1.8) /* ArmorModVsElectric */
     , (803388,  31,      20) /* VisualAwarenessRange */
     , (803388,  34,       1) /* PowerupTime */
     , (803388,  36,       1) /* ChargeSpeed */
     , (803388,  39,     1.4) /* DefaultScale */
     , (803388,  64,    0.01) /* ResistSlash */
     , (803388,  65,    0.01) /* ResistPierce */
     , (803388,  66,    0.01) /* ResistBludgeon */
     , (803388,  67,    0.01) /* ResistFire */
     , (803388,  68,    0.01) /* ResistCold */
     , (803388,  69,    0.01) /* ResistAcid */
     , (803388,  70,    0.08) /* ResistElectric */
     , (803388,  71,       1) /* ResistHealthBoost */
     , (803388,  72,       1) /* ResistStaminaDrain */
     , (803388,  73,       1) /* ResistStaminaBoost */
     , (803388,  74,       1) /* ResistManaDrain */
     , (803388,  75,       1) /* ResistManaBoost */
     , (803388,  80,       3) /* AiUseMagicDelay */
     , (803388, 104,      10) /* ObviousRadarRange */
     , (803388, 117,     0.5) /* FocusedProbability */
     , (803388, 122,       2) /* AiAcquireHealth */
     , (803388, 125,    0.03) /* ResistHealthDrain */
     , (803388, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803388,   1, 'Linvak Invader') /* Name */
     , (803388,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803388,   1, 0x02000A0B) /* Setup */
     , (803388,   2, 0x09000006) /* MotionTable */
     , (803388,   3, 0x2000000A) /* SoundTable */
     , (803388,   4, 0x30000003) /* CombatTable */
     , (803388,   6, 0x040010C6) /* PaletteBase */
     , (803388,   7, 0x1000048A) /* ClothingBase */
     , (803388,   8, 0x06001037) /* Icon */
     , (803388,  22, 0x3400001E) /* PhysicsEffectTable */
     , (803388,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803388,  0,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803388,  1,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803388,  2,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803388,  3,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803388,  4,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803388,  5,  4,5000, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803388,  6,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803388,  7,  4,  0,    0, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803388,  8,  4,5000, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803388,   1,3500, 0, 0) /* Strength */
     , (803388,   2,1575, 0, 0) /* Endurance */
     , (803388,   3, 520, 0, 0) /* Quickness */
     , (803388,   4, 500, 0, 0) /* Coordination */
     , (803388,   5, 150, 0, 0) /* Focus */
     , (803388,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803388,   1, 40000, 0, 0,40000) /* MaxHealth */
     , (803388,   3, 15000, 0, 0,15000) /* MaxStamina */
     , (803388,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803388,  6, 0, 3, 0, 250, 0, 0) /* MeleeDefense        Specialized */
     , (803388,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (803388, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (803388, 20, 0, 3, 0, 320, 0, 0) /* Deception           Specialized */
     , (803388, 22, 0, 3, 0, 370, 0, 0) /* Jump                Specialized */
     , (803388, 24, 0, 3, 0, 310, 0, 0) /* Run                 Specialized */
     , (803388, 44, 0, 3, 0,9492, 0, 0) /* HeavyWeapons        Specialized */
     , (803388, 45, 0, 3, 0,9492, 0, 0) /* LightWeapons        Specialized */
     , (803388, 46, 0, 3, 0,9442, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_61', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_61', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +4 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803388, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

