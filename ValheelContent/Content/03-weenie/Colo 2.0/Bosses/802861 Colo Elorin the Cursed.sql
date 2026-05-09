DELETE FROM `weenie` WHERE `class_Id` = 802861;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802861, 'ColoElorinTheCursed', 10, '2023-08-27 06:51:36') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802861,   1,         16) /* ItemType - Creature */
     , (802861,   2,         51) /* CreatureType - Empyrean */
     , (802861,   3,         14) /* PaletteTemplate - Red */
     , (802861,   6,         -1) /* ItemsCapacity */
     , (802861,   7,         -1) /* ContainersCapacity */
     , (802861,   8,        120) /* Mass */
     , (802861,  16,          1) /* ItemUseable - No */
     , (802861,  25,        710) /* Level */
     , (802861,  27,          0) /* ArmorType - None */
     , (802861,  67,         64) /* Tolerance - Retaliate */
     , (802861,  68,       0x80) /* TargetingTactic - HasShield */
     , (802861,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802861, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802861, 146,  999999999) /* XpOverride */
     , (802861, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802861,   1, True ) /* Stuck */
     , (802861,  11, False) /* IgnoreCollisions */
     , (802861,  12, True ) /* ReportCollisions */
     , (802861,  13, False) /* Ethereal */
     , (802861,  14, True ) /* GravityStatus */
     , (802861,  19, True ) /* Attackable */
     , (802861,  50, False) /* NeverFailCasting */
     , (802861,  65, True ) /* IgnoreMagicResist */
     , (802861,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802861,   1,       2) /* HeartbeatInterval */
     , (802861,   2,       0) /* HeartbeatTimestamp */
     , (802861,   3,       2) /* HealthRate */
     , (802861,   4,       5) /* StaminaRate */
     , (802861,   5,       1) /* ManaRate */
     , (802861,  13,       5) /* ArmorModVsSlash */
     , (802861,  14,       5) /* ArmorModVsPierce */
     , (802861,  15,       5) /* ArmorModVsBludgeon */
     , (802861,  16,       5) /* ArmorModVsCold */
     , (802861,  17,       5) /* ArmorModVsFire */
     , (802861,  18,     4.25) /* ArmorModVsAcid */
     , (802861,  19,       1) /* ArmorModVsElectric */
     , (802861,  31,      13) /* VisualAwarenessRange */
     , (802861,  39,       2) /* DefaultScale */
     , (802861,  64,    0.01) /* ResistSlash */
     , (802861,  65,    0.01) /* ResistPierce */
     , (802861,  66,    0.01) /* ResistBludgeon */
     , (802861,  67,    0.01) /* ResistFire */
     , (802861,  68,    0.01) /* ResistCold */
     , (802861,  69,    0.03) /* ResistAcid */
     , (802861,  70,    0.01) /* ResistElectric */
     , (802861,  71,       1) /* ResistHealthBoost */
     , (802861,  72,       1) /* ResistStaminaDrain */
     , (802861,  73,       1) /* ResistStaminaBoost */
     , (802861,  74,       1) /* ResistManaDrain */
     , (802861,  75,       1) /* ResistManaBoost */
     , (802861,  76,     0.5) /* Translucency */
     , (802861, 104,      10) /* ObviousRadarRange */
     , (802861, 117,     0.5) /* FocusedProbability */
     , (802861, 125,    0.01) /* ResistHealthDrain */
     , (802861, 166,    0.0009) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802861,   1, 'Elorin the Cursed') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802861,   1, 0x02000001) /* Setup */
     , (802861,   2, 0x09000001) /* MotionTable */
     , (802861,   3, 0x20000001) /* SoundTable */
     , (802861,   4, 0x30000000) /* CombatTable */
     , (802861,   7, 0x10000758) /* ClothingBase */
     , (802861,   8, 0x06001036) /* Icon */
     , (802861,  22, 0x34000004) /* PhysicsEffectTable */
     , (802861,  31,     802881) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802861,  0,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802861,  1,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802861,  2,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802861,  3,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802861,  4,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802861,  5,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802861,  6,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802861,  7,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802861,  8,  4,55000, 0.75, 15000, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802861,   1,120000, 0, 0) /* Strength */
     , (802861,   2,2500, 0, 0) /* Endurance */
     , (802861,   3, 500, 0, 0) /* Quickness */
     , (802861,   4, 500, 0, 0) /* Coordination */
     , (802861,   5, 500, 0, 0) /* Focus */
     , (802861,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802861,   1,2400000, 0, 0,2400000) /* MaxHealth */
     , (802861,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802861,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802861,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802861,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802861, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802861, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802861, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802861, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802861, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802861, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802861, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802861, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802861, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802861, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802861, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802861, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802861, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802861, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802861, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802861, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802861, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802861, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802861, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802861, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802861, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'A portal has appeared. Use it to continue to the next round!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'NewColoBoss12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'NewColoBoss11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802861, 9,802730,  0, 0,  0.20, False) /* Create Elemental Prism for ContainTreasure */
     , (802861, 9,     0,  0, 0,  0.80, False) /* Create Nothing for ContainTreasure */;

