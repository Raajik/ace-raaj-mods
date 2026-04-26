DELETE FROM `weenie` WHERE `class_Id` = 802852;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802852, 'ColoMegaVirindi', 10, '2023-06-30 08:59:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802852,   1,         16) /* ItemType - Creature */
     , (802852,   2,         51) /* CreatureType - Empyrean */
     , (802852,   3,         14) /* PaletteTemplate - Red */
     , (802852,   6,         -1) /* ItemsCapacity */
     , (802852,   7,         -1) /* ContainersCapacity */
     , (802852,   8,        120) /* Mass */
     , (802852,  16,          1) /* ItemUseable - No */
     , (802852,  25,        710) /* Level */
     , (802852,  27,          0) /* ArmorType - None */
     , (802852,  67,         64) /* Tolerance - Retaliate */
     , (802852,  68,       0x80) /* TargetingTactic - HasShield */
     , (802852,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802852, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802852, 146,  999999999) /* XpOverride */
     , (802852, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802852,   1, True ) /* Stuck */
     , (802852,  11, False) /* IgnoreCollisions */
     , (802852,  12, True ) /* ReportCollisions */
     , (802852,  13, False) /* Ethereal */
     , (802852,  14, True ) /* GravityStatus */
     , (802852,  19, True ) /* Attackable */
     , (802852,  50, False) /* NeverFailCasting */
     , (802852,  65, True ) /* IgnoreMagicResist */
     , (802852,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802852,   1,       2) /* HeartbeatInterval */
     , (802852,   2,       0) /* HeartbeatTimestamp */
     , (802852,   3,       2) /* HealthRate */
     , (802852,   4,       5) /* StaminaRate */
     , (802852,   5,       1) /* ManaRate */
     , (802852,  13,       1) /* ArmorModVsSlash */
     , (802852,  14,       1) /* ArmorModVsPierce */
     , (802852,  15,       1) /* ArmorModVsBludgeon */
     , (802852,  16,     1.3) /* ArmorModVsCold */
     , (802852,  17,       1) /* ArmorModVsFire */
     , (802852,  18,       1) /* ArmorModVsAcid */
     , (802852,  19,     1.3) /* ArmorModVsElectric */
     , (802852,  31,      13) /* VisualAwarenessRange */
     , (802852,  39,       2) /* DefaultScale */
     , (802852,  64,    0.01) /* ResistSlash */
     , (802852,  65,    0.01) /* ResistPierce */
     , (802852,  66,    0.01) /* ResistBludgeon */
     , (802852,  67,    0.01) /* ResistFire */
     , (802852,  68,    0.03) /* ResistCold */
     , (802852,  69,    0.01) /* ResistAcid */
     , (802852,  70,    0.03) /* ResistElectric */
     , (802852,  71,       1) /* ResistHealthBoost */
     , (802852,  72,       1) /* ResistStaminaDrain */
     , (802852,  73,       1) /* ResistStaminaBoost */
     , (802852,  74,       1) /* ResistManaDrain */
     , (802852,  75,       1) /* ResistManaBoost */
     , (802852,  76,     0.5) /* Translucency */
     , (802852, 104,      10) /* ObviousRadarRange */
     , (802852, 117,     0.5) /* FocusedProbability */
     , (802852, 125,       1) /* ResistHealthDrain */
     , (802852, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802852,   1, 'Mega Virindi') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802852,   1,   33561227) /* Setup */
     , (802852,   2,  150995493) /* MotionTable */
     , (802852,   3,  536870930) /* SoundTable */
     , (802852,   4,  805306381) /* CombatTable */
     , (802852,   6,   67111346) /* PaletteBase */
     , (802852,   7,  268437423) /* ClothingBase */
     , (802852,   8,  100667943) /* Icon */
     , (802852,  22,  872415273) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802852,  0,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802852,  1,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802852,  2,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.23,  0.1,    0, 0.23,  0.2,    0, 0.17, 0.45,    0, 0.17, 0.45) /* Abdomen */
     , (802852,  3,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.04,  0.2, 0.23, 0.04,  0.1, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802852,  4,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,  0.3,    0,  0.3,  0.4,    0,  0.3,  0.1,    0,  0.3,  0.1) /* LowerArm */
     , (802852,  5,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,  0.3,    0,  0.2,  0.2,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802852, 17,  1, 6000, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.1,    0,    0,  0.1,    0, 0.13, 0.45,    0, 0.13, 0.45) /* Tail */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802852,   1,2500, 0, 0) /* Strength */
     , (802852,   2,2500, 0, 0) /* Endurance */
     , (802852,   3, 500, 0, 0) /* Quickness */
     , (802852,   4, 500, 0, 0) /* Coordination */
     , (802852,   5, 500, 0, 0) /* Focus */
     , (802852,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802852,   1,900000, 0, 0,900000) /* MaxHealth */
     , (802852,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802852,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802852,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802852,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802852, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802852, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802852, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802852, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802852, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802852, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802852, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802852, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802852, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802852, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802852, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802852, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802852, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802852, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802852, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802852, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802852, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802852, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802852, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802852, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802852, 2,802728,  1,93,    0, False) /* Create Gaerlan's Drain Ring for Wield */
     , (802852, 9,802730,  0,0,     0.1, False) /* Create Elemental Prism for ContainTreasure */
     , (802852, 9,     0,  0,0,     0.9, False) /* Create Nothing for ContainTreasure */;

