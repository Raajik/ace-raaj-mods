DELETE FROM `weenie` WHERE `class_Id` = 803051;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803051, 'Radical Dummy', 10, '2023-11-09 08:42:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803051,   1,         16) /* ItemType - Creature */
     , (803051,   2,          3) /* CreatureType - Drudge */
     , (803051,   3,         46) /* PaletteTemplate - Tan */
     , (803051,   6,         -1) /* ItemsCapacity */
     , (803051,   7,         -1) /* ContainersCapacity */
     , (803051,  16,          1) /* ItemUseable - No */
     , (803051,  25,          1) /* Level */
     , (803051,  27,          0) /* ArmorType - None */
     , (803051,  40,          2) /* CombatMode - Melee */
     , (803051,  67,          1) /* Tolerance - NoAttack */
     , (803051,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (803051,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803051, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803051, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803051, 146,          1) /* XpOverride */
     , (803051, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803051,   1, True ) /* Stuck */
     , (803051,  11, False) /* IgnoreCollisions */
     , (803051,  12, True ) /* ReportCollisions */
     , (803051,  13, False) /* Ethereal */
     , (803051,  29, True ) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803051,   1,       5) /* HeartbeatInterval */
     , (803051,   2,       0) /* HeartbeatTimestamp */
     , (803051,   3,   0.067) /* HealthRate */
     , (803051,   4,       5) /* StaminaRate */
     , (803051,   5,       1) /* ManaRate */
     , (803051,  12,       1) /* Shade */
     , (803051,  13,     3.5) /* ArmorModVsSlash */
     , (803051,  14,     3.5) /* ArmorModVsPierce */
     , (803051,  15,     3.5) /* ArmorModVsBludgeon */
     , (803051,  16,     3.5) /* ArmorModVsCold */
     , (803051,  17,     3.5) /* ArmorModVsFire */
     , (803051,  18,     3.5) /* ArmorModVsAcid */
     , (803051,  19,     3.5) /* ArmorModVsElectric */
     , (803051,  31,     0.3) /* VisualAwarenessRange */
     , (803051,  34,       1) /* PowerupTime */
     , (803051,  36,       1) /* ChargeSpeed */
     , (803051,  39,     1.2) /* DefaultScale */
     , (803051,  64,   0.006) /* ResistSlash */
     , (803051,  65,   0.006) /* ResistPierce */
     , (803051,  66,   0.006) /* ResistBludgeon */
     , (803051,  67,   0.006) /* ResistFire */
     , (803051,  68,   0.006) /* ResistCold */
     , (803051,  69,   0.006) /* ResistAcid */
     , (803051,  70,   0.006) /* ResistElectric */
     , (803051,  71,       1) /* ResistHealthBoost */
     , (803051,  72,       1) /* ResistStaminaDrain */
     , (803051,  73,       1) /* ResistStaminaBoost */
     , (803051,  74,       1) /* ResistManaDrain */
     , (803051,  75,       1) /* ResistManaBoost */
     , (803051, 104,      10) /* ObviousRadarRange */
     , (803051, 125,   0.006) /* ResistHealthDrain */
     , (803051, 166,   0.006) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803051,   1, 'Radical Dummy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803051,   1, 0x02001253) /* Setup */
     , (803051,   2, 0x0900017C) /* MotionTable */
     , (803051,   3, 0x200000BB) /* SoundTable */
     , (803051,   4, 0x30000041) /* CombatTable */
     , (803051,   6, 0x04001D4D) /* PaletteBase */
     , (803051,   7, 0x1000059A) /* ClothingBase */
     , (803051,   8, 0x060036F7) /* Icon */
     , (803051,  22, 0x340000B3) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803051,  0, 16,30000,  0.3, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803051,  1,  4,  0,    0, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803051,  2,  4,  0,    0, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803051,  3,  4,  0,    0, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803051,  4,  4,  0,    0, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803051,  5, 16,30000,  0.4, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803051,  6,  4,  0,    0, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803051,  7,  4,  0,    0, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803051,  8, 16,30000,  0.4, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (803051, 22, 32,30000,  0.3, 23000, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803051,   1,   500, 0, 0) /* Strength */
     , (803051,   2,   500, 0, 0) /* Endurance */
     , (803051,   3,   500, 0, 0) /* Quickness */
     , (803051,   4,   500, 0, 0) /* Coordination */
     , (803051,   5,   500, 0, 0) /* Focus */
     , (803051,   6,   500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803051,   1, 99999999, 0, 0,99999999) /* MaxHealth */
     , (803051,   3, 99999999, 0, 0,99999999) /* MaxStamina */
     , (803051,   5, 99999999, 0, 0,99999999) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803051, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'DummyKill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

