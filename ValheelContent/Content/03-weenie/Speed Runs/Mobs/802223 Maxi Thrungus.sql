DELETE FROM `weenie` WHERE `class_Id` = 802223;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802223, 'maxithrungus', 10, '2021-12-14 05:15:31') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802223,   1,         16) /* ItemType - Creature */
     , (802223,   2,         82) /* CreatureType - Thrungus */
     , (802223,   3,          4) /* PaletteTemplate - Brown */
     , (802223,   6,         -1) /* ItemsCapacity */
     , (802223,   7,         -1) /* ContainersCapacity */
     , (802223,  16,          1) /* ItemUseable - No */
     , (802223,  25,        335) /* Level */
     , (802223,  27,          0) /* ArmorType - None */
     , (802223,  40,          2) /* CombatMode - Melee */
     , (802223,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802223,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802223, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802223, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802223, 140,          1) /* AiOptions - CanOpenDoors */
     , (802223, 146,     250000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802223,   1, True ) /* Stuck */
     , (802223,  11, False) /* IgnoreCollisions */
     , (802223,  12, True ) /* ReportCollisions */
     , (802223,  13, False) /* Ethereal */
     , (802223,  14, True ) /* GravityStatus */
     , (802223,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802223,   1,       5) /* HeartbeatInterval */
     , (802223,   2,       0) /* HeartbeatTimestamp */
     , (802223,   3,     0.2) /* HealthRate */
     , (802223,   4,     3.5) /* StaminaRate */
     , (802223,   5,     1.2) /* ManaRate */
     , (802223,  12,       0) /* Shade */
     , (802223,  13,     0.9) /* ArmorModVsSlash */
     , (802223,  14,     0.9) /* ArmorModVsPierce */
     , (802223,  15,     1.1) /* ArmorModVsBludgeon */
     , (802223,  16,     0.8) /* ArmorModVsCold */
     , (802223,  17,     0.8) /* ArmorModVsFire */
     , (802223,  18,       1) /* ArmorModVsAcid */
     , (802223,  19,     0.8) /* ArmorModVsElectric */
     , (802223,  31,      18) /* VisualAwarenessRange */
     , (802223,  34,       1) /* PowerupTime */
     , (802223,  36,       1) /* ChargeSpeed */
     , (802223,  39,     1.6) /* DefaultScale */
     , (802223,  64,     0.4) /* ResistSlash */
     , (802223,  65,     0.4) /* ResistPierce */
     , (802223,  66,     0.3) /* ResistBludgeon */
     , (802223,  67,     0.6) /* ResistFire */
     , (802223,  68,     0.4) /* ResistCold */
     , (802223,  69,     0.3) /* ResistAcid */
     , (802223,  70,     0.5) /* ResistElectric */
     , (802223,  71,       1) /* ResistHealthBoost */
     , (802223,  72,     0.5) /* ResistStaminaDrain */
     , (802223,  73,       1) /* ResistStaminaBoost */
     , (802223,  74,     0.5) /* ResistManaDrain */
     , (802223,  75,       1) /* ResistManaBoost */
     , (802223, 104,      12) /* ObviousRadarRange */
     , (802223, 125,     0.5) /* ResistHealthDrain */
     , (802223, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802223,   1, 'Maxi Thrungus') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802223,   1,   33559123) /* Setup */
     , (802223,   2,  150995324) /* MotionTable */
     , (802223,   3,  536871099) /* SoundTable */
     , (802223,   4,  805306433) /* CombatTable */
     , (802223,   6,   67116365) /* PaletteBase */
     , (802223,   8,  100677367) /* Icon */
     , (802223,  22,  872415411) /* PhysicsEffectTable */
     , (802223,  35,        449) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802223,   1, 590, 0, 0) /* Strength */
     , (802223,   2, 575, 0, 0) /* Endurance */
     , (802223,   3, 580, 0, 0) /* Quickness */
     , (802223,   4, 500, 0, 0) /* Coordination */
     , (802223,   5, 560, 0, 0) /* Focus */
     , (802223,   6, 570, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802223,   1,  5360, 0, 0, 5448) /* MaxHealth */
     , (802223,   3,   287, 0, 0, 462) /* MaxStamina */
     , (802223,   5,   170, 0, 0, 440) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802223,  6, 0, 3, 0, 380, 0, 0) /* MeleeDefense        Specialized */
     , (802223,  7, 0, 3, 0, 320, 0, 0) /* MissileDefense      Specialized */
     , (802223, 15, 0, 3, 0, 330, 0, 0) /* MagicDefense        Specialized */
     , (802223, 20, 0, 2, 0, 350, 0, 0) /* Deception           Trained */
     , (802223, 22, 0, 2, 0, 315, 0, 0) /* Jump                Trained */
     , (802223, 24, 0, 2, 0, 320, 0, 0) /* Run                 Trained */
     , (802223, 31, 0, 3, 0, 325, 0, 0) /* CreatureEnchantment Specialized */
     , (802223, 33, 0, 3, 0, 325, 0, 0) /* LifeMagic           Specialized */
     , (802223, 45, 0, 3, 0, 385, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802223,  0,  4, 265,  0.3,  416,  374,  333,  416,  416,  333,  457,  416,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802223,  1,  4,  0,    0,  416,  374,  333,  416,  416,  333,  457,  416,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802223,  2,  4,  0,    0,  416,  374,  333,  416,  416,  333,  457,  416,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802223,  3,  4,  0,    0,  416,  374,  333,  416,  416,  333,  457,  416,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802223,  4,  4,  0,    0,  416,  374,  333,  416,  416,  333,  457,  416,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802223,  5,  1, 265,  0.4,  416,  374,  333,  416,  416,  333,  457,  416,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802223,  6,  4,  0,    0,  416,  374,  333,  416,  416,  333,  457,  416,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802223,  7,  4,  0,    0,  416,  374,  333,  416,  416,  333,  457,  416,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802223,  8,  4, 265,  0.4,  416,  374,  333,  416,  416,  333,  457,  416,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (802223, 22, 32, 265,  0.3,  416,  374,  333,  416,  416,  333,  457,  416,    0, 2, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802223,  2166,   2.04)  /* Tusker's Gift */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802223,  5 /* HeartBeat */,  0.085, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802223,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802223,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435539 /* Twitch3 */, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802223, 9, 34855,  1, 0, 0.1, False) /* Create Tiriun Mushroom Cap (34855) for ContainTreasure */
     , (802223, 9,     0,  0, 0, 0.9, False) /* Create nothing for ContainTreasure */
     , (802223, 9, 34857,  1, 0, 0.1, False) /* Create Tiriun Mushroom Spores (34857) for ContainTreasure */
     , (802223, 9,     0,  0, 0, 0.9, False) /* Create nothing for ContainTreasure */
     , (802223, 9, 34856,  1, 0, 0.1, False) /* Create Tiriun Mushroom Stalk (34856) for ContainTreasure */
     , (802223, 9,     0,  0, 0, 0.9, False) /* Create nothing for ContainTreasure */;
