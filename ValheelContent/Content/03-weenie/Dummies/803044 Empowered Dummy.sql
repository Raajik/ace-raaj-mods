DELETE FROM `weenie` WHERE `class_Id` = 803044;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803044, 'Empowered Dummy', 10, '2023-11-09 08:42:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803044,   1,         16) /* ItemType - Creature */
     , (803044,   2,          3) /* CreatureType - Drudge */
     , (803044,   3,         46) /* PaletteTemplate - Tan */
     , (803044,   6,         -1) /* ItemsCapacity */
     , (803044,   7,         -1) /* ContainersCapacity */
     , (803044,  16,          1) /* ItemUseable - No */
     , (803044,  25,          1) /* Level */
     , (803044,  27,          0) /* ArmorType - None */
     , (803044,  40,          2) /* CombatMode - Melee */
     , (803044,  67,          1) /* Tolerance - NoAttack */
     , (803044,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (803044,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803044, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803044, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803044, 146,          1) /* XpOverride */
     , (803044, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803044,   1, True ) /* Stuck */
     , (803044,  11, False) /* IgnoreCollisions */
     , (803044,  12, True ) /* ReportCollisions */
     , (803044,  13, False) /* Ethereal */
     , (803044,  29, True ) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803044,   1,       5) /* HeartbeatInterval */
     , (803044,   2,       0) /* HeartbeatTimestamp */
     , (803044,   3,   0.067) /* HealthRate */
     , (803044,   4,       5) /* StaminaRate */
     , (803044,   5,       1) /* ManaRate */
     , (803044,  12,       1) /* Shade */
     , (803044,  13,     0.7) /* ArmorModVsSlash */
     , (803044,  14,     0.7) /* ArmorModVsPierce */
     , (803044,  15,     0.7) /* ArmorModVsBludgeon */
     , (803044,  16,     0.7) /* ArmorModVsCold */
     , (803044,  17,     0.7) /* ArmorModVsFire */
     , (803044,  18,     0.7) /* ArmorModVsAcid */
     , (803044,  19,     0.7) /* ArmorModVsElectric */
     , (803044,  31,     0.3) /* VisualAwarenessRange */
     , (803044,  34,       1) /* PowerupTime */
     , (803044,  36,       1) /* ChargeSpeed */
     , (803044,  39,     1.2) /* DefaultScale */
     , (803044,  64,     0.5) /* ResistSlash */
     , (803044,  65,     0.5) /* ResistPierce */
     , (803044,  66,     0.5) /* ResistBludgeon */
     , (803044,  67,     0.5) /* ResistFire */
     , (803044,  68,     0.5) /* ResistCold */
     , (803044,  69,     0.5) /* ResistAcid */
     , (803044,  70,     0.5) /* ResistElectric */
     , (803044,  71,       1) /* ResistHealthBoost */
     , (803044,  72,       1) /* ResistStaminaDrain */
     , (803044,  73,       1) /* ResistStaminaBoost */
     , (803044,  74,       1) /* ResistManaDrain */
     , (803044,  75,       1) /* ResistManaBoost */
     , (803044, 104,      10) /* ObviousRadarRange */
     , (803044, 125,     0.3) /* ResistHealthDrain */
     , (803044, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803044,   1, 'Empowered Dummy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803044,   1, 0x020005A7) /* Setup */
     , (803044,   2, 0x09000080) /* MotionTable */
     , (803044,   3, 0x2000004A) /* SoundTable */
     , (803044,   4, 0x3000001F) /* CombatTable */
     , (803044,   6, 0x04000DFC) /* PaletteBase */
     , (803044,   7, 0x10000490) /* ClothingBase */
     , (803044,   8, 0x06001918) /* Icon */
     , (803044,  22, 0x34000065) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803044,  0,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803044,  1,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803044,  2,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803044,  3,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803044,  4,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803044,  5,  4, 1000, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803044,  6,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803044,  7,  4, 1000,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803044,  8,  4, 1000, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803044,   1,   500, 0, 0) /* Strength */
     , (803044,   2,   500, 0, 0) /* Endurance */
     , (803044,   3,   500, 0, 0) /* Quickness */
     , (803044,   4,   500, 0, 0) /* Coordination */
     , (803044,   5,   500, 0, 0) /* Focus */
     , (803044,   6,   500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803044,   1, 99999999, 0, 0,99999999) /* MaxHealth */
     , (803044,   3, 99999999, 0, 0,99999999) /* MaxStamina */
     , (803044,   5, 99999999, 0, 0,99999999) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803044, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'DummyKill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

