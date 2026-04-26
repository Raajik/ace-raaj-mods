DELETE FROM `weenie` WHERE `class_Id` = 802499;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802499, 'MournfulGuardian350', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802499,   1,         16) /* ItemType - Creature */
     , (802499,   2,         83) /* CreatureType - Shadow */
     , (802499,   3,         12) /* PaletteTemplate - Red */
     , (802499,   6,         -1) /* ItemsCapacity */
     , (802499,   7,         -1) /* ContainersCapacity */
     , (802499,  16,          1) /* ItemUseable - No */
     , (802499,  25,        350) /* Level */
     , (802499,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802499, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802499, 140,          1) /* AiOptions - CanOpenDoors */
     , (802499, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802499,   1, True ) /* Stuck */
     , (802499,  11, False) /* IgnoreCollisions */
     , (802499,  12, True ) /* ReportCollisions */
     , (802499,  13, False) /* Ethereal */
     , (802499, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802499,   1,       5) /* HeartbeatInterval */
     , (802499,   2,       0) /* HeartbeatTimestamp */
     , (802499,   3,    0.45) /* HealthRate */
     , (802499,   4,     0.5) /* StaminaRate */
     , (802499,   5,       2) /* ManaRate */
     , (802499,  12,     0.5) /* Shade */
     , (802499,  13,       1) /* ArmorModVsSlash */
     , (802499,  14,       1) /* ArmorModVsPierce */
     , (802499,  15,       1) /* ArmorModVsBludgeon */
     , (802499,  16,       1) /* ArmorModVsCold */
     , (802499,  17,       1) /* ArmorModVsFire */
     , (802499,  18,       1) /* ArmorModVsAcid */
     , (802499,  19,       1) /* ArmorModVsElectric */
     , (802499,  31,      18) /* VisualAwarenessRange */
     , (802499,  34,     1.1) /* PowerupTime */
     , (802499,  36,       2) /* ChargeSpeed */
     , (802499,  39,     1.2) /* DefaultScale */
     , (802499,  64,       1) /* ResistSlash */
     , (802499,  65,       1) /* ResistPierce */
     , (802499,  66,       1) /* ResistBludgeon */
     , (802499,  67,       1) /* ResistFire */
     , (802499,  68,       1) /* ResistCold */
     , (802499,  69,       1) /* ResistAcid */
     , (802499,  70,       1) /* ResistElectric */
     , (802499,  71,       1) /* ResistHealthBoost */
     , (802499,  72,       1) /* ResistStaminaDrain */
     , (802499,  73,       1) /* ResistStaminaBoost */
     , (802499,  74,       1) /* ResistManaDrain */
     , (802499,  75,       1) /* ResistManaBoost */
     , (802499,  80,       3) /* AiUseMagicDelay */
     , (802499, 104,      10) /* ObviousRadarRange */
     , (802499, 122,       2) /* AiAcquireHealth */
     , (802499, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802499,   1, 'Mournful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802499,   1,   33559125) /* Setup */
     , (802499,   2,  150995334) /* MotionTable */
     , (802499,   3,  536871102) /* SoundTable */
     , (802499,   4,  805306368) /* CombatTable */
     , (802499,   6,   67115468) /* PaletteBase */
     , (802499,   7,  268436907) /* ClothingBase */
     , (802499,   8,  100677371) /* Icon */
     , (802499,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802499,   1, 600, 0, 0) /* Strength */
     , (802499,   2, 600, 0, 0) /* Endurance */
     , (802499,   3, 600, 0, 0) /* Quickness */
     , (802499,   4, 600, 0, 0) /* Coordination */
     , (802499,   5, 600, 0, 0) /* Focus */
     , (802499,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802499,   1, 3500, 0, 0, 3500) /* MaxHealth */
     , (802499,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802499,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802499,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802499,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802499, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802499, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802499, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802499, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802499, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802499, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802499, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802499, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802499, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802499, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802499,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802499,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802499,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802499,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802499,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802499,  5,  4, 350,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802499,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802499,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802499,  8,  4, 350,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802499,  94)
     , (802499, 414);
