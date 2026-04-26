DELETE FROM `weenie` WHERE `class_Id` = 800031;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800031, 'Lord Argoth', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800031,   1,         16) /* ItemType - Creature */
     , (800031,   2,         30) /* CreatureType - Skeleton */
     , (800031,   3,         17) /* PaletteTemplate - Yellow */
     , (800031,   6,         -1) /* ItemsCapacity */
     , (800031,   7,         -1) /* ContainersCapacity */
     , (800031,  16,          1) /* ItemUseable - No */
     , (800031,  25,        300) /* Level */
     , (800031,  27,          0) /* ArmorType - None */
     , (800031,  40,          1) /* CombatMode - NonCombat */
     , (800031,  68,          0x80) /* TargetingTactic - Random, LastDamager */
     , (800031,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800031, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800031, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800031, 140,          1) /* AiOptions - CanOpenDoors */
     , (800031, 146,     7867485) /* XpOverride */
     , (800031, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800031,   1, True ) /* Stuck */
     , (800031,  11, False) /* IgnoreCollisions */
     , (800031,  12, True ) /* ReportCollisions */
     , (800031,  13, False) /* Ethereal */
     , (800031,  14, True ) /* GravityStatus */
     , (800031,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800031,   1,       5) /* HeartbeatInterval */
     , (800031,   2,       0) /* HeartbeatTimestamp */
     , (800031,   3,    0.45) /* HealthRate */
     , (800031,   4,     0.5) /* StaminaRate */
     , (800031,   5,       2) /* ManaRate */
     , (800031,  12,     0.5) /* Shade */
     , (800031,  13,       1) /* ArmorModVsSlash */
     , (800031,  14,       1) /* ArmorModVsPierce */
     , (800031,  15,     0.7) /* ArmorModVsBludgeon */
     , (800031,  16,       1) /* ArmorModVsCold */
     , (800031,  17,       1) /* ArmorModVsFire */
     , (800031,  18,       1) /* ArmorModVsAcid */
     , (800031,  19,       1) /* ArmorModVsElectric */
     , (800031,  31,      18) /* VisualAwarenessRange */
     , (800031,  34,     1.1) /* PowerupTime */
     , (800031,  36,       2) /* ChargeSpeed */
     , (800031,  39,     1.4) /* DefaultScale */
     , (800031,  64,     0.1) /* ResistSlash */
     , (800031,  65,     0.1) /* ResistPierce */
     , (800031,  66,     0.3) /* ResistBludgeon */
     , (800031,  67,     0.1) /* ResistFire */
     , (800031,  68,     0.1) /* ResistCold */
     , (800031,  69,     0.1) /* ResistAcid */
     , (800031,  70,     0.1) /* ResistElectric */
     , (800031,  71,       1) /* ResistHealthBoost */
     , (800031,  72,       1) /* ResistStaminaDrain */
     , (800031,  73,       1) /* ResistStaminaBoost */
     , (800031,  74,       1) /* ResistManaDrain */
     , (800031,  75,       1) /* ResistManaBoost */
     , (800031,  80,       3) /* AiUseMagicDelay */
     , (800031, 104,      10) /* ObviousRadarRange */
     , (800031, 122,       2) /* AiAcquireHealth */
     , (800031, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800031,   1, 'Lord Argoth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800031,   1,   33558396) /* Setup */
     , (800031,   2,  150994981) /* MotionTable */
     , (800031,   3,  536870942) /* SoundTable */
     , (800031,   4,  805306368) /* CombatTable */
     , (800031,   6,   67116522) /* PaletteBase */
     , (800031,   7,  268437009) /* ClothingBase */
     , (800031,   8,  100669124) /* Icon */
     , (800031,  22,  872415269) /* PhysicsEffectTable */
     , (800031,  32,       2111) /* WieldedTreasureType */
     , (800031,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800031,   1, 3235, 0, 0) /* Strength */
     , (800031,   2, 345, 0, 0) /* Endurance */
     , (800031,   3, 300, 0, 0) /* Quickness */
     , (800031,   4, 395, 0, 0) /* Coordination */
     , (800031,   5, 365, 0, 0) /* Focus */
     , (800031,   6, 375, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800031,   1,  5000, 0, 0, 5000) /* MaxHealth */
     , (800031,   3,  5000, 0, 0, 5000) /* MaxStamina */
     , (800031,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800031,  6, 0, 3, 0, 250, 0, 0) /* MeleeDefense        Specialized */
     , (800031,  7, 0, 3, 0, 215, 0, 0) /* MissileDefense      Specialized */
     , (800031, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (800031, 20, 0, 3, 0, 120, 0, 0) /* Deception           Specialized */
     , (800031, 44, 0, 3, 0, 810, 0, 0) /* HeavyWeapons        Specialized */
     , (800031, 45, 0, 3, 0, 810, 0, 0) /* LightWeapons        Specialized */
     , (800031, 46, 0, 3, 0, 810, 0, 0) /* FinesseWeapons      Specialized */
     , (800031, 47, 0, 3, 0, 810, 0, 0) /* MissileWeapons      Specialized */
     , (800031, 48, 0, 3, 0, 510, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800031,  0,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800031,  1,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800031,  2,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800031,  3,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800031,  4,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800031,  5,  4, 600, 0.75,  400,  400,  400,  400,  400,  400,  400,  400,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800031,  6,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800031,  7,  4,  0,    0,  400,  400,  400,  400,  400,  400,  400,  400,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800031,  8,  4, 600, 0.75,  400,  400,  400,  400,  400,  400,  400,  400,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800031,  94)
     , (800031, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800031,  5 /* HeartBeat */,    0.8, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 1090519060 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800030,  0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (800031, 9, 800016,  0, 0, 0.2, False) /* Create Shemtar's Leggings of Enlightenment (800016) for ContainTreasure */;
