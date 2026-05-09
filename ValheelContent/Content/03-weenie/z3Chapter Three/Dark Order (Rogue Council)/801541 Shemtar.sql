DELETE FROM `weenie` WHERE `class_Id` = 801541;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801541, 'Shemtar DO', 10, '2023-01-01 08:20:45') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801541,   1,         16) /* ItemType - Creature */
     , (801541,   2,         59) /* CreatureType - Simulacrum */
     , (801541,   6,         -1) /* ItemsCapacity */
     , (801541,   7,         -1) /* ContainersCapacity */
     , (801541,  16,          1) /* ItemUseable - No */
     , (801541,  25,        490) /* Level */
     , (801541,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801541,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (801541, 113,          1) /* Gender - Male */
     , (801541, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801541, 146,     999999) /* XpOverride */
     , (801541, 332,    1000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801541,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801541,   1,       5) /* HeartbeatInterval */
     , (801541,   2,       0) /* HeartbeatTimestamp */
     , (801541,   3,     400) /* HealthRate */
     , (801541,   4,       4) /* StaminaRate */
     , (801541,   5,       2) /* ManaRate */
     , (801541,  13,       1) /* ArmorModVsSlash */
     , (801541,  14,       1) /* ArmorModVsPierce */
     , (801541,  15,       1) /* ArmorModVsBludgeon */
     , (801541,  16,     0.9) /* ArmorModVsCold */
     , (801541,  17,       1) /* ArmorModVsFire */
     , (801541,  18,       1) /* ArmorModVsAcid */
     , (801541,  19,       1) /* ArmorModVsElectric */
     , (801541,  31,      24) /* VisualAwarenessRange */
     , (801541,  34,       1) /* PowerupTime */
     , (801541,  36,       1) /* ChargeSpeed */
     , (801541,  39,       3) /* DefaultScale */
     , (801541,  64,     0.1) /* ResistSlash */
     , (801541,  65,     0.1) /* ResistPierce */
     , (801541,  66,     0.1) /* ResistBludgeon */
     , (801541,  67,     0.1) /* ResistFire */
     , (801541,  68,     0.3) /* ResistCold */
     , (801541,  69,     0.1) /* ResistAcid */
     , (801541,  70,     0.1) /* ResistElectric */
     , (801541,  77,       1) /* PhysicsScriptIntensity */
     , (801541, 104,      10) /* ObviousRadarRange */
     , (801541, 125,    0.03) /* ResistHealthDrain */
     , (801541, 166,    0.04) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801541,   1, 'Shemtar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801541,   1,   33554433) /* Setup */
     , (801541,   2,  150995141) /* MotionTable */
     , (801541,   3,  536871043) /* SoundTable */
     , (801541,   4,  805306368) /* CombatTable */
     , (801541,   6,   67108990) /* PaletteBase */
     , (801541,   8,  100667446) /* Icon */
     , (801541,  22,  872415381) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801541,   1, 4750, 0, 0) /* Strength */
     , (801541,   2, 1350, 0, 0) /* Endurance */
     , (801541,   3, 320, 0, 0) /* Quickness */
     , (801541,   4, 365, 0, 0) /* Coordination */
     , (801541,   5, 440, 0, 0) /* Focus */
     , (801541,   6, 440, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801541,   1, 250000, 0, 0, 250000) /* MaxHealth */
     , (801541,   3, 500000, 0, 0, 500000) /* MaxStamina */
     , (801541,   5, 500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801541,  6, 0, 2, 0, 300, 0, 0) /* MeleeDefense        Trained */
     , (801541,  7, 0, 2, 0, 320, 0, 0) /* MissileDefense      Trained */
     , (801541, 15, 0, 2, 0, 320, 0, 0) /* MagicDefense        Trained */
     , (801541, 16, 0, 2, 0, 340, 0, 0) /* ManaConversion      Trained */
     , (801541, 31, 0, 2, 0, 1100, 0, 0) /* CreatureEnchantment Trained */
     , (801541, 33, 0, 2, 0, 1100, 0, 0) /* LifeMagic           Trained */
     , (801541, 34, 0, 2, 0, 1100, 0, 0) /* WarMagic            Trained */
     , (801541, 41, 0, 2, 0, 1100, 0, 0) /* TwoHandedCombat     Trained */
     , (801541, 43, 0, 2, 0, 1100, 0, 0) /* VoidMagic           Trained */
     , (801541, 44, 0, 2, 0, 5100, 0, 0) /* HeavyWeapons        Trained */
     , (801541, 45, 0, 2, 0, 5100, 0, 0) /* LightWeapons        Trained */
     , (801541, 46, 0, 2, 0, 5100, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801541,  0,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801541,  1,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801541,  2,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801541,  3,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801541,  4,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801541,  5,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801541,  6,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801541,  7,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801541,  8,  4, 3300, 0.75, 3300,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801541,  4439,    2.1)  /* Incantation of Flame Bolt */
     , (801541,  4443,  2.111)  /* Incantation of Force Bolt */
     , (801541,  4447,  2.125)  /* Incantation of Frost Bolt */
     , (801541,  4457,  2.143)  /* Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801541,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  23 /* StartEvent */, 0, 1, NULL, 'DOBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  17 /* LocalBroadcast */, 0.5, 1, NULL, 'Shemtar has been destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +50 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801541, 2, 800015,  1, 0, 0, False) /* Create Shemtar's Coat of Enlightenment (800015) for Wield */
     , (801541, 2, 800019,  1, 0, 0, False) /* Create Shemtar's Sollerets of Enlightenment (800019) for Wield */
     , (801541, 2, 800033,  1, 0, 0, False) /* Create Shemtar's Helm of Enlightenment (800033) for Wield */
     , (801541, 2, 800016,  1, 0, 0, False) /* Create Shemtar's Leggings of Enlightenment (800016) for Wield */
     , (801541, 2, 800121,  1, 0, 0, False) /* Create Shemtar's Gauntlets of Enlightenment (800121) for Wield */
     , (801541, 2, 801671,  1, 0, 0, False) /* Create Shemtar's Branded Blade (801671) for Wield */;
