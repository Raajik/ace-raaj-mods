DELETE FROM `weenie` WHERE `class_Id` = 802250;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802250, 'Master of Minds', 10, '2023-04-03 07:54:38') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802250,   1,         16) /* ItemType - Creature */
     , (802250,   2,         30) /* CreatureType - Skeleton */
     , (802250,   3,         17) /* PaletteTemplate - Yellow */
     , (802250,   6,         -1) /* ItemsCapacity */
     , (802250,   7,         -1) /* ContainersCapacity */
     , (802250,  16,          1) /* ItemUseable - No */
     , (802250,  25,        400) /* Level */
     , (802250,  27,          0) /* ArmorType - None */
     , (802250,  40,          1) /* CombatMode - NonCombat */
     , (802250,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (802250,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802250, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (802250, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802250, 140,          1) /* AiOptions - CanOpenDoors */
     , (802250, 146,     500000) /* XpOverride */
     , (802250, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802250,   1, True ) /* Stuck */
     , (802250,  11, False) /* IgnoreCollisions */
     , (802250,  12, True ) /* ReportCollisions */
     , (802250,  13, False) /* Ethereal */
     , (802250,  14, True ) /* GravityStatus */
     , (802250,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802250,   1,       5) /* HeartbeatInterval */
     , (802250,   2,       0) /* HeartbeatTimestamp */
     , (802250,   3,       1) /* HealthRate */
     , (802250,   4,       1) /* StaminaRate */
     , (802250,   5,       2) /* ManaRate */
     , (802250,  12,     0.5) /* Shade */
     , (802250,  13,       1) /* ArmorModVsSlash */
     , (802250,  14,       1) /* ArmorModVsPierce */
     , (802250,  15,     0.9) /* ArmorModVsBludgeon */
     , (802250,  16,       1) /* ArmorModVsCold */
     , (802250,  17,       1) /* ArmorModVsFire */
     , (802250,  18,       1) /* ArmorModVsAcid */
     , (802250,  19,       1) /* ArmorModVsElectric */
     , (802250,  31,      18) /* VisualAwarenessRange */
     , (802250,  34,     1.1) /* PowerupTime */
     , (802250,  36,       2) /* ChargeSpeed */
     , (802250,  39,       3) /* DefaultScale */
     , (802250,  64,     0.1) /* ResistSlash */
     , (802250,  65,     0.1) /* ResistPierce */
     , (802250,  66,     0.3) /* ResistBludgeon */
     , (802250,  67,     0.1) /* ResistFire */
     , (802250,  68,     0.1) /* ResistCold */
     , (802250,  69,     0.1) /* ResistAcid */
     , (802250,  70,     0.1) /* ResistElectric */
     , (802250,  71,       1) /* ResistHealthBoost */
     , (802250,  72,       1) /* ResistStaminaDrain */
     , (802250,  73,       1) /* ResistStaminaBoost */
     , (802250,  74,       1) /* ResistManaDrain */
     , (802250,  75,       1) /* ResistManaBoost */
     , (802250,  80,       3) /* AiUseMagicDelay */
     , (802250, 104,      10) /* ObviousRadarRange */
     , (802250, 122,       2) /* AiAcquireHealth */
     , (802250, 125,       1) /* ResistHealthDrain */
     , (802250, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802250,   1, 'Master of Minds') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802250,   1, 0x02000F7C) /* Setup */
     , (802250,   2, 0x09000025) /* MotionTable */
     , (802250,   3, 0x2000001E) /* SoundTable */
     , (802250,   4, 0x30000000) /* CombatTable */
     , (802250,   6, 0x04001DEA) /* PaletteBase */
     , (802250,   7, 0x10000611) /* ClothingBase */
     , (802250,   8, 0x060016C4) /* Icon */
     , (802250,  22, 0x34000025) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802250,  0,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802250,  1,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802250,  2,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802250,  3,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802250,  4,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802250,  5,  4,2100, 0.75, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802250,  6,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802250,  7,  4,  0,    0, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802250,  8,  4,2100, 0.75, 2400, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802250,   1,3235, 0, 0) /* Strength */
     , (802250,   2, 345, 0, 0) /* Endurance */
     , (802250,   3, 300, 0, 0) /* Quickness */
     , (802250,   4, 395, 0, 0) /* Coordination */
     , (802250,   5, 365, 0, 0) /* Focus */
     , (802250,   6, 375, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802250,   1,500000, 0, 0,500000) /* MaxHealth */
     , (802250,   3, 35400, 0, 0,35545) /* MaxStamina */
     , (802250,   5, 15250, 0, 0,15325) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802250,  6, 0, 3, 0, 250, 0, 0) /* MeleeDefense        Specialized */
     , (802250,  7, 0, 3, 0, 215, 0, 0) /* MissileDefense      Specialized */
     , (802250, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (802250, 20, 0, 3, 0, 120, 0, 0) /* Deception           Specialized */
     , (802250, 44, 0, 3, 0, 810, 0, 0) /* HeavyWeapons        Specialized */
     , (802250, 45, 0, 3, 0, 810, 0, 0) /* LightWeapons        Specialized */
     , (802250, 46, 0, 3, 0, 810, 0, 0) /* FinesseWeapons      Specialized */
     , (802250, 47, 0, 3, 0, 810, 0, 0) /* MissileWeapons      Specialized */
     , (802250, 48, 0, 3, 0, 510, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802250, 17 /* NewEnemy */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x2BF50110 /* 0x2BF50110 [20.075459 -371.3181 0.005] -0.999999 0 0 0.001405 */, 20.075459, -371.3181, 0.005, -0.999999, 0, 0, 0.001405);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802250, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, 'The low level Raid event has concluded!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 24 /* StopEvent */, 0, 1, NULL, 'BossRaid1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802250, 2,802322,  0, 0,    1, False) /* Create Sword of Mind Control (802322) for Wield */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802250, 9,802252,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

