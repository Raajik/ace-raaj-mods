DELETE FROM `weenie` WHERE `class_Id` = 850053;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850053, 'ace850053-shadowelfin', 10, '2025-04-08 01:33:47') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850053,   0,          0) /*  */
     , (850053,   1,         16) /* ItemType - Creature */
     , (850053,   2,         22) /* CreatureType - Shadow */
     , (850053,   3,         39) /* PaletteTemplate - Black */
     , (850053,   6,         -1) /* ItemsCapacity */
     , (850053,   7,         -1) /* ContainersCapacity */
     , (850053,   8,         90) /* Mass */
     , (850053,  16,          1) /* ItemUseable - No */
     , (850053,  25,        510) /* Level */
     , (850053,  27,          0) /* ArmorType - None */
     , (850053,  67,          2) /* Tolerance - Appraise */
     , (850053,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (850053,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (850053, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (850053, 113,          2) /* Gender - Female */
     , (850053, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850053, 140,          1) /* AiOptions - CanOpenDoors */
     , (850053, 146,   33318660) /* XpOverride */
     , (850053, 188,          1) /* HeritageGroup - Aluvian */
     , (850053, 312,          2) /* HealOverTime */
     , (850053, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850053,   1, True ) /* Stuck */
     , (850053,   6, True ) /* AiUsesMana */
     , (850053,  11, False) /* IgnoreCollisions */
     , (850053,  12, True ) /* ReportCollisions */
     , (850053,  13, False) /* Ethereal */
     , (850053,  14, True ) /* GravityStatus */
     , (850053,  19, True ) /* Attackable */
     , (850053,  42, True ) /* AllowEdgeSlide */
     , (850053,  50, True ) /* NeverFailCasting */
     , (850053,  65, True ) /* IgnoreMagicResist */
     , (850053, 101, True ) /* CanGenerateRare */
     , (850053, 102, True ) /* CorpseGeneratedRare */
     , (850053, 120, True ) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850053,   1,       5) /* HeartbeatInterval */
     , (850053,   2,       0) /* HeartbeatTimestamp */
     , (850053,   3,     0.4) /* HealthRate */
     , (850053,   4,     2.5) /* StaminaRate */
     , (850053,   5,       1) /* ManaRate */
     , (850053,  12,     0.1) /* Shade */
     , (850053,  13,     0.5) /* ArmorModVsSlash */
     , (850053,  14,     0.5) /* ArmorModVsPierce */
     , (850053,  15,       1) /* ArmorModVsBludgeon */
     , (850053,  16,       1) /* ArmorModVsCold */
     , (850053,  17,     0.5) /* ArmorModVsFire */
     , (850053,  18,       1) /* ArmorModVsAcid */
     , (850053,  19,       1) /* ArmorModVsElectric */
     , (850053,  31,      20) /* VisualAwarenessRange */
     , (850053,  34,     0.9) /* PowerupTime */
     , (850053,  36,       1) /* ChargeSpeed */
     , (850053,  39,       1) /* DefaultScale */
     , (850053,  64,    0.12) /* ResistSlash */
     , (850053,  65,    0.12) /* ResistPierce */
     , (850053,  66,     0.1) /* ResistBludgeon */
     , (850053,  67,    0.12) /* ResistFire */
     , (850053,  68,     0.1) /* ResistCold */
     , (850053,  69,     0.1) /* ResistAcid */
     , (850053,  70,     0.1) /* ResistElectric */
     , (850053,  71,       1) /* ResistHealthBoost */
     , (850053,  72,       1) /* ResistStaminaDrain */
     , (850053,  73,       1) /* ResistStaminaBoost */
     , (850053,  74,       1) /* ResistManaDrain */
     , (850053,  75,       1) /* ResistManaBoost */
     , (850053,  76,     0.5) /* Translucency */
     , (850053,  80,     3.2) /* AiUseMagicDelay */
     , (850053, 104,      10) /* ObviousRadarRange */
     , (850053, 122,       5) /* AiAcquireHealth */
     , (850053, 125,    0.03) /* ResistHealthDrain */
     , (850053, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850053,   1, 'Small Elfin') /* Name */
     , (850053,  45, 'dcoralKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850053,   1, 0x02000001) /* Setup */
     , (850053,   2, 0x09000001) /* MotionTable */
     , (850053,   3, 0x200000B2) /* SoundTable */
     , (850053,   4, 0x30000000) /* CombatTable */
     , (850053,   6, 0x0400007E) /* PaletteBase */
     , (850053,   7, 0x100000B0) /* ClothingBase */
     , (850053,   8, 0x06001BBD) /* Icon */
     , (850053,   9, 0x05001067) /* EyesTexture */
     , (850053,  10, 0x05001082) /* NoseTexture */
     , (850053,  11, 0x050010A0) /* MouthTexture */
     , (850053,  15, 0x04001FE3) /* HairPalette */
     , (850053,  16, 0x040002BD) /* EyesPalette */
     , (850053,  17, 0x040002B6) /* SkinPalette */
     , (850053,  22, 0x34000063) /* PhysicsEffectTable */
     , (850053,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850053,  0,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850053,  1,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850053,  2,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850053,  3,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850053,  4,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850053,  5,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850053,  6,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850053,  7,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850053,  8,  4,2000, 0.75, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850053,   1,1400, 0, 0) /* Strength */
     , (850053,   2, 600, 0, 0) /* Endurance */
     , (850053,   3, 300, 0, 0) /* Quickness */
     , (850053,   4, 500, 0, 0) /* Coordination */
     , (850053,   5, 460, 0, 0) /* Focus */
     , (850053,   6, 420, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850053,   1, 22450, 0, 0,22450) /* MaxHealth */
     , (850053,   3,  4000, 0, 0, 4000) /* MaxStamina */
     , (850053,   5,  8000, 0, 0, 8000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850053,  6, 0, 2, 0, 340, 0,340) /* MeleeDefense        Trained */
     , (850053,  7, 0, 2, 0, 380, 0,380) /* MissileDefense      Trained */
     , (850053, 14, 0, 2, 0, 350, 0,350) /* ArcaneLore          Trained */
     , (850053, 15, 0, 2, 0, 379, 0,379) /* MagicDefense        Trained */
     , (850053, 20, 0, 2, 0, 380, 0,380) /* Deception           Trained */
     , (850053, 31, 0, 2, 0, 430, 0,430) /* CreatureEnchantment Trained */
     , (850053, 33, 0, 2, 0, 425, 0,425) /* LifeMagic           Trained */
     , (850053, 34, 0, 2, 0, 450, 0,1450) /* WarMagic            Trained */
     , (850053, 45, 0, 3, 0, 350, 0,1500) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850053,  1161,   2.05) /* Heal Self VI */
     , (850053,  4436,   2.05) /* Incantation of Blade Volley */
     , (850053,  4439,   2.05) /* Incantation of Flame Bolt */
     , (850053,  4441,   2.05) /* Incantation of Flame Volley */
     , (850053,  4443,   2.05) /* Incantation of Force Bolt */
     , (850053,  4447,   2.05) /* Incantation of Frost Bolt */
     , (850053,  4449,   2.05) /* Incantation of Frost Volley */
     , (850053,  4451,   2.05) /* Incantation of Lightning Bolt */
     , (850053,  4453,   2.05) /* Incantation of Lightning Volley */
     , (850053,  4457,   2.05) /* Incantation of Whirling Blade */
     , (850053,  4597,   2.05) /* Incantation of Magic Yield Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_41', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_41', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850053, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850053, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

