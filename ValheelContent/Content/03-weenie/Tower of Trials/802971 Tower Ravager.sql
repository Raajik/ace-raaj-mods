DELETE FROM `weenie` WHERE `class_Id` = 802971;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802971, 'Tower Ravager', 10, '2025-04-09 02:46:59') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802971,   1,         16) /* ItemType - Creature */
     , (802971,   2,         19) /* CreatureType - Virindi */
     , (802971,   3,         39) /* PaletteTemplate - Black */
     , (802971,   6,         -1) /* ItemsCapacity */
     , (802971,   7,         -1) /* ContainersCapacity */
     , (802971,  16,          1) /* ItemUseable - No */
     , (802971,  25,        550) /* Level */
     , (802971,  65,          1) /* Placement - RightHandCombat */
     , (802971,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (802971,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (802971, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802971, 140,          1) /* AiOptions - CanOpenDoors */
     , (802971, 146,   35490701) /* XpOverride */
     , (802971, 332,      55000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802971,   1, True ) /* Stuck */
     , (802971,   6, False) /* AiUsesMana */
     , (802971,  11, False) /* IgnoreCollisions */
     , (802971,  12, True ) /* ReportCollisions */
     , (802971,  13, False) /* Ethereal */
     , (802971,  14, True ) /* GravityStatus */
     , (802971,  19, True ) /* Attackable */
     , (802971,  50, True ) /* NeverFailCasting */
     , (802971,  65, True ) /* IgnoreMagicResist */
     , (802971, 101, True ) /* CanGenerateRare */
     , (802971, 102, True ) /* CorpseGeneratedRare */
     , (802971, 103, True ) /* NonProjectileMagicImmune */
     , (802971, 120, True ) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802971,   1,       5) /* HeartbeatInterval */
     , (802971,   2,       0) /* HeartbeatTimestamp */
     , (802971,   3,     0.4) /* HealthRate */
     , (802971,   4,     2.5) /* StaminaRate */
     , (802971,   5,       1) /* ManaRate */
     , (802971,  12,     0.1) /* Shade */
     , (802971,  13,     0.1) /* ArmorModVsSlash */
     , (802971,  14,     0.1) /* ArmorModVsPierce */
     , (802971,  15,     0.1) /* ArmorModVsBludgeon */
     , (802971,  16,     0.1) /* ArmorModVsCold */
     , (802971,  17,     0.5) /* ArmorModVsFire */
     , (802971,  18,     0.1) /* ArmorModVsAcid */
     , (802971,  19,     0.1) /* ArmorModVsElectric */
     , (802971,  31,      20) /* VisualAwarenessRange */
     , (802971,  34,     0.9) /* PowerupTime */
     , (802971,  36,       1) /* ChargeSpeed */
     , (802971,  39,       1) /* DefaultScale */
     , (802971,  64,     0.1) /* ResistSlash */
     , (802971,  65,     0.1) /* ResistPierce */
     , (802971,  66,     0.1) /* ResistBludgeon */
     , (802971,  67,    0.12) /* ResistFire */
     , (802971,  68,     0.1) /* ResistCold */
     , (802971,  69,     0.1) /* ResistAcid */
     , (802971,  70,     0.1) /* ResistElectric */
     , (802971,  71,       1) /* ResistHealthBoost */
     , (802971,  72,       1) /* ResistStaminaDrain */
     , (802971,  73,       1) /* ResistStaminaBoost */
     , (802971,  74,       1) /* ResistManaDrain */
     , (802971,  75,       1) /* ResistManaBoost */
     , (802971,  76,     0.5) /* Translucency */
     , (802971,  80,     3.2) /* AiUseMagicDelay */
     , (802971, 104,      10) /* ObviousRadarRange */
     , (802971, 122,       5) /* AiAcquireHealth */
     , (802971, 125,    0.03) /* ResistHealthDrain */
     , (802971, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802971,   1, 'Tower Ravager') /* Name */
     , (802971,  45, 'f1KT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802971,   1, 0x02001BCD) /* Setup */
     , (802971,   2, 0x0900021F) /* MotionTable */
     , (802971,   3, 0x20000012) /* SoundTable */
     , (802971,   4, 0x3000000D) /* CombatTable */
     , (802971,   6, 0x040009B2) /* PaletteBase */
     , (802971,   7, 0x10000854) /* ClothingBase */
     , (802971,   8, 0x06001227) /* Icon */
     , (802971,  22, 0x34000029) /* PhysicsEffectTable */
     , (802971,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802971,  0,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802971,  1,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802971,  2,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802971,  3,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802971,  4,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802971,  5,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802971,  6,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802971,  7,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802971,  8,  4,2200, 0.75, 2500, 1250, 1250, 1250, 1250, 1250, 1250, 1250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802971,   1,2900, 0, 0) /* Strength */
     , (802971,   2, 480, 0, 0) /* Endurance */
     , (802971,   3, 340, 0, 0) /* Quickness */
     , (802971,   4, 340, 0, 0) /* Coordination */
     , (802971,   5, 480, 0, 0) /* Focus */
     , (802971,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802971,   1, 27000, 0, 0,27000) /* MaxHealth */
     , (802971,   3,  9020, 0, 0, 9500) /* MaxStamina */
     , (802971,   5, 14040, 0, 0,14520) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802971,  6, 0, 2, 0, 560, 0, 0) /* MeleeDefense        Trained */
     , (802971,  7, 0, 2, 0, 430, 0, 0) /* MissileDefense      Trained */
     , (802971, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (802971, 16, 0, 2, 0, 250, 0, 0) /* ManaConversion      Trained */
     , (802971, 31, 0, 2, 0, 250, 0, 0) /* CreatureEnchantment Trained */
     , (802971, 33, 0, 2, 0, 250, 0, 0) /* LifeMagic           Trained */
     , (802971, 34, 0, 3, 0,4300, 0, 0) /* WarMagic            Specialized */
     , (802971, 43, 0, 3, 0,4600, 0, 0) /* VoidMagic           Specialized */
     , (802971, 44, 0, 2, 0, 400, 0, 0) /* HeavyWeapons        Trained */
     , (802971, 45, 0, 2, 0, 400, 0, 0) /* LightWeapons        Trained */
     , (802971, 46, 0, 2, 0, 400, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802971,  2992,   2.08) /* Depletion */
     , (802971,  3941,   2.13) /* Heavy Lightning Ring */
     , (802971,  3989,   2.15) /* Dark Lightning */
     , (802971,  4292,  2.118) /* Incantation of Bafflement Other */
     , (802971,  4312,  2.133) /* Incantation of Imperil Other */
     , (802971,  4483,  2.154) /* Incantation of Lightning Vulnerability Other */
     , (802971,  4633,  2.182) /* Incantation of Vulnerability Other */
     , (802971,  4643,  2.222) /* Incantation of Drain Health Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@22', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_62', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_62', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802971, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802971, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

