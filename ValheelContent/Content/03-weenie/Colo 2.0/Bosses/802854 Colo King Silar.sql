DELETE FROM `weenie` WHERE `class_Id` = 802854;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802854, 'ColoKingSilar', 10, '2023-08-27 06:33:37') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802854,   1,         16) /* ItemType - Creature */
     , (802854,   2,         51) /* CreatureType - Empyrean */
     , (802854,   3,         14) /* PaletteTemplate - Red */
     , (802854,   6,         -1) /* ItemsCapacity */
     , (802854,   7,         -1) /* ContainersCapacity */
     , (802854,   8,        120) /* Mass */
     , (802854,  16,          1) /* ItemUseable - No */
     , (802854,  25,        710) /* Level */
     , (802854,  27,          0) /* ArmorType - None */
     , (802854,  67,         64) /* Tolerance - Retaliate */
     , (802854,  68,       0x80) /* TargetingTactic - HasShield */
     , (802854,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802854, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802854, 146,  999999999) /* XpOverride */
     , (802854, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802854,   1, True ) /* Stuck */
     , (802854,  11, False) /* IgnoreCollisions */
     , (802854,  12, True ) /* ReportCollisions */
     , (802854,  13, False) /* Ethereal */
     , (802854,  14, True ) /* GravityStatus */
     , (802854,  19, True ) /* Attackable */
     , (802854,  50, False) /* NeverFailCasting */
     , (802854,  65, True ) /* IgnoreMagicResist */
     , (802854,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802854,   1,       2) /* HeartbeatInterval */
     , (802854,   2,       0) /* HeartbeatTimestamp */
     , (802854,   3,       2) /* HealthRate */
     , (802854,   4,       5) /* StaminaRate */
     , (802854,   5,       5) /* ManaRate */
     , (802854,  13,       5) /* ArmorModVsSlash */
     , (802854,  14,       5) /* ArmorModVsPierce */
     , (802854,  15,       5) /* ArmorModVsBludgeon */
     , (802854,  16,     2.5) /* ArmorModVsCold */
     , (802854,  17,       5) /* ArmorModVsFire */
     , (802854,  18,       5) /* ArmorModVsAcid */
     , (802854,  19,     2.5) /* ArmorModVsElectric */
     , (802854,  31,      13) /* VisualAwarenessRange */
     , (802854,  39,       2) /* DefaultScale */
     , (802854,  64,    0.01) /* ResistSlash */
     , (802854,  65,    0.01) /* ResistPierce */
     , (802854,  66,    0.01) /* ResistBludgeon */
     , (802854,  67,    0.01) /* ResistFire */
     , (802854,  68,    0.03) /* ResistCold */
     , (802854,  69,    0.01) /* ResistAcid */
     , (802854,  70,    0.03) /* ResistElectric */
     , (802854,  71,       1) /* ResistHealthBoost */
     , (802854,  72,       1) /* ResistStaminaDrain */
     , (802854,  73,       1) /* ResistStaminaBoost */
     , (802854,  74,       1) /* ResistManaDrain */
     , (802854,  75,       1) /* ResistManaBoost */
     , (802854,  76,     0.5) /* Translucency */
     , (802854, 104,      10) /* ObviousRadarRange */
     , (802854, 117,     0.5) /* FocusedProbability */
     , (802854, 125,    0.01) /* ResistHealthDrain */
     , (802854, 166,    0.008) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802854,   1, 'King Silar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802854,   1, 0x02000992) /* Setup */
     , (802854,   2, 0x090000A0) /* MotionTable */
     , (802854,   3, 0x2000006A) /* SoundTable */
     , (802854,   4, 0x30000023) /* CombatTable */
     , (802854,   6, 0x04000FA8) /* PaletteBase */
     , (802854,   7, 0x10000276) /* ClothingBase */
     , (802854,   8, 0x06001ED1) /* Icon */
     , (802854,  22, 0x34000069) /* PhysicsEffectTable */
     , (802854,  30,         86) /* PhysicsScript - BreatheAcid */
     , (802854,  31,     802875) /* LinkedPortalOne */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802854,  0,  2,40000, 0.75, 5000,  900,  900,  900,  900,  900,  900,  900,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802854, 16,  4,40000,    0, 5000,  900,  900,  900,  900,  900,  900,  900,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802854, 18,  1,40000,  0.5, 5000,  900,  900,  900,  900,  900,  900,  900,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802854, 19,  1,40000,    0, 5000,  900,  900,  900,  900,  900,  900,  900,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802854, 20,  1,40000, 0.75, 5000,  900,  900,  900,  900,  900,  900,  900,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802854, 22, 32,40000,  0.5, 5000,  900,  900,  900,  900,  900,  900,  900,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802854,   1,40000, 0, 0) /* Strength */
     , (802854,   2,2500, 0, 0) /* Endurance */
     , (802854,   3, 500, 0, 0) /* Quickness */
     , (802854,   4, 500, 0, 0) /* Coordination */
     , (802854,   5, 500, 0, 0) /* Focus */
     , (802854,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802854,   1,1200000, 0, 0,1200000) /* MaxHealth */
     , (802854,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802854,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802854,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802854,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802854, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802854, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802854, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802854, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802854, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802854, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802854, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802854, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802854, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802854, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802854, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802854, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802854, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802854, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802854, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802854, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802854, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802854, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802854, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802854, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802854, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'A portal has appeared. Use it to continue to the next round!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'NewColoBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'NewColoBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802854, 9,802730,  0, 0,  0.2, False) /* Create Elemental Prism for ContainTreasure */
     , (802854, 9,     0,  0, 0,  0.8, False) /* Create Nothing for ContainTreasure */;

