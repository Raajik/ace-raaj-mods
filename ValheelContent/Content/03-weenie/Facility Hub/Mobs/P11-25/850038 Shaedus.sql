DELETE FROM `weenie` WHERE `class_Id` = 850038;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850038, 'ace850038-shaedus', 10, '2025-04-08 01:36:58') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850038,   0,          0) /*  */
     , (850038,   1,         16) /* ItemType - Creature */
     , (850038,   2,         31) /* CreatureType - Human */
     , (850038,   6,         -1) /* ItemsCapacity */
     , (850038,   7,         -1) /* ContainersCapacity */
     , (850038,  16,          1) /* ItemUseable - No */
     , (850038,  25,        510) /* Level */
     , (850038,  27,          1) /* ArmorType - Cloth */
     , (850038,  40,          4) /* CombatMode - Missile */
     , (850038,  67,          2) /* Tolerance - Appraise */
     , (850038,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (850038,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850038, 101, 2147483647) /* AiAllowedCombatStyle - 2147483647 */
     , (850038, 113,          2) /* Gender - Female */
     , (850038, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850038, 146,   35000000) /* XpOverride */
     , (850038, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850038,   1, True ) /* Stuck */
     , (850038,   6, False) /* AiUsesMana */
     , (850038,  12, True ) /* ReportCollisions */
     , (850038,  14, True ) /* GravityStatus */
     , (850038,  19, True ) /* Attackable */
     , (850038,  50, True ) /* NeverFailCasting */
     , (850038,  65, True ) /* IgnoreMagicResist */
     , (850038, 101, True ) /* CanGenerateRare */
     , (850038, 102, True ) /* CorpseGeneratedRare */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850038,   1,       5) /* HeartbeatInterval */
     , (850038,   2,       0) /* HeartbeatTimestamp */
     , (850038,   3,     0.4) /* HealthRate */
     , (850038,   4,     2.5) /* StaminaRate */
     , (850038,   5,       1) /* ManaRate */
     , (850038,  12,     0.1) /* Shade */
     , (850038,  13,       1) /* ArmorModVsSlash */
     , (850038,  14,       1) /* ArmorModVsPierce */
     , (850038,  15,       1) /* ArmorModVsBludgeon */
     , (850038,  16,       1) /* ArmorModVsCold */
     , (850038,  17,       1) /* ArmorModVsFire */
     , (850038,  18,       1) /* ArmorModVsAcid */
     , (850038,  19,     0.5) /* ArmorModVsElectric */
     , (850038,  31,      20) /* VisualAwarenessRange */
     , (850038,  34,     0.9) /* PowerupTime */
     , (850038,  36,       1) /* ChargeSpeed */
     , (850038,  39,       1) /* DefaultScale */
     , (850038,  64,     0.1) /* ResistSlash */
     , (850038,  65,     0.1) /* ResistPierce */
     , (850038,  66,     0.1) /* ResistBludgeon */
     , (850038,  67,     0.1) /* ResistFire */
     , (850038,  68,     0.1) /* ResistCold */
     , (850038,  69,     0.1) /* ResistAcid */
     , (850038,  70,    0.12) /* ResistElectric */
     , (850038,  71,       1) /* ResistHealthBoost */
     , (850038,  72,       1) /* ResistStaminaDrain */
     , (850038,  73,       1) /* ResistStaminaBoost */
     , (850038,  74,       1) /* ResistManaDrain */
     , (850038,  75,       1) /* ResistManaBoost */
     , (850038,  76,     0.5) /* Translucency */
     , (850038,  80,     3.2) /* AiUseMagicDelay */
     , (850038, 104,      10) /* ObviousRadarRange */
     , (850038, 122,       5) /* AiAcquireHealth */
     , (850038, 125,    0.03) /* ResistHealthDrain */
     , (850038, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850038,   1, 'Shaedus') /* Name */
     , (850038,  45, 'BshadeKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850038,   1, 0x0200004E) /* Setup */
     , (850038,   2, 0x09000001) /* MotionTable */
     , (850038,   3, 0x20000002) /* SoundTable */
     , (850038,   4, 0x30000000) /* CombatTable */
     , (850038,   5, 0x0E000005) /* QualityFilter */
     , (850038,   6, 0x0400007E) /* PaletteBase */
     , (850038,   7, 0x10000610) /* ClothingBase */
     , (850038,   8, 0x06001036) /* Icon */
     , (850038,   9, 0x05001069) /* EyesTexture */
     , (850038,  10, 0x0500107C) /* NoseTexture */
     , (850038,  11, 0x05001097) /* MouthTexture */
     , (850038,  12, 0x0500024C) /* DefaultEyesTexture */
     , (850038,  13, 0x050002F5) /* DefaultNoseTexture */
     , (850038,  14, 0x0500025C) /* DefaultMouthTexture */
     , (850038,  15, 0x04001FB3) /* HairPalette */
     , (850038,  16, 0x040002BC) /* EyesPalette */
     , (850038,  17, 0x040002B9) /* SkinPalette */
     , (850038,  18, 0x010047FF) /* HeadObject */
     , (850038,  22, 0x34000004) /* PhysicsEffectTable */
     , (850038,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850038,  0,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850038,  1,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850038,  2,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850038,  3,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850038,  4,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850038,  5,  4,2000,  0.2, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 2,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0) /* Hand */
     , (850038,  6,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850038,  7,  4,  0,    0, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850038,  8,  4,2000,  0.2, 1000,  500,  500,  500,  500,  500,  500,  500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850038,   1,1400, 0, 0) /* Strength */
     , (850038,   2, 375, 0, 0) /* Endurance */
     , (850038,   3, 375, 0, 0) /* Quickness */
     , (850038,   4, 500, 0, 0) /* Coordination */
     , (850038,   5, 375, 0, 0) /* Focus */
     , (850038,   6, 375, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850038,   1, 22450, 0, 0,22450) /* MaxHealth */
     , (850038,   3, 18000, 0, 0,18000) /* MaxStamina */
     , (850038,   5, 18000, 0, 0,18000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850038,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (850038,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (850038, 14, 0, 3, 0, 200, 0, 0) /* ArcaneLore          Specialized */
     , (850038, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (850038, 16, 0, 3, 0, 200, 0, 0) /* ManaConversion      Specialized */
     , (850038, 21, 0, 3, 0, 200, 0, 0) /* Healing             Specialized */
     , (850038, 22, 0, 3, 0, 200, 0, 0) /* Jump                Specialized */
     , (850038, 24, 0, 3, 0, 200, 0, 0) /* Run                 Specialized */
     , (850038, 31, 0, 3, 0, 450, 0, 0) /* CreatureEnchantment Specialized */
     , (850038, 32, 0, 3, 0, 450, 0, 0) /* ItemEnchantment     Specialized */
     , (850038, 33, 0, 3, 0, 450, 0, 0) /* LifeMagic           Specialized */
     , (850038, 43, 0, 3, 0, 425, 0, 0) /* VoidMagic           Specialized */
     , (850038, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850038,  4496,      2) /* Incantation of Regeneration Self */
     , (850038,  4597,      2) /* Incantation of Magic Yield Other */
     , (850038,  5338,   2.03) /* Incantation of Destructive Curse */
     , (850038,  5348,   2.03) /* Incantation of Nether Streak */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@11', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_51', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_51', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850038, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850038, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

