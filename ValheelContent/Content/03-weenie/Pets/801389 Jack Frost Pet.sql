DELETE FROM `weenie` WHERE `class_Id` = 801389;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801389, 'Jack Frost', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801389,   1,         16) /* ItemType - Creature */
     , (801389,   2,         54) /* CreatureType - Marionette */
     , (801389,   3,         14) /* PaletteTemplate - White */
     , (801389,   6,         -1) /* ItemsCapacity */
     , (801389,   7,         -1) /* ContainersCapacity */
     , (801389,  16,          1) /* ItemUseable - No */
     , (801389,  25,        220) /* Level */
     , (801389,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801389, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801389, 140,          1) /* AiOptions - CanOpenDoors */
	 , (801389, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801389,   1, True ) /* Stuck */
     , (801389,  11, False) /* IgnoreCollisions */
     , (801389,  12, True ) /* ReportCollisions */
     , (801389,  13, False) /* Ethereal */
     , (801389, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801389,   1,       5) /* HeartbeatInterval */
     , (801389,   2,       0) /* HeartbeatTimestamp */
     , (801389,   3,    0.45) /* HealthRate */
     , (801389,   4,     0.5) /* StaminaRate */
     , (801389,   5,       2) /* ManaRate */
     , (801389,  12,     0.5) /* Shade */
     , (801389,  13,       1) /* ArmorModVsSlash */
     , (801389,  14,       1) /* ArmorModVsPierce */
     , (801389,  15,       1) /* ArmorModVsBludgeon */
     , (801389,  16,       1) /* ArmorModVsCold */
     , (801389,  17,    0.38) /* ArmorModVsFire */
     , (801389,  18,       1) /* ArmorModVsAcid */
     , (801389,  19,       1) /* ArmorModVsElectric */
     , (801389,  31,      18) /* VisualAwarenessRange */
     , (801389,  34,     1.1) /* PowerupTime */
     , (801389,  36,       2) /* ChargeSpeed */
	 , (801389,  39,       1) /* DefaultScale */
     , (801389,  64,       1) /* ResistSlash */
     , (801389,  65,       1) /* ResistPierce */
     , (801389,  66,       1) /* ResistBludgeon */
     , (801389,  67,    0.38) /* ResistFire */
     , (801389,  68,       1) /* ResistCold */
     , (801389,  69,       1) /* ResistAcid */
     , (801389,  70,       1) /* ResistElectric */
     , (801389,  71,       1) /* ResistHealthBoost */
     , (801389,  72,       1) /* ResistStaminaDrain */
     , (801389,  73,       1) /* ResistStaminaBoost */
     , (801389,  74,       1) /* ResistManaDrain */
     , (801389,  75,       1) /* ResistManaBoost */
     , (801389,  80,       3) /* AiUseMagicDelay */
     , (801389, 104,      10) /* ObviousRadarRange */
     , (801389, 122,       2) /* AiAcquireHealth */
     , (801389, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801389,   1, 'Jack Frost') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801389,   1,   33556221) /* Setup */
     , (801389,   2, 0x09000091) /* MotionTable */
     , (801389,   3, 0x20000058) /* SoundTable */
     , (801389,   4, 0x30000005) /* CombatTable */
     , (801389,   8, 0x060016C5) /* Icon */
     , (801389,  22, 0x34000072) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801389,   1, 1000, 0, 0) /* Strength */
     , (801389,   2, 800, 0, 0) /* Endurance */
     , (801389,   3, 800, 0, 0) /* Quickness */
     , (801389,   4, 800, 0, 0) /* Coordination */
     , (801389,   5, 800, 0, 0) /* Focus */
     , (801389,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801389,   1,  50000, 0, 0, 52500) /* MaxHealth */
     , (801389,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (801389,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801389,  6, 0, 3, 0, 360, 0, 0) /* MeleeDefense        Specialized */
     , (801389,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (801389, 15, 0, 3, 0, 315, 0, 0) /* MagicDefense        Specialized */
     , (801389, 20, 0, 2, 0, 200, 0, 0) /* Deception           Trained */
     , (801389, 22, 0, 2, 0, 300, 0, 0) /* Jump                Trained */
     , (801389, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (801389, 45, 0, 3, 0, 500, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801389,  0,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801389,  1,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801389,  2,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801389,  3,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801389,  4,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801389,  5,  4, 300, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801389,  6,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801389,  7,  4,  0,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801389,  8,  4, 300, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801389,  94)
     , (801389, 414);
