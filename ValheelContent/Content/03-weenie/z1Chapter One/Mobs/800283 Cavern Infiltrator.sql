DELETE FROM `weenie` WHERE `class_Id` = 800283;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800283, 'Cavern Infiltrator', 10, '2023-06-10 09:59:50') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800283,   1,         16) /* ItemType - Creature */
     , (800283,   2,          8) /* CreatureType - Tusker */
     , (800283,   3,         64) /* PaletteTemplate - OrangeBrown */
     , (800283,   6,         -1) /* ItemsCapacity */
     , (800283,   7,         -1) /* ContainersCapacity */
     , (800283,  16,          1) /* ItemUseable - No */
     , (800283,  25,        185) /* Level */
     , (800283,  27,          0) /* ArmorType - None */
     , (800283,  40,          2) /* CombatMode - Melee */
     , (800283,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800283,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800283, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800283, 146,     3200000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800283,   1, True ) /* Stuck */
     , (800283,  11, False) /* IgnoreCollisions */
     , (800283,  12, True ) /* ReportCollisions */
     , (800283,  13, False) /* Ethereal */
     , (800283,  14, True ) /* GravityStatus */
     , (800283,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800283,   1,       5) /* HeartbeatInterval */
     , (800283,   2,       0) /* HeartbeatTimestamp */
     , (800283,   3,    0.25) /* HealthRate */
     , (800283,   4,       4) /* StaminaRate */
     , (800283,   5,       2) /* ManaRate */
     , (800283,  13,       1) /* ArmorModVsSlash */
     , (800283,  14,       1) /* ArmorModVsPierce */
     , (800283,  15,       1) /* ArmorModVsBludgeon */
     , (800283,  16,       1) /* ArmorModVsCold */
     , (800283,  17,     0.8) /* ArmorModVsFire */
     , (800283,  18,       1) /* ArmorModVsAcid */
     , (800283,  19,       1) /* ArmorModVsElectric */
     , (800283,  31,      20) /* VisualAwarenessRange */
     , (800283,  34,     2.5) /* PowerupTime */
     , (800283,  36,       1) /* ChargeSpeed */
     , (800283,  39,     0.9) /* DefaultScale */
     , (800283,  64,     0.5) /* ResistSlash */
     , (800283,  65,       1) /* ResistPierce */
     , (800283,  66,    0.75) /* ResistBludgeon */
     , (800283,  67,       1) /* ResistFire */
     , (800283,  68,    0.75) /* ResistCold */
     , (800283,  69,    0.75) /* ResistAcid */
     , (800283,  70,    0.25) /* ResistElectric */
     , (800283,  71,       1) /* ResistHealthBoost */
     , (800283,  72,       1) /* ResistStaminaDrain */
     , (800283,  73,       1) /* ResistStaminaBoost */
     , (800283,  74,       1) /* ResistManaDrain */
     , (800283,  75,       1) /* ResistManaBoost */
     , (800283, 104,      10) /* ObviousRadarRange */
     , (800283, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800283,   1, 'Cavern Infiltrator') /* Name */
     , (800283,  45, 'bpKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800283,   1, 0x02000964) /* Setup */
     , (800283,   2, 0x0900000C) /* MotionTable */
     , (800283,   3, 0x20000011) /* SoundTable */
     , (800283,   4, 0x3000000B) /* CombatTable */
     , (800283,   6, 0x040001C3) /* PaletteBase */
     , (800283,   7, 0x1000025F) /* ClothingBase */
     , (800283,   8, 0x06001033) /* Icon */
     , (800283,  22, 0x34000027) /* PhysicsEffectTable */
     , (800283,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800283,  0,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800283,  1,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800283,  2,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800283,  3,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800283,  4,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800283,  5,  4, 120, 0.75,  250,   60,   60,   60,   60,   60,   60,   60,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800283,  6,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800283,  7,  4,  0,    0,  250,   60,   60,   60,   60,   60,   60,   60,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800283,  8,  4, 120, 0.75,  250,   60,   60,   60,   60,   60,   60,   60,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800283,   1, 300, 0, 0) /* Strength */
     , (800283,   2, 380, 0, 0) /* Endurance */
     , (800283,   3, 360, 0, 0) /* Quickness */
     , (800283,   4, 450, 0, 0) /* Coordination */
     , (800283,   5,  60, 0, 0) /* Focus */
     , (800283,   6,  50, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800283,   1,  1400, 0, 0, 1400) /* MaxHealth */
     , (800283,   3,  1200, 0, 0, 1480) /* MaxStamina */
     , (800283,   5,     0, 0, 0,   50) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800283,  6, 0, 3, 0, 200, 0, 0) /* MeleeDefense        Specialized */
     , (800283,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (800283, 15, 0, 3, 0, 200, 0, 0) /* MagicDefense        Specialized */
     , (800283, 20, 0, 2, 0,  25, 0, 0) /* Deception           Trained */
     , (800283, 22, 0, 2, 0, 120, 0, 0) /* Jump                Trained */
     , (800283, 24, 0, 2, 0,  70, 0, 0) /* Run                 Trained */
     , (800283, 45, 0, 3, 0, 500, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800283, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-802609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800283, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_180-275', NULL, 180, 275, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800283, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_180-275', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800283, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_180-275', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800283, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

