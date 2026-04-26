DELETE FROM `weenie` WHERE `class_Id` = 802537;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802537, 'VengefulGuardian450', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802537,   1,         16) /* ItemType - Creature */
     , (802537,   2,         83) /* CreatureType - Shadow */
     , (802537,   3,         14) /* PaletteTemplate - Red */
     , (802537,   6,         -1) /* ItemsCapacity */
     , (802537,   7,         -1) /* ContainersCapacity */
     , (802537,  16,          1) /* ItemUseable - No */
     , (802537,  25,        450) /* Level */
     , (802537,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802537, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802537, 140,          1) /* AiOptions - CanOpenDoors */
     , (802537, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802537,   1, True ) /* Stuck */
     , (802537,  11, False) /* IgnoreCollisions */
     , (802537,  12, True ) /* ReportCollisions */
     , (802537,  13, False) /* Ethereal */
     , (802537, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802537,   1,       5) /* HeartbeatInterval */
     , (802537,   2,       0) /* HeartbeatTimestamp */
     , (802537,   3,    0.45) /* HealthRate */
     , (802537,   4,     0.5) /* StaminaRate */
     , (802537,   5,       2) /* ManaRate */
     , (802537,  12,     0.5) /* Shade */
     , (802537,  13,       1) /* ArmorModVsSlash */
     , (802537,  14,       1) /* ArmorModVsPierce */
     , (802537,  15,       1) /* ArmorModVsBludgeon */
     , (802537,  16,       1) /* ArmorModVsCold */
     , (802537,  17,       1) /* ArmorModVsFire */
     , (802537,  18,       1) /* ArmorModVsAcid */
     , (802537,  19,       1) /* ArmorModVsElectric */
     , (802537,  31,      18) /* VisualAwarenessRange */
     , (802537,  34,     1.1) /* PowerupTime */
     , (802537,  36,       2) /* ChargeSpeed */
     , (802537,  39,     1.2) /* DefaultScale */
     , (802537,  64,       1) /* ResistSlash */
     , (802537,  65,       1) /* ResistPierce */
     , (802537,  66,       1) /* ResistBludgeon */
     , (802537,  67,       1) /* ResistFire */
     , (802537,  68,       1) /* ResistCold */
     , (802537,  69,       1) /* ResistAcid */
     , (802537,  70,       1) /* ResistElectric */
     , (802537,  71,       1) /* ResistHealthBoost */
     , (802537,  72,       1) /* ResistStaminaDrain */
     , (802537,  73,       1) /* ResistStaminaBoost */
     , (802537,  74,       1) /* ResistManaDrain */
     , (802537,  75,       1) /* ResistManaBoost */
     , (802537,  80,       3) /* AiUseMagicDelay */
     , (802537, 104,      10) /* ObviousRadarRange */
     , (802537, 122,       2) /* AiAcquireHealth */
     , (802537, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802537,   1, 'Vengeful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802537,   1,   33559125) /* Setup */
     , (802537,   2,  150995334) /* MotionTable */
     , (802537,   3,  536871102) /* SoundTable */
     , (802537,   4,  805306368) /* CombatTable */
     , (802537,   6,   67115468) /* PaletteBase */
     , (802537,   7,  268436907) /* ClothingBase */
     , (802537,   8,  100677371) /* Icon */
     , (802537,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802537,   1, 850, 0, 0) /* Strength */
     , (802537,   2, 850, 0, 0) /* Endurance */
     , (802537,   3, 850, 0, 0) /* Quickness */
     , (802537,   4, 850, 0, 0) /* Coordination */
     , (802537,   5, 850, 0, 0) /* Focus */
     , (802537,   6, 850, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802537,   1, 7000, 0, 0, 7000) /* MaxHealth */
     , (802537,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802537,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802537,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802537,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802537, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802537, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802537, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802537, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802537, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802537, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802537, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802537, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802537, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802537, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802537,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802537,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802537,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802537,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802537,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802537,  5,  4, 450,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802537,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802537,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802537,  8,  4, 450,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802537,  94)
     , (802537, 414);
