DELETE FROM `weenie` WHERE `class_Id` = 802894;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802894, 'CorrodedHallArmadillos2', 10, '2025-04-08 01:34:59') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802894,   0,          0) /*  */
     , (802894,   1,         16) /* ItemType - Creature */
     , (802894,   2,         17) /* CreatureType - Armoredillo */
     , (802894,   6,        255) /* ItemsCapacity */
     , (802894,   7,        255) /* ContainersCapacity */
     , (802894,  16,          1) /* ItemUseable - No */
     , (802894,  25,        525) /* Level */
     , (802894,  27,          2) /* ArmorType - Leather */
     , (802894,  67,          2) /* Tolerance - Appraise */
     , (802894,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (802894,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802894, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802894, 146,   33318660) /* XpOverride */
     , (802894, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802894,   1, True ) /* Stuck */
     , (802894,   6, True ) /* AiUsesMana */
     , (802894,  11, False) /* IgnoreCollisions */
     , (802894,  12, True ) /* ReportCollisions */
     , (802894,  13, False) /* Ethereal */
     , (802894,  14, True ) /* GravityStatus */
     , (802894,  19, True ) /* Attackable */
     , (802894,  50, True ) /* NeverFailCasting */
     , (802894,  65, True ) /* IgnoreMagicResist */
     , (802894, 101, True ) /* CanGenerateRare */
     , (802894, 102, True ) /* CorpseGeneratedRare */
     , (802894, 120, False) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802894,   1,       5) /* HeartbeatInterval */
     , (802894,   2,       0) /* HeartbeatTimestamp */
     , (802894,   3,     0.4) /* HealthRate */
     , (802894,   4,     2.5) /* StaminaRate */
     , (802894,   5,       1) /* ManaRate */
     , (802894,  12,     0.1) /* Shade */
     , (802894,  13,       1) /* ArmorModVsSlash */
     , (802894,  14,       1) /* ArmorModVsPierce */
     , (802894,  15,     0.5) /* ArmorModVsBludgeon */
     , (802894,  16,       1) /* ArmorModVsCold */
     , (802894,  17,       1) /* ArmorModVsFire */
     , (802894,  18,       1) /* ArmorModVsAcid */
     , (802894,  19,       1) /* ArmorModVsElectric */
     , (802894,  31,      20) /* VisualAwarenessRange */
     , (802894,  34,     0.9) /* PowerupTime */
     , (802894,  36,       1) /* ChargeSpeed */
     , (802894,  39,       1) /* DefaultScale */
     , (802894,  64,     0.1) /* ResistSlash */
     , (802894,  65,     0.1) /* ResistPierce */
     , (802894,  66,    0.12) /* ResistBludgeon */
     , (802894,  67,     0.1) /* ResistFire */
     , (802894,  68,     0.1) /* ResistCold */
     , (802894,  69,     0.1) /* ResistAcid */
     , (802894,  70,     0.1) /* ResistElectric */
     , (802894,  71,       1) /* ResistHealthBoost */
     , (802894,  72,       1) /* ResistStaminaDrain */
     , (802894,  73,       1) /* ResistStaminaBoost */
     , (802894,  74,       1) /* ResistManaDrain */
     , (802894,  75,       1) /* ResistManaBoost */
     , (802894,  76,     0.5) /* Translucency */
     , (802894,  80,     3.2) /* AiUseMagicDelay */
     , (802894, 104,      10) /* ObviousRadarRange */
     , (802894, 122,       5) /* AiAcquireHealth */
     , (802894, 125,    0.03) /* ResistHealthDrain */
     , (802894, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802894,   1, 'Corroded Armoredillo') /* Name */
     , (802894,  45, 'challsKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802894,   1, 0x02000004) /* Setup */
     , (802894,   2, 0x0900001C) /* MotionTable */
     , (802894,   3, 0x20000003) /* SoundTable */
     , (802894,   4, 0x3000000E) /* CombatTable */
     , (802894,   6, 0x040001B5) /* PaletteBase */
     , (802894,   7, 0x1000005B) /* ClothingBase */
     , (802894,   8, 0x0600121F) /* Icon */
     , (802894,  22, 0x34000015) /* PhysicsEffectTable */
     , (802894,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802894,  0,  2,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1,  0.7, 0.34,    0,  0.7, 0.34,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (802894,  9,  1,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1,  0.3, 0.33,    0,  0.3, 0.33,    0,    0,    0,    0,    0,    0,    0) /* Horn */
     , (802894, 16,  1,2000,  0.5, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0, 0.33,  0.3,    0, 0.33,  0.3,  0.5, 0.34,  0.3,  0.5, 0.34,  0.3) /* Torso */
     , (802894, 17,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,    0,    0,    0,    0,    0,  0.5, 0.33,    0,  0.5, 0.33,    0) /* Tail */
     , (802894, 19,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0,  0.7,    0,    0,  0.7,    0, 0.33,  0.7,    0, 0.33,  0.7) /* Leg */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802894,   1,1400, 0, 0) /* Strength */
     , (802894,   2, 920, 0, 0) /* Endurance */
     , (802894,   3, 340, 0, 0) /* Quickness */
     , (802894,   4, 500, 0, 0) /* Coordination */
     , (802894,   5, 130, 0, 0) /* Focus */
     , (802894,   6, 130, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802894,   1, 22450, 0, 0,22450) /* MaxHealth */
     , (802894,   3, 60000, 0, 0,60000) /* MaxStamina */
     , (802894,   5, 60000, 0, 0,60000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802894,  6, 0, 3, 0, 385, 0, 0) /* MeleeDefense        Specialized */
     , (802894,  7, 0, 3, 0, 310, 0, 0) /* MissileDefense      Specialized */
     , (802894, 15, 0, 3, 0, 370, 0, 0) /* MagicDefense        Specialized */
     , (802894, 20, 0, 3, 0, 155, 0, 0) /* Deception           Specialized */
     , (802894, 22, 0, 3, 0, 620, 0, 0) /* Jump                Specialized */
     , (802894, 24, 0, 3, 0, 625, 0, 0) /* Run                 Specialized */
     , (802894, 34, 0, 3, 0, 400, 0, 0) /* WarMagic            Specialized */
     , (802894, 43, 0, 3, 0, 400, 0, 0) /* VoidMagic           Specialized */
     , (802894, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802894,  4436,   2.01) /* Incantation of Blade Volley */
     , (802894,  4439,   2.01) /* Incantation of Flame Bolt */
     , (802894,  4441,   2.01) /* Incantation of Flame Volley */
     , (802894,  4443,  2.024) /* Incantation of Force Bolt */
     , (802894,  4447,  2.024) /* Incantation of Frost Bolt */
     , (802894,  4449,  2.024) /* Incantation of Frost Volley */
     , (802894,  4451,  2.024) /* Incantation of Lightning Bolt */
     , (802894,  4453,  2.024) /* Incantation of Lightning Volley */
     , (802894,  4457,  2.024) /* Incantation of Whirling Blade */
     , (802894,  5356,   2.02) /* Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_44', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_44', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802894, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802894, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

