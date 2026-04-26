DELETE FROM `weenie` WHERE `class_Id` = 850042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850042, 'ace850042-plaguedspirit', 10, '2025-04-08 01:38:25') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850042,   0,          0) /*  */
     , (850042,   1,         16) /* ItemType - Creature */
     , (850042,   2,         77) /* CreatureType - Ghost */
     , (850042,   6,        255) /* ItemsCapacity */
     , (850042,   7,        255) /* ContainersCapacity */
     , (850042,  16,          1) /* ItemUseable - No */
     , (850042,  25,        510) /* Level */
     , (850042,  40,        512) /* CombatMode */
     , (850042,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (850042,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850042, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850042, 140,          1) /* AiOptions - CanOpenDoors */
     , (850042, 146,   33318660) /* XpOverride */
     , (850042, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850042,   1, True ) /* Stuck */
     , (850042,   6, True ) /* AiUsesMana */
     , (850042,  11, False) /* IgnoreCollisions */
     , (850042,  12, True ) /* ReportCollisions */
     , (850042,  13, False) /* Ethereal */
     , (850042,  14, True ) /* GravityStatus */
     , (850042,  19, True ) /* Attackable */
     , (850042,  50, True ) /* NeverFailCasting */
     , (850042,  65, True ) /* IgnoreMagicResist */
     , (850042, 101, True ) /* CanGenerateRare */
     , (850042, 102, True ) /* CorpseGeneratedRare */
     , (850042, 120, True ) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850042,   1,       5) /* HeartbeatInterval */
     , (850042,   2,       0) /* HeartbeatTimestamp */
     , (850042,   3,     0.4) /* HealthRate */
     , (850042,   4,     2.5) /* StaminaRate */
     , (850042,   5,       1) /* ManaRate */
     , (850042,  12,     0.1) /* Shade */
     , (850042,  13,       1) /* ArmorModVsSlash */
     , (850042,  14,       1) /* ArmorModVsPierce */
     , (850042,  15,       1) /* ArmorModVsBludgeon */
     , (850042,  16,       1) /* ArmorModVsCold */
     , (850042,  17,     0.5) /* ArmorModVsFire */
     , (850042,  18,       1) /* ArmorModVsAcid */
     , (850042,  19,       1) /* ArmorModVsElectric */
     , (850042,  31,      20) /* VisualAwarenessRange */
     , (850042,  34,     0.9) /* PowerupTime */
     , (850042,  36,       1) /* ChargeSpeed */
     , (850042,  39,       1) /* DefaultScale */
     , (850042,  64,     0.1) /* ResistSlash */
     , (850042,  65,     0.1) /* ResistPierce */
     , (850042,  66,     0.1) /* ResistBludgeon */
     , (850042,  67,    0.12) /* ResistFire */
     , (850042,  68,     0.1) /* ResistCold */
     , (850042,  69,     0.1) /* ResistAcid */
     , (850042,  70,     0.1) /* ResistElectric */
     , (850042,  71,       1) /* ResistHealthBoost */
     , (850042,  72,       1) /* ResistStaminaDrain */
     , (850042,  73,       1) /* ResistStaminaBoost */
     , (850042,  74,       1) /* ResistManaDrain */
     , (850042,  75,       1) /* ResistManaBoost */
     , (850042,  76,     0.5) /* Translucency */
     , (850042,  80,     3.2) /* AiUseMagicDelay */
     , (850042, 104,      10) /* ObviousRadarRange */
     , (850042, 122,       5) /* AiAcquireHealth */
     , (850042, 125,    0.03) /* ResistHealthDrain */
     , (850042, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850042,   1, 'Plagued Spirit') /* Name */
     , (850042,  45, 'swampKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850042,   1, 0x02001120) /* Setup */
     , (850042,   2, 0x09000166) /* MotionTable */
     , (850042,   3, 0x200000B6) /* SoundTable */
     , (850042,   4, 0x3000003D) /* CombatTable */
     , (850042,   6, 0x040018F3) /* PaletteBase */
     , (850042,   7, 0x10000563) /* ClothingBase */
     , (850042,   8, 0x06003447) /* Icon */
     , (850042,  22, 0x340000AB) /* PhysicsEffectTable */
     , (850042,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850042,  0,  1,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850042,  1,  1,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850042,  2,  1,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0, 0.23,  0.1,    0, 0.23,  0.2,    0, 0.17, 0.45,    0, 0.17, 0.45) /* Abdomen */
     , (850042,  3,  1,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1, 0.23, 0.04,  0.2, 0.23, 0.04,  0.1, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850042,  4,  1,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,  0.3,  0.3,    0,  0.3,  0.4,    0,  0.3,  0.1,    0,  0.3,  0.1) /* LowerArm */
     , (850042,  5,  1,2000, 0.55, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,  0.2,  0.3,    0,  0.2,  0.2,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850042, 17,  1,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0,  0.1,    0,    0,  0.1,    0, 0.13, 0.45,    0, 0.13, 0.45) /* Tail */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850042,   1,1400, 0, 0) /* Strength */
     , (850042,   2, 290, 0, 0) /* Endurance */
     , (850042,   3, 380, 0, 0) /* Quickness */
     , (850042,   4, 500, 0, 0) /* Coordination */
     , (850042,   5, 600, 0, 0) /* Focus */
     , (850042,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850042,   1, 22450, 0, 0,22450) /* MaxHealth */
     , (850042,   3, 13530, 0, 0,13820) /* MaxStamina */
     , (850042,   5, 13600, 0, 0,14000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850042,  6, 0, 3, 0, 390, 0, 0) /* MeleeDefense        Specialized */
     , (850042,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (850042, 14, 0, 3, 0, 300, 0, 0) /* ArcaneLore          Specialized */
     , (850042, 15, 0, 3, 0, 400, 0, 0) /* MagicDefense        Specialized */
     , (850042, 16, 0, 3, 0, 450, 0, 0) /* ManaConversion      Specialized */
     , (850042, 24, 0, 3, 0,  90, 0, 0) /* Run                 Specialized */
     , (850042, 31, 0, 3, 0, 500, 0, 0) /* CreatureEnchantment Specialized */
     , (850042, 33, 0, 3, 0, 500, 0, 0) /* LifeMagic           Specialized */
     , (850042, 34, 0, 3, 0, 750, 0, 0) /* WarMagic            Specialized */
     , (850042, 43, 0, 3, 0, 500, 0, 0) /* VoidMagic           Specialized */
     , (850042, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850042,  4311,      2) /* Incantation of Heal Self */
     , (850042,  4436,    2.1) /* Incantation of Blade Volley */
     , (850042,  4439,    2.1) /* Incantation of Flame Bolt */
     , (850042,  4441,    2.1) /* Incantation of Flame Volley */
     , (850042,  4443,    2.1) /* Incantation of Force Bolt */
     , (850042,  4447,    2.1) /* Incantation of Frost Bolt */
     , (850042,  4449,    2.1) /* Incantation of Frost Volley */
     , (850042,  4451,    2.1) /* Incantation of Lightning Bolt */
     , (850042,  4453,    2.1) /* Incantation of Lightning Volley */
     , (850042,  4457,    2.1) /* Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@13', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_53', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_53', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850042, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850042, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

