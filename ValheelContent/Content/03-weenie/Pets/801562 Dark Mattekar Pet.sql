DELETE FROM `weenie` WHERE `class_Id` = 801562;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801562, 'Dark Mattekar Pet', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801562,   1,         16) /* ItemType - Creature */
     , (801562,   2,         23) /* CreatureType - Mattekar */
     , (801562,   3,         14) /* PaletteTemplate - White */
     , (801562,   6,         -1) /* ItemsCapacity */
     , (801562,   7,         -1) /* ContainersCapacity */
     , (801562,  16,          1) /* ItemUseable - No */
     , (801562,  25,        300) /* Level */
     , (801562,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801562, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801562, 140,          1) /* AiOptions - CanOpenDoors */
	 , (801562, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801562,   1, True ) /* Stuck */
     , (801562,  11, False) /* IgnoreCollisions */
     , (801562,  12, True ) /* ReportCollisions */
     , (801562,  13, False) /* Ethereal */
     , (801562, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801562,   1,       5) /* HeartbeatInterval */
     , (801562,   2,       0) /* HeartbeatTimestamp */
     , (801562,   3,    0.45) /* HealthRate */
     , (801562,   4,     0.5) /* StaminaRate */
     , (801562,   5,       2) /* ManaRate */
     , (801562,  12,     0.5) /* Shade */
     , (801562,  13,       1) /* ArmorModVsSlash */
     , (801562,  14,       1) /* ArmorModVsPierce */
     , (801562,  15,       1) /* ArmorModVsBludgeon */
     , (801562,  16,       1) /* ArmorModVsCold */
     , (801562,  17,    0.38) /* ArmorModVsFire */
     , (801562,  18,       1) /* ArmorModVsAcid */
     , (801562,  19,       1) /* ArmorModVsElectric */
     , (801562,  31,      18) /* VisualAwarenessRange */
     , (801562,  34,     1.1) /* PowerupTime */
     , (801562,  36,       2) /* ChargeSpeed */
	 , (801562,  39,       3) /* DefaultScale */
     , (801562,  64,       1) /* ResistSlash */
     , (801562,  65,       1) /* ResistPierce */
     , (801562,  66,       1) /* ResistBludgeon */
     , (801562,  67,    0.38) /* ResistFire */
     , (801562,  68,       1) /* ResistCold */
     , (801562,  69,       1) /* ResistAcid */
     , (801562,  70,       1) /* ResistElectric */
     , (801562,  71,       1) /* ResistHealthBoost */
     , (801562,  72,       1) /* ResistStaminaDrain */
     , (801562,  73,       1) /* ResistStaminaBoost */
     , (801562,  74,       1) /* ResistManaDrain */
     , (801562,  75,       1) /* ResistManaBoost */
     , (801562,  80,       3) /* AiUseMagicDelay */
     , (801562, 104,      10) /* ObviousRadarRange */
     , (801562, 122,       2) /* AiAcquireHealth */
     , (801562, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801562,   1, 'Dark Mattekar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801562,   1,   33555590) /* Setup */
     , (801562,   2,  150995047) /* MotionTable */
     , (801562,   3,  536870974) /* SoundTable */
     , (801562,   4,  805306417) /* CombatTable */
     , (801562,   6,   67111893) /* PaletteBase */
     , (801562,   7,  268435729) /* ClothingBase */
     , (801562,   8,  100669121) /* Icon */
     , (801562,  19,         85) /* ActivationAnimation */
     , (801562,  22,  872415278) /* PhysicsEffectTable */
     , (801562,  30,         85) /* PhysicsScript - BreatheFrost */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801562,   1, 1500, 0, 0) /* Strength */
     , (801562,   2, 800, 0, 0) /* Endurance */
     , (801562,   3, 800, 0, 0) /* Quickness */
     , (801562,   4, 800, 0, 0) /* Coordination */
     , (801562,   5, 800, 0, 0) /* Focus */
     , (801562,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801562,   1,  50000, 0, 0, 52500) /* MaxHealth */
     , (801562,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (801562,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801562,  6, 0, 3, 0, 310, 0, 639.738254437219) /* MeleeDefense        Specialized */
     , (801562,  7, 0, 3, 0, 365, 0, 639.738254437219) /* MissileDefense      Specialized */
     , (801562, 15, 0, 3, 0, 315, 0, 639.738254437219) /* MagicDefense        Specialized */
     , (801562, 20, 0, 2, 0, 370, 0, 639.738254437219) /* Deception           Trained */
     , (801562, 22, 0, 2, 0, 340, 0, 639.738254437219) /* Jump                Trained */
     , (801562, 24, 0, 2, 0, 940, 0, 639.738254437219) /* Run                 Trained */
     , (801562, 45, 0, 3, 0, 630, 0, 639.738254437219) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801562,  0,  2, 500, 0.75,  170,   78,  128,  119,   12,  119,  104,   12,    0, 1,  0.4,  0.1,    0,  0.4,  0.1,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (801562, 10,  2, 500, 0.75,  130,   60,   98,   91,    9,   91,   79,    9,    0, 3,    0,  0.2,  0.8,    0,  0.2,  0.8,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (801562, 13,  2, 500, 0.75,  120,   55,   90,   84,    8,   84,   73,    8,    0, 3,    0,    0,    0,    0,    0,    0,  0.1,  0.3,  0.7,  0.1,  0.3,  0.7) /* RearLeg */
     , (801562, 16,  4, 500,    0,  150,   69,  113,  105,   11,  105,   92,   11,    0, 2,  0.6,  0.7,  0.2,  0.6,  0.7,  0.2,  0.9,  0.7,  0.3,  0.9,  0.7,  0.3) /* Torso */
     , (801562, 22,  8, 500,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801562,  94)
     , (801562, 414);
