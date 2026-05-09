DELETE FROM `weenie` WHERE `class_Id` = 900000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (900000, 'BZEventBoss', 10, '2024-01-05 06:14:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (900000,   1,         16) /* ItemType - Creature */
     , (900000,   2,         52) /* CreatureType - Hopeslayer */
     , (900000,   6,         -1) /* ItemsCapacity */
     , (900000,   7,         -1) /* ContainersCapacity */
     , (900000,  16,          1) /* ItemUseable - No */
     , (900000,  25,        799) /* Level */
     , (900000,  68,       0x80) /* TargetingTactic - Random, TopDamager */
     , (900000,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (900000, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (900000, 146,    2500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (900000,   1, True ) /* Stuck */
     , (900000,  12, True ) /* ReportCollisions */
     , (900000,  14, True ) /* GravityStatus */
     , (900000,  19, True ) /* Attackable */
     , (900000,  29, False) /* NoCorpse */
     , (900000,  42, True ) /* AllowEdgeSlide */
     , (900000,  52, False) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (900000,   1,       5) /* HeartbeatInterval */
     , (900000,   2,       0) /* HeartbeatTimestamp */
     , (900000,   3,     0.6) /* HealthRate */
     , (900000,   4,     0.5) /* StaminaRate */
     , (900000,   5,       2) /* ManaRate */
     , (900000,  12,     0.5) /* Shade */
     , (900000,  13,       1) /* ArmorModVsSlash */
     , (900000,  14,       1) /* ArmorModVsPierce */
     , (900000,  15,       1) /* ArmorModVsBludgeon */
     , (900000,  16,       1) /* ArmorModVsCold */
     , (900000,  17,     0.7) /* ArmorModVsFire */
     , (900000,  18,       1) /* ArmorModVsAcid */
     , (900000,  19,       1) /* ArmorModVsElectric */
     , (900000,  31,       1) /* VisualAwarenessRange */
     , (900000,  34,       1) /* PowerupTime */
     , (900000,  36,       1) /* ChargeSpeed */
     , (900000,  39,     3.5) /* DefaultScale */
     , (900000,  64,     0.1) /* ResistSlash */
     , (900000,  65,     0.1) /* ResistPierce */
     , (900000,  66,     0.1) /* ResistBludgeon */
     , (900000,  67,     0.5) /* ResistFire */
     , (900000,  68,     0.1) /* ResistCold */
     , (900000,  69,     0.1) /* ResistAcid */
     , (900000,  70,     0.1) /* ResistElectric */
     , (900000,  80,       3) /* AiUseMagicDelay */
     , (900000, 104,      10) /* ObviousRadarRange */
     , (900000, 122,       2) /* AiAcquireHealth */
     , (900000, 125,    0.02) /* ResistHealthDrain */
     , (900000, 165,       1) /* ArmorModVsNether */
     , (900000, 166,    0.08) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (900000,   1, 'Bael''Zharon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (900000,   1,   33556894) /* Setup */
     , (900000,   2,  150995108) /* MotionTable */
     , (900000,   3,  536870942) /* SoundTable */
     , (900000,   4,  805306415) /* CombatTable */
     , (900000,   6,   67113068) /* PaletteBase */
     , (900000,   8,  100669122) /* Icon */
     , (900000,  22,  872415272) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (900000,  0,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (900000,  1,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (900000,  2,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.23,  0.1,    0, 0.23,  0.2,    0, 0.17, 0.45,    0, 0.17, 0.45) /* Abdomen */
     , (900000,  3,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.04,  0.2, 0.23, 0.04,  0.1, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (900000,  4,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,  0.3,    0,  0.3,  0.4,    0,  0.3,  0.1,    0,  0.3,  0.1) /* LowerArm */
     , (900000,  5,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,  0.3,    0,  0.2,  0.2,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (900000, 17,  1,150, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.1,    0,    0,  0.1,    0, 0.13, 0.45,    0, 0.13, 0.45) /* Tail */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (900000,   1, 680, 0, 0) /* Strength */
     , (900000,   2, 380, 0, 0) /* Endurance */
     , (900000,   3, 350, 0, 0) /* Quickness */
     , (900000,   4, 680, 0, 0) /* Coordination */
     , (900000,   5, 480, 0, 0) /* Focus */
     , (900000,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (900000,   1,250000, 0, 0,250000) /* MaxHealth */
     , (900000,   3, 50000, 0, 0,50000) /* MaxStamina */
     , (900000,   5, 50000, 0, 0,50000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (900000,  6, 0, 2, 0, 520, 0, 0) /* MeleeDefense        Trained */
     , (900000,  7, 0, 2, 0, 420, 0, 0) /* MissileDefense      Trained */
     , (900000, 15, 0, 2, 0, 360, 0, 0) /* MagicDefense        Trained */
     , (900000, 16, 0, 2, 0, 440, 0, 0) /* ManaConversion      Trained */
     , (900000, 31, 0, 2, 0, 440, 0, 0) /* CreatureEnchantment Trained */
     , (900000, 33, 0, 2, 0,6440, 0, 0) /* LifeMagic           Trained */
     , (900000, 34, 0, 2, 0, 440, 0, 0) /* WarMagic            Trained */
     , (900000, 41, 0, 2, 0, 550, 0, 0) /* TwoHandedCombat     Trained */
     , (900000, 43, 0, 2, 0,6440, 0, 0) /* VoidMagic           Trained */
     , (900000, 44, 0, 2, 0, 550, 0, 0) /* HeavyWeapons        Trained */
     , (900000, 45, 0, 2, 0, 550, 0, 0) /* LightWeapons        Trained */
     , (900000, 46, 0, 2, 0, 550, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (900000, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (900000, 9,802035,  0, 0,    1, False) /* Create World Boss Gem (802035) for ContainTreasure */;

INSERT INTO `weenie_properties_texture_map` (`object_Id`, `index`, `old_Id`, `new_Id`)
VALUES (900000, 9, 83892933, 83894108)
     , (900000, 9, 83892920, 83894108)
     , (900000, 9, 83892923, 83894108)
     , (900000, 10, 83892918, 83894115)
     , (900000, 13, 83892918, 83894115)
     , (900000, 0, 83892913, 83894110)
     , (900000, 1, 83892929, 83894111)
     , (900000, 5, 83892929, 83894111)
     , (900000, 2, 83892930, 83894112)
     , (900000, 6, 83892930, 83894112);