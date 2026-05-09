DELETE FROM `weenie` WHERE `class_Id` = 802203;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802203, 'speedrundrudge2', 10, '2023-03-14 05:41:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802203,   1,         16) /* ItemType - Creature */
     , (802203,   2,          3) /* CreatureType - Drudge */
     , (802203,   3,         47) /* PaletteTemplate - PastyYellow */
     , (802203,   6,         -1) /* ItemsCapacity */
     , (802203,   7,         -1) /* ContainersCapacity */
     , (802203,  16,          1) /* ItemUseable - No */
     , (802203,  25,        215) /* Level */
     , (802203,  27,          0) /* ArmorType - None */
     , (802203,  40,          2) /* CombatMode - Melee */
     , (802203,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802203,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802203, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802203, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802203, 140,          1) /* AiOptions - CanOpenDoors */
     , (802203, 146,       1200) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802203,   1, True ) /* Stuck */
     , (802203,  11, False) /* IgnoreCollisions */
     , (802203,  12, True ) /* ReportCollisions */
     , (802203,  13, False) /* Ethereal */
     , (802203,  14, True ) /* GravityStatus */
     , (802203,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802203,   1,       5) /* HeartbeatInterval */
     , (802203,   2,       0) /* HeartbeatTimestamp */
     , (802203,   3,   0.067) /* HealthRate */
     , (802203,   4,       3) /* StaminaRate */
     , (802203,   5,       1) /* ManaRate */
     , (802203,  12,     0.5) /* Shade */
     , (802203,  13,     0.9) /* ArmorModVsSlash */
     , (802203,  14,       1) /* ArmorModVsPierce */
     , (802203,  15,     1.1) /* ArmorModVsBludgeon */
     , (802203,  16,     0.6) /* ArmorModVsCold */
     , (802203,  17,     0.6) /* ArmorModVsFire */
     , (802203,  18,       1) /* ArmorModVsAcid */
     , (802203,  19,     0.6) /* ArmorModVsElectric */
     , (802203,  31,      12) /* VisualAwarenessRange */
     , (802203,  34,       1) /* PowerupTime */
     , (802203,  36,       1) /* ChargeSpeed */
     , (802203,  39,     1.2) /* DefaultScale */
     , (802203,  64,    0.86) /* ResistSlash */
     , (802203,  65,    0.75) /* ResistPierce */
     , (802203,  66,    0.66) /* ResistBludgeon */
     , (802203,  67,    1.42) /* ResistFire */
     , (802203,  68,    1.42) /* ResistCold */
     , (802203,  69,    0.75) /* ResistAcid */
     , (802203,  70,    1.42) /* ResistElectric */
     , (802203,  71,       1) /* ResistHealthBoost */
     , (802203,  72,       1) /* ResistStaminaDrain */
     , (802203,  73,       1) /* ResistStaminaBoost */
     , (802203,  74,       1) /* ResistManaDrain */
     , (802203,  75,       1) /* ResistManaBoost */
     , (802203, 104,      10) /* ObviousRadarRange */
     , (802203, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802203,   1, 'Drudge Growler') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802203,   1,   33556445) /* Setup */
     , (802203,   2,  150994952) /* MotionTable */
     , (802203,   3,  536870919) /* SoundTable */
     , (802203,   4,  805306372) /* CombatTable */
     , (802203,   6,   67112812) /* PaletteBase */
     , (802203,   7,  268435972) /* ClothingBase */
     , (802203,   8,  100667445) /* Icon */
     , (802203,  22,  872415258) /* PhysicsEffectTable */
     , (802203,  32,         74) /* WieldedTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802203,   1, 360, 0, 0) /* Strength */
     , (802203,   2, 355, 0, 0) /* Endurance */
     , (802203,   3, 335, 0, 0) /* Quickness */
     , (802203,   4, 380, 0, 0) /* Coordination */
     , (802203,   5, 315, 0, 0) /* Focus */
     , (802203,   6, 315, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802203,   1,  1500, 0, 0, 1500) /* MaxHealth */
     , (802203,   3,  1500, 0, 0, 1500) /* MaxStamina */
     , (802203,   5,     0, 0, 0, 15) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802203,  6, 0, 3, 0, 228, 0, 0) /* MeleeDefense        Specialized */
     , (802203,  7, 0, 3, 0, 220, 0, 0) /* MissileDefense      Specialized */
     , (802203, 15, 0, 3, 0, 228, 0, 0) /* MagicDefense        Specialized */
     , (802203, 20, 0, 3, 0, 215, 0, 0) /* Deception           Specialized */
     , (802203, 24, 0, 3, 0, 240, 0, 0) /* Run                 Specialized */
     , (802203, 44, 0, 3, 0, 220, 0, 0) /* HeavyWeapons        Specialized */
     , (802203, 45, 0, 3, 0, 220, 0, 0) /* LightWeapons        Specialized */
     , (802203, 46, 0, 3, 0, 220, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802203,  0,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802203,  1,  4,  0,    0,   15,    7,    7,    7,    7,    7,    7,    7,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802203,  2,  4,  0,    0,   15,    7,    7,    7,    7,    7,    7,    7,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802203,  3,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802203,  4,  4,  0,    0,   13,    6,    6,    6,    6,    6,    6,    6,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802203,  5,  4, 55, 0.75,   10,    5,    5,    5,    5,    5,    5,    5,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802203,  6,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802203,  7,  4,  0,    0,   10,    5,    5,    5,    5,    5,    5,    5,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802203,  8,  4, 55, 0.75,   10,    5,    5,    5,    5,    5,    5,    5,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802203,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'RoomCleared', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  30 /* InqQuestSolves */, 0, 1, NULL, 'RoomCleared', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802203, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'RoomCleared', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have cleared %tqc of 8 total Drudges.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802203, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'RoomCleared', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have cleared %tqc of 8 total Drudges.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802203, 9, 802069,  0, 0, 0.5, False) /* Create Lost Pocket Watch (802069) for ContainTreasure */;
