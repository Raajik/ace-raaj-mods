DELETE FROM `weenie` WHERE `class_Id` = 800853;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800853, 'Dark JoJo', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800853,   1,         16) /* ItemType - Creature */
     , (800853,   2,          8) /* CreatureType - Tusker */
     , (800853,   3,         14) /* PaletteTemplate - Red */
     , (800853,   6,         -1) /* ItemsCapacity */
     , (800853,   7,         -1) /* ContainersCapacity */
     , (800853,  16,          1) /* ItemUseable - No */
     , (800853,  25,        220) /* Level */
     , (800853,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800853, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800853, 140,          1) /* AiOptions - CanOpenDoors */
     , (800853, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800853,   1, True ) /* Stuck */
     , (800853,  11, False) /* IgnoreCollisions */
     , (800853,  12, True ) /* ReportCollisions */
     , (800853,  13, False) /* Ethereal */
     , (800853, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800853,   1,       5) /* HeartbeatInterval */
     , (800853,   2,       0) /* HeartbeatTimestamp */
     , (800853,   3,    0.45) /* HealthRate */
     , (800853,   4,     0.5) /* StaminaRate */
     , (800853,   5,       2) /* ManaRate */
     , (800853,  12,     0.5) /* Shade */
     , (800853,  13,       1) /* ArmorModVsSlash */
     , (800853,  14,       1) /* ArmorModVsPierce */
     , (800853,  15,       1) /* ArmorModVsBludgeon */
     , (800853,  16,       1) /* ArmorModVsCold */
     , (800853,  17,    0.38) /* ArmorModVsFire */
     , (800853,  18,       1) /* ArmorModVsAcid */
     , (800853,  19,       1) /* ArmorModVsElectric */
     , (800853,  31,      18) /* VisualAwarenessRange */
     , (800853,  34,     1.1) /* PowerupTime */
     , (800853,  36,       2) /* ChargeSpeed */
     , (800853,  39,     1.3) /* DefaultScale */
     , (800853,  64,       1) /* ResistSlash */
     , (800853,  65,       1) /* ResistPierce */
     , (800853,  66,       1) /* ResistBludgeon */
     , (800853,  67,    0.38) /* ResistFire */
     , (800853,  68,       1) /* ResistCold */
     , (800853,  69,       1) /* ResistAcid */
     , (800853,  70,       1) /* ResistElectric */
     , (800853,  71,       1) /* ResistHealthBoost */
     , (800853,  72,       1) /* ResistStaminaDrain */
     , (800853,  73,       1) /* ResistStaminaBoost */
     , (800853,  74,       1) /* ResistManaDrain */
     , (800853,  75,       1) /* ResistManaBoost */
     , (800853,  80,       3) /* AiUseMagicDelay */
     , (800853, 104,      10) /* ObviousRadarRange */
     , (800853, 122,       2) /* AiAcquireHealth */
     , (800853, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800853,   1, 'Dark JoJo') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800853,   1,   33560348) /* Setup */
     , (800853,   2,  150994956) /* MotionTable */
     , (800853,   3,  536870929) /* SoundTable */
     , (800853,   4,  805306379) /* CombatTable */
     , (800853,   6,   67113007) /* PaletteBase */
     , (800853,   7,  268436483) /* ClothingBase */
     , (800853,   8,  100667443) /* Icon */
     , (800853,  22,  872415271) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800853,   1, 800, 0, 0) /* Strength */
     , (800853,   2, 800, 0, 0) /* Endurance */
     , (800853,   3, 800, 0, 0) /* Quickness */
     , (800853,   4, 800, 0, 0) /* Coordination */
     , (800853,   5, 800, 0, 0) /* Focus */
     , (800853,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800853,   1,  1500, 0, 0, 1500) /* MaxHealth */
     , (800853,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (800853,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800853,  6, 0, 3, 0, 260, 0, 0) /* MeleeDefense        Specialized */
     , (800853,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (800853, 15, 0, 3, 0, 215, 0, 0) /* MagicDefense        Specialized */
     , (800853, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800853, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (800853, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (800853, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800853,  0,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800853,  1,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800853,  2,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800853,  3,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800853,  4,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800853,  5,  4, 250, 0.75,  500,  500,  500,  500,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800853,  6,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800853,  7,  4,  0,    0,  500,  500,  500,  500,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800853,  8,  4, 250, 0.75,  500,  500,  500,  500,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800853,  94)
     , (800853, 414);
