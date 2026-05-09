DELETE FROM `weenie` WHERE `class_Id` = 850044;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850044, 'ace850044-Austeredillo', 10, '2025-04-08 01:39:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850044,   0,          0) /*  */
     , (850044,   1,         16) /* ItemType - Creature */
     , (850044,   2,         17) /* CreatureType - Armoredillo */
     , (850044,   6,        255) /* ItemsCapacity */
     , (850044,   7,        255) /* ContainersCapacity */
     , (850044,  16,          1) /* ItemUseable - No */
     , (850044,  25,        525) /* Level */
     , (850044,  27,          2) /* ArmorType - Leather */
     , (850044,  67,          2) /* Tolerance - Appraise */
     , (850044,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (850044,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850044, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850044, 146,   33318660) /* XpOverride */
     , (850044, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850044,   1, True ) /* Stuck */
     , (850044,   6, True ) /* AiUsesMana */
     , (850044,  11, False) /* IgnoreCollisions */
     , (850044,  12, True ) /* ReportCollisions */
     , (850044,  13, False) /* Ethereal */
     , (850044,  14, True ) /* GravityStatus */
     , (850044,  19, True ) /* Attackable */
     , (850044,  50, True ) /* NeverFailCasting */
     , (850044,  65, True ) /* IgnoreMagicResist */
     , (850044, 101, True ) /* CanGenerateRare */
     , (850044, 102, True ) /* CorpseGeneratedRare */
     , (850044, 120, False) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850044,   1,       5) /* HeartbeatInterval */
     , (850044,   2,       0) /* HeartbeatTimestamp */
     , (850044,   3,     0.4) /* HealthRate */
     , (850044,   4,     2.5) /* StaminaRate */
     , (850044,   5,       1) /* ManaRate */
     , (850044,  12,     0.1) /* Shade */
     , (850044,  13,       1) /* ArmorModVsSlash */
     , (850044,  14,       1) /* ArmorModVsPierce */
     , (850044,  15,     0.5) /* ArmorModVsBludgeon */
     , (850044,  16,       1) /* ArmorModVsCold */
     , (850044,  17,       1) /* ArmorModVsFire */
     , (850044,  18,       1) /* ArmorModVsAcid */
     , (850044,  19,       1) /* ArmorModVsElectric */
     , (850044,  31,      20) /* VisualAwarenessRange */
     , (850044,  34,     0.9) /* PowerupTime */
     , (850044,  36,       1) /* ChargeSpeed */
     , (850044,  39,       1) /* DefaultScale */
     , (850044,  64,     0.1) /* ResistSlash */
     , (850044,  65,     0.1) /* ResistPierce */
     , (850044,  66,    0.12) /* ResistBludgeon */
     , (850044,  67,     0.1) /* ResistFire */
     , (850044,  68,     0.1) /* ResistCold */
     , (850044,  69,     0.1) /* ResistAcid */
     , (850044,  70,     0.1) /* ResistElectric */
     , (850044,  71,       1) /* ResistHealthBoost */
     , (850044,  72,       1) /* ResistStaminaDrain */
     , (850044,  73,       1) /* ResistStaminaBoost */
     , (850044,  74,       1) /* ResistManaDrain */
     , (850044,  75,       1) /* ResistManaBoost */
     , (850044,  76,     0.5) /* Translucency */
     , (850044,  80,     3.2) /* AiUseMagicDelay */
     , (850044, 104,      10) /* ObviousRadarRange */
     , (850044, 122,       5) /* AiAcquireHealth */
     , (850044, 125,    0.03) /* ResistHealthDrain */
     , (850044, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850044,   1, 'Austere Armoredillo') /* Name */
     , (850044,  45, 't3KT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850044,   1, 0x02000004) /* Setup */
     , (850044,   2, 0x0900001C) /* MotionTable */
     , (850044,   3, 0x20000003) /* SoundTable */
     , (850044,   4, 0x3000000E) /* CombatTable */
     , (850044,   6, 0x040001B5) /* PaletteBase */
     , (850044,   7, 0x1000005B) /* ClothingBase */
     , (850044,   8, 0x0600121F) /* Icon */
     , (850044,  22, 0x34000015) /* PhysicsEffectTable */
     , (850044,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850044,  0,  2,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1,  0.7, 0.34,    0,  0.7, 0.34,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (850044,  9,  1,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1,  0.3, 0.33,    0,  0.3, 0.33,    0,    0,    0,    0,    0,    0,    0) /* Horn */
     , (850044, 16,  1,2000,  0.5, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0, 0.33,  0.3,    0, 0.33,  0.3,  0.5, 0.34,  0.3,  0.5, 0.34,  0.3) /* Torso */
     , (850044, 17,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,    0,    0,    0,    0,    0,  0.5, 0.33,    0,  0.5, 0.33,    0) /* Tail */
     , (850044, 19,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0,  0.7,    0,    0,  0.7,    0, 0.33,  0.7,    0, 0.33,  0.7) /* Leg */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850044,   1,1400, 0, 0) /* Strength */
     , (850044,   2, 920, 0, 0) /* Endurance */
     , (850044,   3, 340, 0, 0) /* Quickness */
     , (850044,   4, 500, 0, 0) /* Coordination */
     , (850044,   5, 130, 0, 0) /* Focus */
     , (850044,   6, 130, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850044,   1, 22450, 0, 0,22450) /* MaxHealth */
     , (850044,   3, 60000, 0, 0,60000) /* MaxStamina */
     , (850044,   5, 60000, 0, 0,60000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850044,  6, 0, 3, 0, 385, 0, 0) /* MeleeDefense        Specialized */
     , (850044,  7, 0, 3, 0, 310, 0, 0) /* MissileDefense      Specialized */
     , (850044, 15, 0, 3, 0, 370, 0, 0) /* MagicDefense        Specialized */
     , (850044, 20, 0, 3, 0, 155, 0, 0) /* Deception           Specialized */
     , (850044, 22, 0, 3, 0, 620, 0, 0) /* Jump                Specialized */
     , (850044, 24, 0, 3, 0, 625, 0, 0) /* Run                 Specialized */
     , (850044, 34, 0, 3, 0, 400, 0, 0) /* WarMagic            Specialized */
     , (850044, 43, 0, 3, 0, 400, 0, 0) /* VoidMagic           Specialized */
     , (850044, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850044,  4436,   2.01) /* Incantation of Blade Volley */
     , (850044,  4439,   2.01) /* Incantation of Flame Bolt */
     , (850044,  4441,   2.01) /* Incantation of Flame Volley */
     , (850044,  4443,  2.024) /* Incantation of Force Bolt */
     , (850044,  4447,  2.024) /* Incantation of Frost Bolt */
     , (850044,  4449,  2.024) /* Incantation of Frost Volley */
     , (850044,  4451,  2.024) /* Incantation of Lightning Bolt */
     , (850044,  4453,  2.024) /* Incantation of Lightning Volley */
     , (850044,  4457,  2.024) /* Incantation of Whirling Blade */
     , (850044,  5356,   2.02) /* Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@16', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_56', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_56', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850044, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850044, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

