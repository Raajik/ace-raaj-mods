DELETE FROM `weenie` WHERE `class_Id` = 802076;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802076, 'PapaTusker', 10, '2023-02-22 09:52:13') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802076,   1,         16) /* ItemType - Creature */
     , (802076,   2,          8) /* CreatureType - Tusker */
     , (802076,   3,         21) /* PaletteTemplate - Gold */
     , (802076,   6,        255) /* ItemsCapacity */
     , (802076,   7,        255) /* ContainersCapacity */
     , (802076,  16,          1) /* ItemUseable - No */
     , (802076,  25,        150) /* Level */
     , (802076,  27,          0) /* ArmorType - None */
     , (802076,  40,          2) /* CombatMode - Melee */
     , (802076,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802076,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802076, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802076, 140,          1) /* AiOptions - CanOpenDoors */
     , (802076, 146,      50000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802076,   1, True ) /* Stuck */
     , (802076,  11, False) /* IgnoreCollisions */
     , (802076,  12, True ) /* ReportCollisions */
     , (802076,  13, False) /* Ethereal */
     , (802076,  14, True ) /* GravityStatus */
     , (802076,  19, True ) /* Attackable */
     , (802076,  65, True ) /* IgnoreMagicResist */
     , (802076, 101, True ) /* CanGenerateRare */
     , (802076, 102, True ) /* CorpseGeneratedRare */
     , (802076, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802076,   1,       5) /* HeartbeatInterval */
     , (802076,   2,       0) /* HeartbeatTimestamp */
     , (802076,   3,     0.4) /* HealthRate */
     , (802076,   4,     2.5) /* StaminaRate */
     , (802076,   5,       1) /* ManaRate */
     , (802076,  12,     0.1) /* Shade */
     , (802076,  13,     0.8) /* ArmorModVsSlash */
     , (802076,  14,     0.8) /* ArmorModVsPierce */
     , (802076,  15,     0.8) /* ArmorModVsBludgeon */
     , (802076,  16,     0.8) /* ArmorModVsCold */
     , (802076,  17,     0.3) /* ArmorModVsFire */
     , (802076,  18,     0.8) /* ArmorModVsAcid */
     , (802076,  19,     0.8) /* ArmorModVsElectric */
     , (802076,  31,      20) /* VisualAwarenessRange */
     , (802076,  34,     0.9) /* PowerupTime */
     , (802076,  36,       1) /* ChargeSpeed */
     , (802076,  39,     1.6) /* DefaultScale */
     , (802076,  64,     0.4) /* ResistSlash */
     , (802076,  65,     0.4) /* ResistPierce */
     , (802076,  66,     0.4) /* ResistBludgeon */
     , (802076,  67,     0.9) /* ResistFire */
     , (802076,  68,     0.6) /* ResistCold */
     , (802076,  69,     0.7) /* ResistAcid */
     , (802076,  70,     0.4) /* ResistElectric */
     , (802076,  71,       1) /* ResistHealthBoost */
     , (802076,  72,       1) /* ResistStaminaDrain */
     , (802076,  73,       1) /* ResistStaminaBoost */
     , (802076,  74,       1) /* ResistManaDrain */
     , (802076,  75,       1) /* ResistManaBoost */
     , (802076,  80,     3.2) /* AiUseMagicDelay */
     , (802076, 104,      10) /* ObviousRadarRange */
     , (802076, 122,       5) /* AiAcquireHealth */
     , (802076, 125,       1) /* ResistHealthDrain */
     , (802076, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802076,   1, 'Papa Tusker') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802076,   1, 0x02000964) /* Setup */
     , (802076,   2, 0x0900000C) /* MotionTable */
     , (802076,   3, 0x20000011) /* SoundTable */
     , (802076,   4, 0x3000000B) /* CombatTable */
     , (802076,   6, 0x0400102F) /* PaletteBase */
     , (802076,   7, 0x1000025B) /* ClothingBase */
     , (802076,   8, 0x06001033) /* Icon */
     , (802076,  22, 0x34000027) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802076,  0,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802076,  1,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802076,  2,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802076,  3,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802076,  4,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802076,  5,  4, 40, 0.25,  150,   75,   75,   75,   75,   75,   75,   75,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802076,  6,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802076,  7,  4,  0,    0,  150,   75,   75,   75,   75,   75,   75,   75,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802076,  8,  4, 40, 0.25,  150,   75,   75,   75,   75,   75,   75,   75,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802076,   1, 200, 0, 0) /* Strength */
     , (802076,   2, 230, 0, 0) /* Endurance */
     , (802076,   3, 280, 0, 0) /* Quickness */
     , (802076,   4, 230, 0, 0) /* Coordination */
     , (802076,   5,  70, 0, 0) /* Focus */
     , (802076,   6,  50, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802076,   1,  1800, 0, 0, 1800) /* MaxHealth */
     , (802076,   3,  1800, 0, 0, 1800) /* MaxStamina */
     , (802076,   5,  1800, 0, 0, 1800) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802076,  6, 0, 3, 0, 180, 0, 0) /* MeleeDefense        Specialized */
     , (802076,  7, 0, 3, 0, 125, 0, 0) /* MissileDefense      Specialized */
     , (802076, 15, 0, 3, 0, 115, 0, 0) /* MagicDefense        Specialized */
     , (802076, 20, 0, 3, 0,  25, 0, 0) /* Deception           Specialized */
     , (802076, 22, 0, 3, 0, 120, 0, 0) /* Jump                Specialized */
     , (802076, 24, 0, 3, 0, 100, 0, 0) /* Run                 Specialized */
     , (802076, 44, 0, 3, 0, 105, 0, 0) /* HeavyWeapons        Specialized */
     , (802076, 45, 0, 3, 0, 105, 0, 0) /* LightWeapons        Specialized */
     , (802076, 46, 0, 3, 0, 105, 0, 0) /* FinesseWeapons      Specialized */
     , (802076, 52, 0, 3, 0, 155, 0, 0) /* DirtyFighting       Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802076, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'Papa Tusker has been slain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */
     , (802076, 9,802078,  1, 0,    1, False) /* Papa Tusker Tusk */;

