DELETE FROM `weenie` WHERE `class_Id` = 802171;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802171, 'speedrundrudge', 10, '2023-03-14 05:41:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802171,   1,         16) /* ItemType - Creature */
     , (802171,   2,          3) /* CreatureType - Drudge */
     , (802171,   3,         47) /* PaletteTemplate - PastyYellow */
     , (802171,   6,         -1) /* ItemsCapacity */
     , (802171,   7,         -1) /* ContainersCapacity */
     , (802171,  16,          1) /* ItemUseable - No */
     , (802171,  25,          8) /* Level */
     , (802171,  27,          0) /* ArmorType - None */
     , (802171,  40,          2) /* CombatMode - Melee */
     , (802171,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802171,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802171, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802171, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802171, 140,          1) /* AiOptions - CanOpenDoors */
     , (802171, 146,       1200) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802171,   1, True ) /* Stuck */
     , (802171,  11, False) /* IgnoreCollisions */
     , (802171,  12, True ) /* ReportCollisions */
     , (802171,  13, False) /* Ethereal */
     , (802171,  14, True ) /* GravityStatus */
     , (802171,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802171,   1,       5) /* HeartbeatInterval */
     , (802171,   2,       0) /* HeartbeatTimestamp */
     , (802171,   3,   0.067) /* HealthRate */
     , (802171,   4,       3) /* StaminaRate */
     , (802171,   5,       1) /* ManaRate */
     , (802171,  12,     0.5) /* Shade */
     , (802171,  13,     0.9) /* ArmorModVsSlash */
     , (802171,  14,       1) /* ArmorModVsPierce */
     , (802171,  15,     1.1) /* ArmorModVsBludgeon */
     , (802171,  16,     0.6) /* ArmorModVsCold */
     , (802171,  17,     0.6) /* ArmorModVsFire */
     , (802171,  18,       1) /* ArmorModVsAcid */
     , (802171,  19,     0.6) /* ArmorModVsElectric */
     , (802171,  31,      12) /* VisualAwarenessRange */
     , (802171,  34,       1) /* PowerupTime */
     , (802171,  36,       1) /* ChargeSpeed */
     , (802171,  39,     1.2) /* DefaultScale */
     , (802171,  64,    0.86) /* ResistSlash */
     , (802171,  65,    0.75) /* ResistPierce */
     , (802171,  66,    0.66) /* ResistBludgeon */
     , (802171,  67,    1.42) /* ResistFire */
     , (802171,  68,    1.42) /* ResistCold */
     , (802171,  69,    0.75) /* ResistAcid */
     , (802171,  70,    1.42) /* ResistElectric */
     , (802171,  71,       1) /* ResistHealthBoost */
     , (802171,  72,       1) /* ResistStaminaDrain */
     , (802171,  73,       1) /* ResistStaminaBoost */
     , (802171,  74,       1) /* ResistManaDrain */
     , (802171,  75,       1) /* ResistManaBoost */
     , (802171, 104,      10) /* ObviousRadarRange */
     , (802171, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802171,   1, 'Drudge Prowler') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802171,   1,   33556445) /* Setup */
     , (802171,   2,  150994952) /* MotionTable */
     , (802171,   3,  536870919) /* SoundTable */
     , (802171,   4,  805306372) /* CombatTable */
     , (802171,   6,   67112812) /* PaletteBase */
     , (802171,   7,  268435972) /* ClothingBase */
     , (802171,   8,  100667445) /* Icon */
     , (802171,  22,  872415258) /* PhysicsEffectTable */
     , (802171,  32,         74) /* WieldedTreasureType */
     , (802171,  35,       5100) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802171,   1,  60, 0, 0) /* Strength */
     , (802171,   2,  55, 0, 0) /* Endurance */
     , (802171,   3, 135, 0, 0) /* Quickness */
     , (802171,   4,  80, 0, 0) /* Coordination */
     , (802171,   5,  15, 0, 0) /* Focus */
     , (802171,   6,  15, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802171,   1,     8, 0, 0, 36) /* MaxHealth */
     , (802171,   3,    20, 0, 0, 75) /* MaxStamina */
     , (802171,   5,     0, 0, 0, 15) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802171,  6, 0, 3, 0,  28, 0, 0) /* MeleeDefense        Specialized */
     , (802171,  7, 0, 3, 0,  20, 0, 0) /* MissileDefense      Specialized */
     , (802171, 15, 0, 3, 0,   8, 0, 0) /* MagicDefense        Specialized */
     , (802171, 20, 0, 3, 0,  15, 0, 0) /* Deception           Specialized */
     , (802171, 24, 0, 3, 0,  40, 0, 0) /* Run                 Specialized */
     , (802171, 44, 0, 3, 0,  20, 0, 0) /* HeavyWeapons        Specialized */
     , (802171, 45, 0, 3, 0,  20, 0, 0) /* LightWeapons        Specialized */
     , (802171, 46, 0, 3, 0,  20, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802171,  0,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802171,  1,  4,  0,    0,   15,    7,    7,    7,    7,    7,    7,    7,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802171,  2,  4,  0,    0,   15,    7,    7,    7,    7,    7,    7,    7,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802171,  3,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802171,  4,  4,  0,    0,   13,    6,    6,    6,    6,    6,    6,    6,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802171,  5,  4,  5, 0.75,   10,    5,    5,    5,    5,    5,    5,    5,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802171,  6,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802171,  7,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802171,  8,  4,  5, 0.75,   10,    5,    5,    5,    5,    5,    5,    5,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802171,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'RoomCleared', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  30 /* InqQuestSolves */, 0, 1, NULL, 'RoomCleared', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802171, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'RoomCleared', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have cleared %tqc of 8 total Drudges.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802171, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'RoomCleared', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have cleared %tqc of 8 total Drudges.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802171, 9, 802069,  0, 0, 0.5, False) /* Create Lost Pocket Watch (802069) for ContainTreasure */;
