DELETE FROM `weenie` WHERE `class_Id` = 803110;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803110, 'Christmas Mattekar', 10, '2023-02-17 09:55:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803110,   1,         16) /* ItemType - Creature */
     , (803110,   2,         23) /* CreatureType - Virindi */
     , (803110,   3,          3) /* PaletteTemplate - BluePurple */
     , (803110,   6,         -1) /* ItemsCapacity */
     , (803110,   7,         -1) /* ContainersCapacity */
     , (803110,  16,          1) /* ItemUseable - No */
     , (803110,  25,        700) /* Level */
     , (803110,  67,         64) /* Tolerance - Retaliate */
     , (803110,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803110,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (803110, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803110, 146,    2500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803110,   1, True ) /* Stuck */
     , (803110,  12, True ) /* ReportCollisions */
     , (803110,  14, True ) /* GravityStatus */
     , (803110,  19, True ) /* Attackable */
     , (803110,  29, False) /* NoCorpse */
     , (803110,  42, True ) /* AllowEdgeSlide */
     , (803110,  52, False) /* AiImmobile */
     , (803110,  65, True ) /* IgnoreMagicResist */
     , (803110,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803110,   1,       5) /* HeartbeatInterval */
     , (803110,   2,       0) /* HeartbeatTimestamp */
     , (803110,   3,     0.6) /* HealthRate */
     , (803110,   4,     0.5) /* StaminaRate */
     , (803110,   5,       2) /* ManaRate */
     , (803110,  12,     0.5) /* Shade */
     , (803110,  13,       5) /* ArmorModVsSlash */
     , (803110,  14,       5) /* ArmorModVsPierce */
     , (803110,  15,       5) /* ArmorModVsBludgeon */
     , (803110,  16,       5) /* ArmorModVsCold */
     , (803110,  17,       3) /* ArmorModVsFire */
     , (803110,  18,       5) /* ArmorModVsAcid */
     , (803110,  19,       5) /* ArmorModVsElectric */
     , (803110,  31,       5) /* VisualAwarenessRange */
     , (803110,  34,       5) /* PowerupTime */
     , (803110,  36,       5) /* ChargeSpeed */
     , (803110,  39,     3.5) /* DefaultScale */
     , (803110,  64,    0.01) /* ResistSlash */
     , (803110,  65,    0.01) /* ResistPierce */
     , (803110,  66,    0.01) /* ResistBludgeon */
     , (803110,  67,    0.05) /* ResistFire */
     , (803110,  68,    0.01) /* ResistCold */
     , (803110,  69,    0.01) /* ResistAcid */
     , (803110,  70,    0.01) /* ResistElectric */
     , (803110,  80,       3) /* AiUseMagicDelay */
     , (803110, 104,      10) /* ObviousRadarRange */
     , (803110, 122,       2) /* AiAcquireHealth */
     , (803110, 125,    0.05) /* ResistHealthDrain */
     , (803110, 165,    0.05) /* ArmorModVsNether */
     , (803110, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803110,   1, 'Christmas Mattekar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803110,   1,   33555590) /* Setup */
     , (803110,   2,  150995283) /* MotionTable */
     , (803110,   3,  536870974) /* SoundTable */
     , (803110,   4,  805306391) /* CombatTable */
     , (803110,   6,   67111893) /* PaletteBase */
     , (803110,   7,  268435729) /* ClothingBase */
     , (803110,   8,  100669121) /* Icon */
     , (803110,  22,  872415278) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803110,   1, 5500, 0, 0) /* Strength */
     , (803110,   2, 500, 0, 0) /* Endurance */
     , (803110,   3, 500, 0, 0) /* Quickness */
     , (803110,   4, 500, 0, 0) /* Coordination */
     , (803110,   5, 500, 0, 0) /* Focus */
     , (803110,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803110,   1, 5100000, 0, 0, 5100000) /* MaxHealth */
     , (803110,   3, 550000, 0, 0, 550000) /* MaxStamina */
     , (803110,   5, 550000, 0, 0, 550000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803110,  6, 0, 2, 0, 520, 0, 0) /* MeleeDefense        Trained */
     , (803110,  7, 0, 2, 0, 420, 0, 0) /* MissileDefense      Trained */
     , (803110, 15, 0, 2, 0, 360, 0, 0) /* MagicDefense        Trained */
     , (803110, 16, 0, 2, 0, 440, 0, 0) /* ManaConversion      Trained */
     , (803110, 31, 0, 2, 0, 440, 0, 0) /* CreatureEnchantment Trained */
     , (803110, 33, 0, 2, 0, 440, 0, 0) /* LifeMagic           Trained */
     , (803110, 34, 0, 2, 0, 440, 0, 0) /* WarMagic            Trained */
     , (803110, 41, 0, 2, 0, 550, 0, 0) /* TwoHandedCombat     Trained */
     , (803110, 43, 0, 2, 0, 440, 0, 0) /* VoidMagic           Trained */
     , (803110, 44, 0, 2, 0, 550, 0, 0) /* HeavyWeapons        Trained */
     , (803110, 45, 0, 2, 0, 550, 0, 0) /* LightWeapons        Trained */
     , (803110, 46, 0, 2, 0, 550, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803110,  0,  4, 30000,  0.4,  9000,  207,  409,  375,  185,  392,  308,  185,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803110,  1,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803110,  2,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803110,  3,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803110,  4,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803110,  5,  4, 30000,  0.4,  9000,  207,  409,  375,  185,  392,  308,  185,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803110,  6,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803110,  7,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803110,  8,  4,  0,    0,     9000,  207,  409,  375,  185,  392,  308,  185,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803110,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, 'The Christmas Mattekar has been slain! It has stolen several of Santa''s Gift Sacks. Go get them now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0, 1, NULL, 'WBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  22 /* StampQuest */, 0, 1, NULL, 'WBKill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 802035,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (803110, 9, 803111,  0, 0, 1, False) /* Create World Boss Gem (802035) for ContainTreasure */;
