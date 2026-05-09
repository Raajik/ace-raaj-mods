DELETE FROM `weenie` WHERE `class_Id` = 801831;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801831, 'Mithril Mosswart Master2', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801831,   1,         16) /* ItemType - Creature */
     , (801831,   2,          4) /* CreatureType - Mosswart */
     , (801831,   3,          7) /* PaletteTemplate - DeepGreen */
     , (801831,   6,         -1) /* ItemsCapacity */
     , (801831,   7,         -1) /* ContainersCapacity */
     , (801831,  16,          1) /* ItemUseable - No */
     , (801831,  25,        525) /* Level */
     , (801831,  27,          0) /* ArmorType - None */
     , (801831,  40,          2) /* CombatMode - Melee */
     , (801831,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801831,  72,         50) /* FriendType - Idol */
     , (801831,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801831, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (801831, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801831, 140,          1) /* AiOptions - CanOpenDoors */
     , (801831, 146,   81100000) /* XpOverride */
     , (801831, 332,      85000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801831,   1, True ) /* Stuck */
     , (801831,   6, False) /* AiUsesMana */
     , (801831,  11, False) /* IgnoreCollisions */
     , (801831,  12, True ) /* ReportCollisions */
     , (801831,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801831,   1,       5) /* HeartbeatInterval */
     , (801831,   2,       0) /* HeartbeatTimestamp */
     , (801831,   3,     0.5) /* HealthRate */
     , (801831,   4,       5) /* StaminaRate */
     , (801831,   5,       2) /* ManaRate */
     , (801831,  12,       0) /* Shade */
     , (801831,  13,     22) /* ArmorModVsSlash */
     , (801831,  14,     22) /* ArmorModVsPierce */
     , (801831,  15,     22) /* ArmorModVsBludgeon */
     , (801831,  16,       22) /* ArmorModVsCold */
     , (801831,  17,     22) /* ArmorModVsFire */
     , (801831,  18,     22) /* ArmorModVsAcid */
     , (801831,  19,     22) /* ArmorModVsElectric */
     , (801831,  31,      24) /* VisualAwarenessRange */
     , (801831,  34,     0.9) /* PowerupTime */
     , (801831,  36,       1) /* ChargeSpeed */
     , (801831,  39,     1.8) /* DefaultScale */
     , (801831,  64,     0.1) /* ResistSlash */
     , (801831,  65,     0.1) /* ResistPierce */
     , (801831,  66,     0.1) /* ResistBludgeon */
     , (801831,  67,      13) /* ResistFire */
     , (801831,  68,     0.1) /* ResistCold */
     , (801831,  69,      13) /* ResistAcid */
     , (801831,  70,      13) /* ResistElectric */
     , (801831,  71,       1) /* ResistHealthBoost */
     , (801831,  72,       1) /* ResistStaminaDrain */
     , (801831,  73,       1) /* ResistStaminaBoost */
     , (801831,  74,       1) /* ResistManaDrain */
     , (801831,  75,       1) /* ResistManaBoost */
     , (801831, 104,      10) /* ObviousRadarRange */
     , (801831, 125,       1) /* ResistHealthDrain */
     , (801831, 166,     0.6) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801831,   1, 'Mithril Mosswart Master') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801831,   1,   33557327) /* Setup */
     , (801831,   2,  150994953) /* MotionTable */
     , (801831,   3,  536870959) /* SoundTable */
     , (801831,   4,  805306373) /* CombatTable */
     , (801831,   6,   67113400) /* PaletteBase */
     , (801831,   7,  268436295) /* ClothingBase */
     , (801831,   8,  100667449) /* Icon */
     , (801831,  22,  872415264) /* PhysicsEffectTable */
     , (801831,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801831,   1, 500, 0, 0) /* Strength */
     , (801831,   2, 450, 0, 0) /* Endurance */
     , (801831,   3, 400, 0, 0) /* Quickness */
     , (801831,   4, 420, 0, 0) /* Coordination */
     , (801831,   5, 320, 0, 0) /* Focus */
     , (801831,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801831,   1,  734775, 0, 0, 735000) /* MaxHealth */
     , (801831,   3, 10000, 0, 0, 10450) /* MaxStamina */
     , (801831,   5, 10000, 0, 0, 10320) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801831,  6, 0, 3, 0, 320, 0, 0) /* MeleeDefense        Specialized */
     , (801831,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (801831, 14, 0, 3, 0, 250, 0, 0) /* ArcaneLore          Specialized */
     , (801831, 15, 0, 3, 0, 305, 0, 0) /* MagicDefense        Specialized */
     , (801831, 24, 0, 3, 0,  50, 0, 0) /* Run                 Specialized */
     , (801831, 44, 0, 3, 0, 340, 0, 0) /* HeavyWeapons        Specialized */
     , (801831, 45, 0, 3, 0, 340, 0, 0) /* LightWeapons        Specialized */
     , (801831, 46, 0, 3, 0, 340, 0, 0) /* FinesseWeapons      Specialized */
     , (801831, 47, 0, 3, 0, 360, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801831,  0,  4,  0,    0,  1340,  420,  440,  440,  440,  355,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801831,  1,  4,  0,    0,  1340,  420,  440,  440,  440,  355,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801831,  2,  4,  0,    0,  1340,  420,  440,  440,  440,  355,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801831,  3,  4,  0,    0,  1340,  440,  440,  440,  440,  355,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801831,  4,  4,  0,    0,  1340,  440,  440,  440,  440,  355,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801831,  5,  4, 500, 0.75,  1340,  440,  440,  440,  440,  355,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801831,  6,  4,  0,    0,  1340,  420,  440,  440,  440,  355,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801831,  7,  4,  0,    0,  1340,  420,  440,  440,  440,  355,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801831,  8,  4, 500, 0.75,  1340,  420,  440,  440,  440,  355,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801831, 3 /* Death */, 0.55, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@50000', NULL, 50000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801831, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have maxed out your Reputation. To gain more reputation, you must Prestige.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801831, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@49999', NULL, 49999, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801831, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have reached the limit of your ability to gain Reputation! To gain more reputation, you must Prestige!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801831, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 Reputation! You now have %tqc Reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
