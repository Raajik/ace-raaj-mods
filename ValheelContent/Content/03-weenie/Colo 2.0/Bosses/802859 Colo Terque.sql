DELETE FROM `weenie` WHERE `class_Id` = 802859;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802859, 'ColoTerque', 10, '2023-08-27 06:35:44') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802859,   1,         16) /* ItemType - Creature */
     , (802859,   2,         51) /* CreatureType - Empyrean */
     , (802859,   3,         14) /* PaletteTemplate - Red */
     , (802859,   6,         -1) /* ItemsCapacity */
     , (802859,   7,         -1) /* ContainersCapacity */
     , (802859,   8,        120) /* Mass */
     , (802859,  16,          1) /* ItemUseable - No */
     , (802859,  25,        710) /* Level */
     , (802859,  27,          0) /* ArmorType - None */
     , (802859,  67,         64) /* Tolerance - Retaliate */
     , (802859,  68,       0x80) /* TargetingTactic - HasShield */
     , (802859,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802859, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802859, 146,  999999999) /* XpOverride */
     , (802859, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802859,   1, True ) /* Stuck */
     , (802859,  11, False) /* IgnoreCollisions */
     , (802859,  12, True ) /* ReportCollisions */
     , (802859,  13, False) /* Ethereal */
     , (802859,  14, True ) /* GravityStatus */
     , (802859,  19, True ) /* Attackable */
     , (802859,  50, False) /* NeverFailCasting */
     , (802859,  65, True ) /* IgnoreMagicResist */
     , (802859,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802859,   1,       2) /* HeartbeatInterval */
     , (802859,   2,       0) /* HeartbeatTimestamp */
     , (802859,   3,       2) /* HealthRate */
     , (802859,   4,       5) /* StaminaRate */
     , (802859,   5,       1) /* ManaRate */
     , (802859,  13,       5) /* ArmorModVsSlash */
     , (802859,  14,     3.5) /* ArmorModVsPierce */
     , (802859,  15,       5) /* ArmorModVsBludgeon */
     , (802859,  16,       5) /* ArmorModVsCold */
     , (802859,  17,       5) /* ArmorModVsFire */
     , (802859,  18,       5) /* ArmorModVsAcid */
     , (802859,  19,       5) /* ArmorModVsElectric */
     , (802859,  31,      13) /* VisualAwarenessRange */
     , (802859,  39,       2) /* DefaultScale */
     , (802859,  64,    0.01) /* ResistSlash */
     , (802859,  65,    0.01) /* ResistPierce */
     , (802859,  66,    0.03) /* ResistBludgeon */
     , (802859,  67,    0.01) /* ResistFire */
     , (802859,  68,    0.01) /* ResistCold */
     , (802859,  69,    0.01) /* ResistAcid */
     , (802859,  70,    0.01) /* ResistElectric */
     , (802859,  71,       1) /* ResistHealthBoost */
     , (802859,  72,       1) /* ResistStaminaDrain */
     , (802859,  73,       1) /* ResistStaminaBoost */
     , (802859,  74,       1) /* ResistManaDrain */
     , (802859,  75,       1) /* ResistManaBoost */
     , (802859,  76,     0.5) /* Translucency */
     , (802859, 104,      10) /* ObviousRadarRange */
     , (802859, 117,     0.5) /* FocusedProbability */
     , (802859, 125,    0.01) /* ResistHealthDrain */
     , (802859, 166,    0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802859,   1, 'Terque') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802859,   1, 0x020013F1) /* Setup */
     , (802859,   2, 0x09000001) /* MotionTable */
     , (802859,   3, 0x20000001) /* SoundTable */
     , (802859,   4, 0x30000028) /* CombatTable */
     , (802859,   8, 0x06001BBE) /* Icon */
     , (802859,  22, 0x34000063) /* PhysicsEffectTable */
     , (802859,  31,     802879) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802859,  0,  2,50000, 0.75, 10000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802859, 16,  4,50000,    0, 10000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802859, 18,  1,50000,  0.5, 10000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802859, 19,  1,50000,    0, 10000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802859, 20,  1,50000, 0.75, 10000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802859, 22, 32,50000,  0.5, 10000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802859,   1,75000, 0, 0) /* Strength */
     , (802859,   2,2500, 0, 0) /* Endurance */
     , (802859,   3, 500, 0, 0) /* Quickness */
     , (802859,   4, 500, 0, 0) /* Coordination */
     , (802859,   5, 500, 0, 0) /* Focus */
     , (802859,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802859,   1,2000000, 0, 0,2000000) /* MaxHealth */
     , (802859,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802859,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802859,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802859,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802859, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802859, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802859, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802859, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802859, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802859, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802859, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802859, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802859, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802859, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802859, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802859, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802859, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802859, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802859, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802859, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802859, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802859, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802859, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802859, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802859, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'A portal has appeared. Use it to continue to the next round!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'NewColoBoss10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'NewColoBoss9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802859, 9,802730,  0, 0,  0.2, False) /* Create Elemental Prism for ContainTreasure */
     , (802859, 9,     0,  0, 0,  0.8, False) /* Create Nothing for ContainTreasure */;

