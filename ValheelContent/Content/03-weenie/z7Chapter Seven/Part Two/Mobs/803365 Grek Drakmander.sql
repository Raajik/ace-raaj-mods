DELETE FROM `weenie` WHERE `class_Id` = 803365;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803365, 'Grek Drakmander', 10, '2024-03-16 11:36:20') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803365,   0,          0) /*  */
     , (803365,   1,         16) /* ItemType - Creature */
     , (803365,   2,         22) /* CreatureType - Golem */
     , (803365,   3,          5) /* PaletteTemplate - White */
     , (803365,   6,         -1) /* ItemsCapacity */
     , (803365,   7,         -1) /* ContainersCapacity */
     , (803365,  16,          1) /* ItemUseable - No */
     , (803365,  25,       2250) /* Level */
     , (803365,  27,          1) /* ArmorType - Cloth */
     , (803365,  40,          2) /* CombatMode - Melee */
     , (803365,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803365,  72,         22) /* FriendType - Shadow */
     , (803365,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803365, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803365, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803365, 140,          1) /* AiOptions - CanOpenDoors */
     , (803365, 146,     825000) /* XpOverride */
     , (803365, 332,     825000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803365,   1, False) /* Stuck */
     , (803365,   6, True ) /* AiUsesMana */
     , (803365,  11, False) /* IgnoreCollisions */
     , (803365,  12, True ) /* ReportCollisions */
     , (803365,  13, False) /* Ethereal */
     , (803365,  19, True ) /* Attackable */
     , (803365,  50, True ) /* NeverFailCasting */
     , (803365,  65, True ) /* IgnoreMagicResist */
     , (803365,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803365,   1,       5) /* HeartbeatInterval */
     , (803365,   2,       0) /* HeartbeatTimestamp */
     , (803365,   3,     0.4) /* HealthRate */
     , (803365,   4,       5) /* StaminaRate */
     , (803365,   5,       1) /* ManaRate */
     , (803365,  13,       5) /* ArmorModVsSlash */
     , (803365,  14,       5) /* ArmorModVsPierce */
     , (803365,  15,       5) /* ArmorModVsBludgeon */
     , (803365,  16,       5) /* ArmorModVsCold */
     , (803365,  17,       5) /* ArmorModVsFire */
     , (803365,  18,       5) /* ArmorModVsAcid */
     , (803365,  19,       5) /* ArmorModVsElectric */
     , (803365,  31,      30) /* VisualAwarenessRange */
     , (803365,  34,       1) /* PowerupTime */
     , (803365,  36,       1) /* ChargeSpeed */
     , (803365,  39,     1.6) /* DefaultScale */
     , (803365,  64,   0.001) /* ResistSlash */
     , (803365,  65,   0.003) /* ResistPierce */
     , (803365,  66,   0.001) /* ResistBludgeon */
     , (803365,  67,   0.001) /* ResistFire */
     , (803365,  68,   0.001) /* ResistCold */
     , (803365,  69,   0.001) /* ResistAcid */
     , (803365,  70,   0.001) /* ResistElectric */
     , (803365,  71,       1) /* ResistHealthBoost */
     , (803365,  72,       1) /* ResistStaminaDrain */
     , (803365,  73,       1) /* ResistStaminaBoost */
     , (803365,  74,       1) /* ResistManaDrain */
     , (803365,  75,       1) /* ResistManaBoost */
     , (803365,  80,       3) /* AiUseMagicDelay */
     , (803365, 104,      10) /* ObviousRadarRange */
     , (803365, 117,     0.5) /* FocusedProbability */
     , (803365, 122,       2) /* AiAcquireHealth */
     , (803365, 125,   0.003) /* ResistHealthDrain */
     , (803365, 166,   0.003) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803365,   1, 'Grek Drakmander') /* Name */
     , (803365,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803365,   1, 0x02000001) /* Setup */
     , (803365,   2, 0x09000001) /* MotionTable */
     , (803365,   3, 0x20000001) /* SoundTable */
     , (803365,   4, 0x30000000) /* CombatTable */
     , (803365,   6, 0x0400007E) /* PaletteBase */
     , (803365,   8, 0x06001036) /* Icon */
     , (803365,  22, 0x34000004) /* PhysicsEffectTable */
     , (803365,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803365,  0,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803365,  1,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803365,  2,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803365,  3,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803365,  4,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803365,  5,  4,40000, 0.75,30000,15000,15000,15000,15000,15000,15000,15000,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803365,  6,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803365,  7,  4,  0,    0,30000,15000,15000,15000,15000,15000,15000,15000,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803365,  8,  4,40000, 0.75,30000,15000,15000,15000,15000,15000,15000,15000,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803365,   1,20000, 0, 0) /* Strength */
     , (803365,   2,18000, 0, 0) /* Endurance */
     , (803365,   3, 550, 0, 0) /* Quickness */
     , (803365,   4, 500, 0, 0) /* Coordination */
     , (803365,   5, 540, 0, 0) /* Focus */
     , (803365,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803365,   1,2500000, 0, 0,2500000) /* MaxHealth */
     , (803365,   3,2500000, 0, 0,2500000) /* MaxStamina */
     , (803365,   5,2500000, 0, 0,2500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803365,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803365,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803365, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803365, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803365, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803365, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803365, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803365, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803365, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803365, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803365, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@46', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803365, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_86', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +20 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803365, 32 /* GotoSet */, 0.1, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'MobRatings@1000_12', NULL, 1000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803365, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'MobRatings@1000_12', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 33 /* IncrementQuest */, 0, 1, NULL, 'MobRatings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803365, 2, 37187,  0,90,    1, False) /* Create Shirt (2587) for Wield */
     , (803365, 2, 37195,  0,90,    1, False) /* Create Pants (2601) for Wield */
     , (803365, 2, 37200,  0,90,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (803365, 2, 37207,  0,90,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (803365, 2, 37217,  0,90,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (803365, 2,   130,  0,93,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */;

