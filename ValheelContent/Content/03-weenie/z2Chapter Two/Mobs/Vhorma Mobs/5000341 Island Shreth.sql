DELETE FROM `weenie` WHERE `class_Id` = 5000341;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (5000341, 'ace5000341-snowtuskerwarrior', 10, '2023-06-11 09:37:56') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (5000341,   1,         16) /* ItemType - Creature */
     , (5000341,   2,          8) /* CreatureType - Tusker */
     , (5000341,   6,        255) /* ItemsCapacity */
     , (5000341,   7,        255) /* ContainersCapacity */
     , (5000341,  16,          1) /* ItemUseable - No */
     , (5000341,  25,        275) /* Level */
     , (5000341,  27,          0) /* ArmorType - None */
     , (5000341,  40,          2) /* CombatMode - Melee */
     , (5000341,  68,       0x80) /* TargetingTactic - Random, TopDamager */
     , (5000341,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (5000341, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (5000341, 146,   30001320) /* XpOverride */
     , (5000341, 332,      48000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (5000341,   1, True ) /* Stuck */
     , (5000341,  11, False) /* IgnoreCollisions */
     , (5000341,  12, True ) /* ReportCollisions */
     , (5000341,  13, False) /* Ethereal */
     , (5000341,  14, True ) /* GravityStatus */
     , (5000341,  19, True ) /* Attackable */
     , (5000341,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (5000341,   1,       5) /* HeartbeatInterval */
     , (5000341,   2,       0) /* HeartbeatTimestamp */
     , (5000341,   3,     0.5) /* HealthRate */
     , (5000341,   4,       5) /* StaminaRate */
     , (5000341,   5,       2) /* ManaRate */
     , (5000341,  12,       0) /* Shade */
     , (5000341,  13,       1) /* ArmorModVsSlash */
     , (5000341,  14,       1) /* ArmorModVsPierce */
     , (5000341,  15,       1) /* ArmorModVsBludgeon */
     , (5000341,  16,     0.7) /* ArmorModVsCold */
     , (5000341,  17,       1) /* ArmorModVsFire */
     , (5000341,  18,       1) /* ArmorModVsAcid */
     , (5000341,  19,       1) /* ArmorModVsElectric */
     , (5000341,  31,      24) /* VisualAwarenessRange */
     , (5000341,  34,     0.9) /* PowerupTime */
     , (5000341,  36,       1) /* ChargeSpeed */
     , (5000341,  39,     1.2) /* DefaultScale */
     , (5000341,  64,     0.1) /* ResistSlash */
     , (5000341,  65,     0.1) /* ResistPierce */
     , (5000341,  66,     0.1) /* ResistBludgeon */
     , (5000341,  67,     0.1) /* ResistFire */
     , (5000341,  68,     0.5) /* ResistCold */
     , (5000341,  69,     0.1) /* ResistAcid */
     , (5000341,  70,     0.1) /* ResistElectric */
     , (5000341,  71,       1) /* ResistHealthBoost */
     , (5000341,  72,       1) /* ResistStaminaDrain */
     , (5000341,  73,       1) /* ResistStaminaBoost */
     , (5000341,  74,       1) /* ResistManaDrain */
     , (5000341,  75,       1) /* ResistManaBoost */
     , (5000341, 104,      10) /* ObviousRadarRange */
     , (5000341, 125,    0.03) /* ResistHealthDrain */
     , (5000341, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (5000341,   1, 'Island Shreth') /* Name */
     , (5000341,  45, 'IslandShrethKT2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (5000341,   1,   33555908) /* Setup */
     , (5000341,   2,  150995072) /* MotionTable */
     , (5000341,   3,  536870986) /* SoundTable */
     , (5000341,   4,  805306399) /* CombatTable */
     , (5000341,   6,   67112444) /* PaletteBase */
     , (5000341,   7,  268435840) /* ClothingBase */
     , (5000341,   8,  100669720) /* Icon */
     , (5000341,  22,  872415333) /* PhysicsEffectTable */
     , (5000341,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (5000341,  0,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (5000341,  1,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (5000341,  2,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (5000341,  3,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (5000341,  4,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (5000341,  5,  4,  800, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (5000341,  6,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (5000341,  7,  4,  800,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (5000341,  8,  4,  800, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (5000341,   1, 800, 0, 0) /* Strength */
     , (5000341,   2, 800, 0, 0) /* Endurance */
     , (5000341,   3, 290, 0, 0) /* Quickness */
     , (5000341,   4, 640, 0, 0) /* Coordination */
     , (5000341,   5,  70, 0, 0) /* Focus */
     , (5000341,   6,  60, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (5000341,   1, 10000, 0, 0, 10000) /* MaxHealth */
     , (5000341,   3, 10000, 0, 0, 10000) /* MaxStamina */
     , (5000341,   5,     0, 0, 0,    60) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (5000341,  6, 0, 3, 0, 190, 0, 0) /* MeleeDefense        Specialized */
     , (5000341,  7, 0, 3, 0, 115, 0, 0) /* MissileDefense      Specialized */
     , (5000341, 15, 0, 3, 0, 170, 0, 0) /* MagicDefense        Specialized */
     , (5000341, 20, 0, 3, 0,  25, 0, 0) /* Deception           Specialized */
     , (5000341, 22, 0, 3, 0, 120, 0, 0) /* Jump                Specialized */
     , (5000341, 24, 0, 3, 0, 500, 0, 0) /* Run                 Specialized */
     , (5000341, 45, 0, 3, 0,400, 0, 0) /* LightWeapons        Specialized */
     , (5000341, 46, 0, 3, 0,400, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (5000341, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-802609_2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (5000341, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-802609_2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_350-400', NULL, 350, 400, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (5000341, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_350-400', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (5000341, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_350-400', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (5000341, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-802609_2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (5000341, 9,800849,  0, 0,  0.1, False) /* Create Island Shreth Hide (800849) for ContainTreasure */
     , (5000341, 9,300191,  1, 0, 0.02, False) /* Create ValHeel Empowered Key (300191) for ContainTreasure */;

