DELETE FROM `weenie` WHERE `class_Id` = 802853;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802853, 'ColoDwayne', 10, '2023-06-30 08:59:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802853,   1,         16) /* ItemType - Creature */
     , (802853,   2,         51) /* CreatureType - Empyrean */
     , (802853,   3,         14) /* PaletteTemplate - Red */
     , (802853,   6,         -1) /* ItemsCapacity */
     , (802853,   7,         -1) /* ContainersCapacity */
     , (802853,   8,        120) /* Mass */
     , (802853,  16,          1) /* ItemUseable - No */
     , (802853,  25,        710) /* Level */
     , (802853,  27,          0) /* ArmorType - None */
     , (802853,  67,         64) /* Tolerance - Retaliate */
     , (802853,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802853, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802853, 146,  999999999) /* XpOverride */
     , (802853, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802853,   1, True ) /* Stuck */
     , (802853,  11, False) /* IgnoreCollisions */
     , (802853,  12, True ) /* ReportCollisions */
     , (802853,  13, False) /* Ethereal */
     , (802853,  14, True ) /* GravityStatus */
     , (802853,  19, True ) /* Attackable */
     , (802853,  50, False) /* NeverFailCasting */
     , (802853,  65, True ) /* IgnoreMagicResist */
     , (802853,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802853,   1,       2) /* HeartbeatInterval */
     , (802853,   2,       0) /* HeartbeatTimestamp */
     , (802853,   3,       2) /* HealthRate */
     , (802853,   4,       5) /* StaminaRate */
     , (802853,   5,       1) /* ManaRate */
     , (802853,  13,       1) /* ArmorModVsSlash */
     , (802853,  14,       1) /* ArmorModVsPierce */
     , (802853,  15,       1) /* ArmorModVsBludgeon */
     , (802853,  16,     1.3) /* ArmorModVsCold */
     , (802853,  17,       1) /* ArmorModVsFire */
     , (802853,  18,       1) /* ArmorModVsAcid */
     , (802853,  19,     1.3) /* ArmorModVsElectric */
     , (802853,  31,      13) /* VisualAwarenessRange */
     , (802853,  39,       2) /* DefaultScale */
     , (802853,  64,    0.01) /* ResistSlash */
     , (802853,  65,    0.01) /* ResistPierce */
     , (802853,  66,    0.01) /* ResistBludgeon */
     , (802853,  67,    0.01) /* ResistFire */
     , (802853,  68,    0.03) /* ResistCold */
     , (802853,  69,    0.01) /* ResistAcid */
     , (802853,  70,    0.03) /* ResistElectric */
     , (802853,  71,       1) /* ResistHealthBoost */
     , (802853,  72,       1) /* ResistStaminaDrain */
     , (802853,  73,       1) /* ResistStaminaBoost */
     , (802853,  74,       1) /* ResistManaDrain */
     , (802853,  75,       1) /* ResistManaBoost */
     , (802853,  76,     0.5) /* Translucency */
     , (802853, 104,      10) /* ObviousRadarRange */
     , (802853, 117,     0.5) /* FocusedProbability */
     , (802853, 125,       1) /* ResistHealthDrain */
     , (802853, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802853,   1, 'Dwayne') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802853,   1,   33556893) /* Setup */
     , (802853,   2,  150995105) /* MotionTable */
     , (802853,   3,  536871017) /* SoundTable */
     , (802853,   4,  805306414) /* CombatTable */
     , (802853,   6,   67113068) /* PaletteBase */
     , (802853,   7,  268436089) /* ClothingBase */
     , (802853,   8,  100671204) /* Icon */
     , (802853,  19,         84) /* ActivationAnimation */
     , (802853,  22,  872415369) /* PhysicsEffectTable */
     , (802853,  30,         84) /* PhysicsScript - BreatheFlame */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802853,  0,  25, 7000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802853,  1,  25, 7000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Chest */
     , (802853,  2,  25, 7000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Abdomen */
     , (802853,  5,  25, 7000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Hand */
     , (802853, 22,  25, 7000, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802853,   1,2500, 0, 0) /* Strength */
     , (802853,   2,2500, 0, 0) /* Endurance */
     , (802853,   3, 500, 0, 0) /* Quickness */
     , (802853,   4, 500, 0, 0) /* Coordination */
     , (802853,   5, 500, 0, 0) /* Focus */
     , (802853,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802853,   1,900000, 0, 0,900000) /* MaxHealth */
     , (802853,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802853,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802853,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802853,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802853, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802853, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802853, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802853, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802853, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802853, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802853, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802853, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802853, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802853, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802853, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802853, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802853, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802853, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802853, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802853, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802853, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802853, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802853, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802853, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802853, 2,802728,  1,93,    0, False) /* Create Gaerlan's Drain Ring for Wield */
     , (802853, 9,802730,  0,0,     0.1, False) /* Create Elemental Prism for ContainTreasure */
     , (802853, 9,     0,  0,0,     0.9, False) /* Create Nothing for ContainTreasure */;

