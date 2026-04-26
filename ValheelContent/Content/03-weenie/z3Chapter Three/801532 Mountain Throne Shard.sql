DELETE FROM `weenie` WHERE `class_Id` = 801532;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801532, 'Mountain Throne Shard', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801532,   1,         16) /* ItemType - Creature */
     , (801532,   2,         47) /* CreatureType - Crystal */
     , (801532,   6,         -1) /* ItemsCapacity */
     , (801532,   7,         -1) /* ContainersCapacity */
     , (801532,  16,          1) /* ItemUseable - No */
     , (801532,  25,        425) /* Level */
     , (801532,  27,          0) /* ArmorType - None */
     , (801532,  32,      85000) /* ChannelsActive - Advocate1, Help, Fellow, Monarch, Holtburg */
     , (801532,  40,          2) /* CombatMode - Melee */
     , (801532,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (801532,  69,          4) /* CombatTactic - LastDamager */
     , (801532,  81,          2) /* MaxGeneratedObjects */
     , (801532,  82,          0) /* InitGeneratedObjects */
     , (801532,  93,       3080) /* PhysicsState - ReportCollisions, Gravity, LightingOn */
     , (801532, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801532, 146,   81100000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801532,   1, True ) /* Stuck */
     , (801532,   6, True ) /* AiUsesMana */
     , (801532,  11, False) /* IgnoreCollisions */
     , (801532,  12, True ) /* ReportCollisions */
     , (801532,  13, False) /* Ethereal */
     , (801532,  19, True ) /* Attackable */
     , (801532,  50, True ) /* NeverFailCasting */
     , (801532, 120, True ) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801532,   1,       5) /* HeartbeatInterval */
     , (801532,   2,       0) /* HeartbeatTimestamp */
     , (801532,   3,     0.6) /* HealthRate */
     , (801532,   4,       3) /* StaminaRate */
     , (801532,   5,       1) /* ManaRate */
     , (801532,  12,     0.5) /* Shade */
     , (801532,  13,       1) /* ArmorModVsSlash */
     , (801532,  14,       1) /* ArmorModVsPierce */
     , (801532,  15,     0.7) /* ArmorModVsBludgeon */
     , (801532,  16,       1) /* ArmorModVsCold */
     , (801532,  17,       1) /* ArmorModVsFire */
     , (801532,  18,       1) /* ArmorModVsAcid */
     , (801532,  19,       1) /* ArmorModVsElectric */
     , (801532,  31,      24) /* VisualAwarenessRange */
     , (801532,  34,       1) /* PowerupTime */
     , (801532,  36,       1) /* ChargeSpeed */
     , (801532,  39,     3.1) /* DefaultScale */
     , (801532,  64,     0.1) /* ResistSlash */
     , (801532,  65,     0.1) /* ResistPierce */
     , (801532,  66,     0.5) /* ResistBludgeon */
     , (801532,  67,     0.1) /* ResistFire */
     , (801532,  68,     0.1) /* ResistCold */
     , (801532,  69,     0.1) /* ResistAcid */
     , (801532,  70,     0.1) /* ResistElectric */
     , (801532,  71,       1) /* ResistHealthBoost */
     , (801532,  72,    0.85) /* ResistStaminaDrain */
     , (801532,  73,       1) /* ResistStaminaBoost */
     , (801532,  74,    0.85) /* ResistManaDrain */
     , (801532,  75,       1) /* ResistManaBoost */
     , (801532,  80,       2) /* AiUseMagicDelay */
     , (801532, 104,      10) /* ObviousRadarRange */
     , (801532, 125,    0.85) /* ResistHealthDrain */
     , (801532, 127,       2) /* AiCounteractEnchantment */
     , (801532, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801532,   1, 'Mountain Throne Shard') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801532,   1,   33561556) /* Setup */
     , (801532,   2,  150995096) /* MotionTable */
     , (801532,   3,  536871001) /* SoundTable */
     , (801532,   4,  805306407) /* CombatTable */
     , (801532,   8,  100691499) /* Icon */
     , (801532,  22,  872415348) /* PhysicsEffectTable */
     , (801532,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801532,   1, 5220, 0, 0) /* Strength */
     , (801532,   2, 1250, 0, 0) /* Endurance */
     , (801532,   3, 500, 0, 0) /* Quickness */
     , (801532,   4, 350, 0, 0) /* Coordination */
     , (801532,   5, 490, 0, 0) /* Focus */
     , (801532,   6, 490, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801532,   1, 20000, 0, 0, 20000) /* MaxHealth */
     , (801532,   3, 40750, 0, 0, 40750) /* MaxStamina */
     , (801532,   5, 40750, 0, 0, 40750) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801532,  6, 0, 3, 0, 260, 0, 0) /* MeleeDefense        Specialized */
     , (801532,  7, 0, 3, 0, 260, 0, 0) /* MissileDefense      Specialized */
     , (801532, 15, 0, 3, 0, 295, 0, 0) /* MagicDefense        Specialized */
     , (801532, 20, 0, 3, 0, 220, 0, 0) /* Deception           Specialized */
     , (801532, 33, 0, 3, 0, 6220, 0, 0) /* LifeMagic           Specialized */
     , (801532, 34, 0, 3, 0, 6240, 0, 0) /* WarMagic            Specialized */
     , (801532, 45, 0, 3, 0, 6395, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801532,  0,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801532,  1,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801532,  2,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801532,  3,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801532,  4,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801532,  5,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801532,  6,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801532,  7,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801532,  8,  4, 500, 0.75, 325, 3112, 3112, 3112, 3112, 3112, 3112, 3112, 0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801532,  5531,  2.295)  /* Bloodstone Bolt VII */
     , (801532,  5535,  2.419)  /* Acidic Blood */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801532,  3 /* Death */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@50000', NULL, 50000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801532, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have maxed out your Reputation. To gain more reputation, you must Prestige.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801532, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have reached the limit of your ability to gain Reputation! To gain more reputation, you must Prestige!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801532, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@49999', NULL, 49999, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801532, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 Reputation! You now have %tqc Reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */
     , (801532, 9, 801530,  0, 0, 1, False) /* Create Broken Mountain Throne Gem (801530) for ContainTreasure */;
