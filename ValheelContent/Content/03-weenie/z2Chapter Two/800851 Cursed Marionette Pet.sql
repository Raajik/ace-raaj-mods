DELETE FROM `weenie` WHERE `class_Id` = 800851;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800851, 'Cursed Marionette', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800851,   1,         16) /* ItemType - Creature */
     , (800851,   2,         54) /* CreatureType - Marionette */
     , (800851,   3,         14) /* PaletteTemplate - White */
     , (800851,   6,         -1) /* ItemsCapacity */
     , (800851,   7,         -1) /* ContainersCapacity */
     , (800851,  16,          1) /* ItemUseable - No */
     , (800851,  25,        220) /* Level */
     , (800851,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800851, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800851, 140,          1) /* AiOptions - CanOpenDoors */
	 , (800851, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800851,   1, True ) /* Stuck */
     , (800851,  11, False) /* IgnoreCollisions */
     , (800851,  12, True ) /* ReportCollisions */
     , (800851,  13, False) /* Ethereal */
     , (800851, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800851,   1,       5) /* HeartbeatInterval */
     , (800851,   2,       0) /* HeartbeatTimestamp */
     , (800851,   3,    0.45) /* HealthRate */
     , (800851,   4,     0.5) /* StaminaRate */
     , (800851,   5,       2) /* ManaRate */
     , (800851,  12,     0.5) /* Shade */
     , (800851,  13,       1) /* ArmorModVsSlash */
     , (800851,  14,       1) /* ArmorModVsPierce */
     , (800851,  15,       1) /* ArmorModVsBludgeon */
     , (800851,  16,       1) /* ArmorModVsCold */
     , (800851,  17,    0.38) /* ArmorModVsFire */
     , (800851,  18,       1) /* ArmorModVsAcid */
     , (800851,  19,       1) /* ArmorModVsElectric */
     , (800851,  31,      18) /* VisualAwarenessRange */
     , (800851,  34,     1.1) /* PowerupTime */
     , (800851,  36,       2) /* ChargeSpeed */
	 , (800851,  39,       1) /* DefaultScale */
     , (800851,  64,       1) /* ResistSlash */
     , (800851,  65,       1) /* ResistPierce */
     , (800851,  66,       1) /* ResistBludgeon */
     , (800851,  67,    0.38) /* ResistFire */
     , (800851,  68,       1) /* ResistCold */
     , (800851,  69,       1) /* ResistAcid */
     , (800851,  70,       1) /* ResistElectric */
     , (800851,  71,       1) /* ResistHealthBoost */
     , (800851,  72,       1) /* ResistStaminaDrain */
     , (800851,  73,       1) /* ResistStaminaBoost */
     , (800851,  74,       1) /* ResistManaDrain */
     , (800851,  75,       1) /* ResistManaBoost */
     , (800851,  80,       3) /* AiUseMagicDelay */
     , (800851, 104,      10) /* ObviousRadarRange */
     , (800851, 122,       2) /* AiAcquireHealth */
     , (800851, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800851,   1, 'Cursed Marionette') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800851,   1,   33558542) /* Setup */
     , (800851,   2,  150995099) /* MotionTable */
     , (800851,   3,  536871024) /* SoundTable */
     , (800851,   4,  805306410) /* CombatTable */
     , (800851,   6,   67114692) /* PaletteBase */
     , (800851,   7,  268436726) /* ClothingBase */
     , (800851,   8,  100671420) /* Icon */
     , (800851,  22,  872415372) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800851,   1, 13700, 0, 0) /* Strength */
     , (800851,   2, 1370, 0, 0) /* Endurance */
     , (800851,   3, 1210, 0, 0) /* Quickness */
     , (800851,   4, 12100, 0, 0) /* Coordination */
     , (800851,   5, 1160, 0, 0) /* Focus */
     , (800851,   6, 1120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800851,   1,  50000, 0, 0, 52500) /* MaxHealth */
     , (800851,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (800851,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800851,  6, 0, 3, 0, 760, 0, 0) /* MeleeDefense        Specialized */
     , (800851,  7, 0, 3, 0, 750, 0, 0) /* MissileDefense      Specialized */
     , (800851, 15, 0, 3, 0, 715, 0, 0) /* MagicDefense        Specialized */
     , (800851, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800851, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (800851, 24, 0, 2, 0, 1380, 0, 0) /* Run                 Trained */
     , (800851, 45, 0, 3, 0, 2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800851,  0,  4,  5,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (800851, 16,  4,  5,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (800851, 18,  4, 65,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (800851, 19,  4, 65,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (800851, 20,  2, 65, 0.75,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (800851, 22, 16, 60,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800851,  94)
     , (800851, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800851,  5 /* HeartBeat */,   0.15, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800851,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);