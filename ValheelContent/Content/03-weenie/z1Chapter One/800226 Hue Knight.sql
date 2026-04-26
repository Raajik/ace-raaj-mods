DELETE FROM `weenie` WHERE `class_Id` = 800226;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800226, 'Hue Knight', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800226,   1,         16) /* ItemType - Creature */
     , (800226,   2,         99) /* CreatureType - Gear Knight */
     , (800226,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800226,   6,         -1) /* ItemsCapacity */
     , (800226,   7,         -1) /* ContainersCapacity */
     , (800226,  16,          1) /* ItemUseable - No */
     , (800226,  25,        220) /* Level */
     , (800226,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800226, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800226, 140,          1) /* AiOptions - CanOpenDoors */
	 , (800226, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800226,   1, True ) /* Stuck */
     , (800226,  11, False) /* IgnoreCollisions */
     , (800226,  12, True ) /* ReportCollisions */
     , (800226,  13, False) /* Ethereal */
     , (800226, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800226,   1,       5) /* HeartbeatInterval */
     , (800226,   2,       0) /* HeartbeatTimestamp */
     , (800226,   3,    0.45) /* HealthRate */
     , (800226,   4,     0.5) /* StaminaRate */
     , (800226,   5,       2) /* ManaRate */
     , (800226,  12,     0.5) /* Shade */
     , (800226,  13,       2) /* ArmorModVsSlash */
     , (800226,  14,       2) /* ArmorModVsPierce */
     , (800226,  15,       2) /* ArmorModVsBludgeon */
     , (800226,  16,       2) /* ArmorModVsCold */
     , (800226,  17,       2) /* ArmorModVsFire */
     , (800226,  18,       2) /* ArmorModVsAcid */
     , (800226,  19,       2) /* ArmorModVsElectric */
     , (800226,  31,      18) /* VisualAwarenessRange */
     , (800226,  34,     1.1) /* PowerupTime */
     , (800226,  36,       2) /* ChargeSpeed */
	 , (800226,  39,       1) /* DefaultScale */
     , (800226,  64,       1) /* ResistSlash */
     , (800226,  65,       1) /* ResistPierce */
     , (800226,  66,       1) /* ResistBludgeon */
     , (800226,  67,    0.38) /* ResistFire */
     , (800226,  68,       1) /* ResistCold */
     , (800226,  69,       1) /* ResistAcid */
     , (800226,  70,       1) /* ResistElectric */
     , (800226,  71,       1) /* ResistHealthBoost */
     , (800226,  72,       1) /* ResistStaminaDrain */
     , (800226,  73,       1) /* ResistStaminaBoost */
     , (800226,  74,       1) /* ResistManaDrain */
     , (800226,  75,       1) /* ResistManaBoost */
     , (800226,  80,       3) /* AiUseMagicDelay */
     , (800226, 104,      10) /* ObviousRadarRange */
     , (800226, 122,       2) /* AiAcquireHealth */
     , (800226, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800226,   1, 'Hue Knight') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800226,   1,   33557164) /* Setup */
     , (800226,   2,  150994946) /* MotionTable */
     , (800226,   3,  536870925) /* SoundTable */
     , (800226,   4,  805306395) /* CombatTable */
     , (800226,   6,   67113236) /* PaletteBase */
     , (800226,   7,  268436599) /* ClothingBase */
     , (800226,   8,  100667623) /* Icon */
     , (800226,  22,  872415265) /* PhysicsEffectTable */
     , (800226,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800226,   1, 3700, 0, 0) /* Strength */
     , (800226,   2, 1370, 0, 0) /* Endurance */
     , (800226,   3, 1210, 0, 0) /* Quickness */
     , (800226,   4, 3100, 0, 0) /* Coordination */
     , (800226,   5, 1160, 0, 0) /* Focus */
     , (800226,   6, 1120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800226,   1,  50000, 0, 0, 50250) /* MaxHealth */
     , (800226,   3,  42000, 0, 0, 4570) /* MaxStamina */
     , (800226,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800226,  6, 0, 3, 0, 1360, 0, 0) /* MeleeDefense        Specialized */
     , (800226,  7, 0, 3, 0, 1350, 0, 0) /* MissileDefense      Specialized */
     , (800226, 15, 0, 3, 0, 1315, 0, 0) /* MagicDefense        Specialized */
     , (800226, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800226, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (800226, 24, 0, 2, 0, 1380, 0, 0) /* Run                 Trained */
     , (800226, 45, 0, 3, 0, 23000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800226,  0,  4,  5,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (800226, 16,  4,  5,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (800226, 18,  4, 65,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (800226, 19,  4, 65,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (800226, 20,  2, 65, 0.75,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (800226, 22, 16, 60,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800226,  94)
     , (800226, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800226,  5 /* HeartBeat */,   0.15, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800226,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);