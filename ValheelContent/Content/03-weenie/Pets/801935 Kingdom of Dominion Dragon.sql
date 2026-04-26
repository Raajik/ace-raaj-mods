DELETE FROM `weenie` WHERE `class_Id` = 801935;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801935, 'Kingdom of Dominion Dragon', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801935,   1,         16) /* ItemType - Creature */
     , (801935,   2,         92) /* CreatureType - Dragon */
     , (801935,   3,         88) /* PaletteTemplate - White */
     , (801935,   6,         -1) /* ItemsCapacity */
     , (801935,   7,         -1) /* ContainersCapacity */
     , (801935,  16,          1) /* ItemUseable - No */
     , (801935,  25,        600) /* Level */
     , (801935,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801935, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801935, 140,          1) /* AiOptions - CanOpenDoors */
	 , (801935, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801935,   1, True ) /* Stuck */
     , (801935,  11, False) /* IgnoreCollisions */
     , (801935,  12, True ) /* ReportCollisions */
     , (801935,  13, True) /* Ethereal */
     , (801935, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801935,   1,       5) /* HeartbeatInterval */
     , (801935,   2,       0) /* HeartbeatTimestamp */
     , (801935,   3,    0.45) /* HealthRate */
     , (801935,   4,     0.5) /* StaminaRate */
     , (801935,   5,       2) /* ManaRate */
     , (801935,  12,     0.5) /* Shade */
     , (801935,  13,       22) /* ArmorModVsSlash */
     , (801935,  14,       22) /* ArmorModVsPierce */
     , (801935,  15,       22) /* ArmorModVsBludgeon */
     , (801935,  16,       22) /* ArmorModVsCold */
     , (801935,  17,       22) /* ArmorModVsFire */
     , (801935,  18,       22) /* ArmorModVsAcid */
     , (801935,  19,       22) /* ArmorModVsElectric */
     , (801935,  31,      18) /* VisualAwarenessRange */
     , (801935,  34,     1.1) /* PowerupTime */
     , (801935,  36,       2) /* ChargeSpeed */
	 , (801935,  39,     1.5) /* DefaultScale */
     , (801935,  64,       2) /* ResistSlash */
     , (801935,  65,       2) /* ResistPierce */
     , (801935,  66,       2) /* ResistBludgeon */
     , (801935,  67,       2) /* ResistFire */
     , (801935,  68,       2) /* ResistCold */
     , (801935,  69,       2) /* ResistAcid */
     , (801935,  70,       2) /* ResistElectric */
     , (801935,  71,       2) /* ResistHealthBoost */
     , (801935,  72,       2) /* ResistStaminaDrain */
     , (801935,  73,       1) /* ResistStaminaBoost */
     , (801935,  74,       1) /* ResistManaDrain */
     , (801935,  75,       1) /* ResistManaBoost */
     , (801935,  80,       3) /* AiUseMagicDelay */
     , (801935, 104,      10) /* ObviousRadarRange */
     , (801935, 122,       2) /* AiAcquireHealth */
     , (801935, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801935,   1, 'Kingdom of Dominion Dragon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801935,   1, 0x0200101A) /* Setup */
     , (801935,   2, 0x0900013F) /* MotionTable */
     , (801935,   3, 0x200000A8) /* SoundTable */
     , (801935,   4, 0x3000003A) /* CombatTable */
     , (801935,   6, 0x040016E8) /* PaletteBase */
     , (801935,   7, 0x100004FD) /* ClothingBase */
     , (801935,   8, 0x0600304D) /* Icon */
     , (801935,  19, 0x00000055) /* ActivationAnimation */
     , (801935,  22, 0x340000A9) /* PhysicsEffectTable */
     , (801935,  30,         85) /* PhysicsScript - BreatheFrost */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801935,   1, 2000, 0, 0) /* Strength */
     , (801935,   2, 800, 0, 0) /* Endurance */
     , (801935,   3, 800, 0, 0) /* Quickness */
     , (801935,   4, 800, 0, 0) /* Coordination */
     , (801935,   5, 800, 0, 0) /* Focus */
     , (801935,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801935,   1,  50000, 0, 0, 52500) /* MaxHealth */
     , (801935,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (801935,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801935,  6, 0, 3, 0, 400, 0, 639.738254437219) /* MeleeDefense        Specialized */
     , (801935,  7, 0, 3, 0, 400, 0, 639.738254437219) /* MissileDefense      Specialized */
     , (801935, 15, 0, 3, 0, 400, 0, 639.738254437219) /* MagicDefense        Specialized */
     , (801935, 20, 0, 2, 0, 400, 0, 639.738254437219) /* Deception           Trained */
     , (801935, 22, 0, 2, 0, 400, 0, 639.738254437219) /* Jump                Trained */
     , (801935, 24, 0, 2, 0, 400, 0, 639.738254437219) /* Run                 Trained */
     , (801935, 45, 0, 3, 0, 800, 0, 639.738254437219) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801935,  0,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801935,  1,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801935,  2,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801935,  3,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801935,  4,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801935,  5,  8,  800, 0.75,  300,  270,  300,  300,  600,  270,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801935,  6,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801935,  7,  8,  800,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801935,  8,  8,  800, 0.75,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801935,  94)
     , (801935, 414);
