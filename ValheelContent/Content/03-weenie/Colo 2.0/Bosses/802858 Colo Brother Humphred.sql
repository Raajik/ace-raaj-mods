DELETE FROM `weenie` WHERE `class_Id` = 802858;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802858, 'ColoBrother Humphred', 10, '2023-08-27 06:35:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802858,   1,         16) /* ItemType - Creature */
     , (802858,   2,         51) /* CreatureType - Empyrean */
     , (802858,   3,         14) /* PaletteTemplate - Red */
     , (802858,   6,         -1) /* ItemsCapacity */
     , (802858,   7,         -1) /* ContainersCapacity */
     , (802858,   8,        120) /* Mass */
     , (802858,  16,          1) /* ItemUseable - No */
     , (802858,  25,        710) /* Level */
     , (802858,  27,          0) /* ArmorType - None */
     , (802858,  67,         64) /* Tolerance - Retaliate */
     , (802858,  68,       0x80) /* TargetingTactic - HasShield */
     , (802858,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802858, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802858, 146,  999999999) /* XpOverride */
     , (802858, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802858,   1, True ) /* Stuck */
     , (802858,  11, False) /* IgnoreCollisions */
     , (802858,  12, True ) /* ReportCollisions */
     , (802858,  13, False) /* Ethereal */
     , (802858,  14, True ) /* GravityStatus */
     , (802858,  19, True ) /* Attackable */
     , (802858,  50, False) /* NeverFailCasting */
     , (802858,  65, True ) /* IgnoreMagicResist */
     , (802858,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802858,   1,       2) /* HeartbeatInterval */
     , (802858,   2,       0) /* HeartbeatTimestamp */
     , (802858,   3,       2) /* HealthRate */
     , (802858,   4,       5) /* StaminaRate */
     , (802858,   5,       1) /* ManaRate */
     , (802858,  13,       5) /* ArmorModVsSlash */
     , (802858,  14,       5) /* ArmorModVsPierce */
     , (802858,  15,       5) /* ArmorModVsBludgeon */
     , (802858,  16,       5) /* ArmorModVsCold */
     , (802858,  17,       5) /* ArmorModVsFire */
     , (802858,  18,       5) /* ArmorModVsAcid */
     , (802858,  19,    3.25) /* ArmorModVsElectric */
     , (802858,  31,      13) /* VisualAwarenessRange */
     , (802858,  39,       2) /* DefaultScale */
     , (802858,  64,    0.01) /* ResistSlash */
     , (802858,  65,    0.01) /* ResistPierce */
     , (802858,  66,    0.01) /* ResistBludgeon */
     , (802858,  67,    0.01) /* ResistFire */
     , (802858,  68,    0.01) /* ResistCold */
     , (802858,  69,    0.01) /* ResistAcid */
     , (802858,  70,    0.03) /* ResistElectric */
     , (802858,  71,       1) /* ResistHealthBoost */
     , (802858,  72,       1) /* ResistStaminaDrain */
     , (802858,  73,       1) /* ResistStaminaBoost */
     , (802858,  74,       1) /* ResistManaDrain */
     , (802858,  75,       1) /* ResistManaBoost */
     , (802858,  76,     0.5) /* Translucency */
     , (802858, 104,      10) /* ObviousRadarRange */
     , (802858, 117,     0.5) /* FocusedProbability */
     , (802858, 125,    0.01) /* ResistHealthDrain */
     , (802858, 166,    0.003) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802858,   1, 'Brother Humphred') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802858,   1, 0x02000A0B) /* Setup */
     , (802858,   2, 0x09000006) /* MotionTable */
     , (802858,   3, 0x2000000A) /* SoundTable */
     , (802858,   4, 0x30000003) /* CombatTable */
     , (802858,   6, 0x040010C6) /* PaletteBase */
     , (802858,   7, 0x100002BD) /* ClothingBase */
     , (802858,   8, 0x06001037) /* Icon */
     , (802858,  22, 0x3400001E) /* PhysicsEffectTable */
     , (802858,  31,     802878) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802858,  0,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802858,  1,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802858,  2,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802858,  3,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802858,  4,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802858,  5,  4,47500, 0.75, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802858,  6,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802858,  7,  4,47500,  0.3, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802858,  8,  4,47500, 0.75, 7500,  650,  650,  650,  650,  650,  650,  650,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802858,   1,47500, 0, 0) /* Strength */
     , (802858,   2,2500, 0, 0) /* Endurance */
     , (802858,   3, 500, 0, 0) /* Quickness */
     , (802858,   4, 500, 0, 0) /* Coordination */
     , (802858,   5, 500, 0, 0) /* Focus */
     , (802858,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802858,   1,1800000, 0, 0,1800000) /* MaxHealth */
     , (802858,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802858,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802858,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802858,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802858, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802858, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802858, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802858, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802858, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802858, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802858, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802858, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802858, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802858, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802858, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802858, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802858, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802858, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802858, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802858, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802858, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802858, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802858, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802858, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802858, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'A portal has appeared. Use it to continue to the next round!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'NewColoBoss9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'NewColoBoss8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802858, 9,802730,  0, 0,  0.2, False) /* Create Elemental Prism for ContainTreasure */
     , (802858, 9,     0,  0, 0,  0.8, False) /* Create Nothing for ContainTreasure */;

