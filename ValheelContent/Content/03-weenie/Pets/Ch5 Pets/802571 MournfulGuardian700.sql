DELETE FROM `weenie` WHERE `class_Id` = 802571;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802571, 'MournfulGuardian700', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802571,   1,         16) /* ItemType - Creature */
     , (802571,   2,         83) /* CreatureType - Shadow */
     , (802571,   3,         12) /* PaletteTemplate - Red */
     , (802571,   6,         -1) /* ItemsCapacity */
     , (802571,   7,         -1) /* ContainersCapacity */
     , (802571,  16,          1) /* ItemUseable - No */
     , (802571,  25,        700) /* Level */
     , (802571,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802571, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802571, 140,          1) /* AiOptions - CanOpenDoors */
     , (802571, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802571,   1, True ) /* Stuck */
     , (802571,  11, False) /* IgnoreCollisions */
     , (802571,  12, True ) /* ReportCollisions */
     , (802571,  13, False) /* Ethereal */
     , (802571, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802571,   1,       5) /* HeartbeatInterval */
     , (802571,   2,       0) /* HeartbeatTimestamp */
     , (802571,   3,    0.45) /* HealthRate */
     , (802571,   4,     0.5) /* StaminaRate */
     , (802571,   5,       2) /* ManaRate */
     , (802571,  12,     0.5) /* Shade */
     , (802571,  13,       1) /* ArmorModVsSlash */
     , (802571,  14,       1) /* ArmorModVsPierce */
     , (802571,  15,       1) /* ArmorModVsBludgeon */
     , (802571,  16,       1) /* ArmorModVsCold */
     , (802571,  17,       1) /* ArmorModVsFire */
     , (802571,  18,       1) /* ArmorModVsAcid */
     , (802571,  19,       1) /* ArmorModVsElectric */
     , (802571,  31,      18) /* VisualAwarenessRange */
     , (802571,  34,     1.1) /* PowerupTime */
     , (802571,  36,       2) /* ChargeSpeed */
     , (802571,  39,     1.2) /* DefaultScale */
     , (802571,  64,       1) /* ResistSlash */
     , (802571,  65,       1) /* ResistPierce */
     , (802571,  66,       1) /* ResistBludgeon */
     , (802571,  67,       1) /* ResistFire */
     , (802571,  68,       1) /* ResistCold */
     , (802571,  69,       1) /* ResistAcid */
     , (802571,  70,       1) /* ResistElectric */
     , (802571,  71,       1) /* ResistHealthBoost */
     , (802571,  72,       1) /* ResistStaminaDrain */
     , (802571,  73,       1) /* ResistStaminaBoost */
     , (802571,  74,       1) /* ResistManaDrain */
     , (802571,  75,       1) /* ResistManaBoost */
     , (802571,  80,       3) /* AiUseMagicDelay */
     , (802571, 104,      10) /* ObviousRadarRange */
     , (802571, 122,       2) /* AiAcquireHealth */
     , (802571, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802571,   1, 'Mournful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802571,   1,   33559125) /* Setup */
     , (802571,   2,  150995334) /* MotionTable */
     , (802571,   3,  536871102) /* SoundTable */
     , (802571,   4,  805306368) /* CombatTable */
     , (802571,   6,   67115468) /* PaletteBase */
     , (802571,   7,  268436907) /* ClothingBase */
     , (802571,   8,  100677371) /* Icon */
     , (802571,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802571,   1, 1000, 0, 0) /* Strength */
     , (802571,   2, 1000, 0, 0) /* Endurance */
     , (802571,   3, 1000, 0, 0) /* Quickness */
     , (802571,   4, 1000, 0, 0) /* Coordination */
     , (802571,   5, 1000, 0, 0) /* Focus */
     , (802571,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802571,   1, 15000, 0, 0, 15000) /* MaxHealth */
     , (802571,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802571,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802571,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802571,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802571, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802571, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802571, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802571, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802571, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802571, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802571, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802571, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802571, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802571, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802571,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802571,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802571,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802571,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802571,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802571,  5,  4, 1000,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802571,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802571,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802571,  8,  4, 1000,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802571,  94)
     , (802571, 414);
