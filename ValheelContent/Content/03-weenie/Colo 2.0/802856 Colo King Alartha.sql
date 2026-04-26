DELETE FROM `weenie` WHERE `class_Id` = 802856;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802856, 'ColoKingAlartha', 10, '2023-06-30 08:59:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802856,   1,         16) /* ItemType - Creature */
     , (802856,   2,         51) /* CreatureType - Empyrean */
     , (802856,   3,         14) /* PaletteTemplate - Red */
     , (802856,   6,         -1) /* ItemsCapacity */
     , (802856,   7,         -1) /* ContainersCapacity */
     , (802856,   8,        120) /* Mass */
     , (802856,  16,          1) /* ItemUseable - No */
     , (802856,  25,        710) /* Level */
     , (802856,  27,          0) /* ArmorType - None */
     , (802856,  67,         64) /* Tolerance - Retaliate */
     , (802856,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802856, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802856, 146,  999999999) /* XpOverride */
     , (802856, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802856,   1, True ) /* Stuck */
     , (802856,  11, False) /* IgnoreCollisions */
     , (802856,  12, True ) /* ReportCollisions */
     , (802856,  13, False) /* Ethereal */
     , (802856,  14, True ) /* GravityStatus */
     , (802856,  19, True ) /* Attackable */
     , (802856,  50, False) /* NeverFailCasting */
     , (802856,  65, True ) /* IgnoreMagicResist */
     , (802856,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802856,   1,       2) /* HeartbeatInterval */
     , (802856,   2,       0) /* HeartbeatTimestamp */
     , (802856,   3,       2) /* HealthRate */
     , (802856,   4,       5) /* StaminaRate */
     , (802856,   5,       1) /* ManaRate */
     , (802856,  13,       1) /* ArmorModVsSlash */
     , (802856,  14,       1) /* ArmorModVsPierce */
     , (802856,  15,       1) /* ArmorModVsBludgeon */
     , (802856,  16,     1.3) /* ArmorModVsCold */
     , (802856,  17,       1) /* ArmorModVsFire */
     , (802856,  18,       1) /* ArmorModVsAcid */
     , (802856,  19,     1.3) /* ArmorModVsElectric */
     , (802856,  31,      13) /* VisualAwarenessRange */
     , (802856,  39,       2) /* DefaultScale */
     , (802856,  64,    0.01) /* ResistSlash */
     , (802856,  65,    0.01) /* ResistPierce */
     , (802856,  66,    0.01) /* ResistBludgeon */
     , (802856,  67,    0.01) /* ResistFire */
     , (802856,  68,    0.03) /* ResistCold */
     , (802856,  69,    0.01) /* ResistAcid */
     , (802856,  70,    0.03) /* ResistElectric */
     , (802856,  71,       1) /* ResistHealthBoost */
     , (802856,  72,       1) /* ResistStaminaDrain */
     , (802856,  73,       1) /* ResistStaminaBoost */
     , (802856,  74,       1) /* ResistManaDrain */
     , (802856,  75,       1) /* ResistManaBoost */
     , (802856,  76,     0.5) /* Translucency */
     , (802856, 104,      10) /* ObviousRadarRange */
     , (802856, 117,     0.5) /* FocusedProbability */
     , (802856, 125,       1) /* ResistHealthDrain */
     , (802856, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802856,   1, 'King Alartha') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802856,   1,   33560333) /* Setup */
     , (802856,   2,  150995411) /* MotionTable */
     , (802856,   3,  536871037) /* SoundTable */
     , (802856,   4,  805306419) /* CombatTable */
     , (802856,   6,   67113288) /* PaletteBase */
     , (802856,   7,  268437210) /* ClothingBase */
     , (802856,   8,  100667623) /* Icon */
     , (802856,  22,  872415379) /* PhysicsEffectTable */
     , (802856,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802856,  0,  2, 10000, 0.75, 3000,  900,  900, 2900,  900,  900,  900,  900,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802856, 16,  4, 10000, 0.75, 3000,  900,  900, 2900,  900,  900,  900,  900,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802856, 18,  1, 10000,  0.5, 3000,  900,  900, 2900,  900,  900,  900,  900,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802856, 19,  1, 10000, 0.75, 3000,  900,  900, 2900,  900,  900,  900,  900,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802856, 20,  1, 10000, 0.75, 3000,  900,  900, 2900,  900,  900,  900,  900,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802856, 22, 32, 10000,  0.5, 3000,  900,  900, 2900,  900,  900,  900,  900,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802856,   1,2500, 0, 0) /* Strength */
     , (802856,   2,2500, 0, 0) /* Endurance */
     , (802856,   3, 500, 0, 0) /* Quickness */
     , (802856,   4, 500, 0, 0) /* Coordination */
     , (802856,   5, 500, 0, 0) /* Focus */
     , (802856,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802856,   1,900000, 0, 0,900000) /* MaxHealth */
     , (802856,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802856,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802856,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802856,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802856, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802856, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802856, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802856, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802856, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802856, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802856, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802856, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802856, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802856, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802856, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802856, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802856, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802856, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802856, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802856, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802856, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802856, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802856, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802856, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802856, 2,802728,  1,93,    0, False) /* Create Gaerlan's Drain Ring for Wield */
     , (802856, 9,802730,  0,0,     0.1, False) /* Create Elemental Prism for ContainTreasure */
     , (802856, 9,     0,  0,0,     0.9, False) /* Create Nothing for ContainTreasure */;

