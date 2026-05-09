DELETE FROM `weenie` WHERE `class_Id` = 802573;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802573, 'VengefulGuardian700', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802573,   1,         16) /* ItemType - Creature */
     , (802573,   2,         83) /* CreatureType - Shadow */
     , (802573,   3,         14) /* PaletteTemplate - Red */
     , (802573,   6,         -1) /* ItemsCapacity */
     , (802573,   7,         -1) /* ContainersCapacity */
     , (802573,  16,          1) /* ItemUseable - No */
     , (802573,  25,        700) /* Level */
     , (802573,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802573, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802573, 140,          1) /* AiOptions - CanOpenDoors */
     , (802573, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802573,   1, True ) /* Stuck */
     , (802573,  11, False) /* IgnoreCollisions */
     , (802573,  12, True ) /* ReportCollisions */
     , (802573,  13, False) /* Ethereal */
     , (802573, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802573,   1,       5) /* HeartbeatInterval */
     , (802573,   2,       0) /* HeartbeatTimestamp */
     , (802573,   3,    0.45) /* HealthRate */
     , (802573,   4,     0.5) /* StaminaRate */
     , (802573,   5,       2) /* ManaRate */
     , (802573,  12,     0.5) /* Shade */
     , (802573,  13,       1) /* ArmorModVsSlash */
     , (802573,  14,       1) /* ArmorModVsPierce */
     , (802573,  15,       1) /* ArmorModVsBludgeon */
     , (802573,  16,       1) /* ArmorModVsCold */
     , (802573,  17,       1) /* ArmorModVsFire */
     , (802573,  18,       1) /* ArmorModVsAcid */
     , (802573,  19,       1) /* ArmorModVsElectric */
     , (802573,  31,      18) /* VisualAwarenessRange */
     , (802573,  34,     1.1) /* PowerupTime */
     , (802573,  36,       2) /* ChargeSpeed */
     , (802573,  39,     1.2) /* DefaultScale */
     , (802573,  64,       1) /* ResistSlash */
     , (802573,  65,       1) /* ResistPierce */
     , (802573,  66,       1) /* ResistBludgeon */
     , (802573,  67,       1) /* ResistFire */
     , (802573,  68,       1) /* ResistCold */
     , (802573,  69,       1) /* ResistAcid */
     , (802573,  70,       1) /* ResistElectric */
     , (802573,  71,       1) /* ResistHealthBoost */
     , (802573,  72,       1) /* ResistStaminaDrain */
     , (802573,  73,       1) /* ResistStaminaBoost */
     , (802573,  74,       1) /* ResistManaDrain */
     , (802573,  75,       1) /* ResistManaBoost */
     , (802573,  80,       3) /* AiUseMagicDelay */
     , (802573, 104,      10) /* ObviousRadarRange */
     , (802573, 122,       2) /* AiAcquireHealth */
     , (802573, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802573,   1, 'Vengeful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802573,   1,   33559125) /* Setup */
     , (802573,   2,  150995334) /* MotionTable */
     , (802573,   3,  536871102) /* SoundTable */
     , (802573,   4,  805306368) /* CombatTable */
     , (802573,   6,   67115468) /* PaletteBase */
     , (802573,   7,  268436907) /* ClothingBase */
     , (802573,   8,  100677371) /* Icon */
     , (802573,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802573,   1, 1000, 0, 0) /* Strength */
     , (802573,   2, 1000, 0, 0) /* Endurance */
     , (802573,   3, 1000, 0, 0) /* Quickness */
     , (802573,   4, 1000, 0, 0) /* Coordination */
     , (802573,   5, 1000, 0, 0) /* Focus */
     , (802573,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802573,   1, 15000, 0, 0, 15000) /* MaxHealth */
     , (802573,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802573,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802573,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802573,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802573, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802573, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802573, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802573, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802573, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802573, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802573, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802573, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802573, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802573, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802573,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802573,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802573,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802573,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802573,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802573,  5,  4, 1000,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802573,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802573,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802573,  8,  4, 1000,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802573,  94)
     , (802573, 414);
