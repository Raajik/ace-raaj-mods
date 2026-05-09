DELETE FROM `weenie` WHERE `class_Id` = 300016;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300016, 'testolthoislasherhighyield', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300016,   1,         16) /* ItemType - Creature */
     , (300016,   2,         92) /* CreatureType - Olthoi */
     , (300016,   3,         14) /* PaletteTemplate - White */
     , (300016,   6,         -1) /* ItemsCapacity */
     , (300016,   7,         -1) /* ContainersCapacity */
     , (300016,  16,          1) /* ItemUseable - No */
     , (300016,  25,        220) /* Level */
     , (300016,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300016, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (300016, 140,          1) /* AiOptions - CanOpenDoors */
	 , (300016, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300016,   1, True ) /* Stuck */
     , (300016,  11, False) /* IgnoreCollisions */
     , (300016,  12, True ) /* ReportCollisions */
     , (300016,  13, False) /* Ethereal */
     , (300016, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300016,   1,       5) /* HeartbeatInterval */
     , (300016,   2,       0) /* HeartbeatTimestamp */
     , (300016,   3,    0.45) /* HealthRate */
     , (300016,   4,     0.5) /* StaminaRate */
     , (300016,   5,       2) /* ManaRate */
     , (300016,  12,     0.5) /* Shade */
     , (300016,  13,       1) /* ArmorModVsSlash */
     , (300016,  14,       1) /* ArmorModVsPierce */
     , (300016,  15,       1) /* ArmorModVsBludgeon */
     , (300016,  16,       1) /* ArmorModVsCold */
     , (300016,  17,    0.38) /* ArmorModVsFire */
     , (300016,  18,       1) /* ArmorModVsAcid */
     , (300016,  19,       1) /* ArmorModVsElectric */
     , (300016,  31,      18) /* VisualAwarenessRange */
     , (300016,  34,     1.1) /* PowerupTime */
     , (300016,  36,       2) /* ChargeSpeed */
	 , (300016,  39,     0.7) /* DefaultScale */
     , (300016,  64,       1) /* ResistSlash */
     , (300016,  65,       1) /* ResistPierce */
     , (300016,  66,       1) /* ResistBludgeon */
     , (300016,  67,    0.38) /* ResistFire */
     , (300016,  68,       1) /* ResistCold */
     , (300016,  69,       1) /* ResistAcid */
     , (300016,  70,       1) /* ResistElectric */
     , (300016,  71,       1) /* ResistHealthBoost */
     , (300016,  72,       1) /* ResistStaminaDrain */
     , (300016,  73,       1) /* ResistStaminaBoost */
     , (300016,  74,       1) /* ResistManaDrain */
     , (300016,  75,       1) /* ResistManaBoost */
     , (300016,  80,       3) /* AiUseMagicDelay */
     , (300016, 104,      10) /* ObviousRadarRange */
     , (300016, 122,       2) /* AiAcquireHealth */
     , (300016, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300016,   1, 'Pocket Olthoi') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300016,   1,   33557164) /* Setup */
     , (300016,   2,  150994946) /* MotionTable */
     , (300016,   3,  536870925) /* SoundTable */
     , (300016,   4,  805306395) /* CombatTable */
     , (300016,   6,   67113236) /* PaletteBase */
     , (300016,   7,  268436599) /* ClothingBase */
     , (300016,   8,  100667623) /* Icon */
     , (300016,  22,  872415265) /* PhysicsEffectTable */
     , (300016,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (300016,   1, 800, 0, 0) /* Strength */
     , (300016,   2, 800, 0, 0) /* Endurance */
     , (300016,   3, 800, 0, 0) /* Quickness */
     , (300016,   4, 800, 0, 0) /* Coordination */
     , (300016,   5, 800, 0, 0) /* Focus */
     , (300016,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (300016,   1,  1500, 0, 0, 1500) /* MaxHealth */
     , (300016,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (300016,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (300016,  6, 0, 3, 0, 260, 0, 0) /* MeleeDefense        Specialized */
     , (300016,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (300016, 15, 0, 3, 0, 215, 0, 0) /* MagicDefense        Specialized */
     , (300016, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (300016, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (300016, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (300016, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (300016,  0,  4, 200,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (300016, 16,  4, 200,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (300016, 18,  4, 200,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (300016, 19,  4, 200,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (300016, 20,  2, 200, 0.75,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (300016, 22, 16, 200,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (300016,  94)
     , (300016, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300016,  5 /* HeartBeat */,   0.15, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300016,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);