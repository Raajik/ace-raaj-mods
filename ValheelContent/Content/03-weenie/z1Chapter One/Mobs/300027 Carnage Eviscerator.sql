DELETE FROM `weenie` WHERE `class_Id` = 300027;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300027, '300027-UndeadOlthoi', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300027,   1,         16) /* ItemType - Creature */
     , (300027,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (300027,   3,         14) /* PaletteTemplate - Red */
     , (300027,   6,         -1) /* ItemsCapacity */
     , (300027,   7,         -1) /* ContainersCapacity */
     , (300027,  16,          1) /* ItemUseable - No */
     , (300027,  25,        280) /* Level */
     , (300027,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (300027,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300027, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (300027, 146,    7867485) /* XpOverride */
     , (300027, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300027,   1, True ) /* Stuck */
     , (300027,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300027,   1,       5) /* HeartbeatInterval */
     , (300027,   2,       0) /* HeartbeatTimestamp */
     , (300027,   3,    0.45) /* HealthRate */
     , (300027,   4,     0.5) /* StaminaRate */
     , (300027,   5,       2) /* ManaRate */
     , (300027,  12,     0.5) /* Shade */
     , (300027,  13,       1) /* ArmorModVsSlash */
     , (300027,  14,     0.7) /* ArmorModVsPierce */
     , (300027,  15,     0.7) /* ArmorModVsBludgeon */
     , (300027,  16,       1) /* ArmorModVsCold */
     , (300027,  17,       1) /* ArmorModVsFire */
     , (300027,  18,       1) /* ArmorModVsAcid */
     , (300027,  19,       1) /* ArmorModVsElectric */
     , (300027,  31,      35) /* VisualAwarenessRange */
     , (300027,  34,     1.1) /* PowerupTime */
     , (300027,  36,       2) /* ChargeSpeed */
     , (300027,  39,     1.4) /* DefaultScale */
     , (300027,  64,     0.1) /* ResistSlash */
     , (300027,  65,     0.3) /* ResistPierce */
     , (300027,  66,     0.3) /* ResistBludgeon */
     , (300027,  67,     0.1) /* ResistFire */
     , (300027,  68,     0.1) /* ResistCold */
     , (300027,  69,     0.1) /* ResistAcid */
     , (300027,  70,     0.1) /* ResistElectric */
     , (300027,  71,       1) /* ResistHealthBoost */
     , (300027,  72,       1) /* ResistStaminaDrain */
     , (300027,  73,       1) /* ResistStaminaBoost */
     , (300027,  74,       1) /* ResistManaDrain */
     , (300027,  75,       1) /* ResistManaBoost */
     , (300027,  80,       3) /* AiUseMagicDelay */
     , (300027, 104,      10) /* ObviousRadarRange */
     , (300027, 122,       2) /* AiAcquireHealth */
     , (300027, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300027,   1, 'Carnage Eviscerator') /* Name */
     , (300027,  45, 'CEKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300027,   1,   33560314) /* Setup */
     , (300027,   2,  150995130) /* MotionTable */
     , (300027,   3,  536871036) /* SoundTable */
     , (300027,   4,  805306395) /* CombatTable */
     , (300027,   6,   67113194) /* PaletteBase */
     , (300027,   7,  268436197) /* ClothingBase */
     , (300027,   8,  100667623) /* Icon */
     , (300027,  19,         84) /* ActivationAnimation */
     , (300027,  22,  872415378) /* PhysicsEffectTable */
     , (300027,  30,         84) /* PhysicsScript - BreatheFlame */
     , (300027,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (300027,   1, 490, 0, 0) /* Strength */
     , (300027,   2, 490, 0, 0) /* Endurance */
     , (300027,   3, 320, 0, 0) /* Quickness */
     , (300027,   4, 320, 0, 0) /* Coordination */
     , (300027,   5, 370, 0, 0) /* Focus */
     , (300027,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (300027,   1,  4000, 0, 0, 4000) /* MaxHealth */
     , (300027,   3, 32000, 0, 0, 35900) /* MaxStamina */
     , (300027,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (300027,  6, 0, 2, 0, 360, 0, 0) /* MeleeDefense        Trained */
     , (300027,  7, 0, 2, 0, 316, 0, 0) /* MissileDefense      Trained */
     , (300027, 15, 0, 2, 0, 330, 0, 0) /* MagicDefense        Trained */
     , (300027, 16, 0, 2, 0, 175, 0, 0) /* ManaConversion      Trained */
     , (300027, 41, 0, 2, 0, 511, 0, 0) /* TwoHandedCombat     Trained */
     , (300027, 44, 0, 2, 0, 511, 0, 0) /* HeavyWeapons        Trained */
     , (300027, 45, 0, 2, 0, 511, 0, 0) /* LightWeapons        Trained */
     , (300027, 46, 0, 2, 0, 511, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300027, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-802609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300027, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_276-350', NULL, 276, 350, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300027, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_276-350', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300027, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_276-350', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300027, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-802609', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (300027,  0,  4,  600,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (300027, 16,  4,  600,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (300027, 18,  4, 600,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (300027, 19,  4, 600,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (300027, 20,  2, 600, 0.75,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (300027, 22, 16, 600,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;
