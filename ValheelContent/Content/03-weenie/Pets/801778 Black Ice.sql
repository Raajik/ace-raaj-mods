DELETE FROM `weenie` WHERE `class_Id` = 801778;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801778, 'Black Ice', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801778,   1,         16) /* ItemType - Creature */
     , (801778,   2,         22) /* CreatureType - Shadow */
     , (801778,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (801778,   6,         -1) /* ItemsCapacity */
     , (801778,   7,         -1) /* ContainersCapacity */
     , (801778,  16,          1) /* ItemUseable - No */
     , (801778,  25,        500) /* Level */
     , (801778,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801778, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801778, 140,          1) /* AiOptions - CanOpenDoors */
     , (801778, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801778,   1, True ) /* Stuck */
     , (801778,  11, False) /* IgnoreCollisions */
     , (801778,  12, True ) /* ReportCollisions */
     , (801778,  13, False) /* Ethereal */
     , (801778, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801778,   1,       5) /* HeartbeatInterval */
     , (801778,   2,       0) /* HeartbeatTimestamp */
     , (801778,   3,    0.45) /* HealthRate */
     , (801778,   4,     0.5) /* StaminaRate */
     , (801778,   5,       2) /* ManaRate */
     , (801778,  12,     0.5) /* Shade */
     , (801778,  13,       1) /* ArmorModVsSlash */
     , (801778,  14,       1) /* ArmorModVsPierce */
     , (801778,  15,       1) /* ArmorModVsBludgeon */
     , (801778,  16,       1) /* ArmorModVsCold */
     , (801778,  17,    0.38) /* ArmorModVsFire */
     , (801778,  18,       1) /* ArmorModVsAcid */
     , (801778,  19,       1) /* ArmorModVsElectric */
     , (801778,  31,      18) /* VisualAwarenessRange */
     , (801778,  34,     1.1) /* PowerupTime */
     , (801778,  36,       2) /* ChargeSpeed */
     , (801778,  39,     1.5) /* DefaultScale */
     , (801778,  64,       1) /* ResistSlash */
     , (801778,  65,       1) /* ResistPierce */
     , (801778,  66,       1) /* ResistBludgeon */
     , (801778,  67,    0.38) /* ResistFire */
     , (801778,  68,       1) /* ResistCold */
     , (801778,  69,       1) /* ResistAcid */
     , (801778,  70,       1) /* ResistElectric */
     , (801778,  71,       1) /* ResistHealthBoost */
     , (801778,  72,       1) /* ResistStaminaDrain */
     , (801778,  73,       1) /* ResistStaminaBoost */
     , (801778,  74,       1) /* ResistManaDrain */
     , (801778,  75,       1) /* ResistManaBoost */
     , (801778,  80,       3) /* AiUseMagicDelay */
     , (801778, 104,      10) /* ObviousRadarRange */
     , (801778, 122,       2) /* AiAcquireHealth */
     , (801778, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801778,   1, 'Black Ice') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801778,   1,   33559682) /* Setup */
     , (801778,   2,  150994945) /* MotionTable */
     , (801778,   3,  536871002) /* SoundTable */
     , (801778,   4,  805306368) /* CombatTable */
     , (801778,   6,   67116522) /* PaletteBase */
     , (801778,   7,  268437044) /* ClothingBase */
     , (801778,   8,  100672514) /* Icon */
     , (801778,  22,  872415349) /* PhysicsEffectTable */
     , (801778,  30,         85) /* PhysicsScript - BreatheFrost */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801778,   1, 1500, 0, 0) /* Strength */
     , (801778,   2, 800, 0, 0) /* Endurance */
     , (801778,   3, 800, 0, 0) /* Quickness */
     , (801778,   4, 800, 0, 0) /* Coordination */
     , (801778,   5, 800, 0, 0) /* Focus */
     , (801778,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801778,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (801778,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (801778,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801778,  6, 0, 3, 0, 300, 0, 639.738254437219) /* MeleeDefense        Specialized */
     , (801778,  7, 0, 3, 0, 300, 0, 639.738254437219) /* MissileDefense      Specialized */
     , (801778, 15, 0, 3, 0, 300, 0, 639.738254437219) /* MagicDefense        Specialized */
     , (801778, 20, 0, 2, 0, 300, 0, 639.738254437219) /* Deception           Trained */
     , (801778, 22, 0, 2, 0, 300, 0, 639.738254437219) /* Jump                Trained */
     , (801778, 24, 0, 2, 0, 300, 0, 639.738254437219) /* Run                 Trained */
     , (801778, 45, 0, 3, 0, 600, 0, 639.738254437219) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801778,  0,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801778,  1,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801778,  2,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801778,  3,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801778,  4,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801778,  5,  8, 500, 0.75,  300,  270,  300,  300,  600,  270,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801778,  6,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801778,  7,  8, 500,    0,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801778,  8,  8, 500, 0.75,  300,  270,  300,  300,  600,  270,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801778,  94)
     , (801778, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801778, 2, 801780,  1, 92, 0, False) /* Create Sword of Black Ice (801780) for Wield */;
