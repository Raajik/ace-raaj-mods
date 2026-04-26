DELETE FROM `weenie` WHERE `class_Id` = 802563;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802563, 'VisciousRuschk700', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802563,   1,         16) /* ItemType - Creature */
     , (802563,   2,         14) /* CreatureType - Shadow */
     , (802563,   3,         1) /* PaletteTemplate - Red */
     , (802563,   6,         -1) /* ItemsCapacity */
     , (802563,   7,         -1) /* ContainersCapacity */
     , (802563,  16,          1) /* ItemUseable - No */
     , (802563,  25,        700) /* Level */
     , (802563,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802563, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802563, 140,          1) /* AiOptions - CanOpenDoors */
     , (802563, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802563,   1, True ) /* Stuck */
     , (802563,  11, False) /* IgnoreCollisions */
     , (802563,  12, True ) /* ReportCollisions */
     , (802563,  13, False) /* Ethereal */
     , (802563, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802563,   1,       5) /* HeartbeatInterval */
     , (802563,   2,       0) /* HeartbeatTimestamp */
     , (802563,   3,    0.45) /* HealthRate */
     , (802563,   4,     0.5) /* StaminaRate */
     , (802563,   5,       2) /* ManaRate */
     , (802563,  12,     0.5) /* Shade */
     , (802563,  13,       1) /* ArmorModVsSlash */
     , (802563,  14,       1) /* ArmorModVsPierce */
     , (802563,  15,       1) /* ArmorModVsBludgeon */
     , (802563,  16,       1) /* ArmorModVsCold */
     , (802563,  17,       1) /* ArmorModVsFire */
     , (802563,  18,       1) /* ArmorModVsAcid */
     , (802563,  19,       1) /* ArmorModVsElectric */
     , (802563,  31,      18) /* VisualAwarenessRange */
     , (802563,  34,     1.1) /* PowerupTime */
     , (802563,  36,       2) /* ChargeSpeed */
     , (802563,  39,     1.2) /* DefaultScale */
     , (802563,  64,       1) /* ResistSlash */
     , (802563,  65,       1) /* ResistPierce */
     , (802563,  66,       1) /* ResistBludgeon */
     , (802563,  67,       1) /* ResistFire */
     , (802563,  68,       1) /* ResistCold */
     , (802563,  69,       1) /* ResistAcid */
     , (802563,  70,       1) /* ResistElectric */
     , (802563,  71,       1) /* ResistHealthBoost */
     , (802563,  72,       1) /* ResistStaminaDrain */
     , (802563,  73,       1) /* ResistStaminaBoost */
     , (802563,  74,       1) /* ResistManaDrain */
     , (802563,  75,       1) /* ResistManaBoost */
     , (802563,  80,       3) /* AiUseMagicDelay */
     , (802563, 104,      10) /* ObviousRadarRange */
     , (802563, 122,       2) /* AiAcquireHealth */
     , (802563, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802563,   1, 'Viscious Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802563,   1,   33559507) /* Setup */
     , (802563,   2,  150994951) /* MotionTable */
     , (802563,   3,  536871101) /* SoundTable */
     , (802563,   4,  805306372) /* CombatTable */
     , (802563,   6,   67115447) /* PaletteBase */
     , (802563,   8,  100677373) /* Icon */
     , (802563,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802563,   1, 1000, 0, 0) /* Strength */
     , (802563,   2, 1000, 0, 0) /* Endurance */
     , (802563,   3, 1000, 0, 0) /* Quickness */
     , (802563,   4, 1000, 0, 0) /* Coordination */
     , (802563,   5, 1000, 0, 0) /* Focus */
     , (802563,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802563,   1, 15000, 0, 0, 15000) /* MaxHealth */
     , (802563,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802563,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802563,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802563,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802563, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802563, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802563, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802563, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802563, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802563, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802563, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802563, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802563, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802563, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802563,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802563,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802563,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802563,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802563,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802563,  5,  4, 1000,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802563,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802563,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802563,  8,  4, 1000,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802563,  94)
     , (802563, 414);
