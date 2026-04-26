DELETE FROM `weenie` WHERE `class_Id` = 802505;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802505, 'TormentedRuschk400', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802505,   1,         16) /* ItemType - Creature */
     , (802505,   2,         14) /* CreatureType - Shadow */
     , (802505,   3,         14) /* PaletteTemplate - Red */
     , (802505,   6,         -1) /* ItemsCapacity */
     , (802505,   7,         -1) /* ContainersCapacity */
     , (802505,  16,          1) /* ItemUseable - No */
     , (802505,  25,        400) /* Level */
     , (802505,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802505, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802505, 140,          1) /* AiOptions - CanOpenDoors */
     , (802505, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802505,   1, True ) /* Stuck */
     , (802505,  11, False) /* IgnoreCollisions */
     , (802505,  12, True ) /* ReportCollisions */
     , (802505,  13, False) /* Ethereal */
     , (802505, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802505,   1,       5) /* HeartbeatInterval */
     , (802505,   2,       0) /* HeartbeatTimestamp */
     , (802505,   3,    0.45) /* HealthRate */
     , (802505,   4,     0.5) /* StaminaRate */
     , (802505,   5,       2) /* ManaRate */
     , (802505,  12,     0.5) /* Shade */
     , (802505,  13,       1) /* ArmorModVsSlash */
     , (802505,  14,       1) /* ArmorModVsPierce */
     , (802505,  15,       1) /* ArmorModVsBludgeon */
     , (802505,  16,       1) /* ArmorModVsCold */
     , (802505,  17,       1) /* ArmorModVsFire */
     , (802505,  18,       1) /* ArmorModVsAcid */
     , (802505,  19,       1) /* ArmorModVsElectric */
     , (802505,  31,      18) /* VisualAwarenessRange */
     , (802505,  34,     1.1) /* PowerupTime */
     , (802505,  36,       2) /* ChargeSpeed */
     , (802505,  39,     1.2) /* DefaultScale */
     , (802505,  64,       1) /* ResistSlash */
     , (802505,  65,       1) /* ResistPierce */
     , (802505,  66,       1) /* ResistBludgeon */
     , (802505,  67,       1) /* ResistFire */
     , (802505,  68,       1) /* ResistCold */
     , (802505,  69,       1) /* ResistAcid */
     , (802505,  70,       1) /* ResistElectric */
     , (802505,  71,       1) /* ResistHealthBoost */
     , (802505,  72,       1) /* ResistStaminaDrain */
     , (802505,  73,       1) /* ResistStaminaBoost */
     , (802505,  74,       1) /* ResistManaDrain */
     , (802505,  75,       1) /* ResistManaBoost */
     , (802505,  80,       3) /* AiUseMagicDelay */
     , (802505, 104,      10) /* ObviousRadarRange */
     , (802505, 122,       2) /* AiAcquireHealth */
     , (802505, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802505,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802505,   1,   33559507) /* Setup */
     , (802505,   2,  150994951) /* MotionTable */
     , (802505,   3,  536871101) /* SoundTable */
     , (802505,   4,  805306372) /* CombatTable */
     , (802505,   6,   67115447) /* PaletteBase */
     , (802505,   8,  100677373) /* Icon */
     , (802505,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802505,   1, 730, 0, 0) /* Strength */
     , (802505,   2, 730, 0, 0) /* Endurance */
     , (802505,   3, 730, 0, 0) /* Quickness */
     , (802505,   4, 730, 0, 0) /* Coordination */
     , (802505,   5, 730, 0, 0) /* Focus */
     , (802505,   6, 730, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802505,   1, 5000, 0, 0, 5000) /* MaxHealth */
     , (802505,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802505,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802505,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802505,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802505, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802505, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802505, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802505, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802505, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802505, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802505, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802505, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802505, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802505, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802505,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802505,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802505,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802505,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802505,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802505,  5,  4, 400,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802505,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802505,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802505,  8,  4, 400,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802505,  94)
     , (802505, 414);
