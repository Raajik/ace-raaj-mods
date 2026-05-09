DELETE FROM `weenie` WHERE `class_Id` = 800422;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800422, 'Viamontian Champion2', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800422,   1,         16) /* ItemType - Creature */
     , (800422,   2,         83) /* CreatureType - ViamontianKnight */
     , (800422,   3,          1) /* PaletteTemplate - AquaBlue */
     , (800422,   6,         -1) /* ItemsCapacity */
     , (800422,   7,         -1) /* ContainersCapacity */
     , (800422,  16,          1) /* ItemUseable - No */
     , (800422,  25,        300) /* Level */
     , (800422,  27,          0) /* ArmorType - None */
     , (800422,  40,          2) /* CombatMode - Melee */
     , (800422,  67,         64) /* Tolerance - Retaliate */
     , (800422,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800422,  72,         83) /* FriendType - ViamontianKnight */
     , (800422,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800422, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800422, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800422, 140,          1) /* AiOptions - CanOpenDoors */
     , (800422, 146,    26000000) /* XpOverride */
     , (800422, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800422,   1, True ) /* Stuck */
     , (800422,  11, False) /* IgnoreCollisions */
     , (800422,  12, True ) /* ReportCollisions */
     , (800422,  13, False) /* Ethereal */
     , (800422,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800422,   1,       5) /* HeartbeatInterval */
     , (800422,   2,       0) /* HeartbeatTimestamp */
     , (800422,   3,    0.15) /* HealthRate */
     , (800422,   4,       5) /* StaminaRate */
     , (800422,   5,       2) /* ManaRate */
     , (800422,  12,     0.5) /* Shade */
     , (800422,  13,     1.2) /* ArmorModVsSlash */
     , (800422,  14,     0.7) /* ArmorModVsPierce */
     , (800422,  15,     1.2) /* ArmorModVsBludgeon */
     , (800422,  16,     1.2) /* ArmorModVsCold */
     , (800422,  17,     1.2) /* ArmorModVsFire */
     , (800422,  18,     1.2) /* ArmorModVsAcid */
     , (800422,  19,     1.2) /* ArmorModVsElectric */
     , (800422,  31,      18) /* VisualAwarenessRange */
     , (800422,  34,     1.1) /* PowerupTime */
     , (800422,  36,       1) /* ChargeSpeed */
     , (800422,  39,     1.8) /* DefaultScale */
     , (800422,  64,     0.1) /* ResistSlash */
     , (800422,  65,     0.3) /* ResistPierce */
     , (800422,  66,     0.1) /* ResistBludgeon */
     , (800422,  67,     0.1) /* ResistFire */
     , (800422,  68,     0.1) /* ResistCold */
     , (800422,  69,     0.1) /* ResistAcid */
     , (800422,  70,     0.1) /* ResistElectric */
     , (800422,  71,       1) /* ResistHealthBoost */
     , (800422,  72,       1) /* ResistStaminaDrain */
     , (800422,  73,       1) /* ResistStaminaBoost */
     , (800422,  74,       1) /* ResistManaDrain */
     , (800422,  75,       1) /* ResistManaBoost */
     , (800422, 104,      10) /* ObviousRadarRange */
     , (800422, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800422,   1, 'Viamontian Champion') /* Name */
     , (800422,  45, 'ViaKillTask2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800422,   1,   33559125) /* Setup */
     , (800422,   2,  150995334) /* MotionTable */
     , (800422,   3,  536871102) /* SoundTable */
     , (800422,   4,  805306368) /* CombatTable */
     , (800422,   6,   67115468) /* PaletteBase */
     , (800422,   7,  268436907) /* ClothingBase */
     , (800422,   8,  100677371) /* Icon */
     , (800422,  22,  872415269) /* PhysicsEffectTable */
     , (800422,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800422,   1, 1400, 0, 0) /* Strength */
     , (800422,   2, 1235, 0, 0) /* Endurance */
     , (800422,   3, 590, 0, 0) /* Quickness */
     , (800422,   4, 1290, 0, 0) /* Coordination */
     , (800422,   5,  70, 0, 0) /* Focus */
     , (800422,   6,  70, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800422,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800422,   3, 11200, 0, 0, 11535) /* MaxStamina */
     , (800422,   5,     0, 0, 0, 11270) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800422,  6, 0, 3, 0, 100, 0, 0) /* MeleeDefense        Specialized */
     , (800422,  7, 0, 3, 0, 100, 0, 0) /* MissileDefense      Specialized */
     , (800422, 15, 0, 3, 0, 374, 0, 0) /* MagicDefense        Specialized */
     , (800422, 41, 0, 3, 0, 400, 0, 0) /* TwoHandedCombat     Specialized */
     , (800422, 44, 0, 3, 0, 400, 0, 0) /* HeavyWeapons        Specialized */
     , (800422, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */
     , (800422, 46, 0, 3, 0, 400, 0, 0) /* FinesseWeapons      Specialized */
     , (800422, 47, 0, 3, 0, 400, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800422,  0,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800422,  1,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800422,  2,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800422,  3,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800422,  4,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800422,  5,  4, 2300,  0.4,  200,  900,  900,  900,  900,  400,  900,  400,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800422,  6,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800422,  7,  4,  0,    0,  200,  900,  900,  900,  900,  400,  900,  400,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800422,  8,  4, 2300,  0.4,  200,  900,  900,  900,  900,  400,  900,  400,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800422,  5 /* HeartBeat */,  0.025, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800422,  5 /* HeartBeat */,   0.03, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800422,  5 /* HeartBeat */,   0.05, NULL, 2147483710 /* SwordCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800422,  5 /* HeartBeat */,  0.025, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800422,  5 /* HeartBeat */,   0.03, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800422, 10, 29966,  1, 0, 0.25, False) /* Create Quadrelle (29966) for WieldTreasure */
     , (800422, 10, 29971,  1, 0, 0.25, False) /* Create Partizan (29971) for WieldTreasure */
     , (800422, 10, 29976,  1, 0, 0.25, False) /* Create Spadone (29976) for WieldTreasure */
     , (800422, 10, 29980, -1, 0, 0.25, False) /* Create Throwing Axe (29980) for WieldTreasure */;
