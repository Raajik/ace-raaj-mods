DELETE FROM `weenie` WHERE `class_Id` = 802555;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802555, 'VengefulGuardian600', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802555,   1,         16) /* ItemType - Creature */
     , (802555,   2,         83) /* CreatureType - Shadow */
     , (802555,   3,         14) /* PaletteTemplate - Red */
     , (802555,   6,         -1) /* ItemsCapacity */
     , (802555,   7,         -1) /* ContainersCapacity */
     , (802555,  16,          1) /* ItemUseable - No */
     , (802555,  25,        600) /* Level */
     , (802555,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802555, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802555, 140,          1) /* AiOptions - CanOpenDoors */
     , (802555, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802555,   1, True ) /* Stuck */
     , (802555,  11, False) /* IgnoreCollisions */
     , (802555,  12, True ) /* ReportCollisions */
     , (802555,  13, False) /* Ethereal */
     , (802555, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802555,   1,       5) /* HeartbeatInterval */
     , (802555,   2,       0) /* HeartbeatTimestamp */
     , (802555,   3,    0.45) /* HealthRate */
     , (802555,   4,     0.5) /* StaminaRate */
     , (802555,   5,       2) /* ManaRate */
     , (802555,  12,     0.5) /* Shade */
     , (802555,  13,       1) /* ArmorModVsSlash */
     , (802555,  14,       1) /* ArmorModVsPierce */
     , (802555,  15,       1) /* ArmorModVsBludgeon */
     , (802555,  16,       1) /* ArmorModVsCold */
     , (802555,  17,       1) /* ArmorModVsFire */
     , (802555,  18,       1) /* ArmorModVsAcid */
     , (802555,  19,       1) /* ArmorModVsElectric */
     , (802555,  31,      18) /* VisualAwarenessRange */
     , (802555,  34,     1.1) /* PowerupTime */
     , (802555,  36,       2) /* ChargeSpeed */
     , (802555,  39,     1.2) /* DefaultScale */
     , (802555,  64,       1) /* ResistSlash */
     , (802555,  65,       1) /* ResistPierce */
     , (802555,  66,       1) /* ResistBludgeon */
     , (802555,  67,       1) /* ResistFire */
     , (802555,  68,       1) /* ResistCold */
     , (802555,  69,       1) /* ResistAcid */
     , (802555,  70,       1) /* ResistElectric */
     , (802555,  71,       1) /* ResistHealthBoost */
     , (802555,  72,       1) /* ResistStaminaDrain */
     , (802555,  73,       1) /* ResistStaminaBoost */
     , (802555,  74,       1) /* ResistManaDrain */
     , (802555,  75,       1) /* ResistManaBoost */
     , (802555,  80,       3) /* AiUseMagicDelay */
     , (802555, 104,      10) /* ObviousRadarRange */
     , (802555, 122,       2) /* AiAcquireHealth */
     , (802555, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802555,   1, 'Vengeful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802555,   1,   33559125) /* Setup */
     , (802555,   2,  150995334) /* MotionTable */
     , (802555,   3,  536871102) /* SoundTable */
     , (802555,   4,  805306368) /* CombatTable */
     , (802555,   6,   67115468) /* PaletteBase */
     , (802555,   7,  268436907) /* ClothingBase */
     , (802555,   8,  100677371) /* Icon */
     , (802555,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802555,   1, 920, 0, 0) /* Strength */
     , (802555,   2, 920, 0, 0) /* Endurance */
     , (802555,   3, 920, 0, 0) /* Quickness */
     , (802555,   4, 920, 0, 0) /* Coordination */
     , (802555,   5, 920, 0, 0) /* Focus */
     , (802555,   6, 920, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802555,   1, 10000, 0, 0, 10000) /* MaxHealth */
     , (802555,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802555,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802555,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802555,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802555, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802555, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802555, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802555, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802555, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802555, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802555, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802555, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802555, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802555, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802555,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802555,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802555,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802555,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802555,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802555,  5,  4, 600,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802555,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802555,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802555,  8,  4, 600,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802555,  94)
     , (802555, 414);
