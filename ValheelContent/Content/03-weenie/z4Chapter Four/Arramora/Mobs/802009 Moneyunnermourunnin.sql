DELETE FROM `weenie` WHERE `class_Id` = 802009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802009, 'Moneyunnermourunnin', 10, '2023-02-08 11:35:30') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802009,   1,         16) /* ItemType - Creature */
     , (802009,   2,         28) /* CreatureType - Shreth */
     , (802009,   3,         41) /* PaletteTemplate - SandyYellow */
     , (802009,   6,         -1) /* ItemsCapacity */
     , (802009,   7,         -1) /* ContainersCapacity */
     , (802009,  16,          1) /* ItemUseable - No */
     , (802009,  25,        635) /* Level */
     , (802009,  27,          0) /* ArmorType - None */
     , (802009,  40,          2) /* CombatMode - Melee */
     , (802009,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802009,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802009, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802009, 146,     700000) /* XpOverride */
     , (802009, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802009,   1, True ) /* Stuck */
     , (802009,   6, False) /* AiUsesMana */
     , (802009,  12, True ) /* ReportCollisions */
     , (802009,  13, False) /* Ethereal */
     , (802009,  14, True ) /* GravityStatus */
     , (802009,  19, True ) /* Attackable */
     , (802009,  65, True ) /* IgnoreMagicResist */
     , (802009, 101, True ) /* CanGenerateRare */
     , (802009, 102, True ) /* CorpseGeneratedRare */
     , (802009, 103, True ) /* NonProjectileMagicImmune */
     , (802009, 120, False) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802009,   1,       5) /* HeartbeatInterval */
     , (802009,   2,       0) /* HeartbeatTimestamp */
     , (802009,   3,     0.4) /* HealthRate */
     , (802009,   4,       5) /* StaminaRate */
     , (802009,   5,       1) /* ManaRate */
     , (802009,  13,       1) /* ArmorModVsSlash */
     , (802009,  14,       1) /* ArmorModVsPierce */
     , (802009,  15,       1) /* ArmorModVsBludgeon */
     , (802009,  16,       1) /* ArmorModVsCold */
     , (802009,  17,       1) /* ArmorModVsFire */
     , (802009,  18,       1) /* ArmorModVsAcid */
     , (802009,  19,     1.8) /* ArmorModVsElectric */
     , (802009,  31,      30) /* VisualAwarenessRange */
     , (802009,  34,       1) /* PowerupTime */
     , (802009,  36,       1) /* ChargeSpeed */
     , (802009,  39,       2) /* DefaultScale */
     , (802009,  64,     0.01) /* ResistSlash */
     , (802009,  65,     0.01) /* ResistPierce */
     , (802009,  66,     0.01) /* ResistBludgeon */
     , (802009,  67,     0.01) /* ResistFire */
     , (802009,  68,     0.01) /* ResistCold */
     , (802009,  69,     0.01) /* ResistAcid */
     , (802009,  70,     0.10) /* ResistElectric */
     , (802009,  71,       1) /* ResistHealthBoost */
     , (802009,  72,       1) /* ResistStaminaDrain */
     , (802009,  73,       1) /* ResistStaminaBoost */
     , (802009,  74,       1) /* ResistManaDrain */
     , (802009,  75,       1) /* ResistManaBoost */
     , (802009,  80,       3) /* AiUseMagicDelay */
     , (802009, 104,      10) /* ObviousRadarRange */
     , (802009, 117,     0.5) /* FocusedProbability */
     , (802009, 122,       2) /* AiAcquireHealth */
     , (802009, 125,       1) /* ResistHealthDrain */
     , (802009, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802009,   1, 'Moneyunnermourunnin''') /* Name */
     , (802009,  45, 'reekrisKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802009,   1, 0x020002FF) /* Setup */
     , (802009,   2, 0x09000027) /* MotionTable */
     , (802009,   3, 0x20000032) /* SoundTable */
     , (802009,   4, 0x30000016) /* CombatTable */
     , (802009,   6, 0x04000986) /* PaletteBase */
     , (802009,   7, 0x1000048B) /* ClothingBase */
     , (802009,   8, 0x060016BD) /* Icon */
     , (802009,  22, 0x34000019) /* PhysicsEffectTable */
     , (802009,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802009,  0,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802009,  1,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802009,  2,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802009,  3,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802009,  4,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802009,  5,  4,2000, 0.75, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802009,  6,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802009,  7,  4,  0,    0, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802009,  8,  4,2000, 0.75, 450, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802009,   1,1540, 0, 0) /* Strength */
     , (802009,   2,1575, 0, 0) /* Endurance */
     , (802009,   3, 520, 0, 0) /* Quickness */
     , (802009,   4, 500, 0, 0) /* Coordination */
     , (802009,   5, 150, 0, 0) /* Focus */
     , (802009,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802009,   1,200000, 0, 0,200000) /* MaxHealth */
     , (802009,   3, 15000, 0, 0,15000) /* MaxStamina */
     , (802009,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802009,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (802009,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (802009, 15, 0, 3, 0, 400, 0, 0) /* MagicDefense        Specialized */
     , (802009, 20, 0, 3, 0, 320, 0, 0) /* Deception           Specialized */
     , (802009, 22, 0, 3, 0, 370, 0, 0) /* Jump                Specialized */
     , (802009, 24, 0, 3, 0, 310, 0, 0) /* Run                 Specialized */
     , (802009, 44, 0, 3, 0,9492, 0, 0) /* HeavyWeapons        Specialized */
     , (802009, 45, 0, 3, 0,9492, 0, 0) /* LightWeapons        Specialized */
     , (802009, 46, 0, 3, 0,9442, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802009, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 22 /* StampQuest */, 0, 1, NULL, 'Reekris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 17 /* LocalBroadcast */, 0, 1, NULL, 'REEKRIS!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 21 /* InqQuest */, 0, 1, NULL, 'Insider@5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802009, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Insider@5', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Nothing to find here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802009, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Insider@5', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 22 /* StampQuest */, 0, 1, NULL, 'Insider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You find valuable ValHeel Exchange intel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

