DELETE FROM `weenie` WHERE `class_Id` = 802491;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802491, 'VisciousRuschk350', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802491,   1,         16) /* ItemType - Creature */
     , (802491,   2,         14) /* CreatureType - Shadow */
     , (802491,   3,         1) /* PaletteTemplate - Red */
     , (802491,   6,         -1) /* ItemsCapacity */
     , (802491,   7,         -1) /* ContainersCapacity */
     , (802491,  16,          1) /* ItemUseable - No */
     , (802491,  25,        350) /* Level */
     , (802491,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802491, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802491, 140,          1) /* AiOptions - CanOpenDoors */
     , (802491, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802491,   1, True ) /* Stuck */
     , (802491,  11, False) /* IgnoreCollisions */
     , (802491,  12, True ) /* ReportCollisions */
     , (802491,  13, False) /* Ethereal */
     , (802491, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802491,   1,       5) /* HeartbeatInterval */
     , (802491,   2,       0) /* HeartbeatTimestamp */
     , (802491,   3,    0.45) /* HealthRate */
     , (802491,   4,     0.5) /* StaminaRate */
     , (802491,   5,       2) /* ManaRate */
     , (802491,  12,     0.5) /* Shade */
     , (802491,  13,       1) /* ArmorModVsSlash */
     , (802491,  14,       1) /* ArmorModVsPierce */
     , (802491,  15,       1) /* ArmorModVsBludgeon */
     , (802491,  16,       1) /* ArmorModVsCold */
     , (802491,  17,       1) /* ArmorModVsFire */
     , (802491,  18,       1) /* ArmorModVsAcid */
     , (802491,  19,       1) /* ArmorModVsElectric */
     , (802491,  31,      18) /* VisualAwarenessRange */
     , (802491,  34,     1.1) /* PowerupTime */
     , (802491,  36,       2) /* ChargeSpeed */
     , (802491,  39,     1.2) /* DefaultScale */
     , (802491,  64,       1) /* ResistSlash */
     , (802491,  65,       1) /* ResistPierce */
     , (802491,  66,       1) /* ResistBludgeon */
     , (802491,  67,       1) /* ResistFire */
     , (802491,  68,       1) /* ResistCold */
     , (802491,  69,       1) /* ResistAcid */
     , (802491,  70,       1) /* ResistElectric */
     , (802491,  71,       1) /* ResistHealthBoost */
     , (802491,  72,       1) /* ResistStaminaDrain */
     , (802491,  73,       1) /* ResistStaminaBoost */
     , (802491,  74,       1) /* ResistManaDrain */
     , (802491,  75,       1) /* ResistManaBoost */
     , (802491,  80,       3) /* AiUseMagicDelay */
     , (802491, 104,      10) /* ObviousRadarRange */
     , (802491, 122,       2) /* AiAcquireHealth */
     , (802491, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802491,   1, 'Viscious Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802491,   1,   33559507) /* Setup */
     , (802491,   2,  150994951) /* MotionTable */
     , (802491,   3,  536871101) /* SoundTable */
     , (802491,   4,  805306372) /* CombatTable */
     , (802491,   6,   67115447) /* PaletteBase */
     , (802491,   8,  100677373) /* Icon */
     , (802491,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802491,   1, 600, 0, 0) /* Strength */
     , (802491,   2, 600, 0, 0) /* Endurance */
     , (802491,   3, 600, 0, 0) /* Quickness */
     , (802491,   4, 600, 0, 0) /* Coordination */
     , (802491,   5, 600, 0, 0) /* Focus */
     , (802491,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802491,   1, 3500, 0, 0, 3500) /* MaxHealth */
     , (802491,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802491,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802491,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802491,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802491, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802491, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802491, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802491, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802491, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802491, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802491, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802491, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802491, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802491, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802491,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802491,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802491,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802491,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802491,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802491,  5,  4, 350,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802491,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802491,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802491,  8,  4, 350,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802491,  94)
     , (802491, 414);
