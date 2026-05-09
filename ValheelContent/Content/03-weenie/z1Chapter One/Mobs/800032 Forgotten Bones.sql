DELETE FROM `weenie` WHERE `class_Id` = 800032;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800032, 'Forgotten Bones', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800032,   1,         16) /* ItemType - Creature */
     , (800032,   2,         30) /* CreatureType - Skeleton */
     , (800032,   6,         -1) /* ItemsCapacity */
     , (800032,   7,         -1) /* ContainersCapacity */
     , (800032,  16,          1) /* ItemUseable - No */
     , (800032,  25,        280) /* Level */
     , (800032,  27,          0) /* ArmorType - None */
     , (800032,  40,          1) /* CombatMode - NonCombat */
     , (800032,  68,          0x80) /* TargetingTactic - Random, LastDamager */
     , (800032,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800032, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800032, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800032, 140,          1) /* AiOptions - CanOpenDoors */
     , (800032, 146,    7867485) /* XpOverride */
     , (800032, 332,       8800) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800032,   1, True ) /* Stuck */
     , (800032,  11, False) /* IgnoreCollisions */
     , (800032,  12, True ) /* ReportCollisions */
     , (800032,  13, False) /* Ethereal */
     , (800032,  14, True ) /* GravityStatus */
     , (800032,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800032,   1,       5) /* HeartbeatInterval */
     , (800032,   2,       0) /* HeartbeatTimestamp */
     , (800032,   3,    0.45) /* HealthRate */
     , (800032,   4,     0.5) /* StaminaRate */
     , (800032,   5,       2) /* ManaRate */
     , (800032,  12,     0.5) /* Shade */
     , (800032,  13,       1) /* ArmorModVsSlash */
     , (800032,  14,       1) /* ArmorModVsPierce */
     , (800032,  15,     0.7) /* ArmorModVsBludgeon */
     , (800032,  16,       1) /* ArmorModVsCold */
     , (800032,  17,       1) /* ArmorModVsFire */
     , (800032,  18,       1) /* ArmorModVsAcid */
     , (800032,  19,       1) /* ArmorModVsElectric */
     , (800032,  31,      18) /* VisualAwarenessRange */
     , (800032,  34,     1.1) /* PowerupTime */
     , (800032,  36,       2) /* ChargeSpeed */
     , (800032,  64,     0.1) /* ResistSlash */
     , (800032,  65,     0.1) /* ResistPierce */
     , (800032,  66,     0.3) /* ResistBludgeon */
     , (800032,  67,     0.1) /* ResistFire */
     , (800032,  68,     0.1) /* ResistCold */
     , (800032,  69,     0.1) /* ResistAcid */
     , (800032,  70,     0.1) /* ResistElectric */
     , (800032,  71,       1) /* ResistHealthBoost */
     , (800032,  72,       1) /* ResistStaminaDrain */
     , (800032,  73,       1) /* ResistStaminaBoost */
     , (800032,  74,       1) /* ResistManaDrain */
     , (800032,  75,       1) /* ResistManaBoost */
     , (800032,  80,       3) /* AiUseMagicDelay */
     , (800032, 104,      10) /* ObviousRadarRange */
     , (800032, 122,       2) /* AiAcquireHealth */
     , (800032, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800032,   1, 'Forgotten Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800032,   1,   33555465) /* Setup */
     , (800032,   2,  150994981) /* MotionTable */
     , (800032,   3,  536870942) /* SoundTable */
     , (800032,   4,  805306368) /* CombatTable */
     , (800032,   6,   67116522) /* PaletteBase */
     , (800032,   8,  100669124) /* Icon */
     , (800032,  22,  872415269) /* PhysicsEffectTable */
     , (800032,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800032,   1, 445, 0, 0) /* Strength */
     , (800032,   2, 460, 0, 0) /* Endurance */
     , (800032,   3, 400, 0, 0) /* Quickness */
     , (800032,   4, 490, 0, 0) /* Coordination */
     , (800032,   5, 465, 0, 0) /* Focus */
     , (800032,   6, 475, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800032,   1,  5000, 0, 0, 5000) /* MaxHealth */
     , (800032,   3,  1280, 0, 0, 2140) /* MaxStamina */
     , (800032,   5,     0, 0, 0, 75) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800032,  6, 0, 3, 0, 320, 0, 0) /* MeleeDefense        Specialized */
     , (800032,  7, 0, 3, 0, 310, 0, 0) /* MissileDefense      Specialized */
     , (800032, 15, 0, 3, 0, 300, 0, 0) /* MagicDefense        Specialized */
     , (800032, 20, 0, 3, 0, 300, 0, 0) /* Deception           Specialized */
     , (800032, 44, 0, 3, 0, 320, 0, 0) /* HeavyWeapons        Specialized */
     , (800032, 45, 0, 3, 0, 320, 0, 0) /* LightWeapons        Specialized */
     , (800032, 46, 0, 3, 0, 320, 0, 0) /* FinesseWeapons      Specialized */
     , (800032, 47, 0, 3, 0, 360, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800032,  0,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,   13,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800032,  1,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,   11,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800032,  2,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,   11,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800032,  3,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,   10,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800032,  4,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,    7,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800032,  5,  4,  135, 0.75,  800,  800,  800,  800,  800,  800,    1,   10,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800032,  6,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,    8,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800032,  7,  4,  0,    0,  800,  800,  800,  800,  800,  800,    1,    8,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800032,  8,  4,  135, 0.75,  800,  800,  800,  800,  800,  800,    1,   11,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800032,  94)
     , (800032, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800032, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-802609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800032, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_276-350', NULL, 276, 350, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800032, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_276-350', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800032, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_276-350', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800032, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
