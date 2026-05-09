DELETE FROM `weenie` WHERE `class_Id` = 800286;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800286, 'Tiercian Sclavus', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800286,   1,         16) /* ItemType - Creature */
     , (800286,   2,         26) /* CreatureType - Sclavus */
     , (800286,   3,          7) /* PaletteTemplate - DeepGreen */
     , (800286,   6,         -1) /* ItemsCapacity */
     , (800286,   7,         -1) /* ContainersCapacity */
     , (800286,  16,          1) /* ItemUseable - No */
     , (800286,  25,        185) /* Level */
     , (800286,  27,          0) /* ArmorType - None */
     , (800286,  40,          2) /* CombatMode - Melee */
     , (800286,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (800286,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800286, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800286, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800286, 140,          1) /* AiOptions - CanOpenDoors */
     , (800286, 146,    6984195) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800286,   1, True ) /* Stuck */
     , (800286,   6, True ) /* AiUsesMana */
     , (800286,  11, False) /* IgnoreCollisions */
     , (800286,  12, True ) /* ReportCollisions */
     , (800286,  13, False) /* Ethereal */
     , (800286,  14, True ) /* GravityStatus */
     , (800286,  19, True ) /* Attackable */
     , (800286,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800286,   1,       5) /* HeartbeatInterval */
     , (800286,   2,       0) /* HeartbeatTimestamp */
     , (800286,   3,     0.4) /* HealthRate */
     , (800286,   4,       3) /* StaminaRate */
     , (800286,   5,       1) /* ManaRate */
     , (800286,  12,     0.5) /* Shade */
     , (800286,  13,     0.8) /* ArmorModVsSlash */
     , (800286,  14,    0.65) /* ArmorModVsPierce */
     , (800286,  15,    0.44) /* ArmorModVsBludgeon */
     , (800286,  16,     0.7) /* ArmorModVsCold */
     , (800286,  17,    0.65) /* ArmorModVsFire */
     , (800286,  18,    0.21) /* ArmorModVsAcid */
     , (800286,  19,    0.21) /* ArmorModVsElectric */
     , (800286,  31,      24) /* VisualAwarenessRange */
     , (800286,  34,     1.5) /* PowerupTime */
     , (800286,  36,       1) /* ChargeSpeed */
     , (800286,  39,     1.4) /* DefaultScale */
     , (800286,  64,       1) /* ResistSlash */
     , (800286,  65,    0.75) /* ResistPierce */
     , (800286,  66,    0.46) /* ResistBludgeon */
     , (800286,  67,    0.75) /* ResistFire */
     , (800286,  68,       1) /* ResistCold */
     , (800286,  69,    0.25) /* ResistAcid */
     , (800286,  70,    0.25) /* ResistElectric */
     , (800286,  71,       1) /* ResistHealthBoost */
     , (800286,  72,       1) /* ResistStaminaDrain */
     , (800286,  73,       1) /* ResistStaminaBoost */
     , (800286,  74,       1) /* ResistManaDrain */
     , (800286,  75,       1) /* ResistManaBoost */
     , (800286,  80,       3) /* AiUseMagicDelay */
     , (800286, 104,      10) /* ObviousRadarRange */
     , (800286, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800286,   1, 'Tiercian Sclavus') /* Name */
     , (800286,  45, 'ssKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800286,   1,   33555608) /* Setup */
     , (800286,   2,  150995048) /* MotionTable */
     , (800286,   3,  536870977) /* SoundTable */
     , (800286,   4,  805306393) /* CombatTable */
     , (800286,   6,   67111936) /* PaletteBase */
     , (800286,   7,  268435727) /* ClothingBase */
     , (800286,   8,  100669120) /* Icon */
     , (800286,  22,  872415280) /* PhysicsEffectTable */
     , (800286,  32,        285) /* WieldedTreasureType */
     , (800286,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800286,   1, 470, 0, 0) /* Strength */
     , (800286,   2, 340, 0, 0) /* Endurance */
     , (800286,   3, 360, 0, 0) /* Quickness */
     , (800286,   4, 470, 0, 0) /* Coordination */
     , (800286,   5, 320, 0, 0) /* Focus */
     , (800286,   6, 340, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800286,   1,  2670, 0, 0, 2940) /* MaxHealth */
     , (800286,   3,  1250, 0, 0, 1390) /* MaxStamina */
     , (800286,   5,  1140, 0, 0, 1280) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800286,  6, 0, 3, 0, 255, 0, 0) /* MeleeDefense        Specialized */
     , (800286,  7, 0, 3, 0, 280, 0, 0) /* MissileDefense      Specialized */
     , (800286, 14, 0, 3, 0, 250, 0, 0) /* ArcaneLore          Specialized */
     , (800286, 15, 0, 3, 0, 260, 0, 0) /* MagicDefense        Specialized */
     , (800286, 20, 0, 3, 0,  90, 0, 0) /* Deception           Specialized */
     , (800286, 24, 0, 3, 0,  40, 0, 0) /* Run                 Specialized */
     , (800286, 31, 0, 3, 0, 215, 0, 0) /* CreatureEnchantment Specialized */
     , (800286, 33, 0, 3, 0, 215, 0, 0) /* LifeMagic           Specialized */
     , (800286, 34, 0, 2, 0, 275, 0, 0) /* WarMagic            Trained */
     , (800286, 44, 0, 3, 0, 330, 0, 0) /* HeavyWeapons        Specialized */
     , (800286, 45, 0, 3, 0, 330, 0, 0) /* LightWeapons        Specialized */
     , (800286, 46, 0, 3, 0, 330, 0, 0) /* FinesseWeapons      Specialized */
     , (800286, 47, 0, 3, 0, 335, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800286,  0,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800286,  1,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800286,  2,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800286,  3,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800286,  4,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800286,  5,  4, 135, 0.75,  160,  128,  104,   70,  112,  104,   34,   34,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800286,  6,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800286,  7,  4,  0,    0,  160,  128,  104,   70,  112,  104,   34,   34,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800286,  8,  4, 135, 0.75,  160,  128,  104,   70,  112,  104,   34,   34,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800286,    61, 0.7593)  /* Acid Stream IV */
     , (800286,    78, 0.7593)  /* Lightning Bolt IV */
     , (800286,    83, 0.7593)  /* Flame Bolt IV */
     , (800286,   140,  0.752)  /* Lightning Volley IV */
     , (800286,   197,  0.751)  /* Exhaustion Other IV */
     , (800286,   247, 0.7507)  /* Invulnerability Self IV */
     , (800286,   259, 0.7507)  /* Impregnability Self IV */
     , (800286,   277, 0.7507)  /* Magic Resistance Self IV */
     , (800286,  1159,  0.754)  /* Heal Self IV */
     , (800286,  1174,  0.751)  /* Harm Other IV */
     , (800286,  1198,  0.751)  /* Enfeeble Other IV */
     , (800286,  1263,  0.751)  /* Drain Mana Other IV */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800286,  94)
     , (800286, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800286, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-802609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800286, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_180-275', NULL, 180, 275, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800286, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_180-275', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800286, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_180-275', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800286, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800286, 9, 20861,  0, 0, 0.03, False) /* Create Moons Stamp (20861) for ContainTreasure */
     , (800286, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (800286, 9, 45876,  1, 0, 0.03, False) /* Create Scarlet Red Letter (45876) for ContainTreasure */
     , (800286, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (800286, 9, 45875,  1, 0, 0.01, False) /* Create Lucky Gold Letter (45875) for ContainTreasure */
     , (800286, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */
     , (800286, 9, 802131,  1, 0, 0.1, False) /* Create Broken Dagger (802131) for ContainTreasure */;
