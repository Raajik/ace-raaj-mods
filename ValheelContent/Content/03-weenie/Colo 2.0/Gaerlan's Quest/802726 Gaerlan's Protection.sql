DELETE FROM `weenie` WHERE `class_Id` = 802726;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802726, 'GaerlansProtection', 10, '2023-06-20 06:03:55') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802726,   1,         16) /* ItemType - Creature */
     , (802726,   2,         70) /* CreatureType - GotrokLugian */
     , (802726,   3,         20) /* PaletteTemplate - Silver */
     , (802726,   6,         -1) /* ItemsCapacity */
     , (802726,   7,         -1) /* ContainersCapacity */
     , (802726,   8,       8000) /* Mass */
     , (802726,  16,          1) /* ItemUseable - No */
     , (802726,  25,        500) /* Level */
     , (802726,  27,          0) /* ArmorType - None */
     , (802726,  40,          2) /* CombatMode - Melee */
     , (802726,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802726,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802726, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802726, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802726, 140,          1) /* AiOptions - CanOpenDoors */
     , (802726, 146,       8400) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802726,   1, True ) /* Stuck */
     , (802726,  11, False) /* IgnoreCollisions */
     , (802726,  12, True ) /* ReportCollisions */
     , (802726,  13, False) /* Ethereal */
     , (802726,  14, True ) /* GravityStatus */
     , (802726,  19, True ) /* Attackable */
     , (802726,  52, True ) /* AIImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802726,   1,       2) /* HeartbeatInterval */
     , (802726,   2,       0) /* HeartbeatTimestamp */
     , (802726,   3,     0.4) /* HealthRate */
     , (802726,   4,       4) /* StaminaRate */
     , (802726,   5,       2) /* ManaRate */
     , (802726,  12,     0.5) /* Shade */
     , (802726,  13,       1) /* ArmorModVsSlash */
     , (802726,  14,       1) /* ArmorModVsPierce */
     , (802726,  15,       1) /* ArmorModVsBludgeon */
     , (802726,  16,       1) /* ArmorModVsCold */
     , (802726,  17,       1) /* ArmorModVsFire */
     , (802726,  18,       1) /* ArmorModVsAcid */
     , (802726,  19,       1) /* ArmorModVsElectric */
     , (802726,  31,      10) /* VisualAwarenessRange */
     , (802726,  34,       3) /* PowerupTime */
     , (802726,  36,       1) /* ChargeSpeed */
     , (802726,  39,     0.5) /* DefaudltScale */
     , (802726,  64,       1) /* ResistSlash */
     , (802726,  65,       1) /* ResistPierce */
     , (802726,  66,       1) /* ResistBludgeon */
     , (802726,  67,       1) /* ResistFire */
     , (802726,  68,    0.42) /* ResistCold */
     , (802726,  69,       1) /* ResistAcid */
     , (802726,  70,       1) /* ResistElectric */
     , (802726,  71,       1) /* ResistHealthBoost */
     , (802726,  72,       1) /* ResistStaminaDrain */
     , (802726,  73,       1) /* ResistStaminaBoost */
     , (802726,  74,       1) /* ResistManaDrain */
     , (802726,  75,       1) /* ResistManaBoost */
     , (802726, 104,      10) /* ObviousRadarRange */
     , (802726, 117,       1) /* FocusedProbability */
     , (802726, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802726,   1, 'Gaerlan''s Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802726,   1,   33559250) /* Setup */
     , (802726,   2,  150995329) /* MotionTable */
     , (802726,   4,  805306368) /* CombatTable */
     , (802726,   8,  100677461) /* Icon */
     , (802726,  28,       5356) /* Spell */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802726,  0,  4,  5000,  0.3,   80,   40,   40,   40,   40,   40,   40,   40,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802726,  1,  4,  5000,  0.3,  100,   50,   50,   50,   50,   50,   50,   50,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802726,  2,  4,  5000,  0.3,  100,   50,   50,   50,   50,   50,   50,   50,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802726,  3,  4,  5000,  0.3,   80,   40,   40,   40,   40,   40,   40,   40,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802726,  4,  4,  5000,  0.3,  100,   50,   50,   50,   50,   50,   50,   50,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802726,  5,  4,  5000, 0.75,   80,   40,   40,   40,   40,   40,   40,   40,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802726,  6,  4,  5000,  0.3,   90,   45,   45,   45,   45,   45,   45,   45,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802726,  7,  4,  5000,  0.3,   90,   45,   45,   45,   45,   45,   45,   45,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802726,  8,  4,  5000, 0.75,   90,   45,   45,   45,   45,   45,   45,   45,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802726,    5356,   2.05)  /* Bael'zharon's Nether Streak */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802726,   1, 5000, 0, 0) /* Strength */
     , (802726,   2, 5000, 0, 0) /* Endurance */
     , (802726,   3, 5000, 0, 0) /* Quickness */
     , (802726,   4, 5000, 0, 0) /* Coordination */
     , (802726,   5, 5000, 0, 0) /* Focus */
     , (802726,   6, 5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802726,   1,  500000, 0, 0, 500000) /* MaxHealth */
     , (802726,   3,  500000, 0, 0, 500000) /* MaxStamina */
     , (802726,   5,  500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802726,  6, 0, 3, 0, 5000, 0, 0) /* MeleeDefense        Trained */
     , (802726,  7, 0, 3, 0, 5000, 0, 0) /* MissileDefense      Trained */
     , (802726, 15, 0, 3, 0, 5000, 0, 0) /* MagicDefense        Specialized */
     , (802726, 20, 0, 3, 0, 5000, 0, 0) /* Deception           Trained */
     , (802726, 22, 0, 3, 0, 5000, 0, 0) /* Jump                Trained */
     , (802726, 24, 0, 3, 0, 5000, 0, 0) /* Run                 Trained */
     , (802726, 34, 0, 3, 0, 5000, 0, 0) /* WarMagic            Trained */
     , (802726, 43, 0, 3, 0, 5000, 0, 0) /* VoidMagic            Trained */
     , (802726, 45, 0, 3, 0, 5000, 0, 0) /* LightWeapons        Trained */
     , (802726, 47, 0, 3, 0, 5000, 0, 0) /* MissileWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802726, 17 /* NewEnemy */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5356 /* Whirling Blade IV */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802726, 18 /* Scream */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5356 /* Whirling Blade IV */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802726, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5356 /* Whirling Blade IV */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802726, 21 /* ResistSpell */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5356 /* Whirling Blade IV */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802726, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5356 /* Whirling Blade IV */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802726, 16 /* KillTaunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5356 /* Whirling Blade IV */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

