DELETE FROM `weenie` WHERE `class_Id` = 800090;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800090, 'Dark Knight of Elorin', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800090,   1,         16) /* ItemType - Creature */
     , (800090,   2,         83) /* CreatureType - ViamontianKnight */
     , (800090,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800090,   6,         -1) /* ItemsCapacity */
     , (800090,   7,         -1) /* ContainersCapacity */
     , (800090,  16,          1) /* ItemUseable - No */
     , (800090,  25,        300) /* Level */
     , (800090,  27,          0) /* ArmorType - None */
     , (800090,  40,          2) /* CombatMode - Melee */
     , (800090,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800090,  72,         83) /* FriendType - ViamontianKnight */
     , (800090,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800090, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800090, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800090, 140,          1) /* AiOptions - CanOpenDoors */
     , (800090, 146,     7867485) /* XpOverride */
     , (800090, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800090,   1, True ) /* Stuck */
     , (800090,  11, False) /* IgnoreCollisions */
     , (800090,  12, True ) /* ReportCollisions */
     , (800090,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800090,   1,       5) /* HeartbeatInterval */
     , (800090,   2,       0) /* HeartbeatTimestamp */
     , (800090,   3,    0.45) /* HealthRate */
     , (800090,   4,     0.5) /* StaminaRate */
     , (800090,   5,       2) /* ManaRate */
     , (800090,  12,     0.5) /* Shade */
     , (800090,  13,       1) /* ArmorModVsSlash */
     , (800090,  14,       1) /* ArmorModVsPierce */
     , (800090,  15,       1) /* ArmorModVsBludgeon */
     , (800090,  16,       1) /* ArmorModVsCold */
     , (800090,  17,       1) /* ArmorModVsFire */
     , (800090,  18,       1) /* ArmorModVsAcid */
     , (800090,  19,     0.7) /* ArmorModVsElectric */
     , (800090,  31,      18) /* VisualAwarenessRange */
     , (800090,  34,     1.1) /* PowerupTime */
     , (800090,  36,       2) /* ChargeSpeed */
     , (800090,  39,       2) /* DefaultScale */
     , (800090,  64,     0.1) /* ResistSlash */
     , (800090,  65,     0.1) /* ResistPierce */
     , (800090,  66,     0.1) /* ResistBludgeon */
     , (800090,  67,     0.1) /* ResistFire */
     , (800090,  68,     0.1) /* ResistCold */
     , (800090,  69,     0.1) /* ResistAcid */
     , (800090,  70,     0.3) /* ResistElectric */
     , (800090,  71,       1) /* ResistHealthBoost */
     , (800090,  72,       1) /* ResistStaminaDrain */
     , (800090,  73,       1) /* ResistStaminaBoost */
     , (800090,  74,       1) /* ResistManaDrain */
     , (800090,  75,       1) /* ResistManaBoost */
     , (800090,  80,       3) /* AiUseMagicDelay */
     , (800090, 104,      10) /* ObviousRadarRange */
     , (800090, 122,       2) /* AiAcquireHealth */
     , (800090, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800090,   1, 'Dark Knight of Elorin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800090,   1,   33559125) /* Setup */
     , (800090,   2,  150995334) /* MotionTable */
     , (800090,   3,  536871102) /* SoundTable */
     , (800090,   4,  805306368) /* CombatTable */
     , (800090,   6,   67115468) /* PaletteBase */
     , (800090,   7,  268436907) /* ClothingBase */
     , (800090,   8,  100677371) /* Icon */
     , (800090,  22,  872415269) /* PhysicsEffectTable */
     , (800090,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800090,   1, 2145, 0, 0) /* Strength */
     , (800090,   2, 800, 0, 0) /* Endurance */
     , (800090,   3, 750, 0, 0) /* Quickness */
     , (800090,   4, 780, 0, 0) /* Coordination */
     , (800090,   5, 585, 0, 0) /* Focus */
     , (800090,   6, 585, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800090,   1, 8000, 0, 0, 8000) /* MaxHealth */
     , (800090,   3, 8000, 0, 0, 8000) /* MaxStamina */
     , (800090,   5, 8000, 0, 0, 8000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800090,  6, 0, 3, 0, 200, 0, 0) /* MeleeDefense        Specialized */
     , (800090,  7, 0, 3, 0, 245, 0, 0) /* MissileDefense      Specialized */
     , (800090, 15, 0, 3, 0, 233, 0, 0) /* MagicDefense        Specialized */
     , (800090, 41, 0, 3, 0, 640, 0, 0) /* TwoHandedCombat     Specialized */
     , (800090, 44, 0, 3, 0, 940, 0, 0) /* HeavyWeapons        Specialized */
     , (800090, 45, 0, 3, 0, 940, 0, 0) /* LightWeapons        Specialized */
     , (800090, 46, 0, 3, 0, 972, 0, 0) /* FinesseWeapons      Specialized */
     , (800090, 47, 0, 3, 0, 900, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800090,  0,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800090,  1,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800090,  2,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800090,  3,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800090,  4,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800090,  5,  4, 600,  0.4, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800090,  6,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800090,  7,  4,  0,    0, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800090,  8,  4, 600,  0.4, 200, 1200, 1200, 1200, 1200, 1200, 1200, 1200,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800090,  94)
     , (800090, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800090,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, 'The Dark Knight of Elorin crumbles to the ground, releasing a ghoulish howl."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You will never get away with this... Our Dread Lord Elorin the Cursed will destroy you all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800090,  5 /* HeartBeat */,  0.025, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800090,  5 /* HeartBeat */,   0.03, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800090,  5 /* HeartBeat */,   0.05, NULL, 2147483710 /* SwordCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800090,  5 /* HeartBeat */,  0.025, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800090,  5 /* HeartBeat */,   0.03, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800090, 9, 800020,  0, 0, 0.2, False) /* Create Trinket of Prismatic Protection (800020) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */
     , (800090, 9, 800175,  0, 0, 1, False) /* Create Letter from the Command (800175) for ContainTreasure */;
