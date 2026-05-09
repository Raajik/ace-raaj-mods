DELETE FROM `weenie` WHERE `class_Id` = 803046;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803046, 'Arramoran Dummy', 10, '2023-11-09 08:42:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803046,   1,         16) /* ItemType - Creature */
     , (803046,   2,          3) /* CreatureType - Drudge */
     , (803046,   3,         46) /* PaletteTemplate - Tan */
     , (803046,   6,         -1) /* ItemsCapacity */
     , (803046,   7,         -1) /* ContainersCapacity */
     , (803046,  16,          1) /* ItemUseable - No */
     , (803046,  25,          1) /* Level */
     , (803046,  27,          0) /* ArmorType - None */
     , (803046,  40,          2) /* CombatMode - Melee */
     , (803046,  67,          1) /* Tolerance - NoAttack */
     , (803046,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (803046,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803046, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803046, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803046, 146,          1) /* XpOverride */
     , (803046, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803046,   1, True ) /* Stuck */
     , (803046,  11, False) /* IgnoreCollisions */
     , (803046,  12, True ) /* ReportCollisions */
     , (803046,  13, False) /* Ethereal */
     , (803046,  29, True ) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803046,   1,       5) /* HeartbeatInterval */
     , (803046,   2,       0) /* HeartbeatTimestamp */
     , (803046,   3,   0.067) /* HealthRate */
     , (803046,   4,       5) /* StaminaRate */
     , (803046,   5,       1) /* ManaRate */
     , (803046,  12,       1) /* Shade */
     , (803046,  13,     1.6) /* ArmorModVsSlash */
     , (803046,  14,     1.6) /* ArmorModVsPierce */
     , (803046,  15,     1.6) /* ArmorModVsBludgeon */
     , (803046,  16,     1.6) /* ArmorModVsCold */
     , (803046,  17,     1.6) /* ArmorModVsFire */
     , (803046,  18,     1.6) /* ArmorModVsAcid */
     , (803046,  19,     1.6) /* ArmorModVsElectric */
     , (803046,  31,     0.3) /* VisualAwarenessRange */
     , (803046,  34,       1) /* PowerupTime */
     , (803046,  36,       1) /* ChargeSpeed */
     , (803046,  39,     1.2) /* DefaultScale */
     , (803046,  64,     0.1) /* ResistSlash */
     , (803046,  65,     0.1) /* ResistPierce */
     , (803046,  66,     0.1) /* ResistBludgeon */
     , (803046,  67,     0.1) /* ResistFire */
     , (803046,  68,     0.1) /* ResistCold */
     , (803046,  69,     0.1) /* ResistAcid */
     , (803046,  70,     0.1) /* ResistElectric */
     , (803046,  71,       1) /* ResistHealthBoost */
     , (803046,  72,       1) /* ResistStaminaDrain */
     , (803046,  73,       1) /* ResistStaminaBoost */
     , (803046,  74,       1) /* ResistManaDrain */
     , (803046,  75,       1) /* ResistManaBoost */
     , (803046, 104,      10) /* ObviousRadarRange */
     , (803046, 125,    0.03) /* ResistHealthDrain */
     , (803046, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803046,   1, 'Arramoran Dummy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803046,   1, 0x020007D7) /* Setup */
     , (803046,   2, 0x09000081) /* MotionTable */
     , (803046,   3, 0x20000015) /* SoundTable */
     , (803046,   4, 0x30000008) /* CombatTable */
     , (803046,   8, 0x06001224) /* Icon */
     , (803046,  22, 0x3400005A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803046,  0,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803046,  1,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803046,  2,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803046,  3,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803046,  4,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803046,  5,  4,2500, 0.75,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803046,  6,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803046,  7,  4,  0,    0,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803046,  8,  4,2500, 0.75,  2300,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803046,   1,   500, 0, 0) /* Strength */
     , (803046,   2,   500, 0, 0) /* Endurance */
     , (803046,   3,   500, 0, 0) /* Quickness */
     , (803046,   4,   500, 0, 0) /* Coordination */
     , (803046,   5,   500, 0, 0) /* Focus */
     , (803046,   6,   500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803046,   1, 99999999, 0, 0,99999999) /* MaxHealth */
     , (803046,   3, 99999999, 0, 0,99999999) /* MaxStamina */
     , (803046,   5, 99999999, 0, 0,99999999) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803046, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'DummyKill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

