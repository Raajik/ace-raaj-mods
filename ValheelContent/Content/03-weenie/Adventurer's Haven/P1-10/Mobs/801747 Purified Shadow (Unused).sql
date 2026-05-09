DELETE FROM `weenie` WHERE `class_Id` = 801747;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801747, 'Purified Shadow', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801747,   1,         16) /* ItemType - Creature */
     , (801747,   2,         63) /* CreatureType - Statue */
     , (801747,   3,         27) /* PaletteTemplate - DarkGreenMetal */
     , (801747,   6,         -1) /* ItemsCapacity */
     , (801747,   7,         -1) /* ContainersCapacity */
     , (801747,   8,         90) /* Mass */
     , (801747,  16,          1) /* ItemUseable - No */
     , (801747,  25,        500) /* Level */
     , (801747,  27,          0) /* ArmorType - None */
     , (801747,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801747,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (801747, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (801747, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801747, 140,          1) /* AiOptions - CanOpenDoors */
     , (801747, 146,     600000) /* XpOverride */
     , (801747, 332,      35000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801747,   1, True ) /* Stuck */
     , (801747,   6, True ) /* AiUsesMana */
     , (801747,  11, False) /* IgnoreCollisions */
     , (801747,  12, True ) /* ReportCollisions */
     , (801747,  13, False) /* Ethereal */
     , (801747,  14, True ) /* GravityStatus */
     , (801747,  19, True ) /* Attackable */
     , (801747,  42, True ) /* AllowEdgeSlide */
     , (801747,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801747,   1,       5) /* HeartbeatInterval */
     , (801747,   2,       0) /* HeartbeatTimestamp */
     , (801747,   3,     0.8) /* HealthRate */
     , (801747,   4,     0.5) /* StaminaRate */
     , (801747,   5,       2) /* ManaRate */
     , (801747,   6,     0.1) /* HealthUponResurrection */
     , (801747,   7,    0.25) /* StaminaUponResurrection */
     , (801747,   8,     0.3) /* ManaUponResurrection */
     , (801747,  13,       1) /* ArmorModVsSlash */
     , (801747,  14,       1) /* ArmorModVsPierce */
     , (801747,  15,       1) /* ArmorModVsBludgeon */
     , (801747,  16,       1) /* ArmorModVsCold */
     , (801747,  17,       1) /* ArmorModVsFire */
     , (801747,  18,     0.7) /* ArmorModVsAcid */
     , (801747,  19,       1) /* ArmorModVsElectric */
     , (801747,  31,      17) /* VisualAwarenessRange */
     , (801747,  34,     2.3) /* PowerupTime */
     , (801747,  39,       1) /* DefaultScale */
     , (801747,  64,     0.1) /* ResistSlash */
     , (801747,  65,     0.1) /* ResistPierce */
     , (801747,  66,     0.1) /* ResistBludgeon */
     , (801747,  67,     0.1) /* ResistFire */
     , (801747,  68,     0.1) /* ResistCold */
     , (801747,  69,     0.3) /* ResistAcid */
     , (801747,  70,     0.1) /* ResistElectric */
     , (801747,  71,       1) /* ResistHealthBoost */
     , (801747,  72,       1) /* ResistStaminaDrain */
     , (801747,  73,       1) /* ResistStaminaBoost */
     , (801747,  74,       1) /* ResistManaDrain */
     , (801747,  75,       1) /* ResistManaBoost */
     , (801747,  80,       3) /* AiUseMagicDelay */
     , (801747, 104,      10) /* ObviousRadarRange */
     , (801747, 122,       2) /* AiAcquireHealth */
     , (801747, 125,       1) /* ResistHealthDrain */
     , (801747, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801747,   1, 'Purified Shadow') /* Name */
     , (801747,  45, 'PureShadowKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801747,   1,   33554433) /* Setup */
     , (801747,   2,  150995187) /* MotionTable */
     , (801747,   3,  536871052) /* SoundTable */
     , (801747,   4,  805306368) /* CombatTable */
     , (801747,   6,   67108990) /* PaletteBase */
     , (801747,   7,  268435632) /* ClothingBase */
     , (801747,   8,  100670397) /* Icon */
     , (801747,  22,  872415349) /* PhysicsEffectTable */
     , (801747,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801747,   1, 800, 0, 0) /* Strength */
     , (801747,   2, 240, 0, 0) /* Endurance */
     , (801747,   3, 210, 0, 0) /* Quickness */
     , (801747,   4, 220, 0, 0) /* Coordination */
     , (801747,   5, 245, 0, 0) /* Focus */
     , (801747,   6, 295, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801747,   1, 6000, 0, 0, 6000) /* MaxHealth */
     , (801747,   3, 150000, 0, 0, 150000) /* MaxStamina */
     , (801747,   5, 150000, 0, 0, 150000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801747,  6, 0, 2, 0,  80, 0, 0) /* MeleeDefense        Trained */
     , (801747,  7, 0, 3, 0,  20, 0, 0) /* MissileDefense      Specialized */
     , (801747, 14, 0, 2, 0,  20, 0, 0) /* ArcaneLore          Trained */
     , (801747, 15, 0, 3, 0,  80, 0, 0) /* MagicDefense        Specialized */
     , (801747, 20, 0, 2, 0,  50, 0, 0) /* Deception           Trained */
     , (801747, 31, 0, 2, 0,  20, 0, 0) /* CreatureEnchantment Trained */
     , (801747, 33, 0, 2, 0,  20, 0, 0) /* LifeMagic           Trained */
     , (801747, 34, 0, 2, 0,  20, 0, 0) /* WarMagic            Trained */
     , (801747, 44, 0, 3, 0,  80, 0, 0) /* HeavyWeapons        Specialized */
     , (801747, 45, 0, 2, 0,  80, 0, 0) /* LightWeapons        Trained */
     , (801747, 46, 0, 3, 0,  80, 0, 0) /* FinesseWeapons      Specialized */
     , (801747, 47, 0, 3, 0,  20, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801747,  0,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801747,  1,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801747,  2,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801747,  3,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801747,  4,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801747,  5,  4, 500, 0.75, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801747,  6,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801747,  7,  4, 500,    0, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801747,  8,  4, 500, 0.75, 350, 1269,   69,  115, 1269,  138,  138,  138, 1230, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801747,    73,  2.032)  /* Frost Bolt V */
     , (801747,    79,  2.032)  /* Lightning Bolt V */
     , (801747,    84,  2.032)  /* Flame Bolt V */
     , (801747,    90,  2.032)  /* Force Bolt V */
     , (801747,    96,  2.032)  /* Whirling Blade V */
     , (801747,   137,  2.003)  /* Frost Volley V */
     , (801747,   141,  2.003)  /* Lightning Volley V */
     , (801747,   145,  2.003)  /* Flame Volley V */
     , (801747,   149,  2.003)  /* Force Volley V */
     , (801747,   153,  2.003)  /* Blade Volley V */
     , (801747,   233,  2.023)  /* Vulnerability Other V */
     , (801747,   278,  2.006)  /* Magic Resistance Self V */
     , (801747,   285,  2.023)  /* Magic Yield Other VI */
     , (801747,   609,  2.006)  /* Life Magic Mastery Self V */
     , (801747,   627,  2.023)  /* Life Magic Ineptitude Other V */
     , (801747,   657,  2.006)  /* Mana Conversion Mastery Self V */
     , (801747,  1159,   2.02)  /* Heal Self IV */
     , (801747,  1175,  2.023)  /* Harm Other V */
     , (801747,  1240,  2.011)  /* Drain Health Other IV */
     , (801747,  1241,  2.023)  /* Drain Health Other V */
     , (801747,  1311,  2.006)  /* Armor Self V */
     , (801747,  1419,  2.023)  /* Slowness Other V */
     , (801747,  1467,  2.023)  /* Feeblemind Other V */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801747,  94)
     , (801747, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801747,  3 /* Death */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@50000', NULL, 50000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801747, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have maxed out your Reputation. To gain more reputation, you must Prestige.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801747, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have reached the limit of your ability to gain Reputation! To gain more reputation, you must Prestige!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801747, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@49999', NULL, 49999, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801747, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 Reputation! You now have %tqc Reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801747, 9, 19250,  0, 0, 0.05, False) /* Create Bronze Nuts and Bolts from a Statue (19250) for ContainTreasure */;
