DELETE FROM `weenie` WHERE `class_Id` = 802553;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802553, 'MournfulGuardian600', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802553,   1,         16) /* ItemType - Creature */
     , (802553,   2,         83) /* CreatureType - Shadow */
     , (802553,   3,         12) /* PaletteTemplate - Red */
     , (802553,   6,         -1) /* ItemsCapacity */
     , (802553,   7,         -1) /* ContainersCapacity */
     , (802553,  16,          1) /* ItemUseable - No */
     , (802553,  25,        600) /* Level */
     , (802553,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802553, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802553, 140,          1) /* AiOptions - CanOpenDoors */
     , (802553, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802553,   1, True ) /* Stuck */
     , (802553,  11, False) /* IgnoreCollisions */
     , (802553,  12, True ) /* ReportCollisions */
     , (802553,  13, False) /* Ethereal */
     , (802553, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802553,   1,       5) /* HeartbeatInterval */
     , (802553,   2,       0) /* HeartbeatTimestamp */
     , (802553,   3,    0.45) /* HealthRate */
     , (802553,   4,     0.5) /* StaminaRate */
     , (802553,   5,       2) /* ManaRate */
     , (802553,  12,     0.5) /* Shade */
     , (802553,  13,       1) /* ArmorModVsSlash */
     , (802553,  14,       1) /* ArmorModVsPierce */
     , (802553,  15,       1) /* ArmorModVsBludgeon */
     , (802553,  16,       1) /* ArmorModVsCold */
     , (802553,  17,       1) /* ArmorModVsFire */
     , (802553,  18,       1) /* ArmorModVsAcid */
     , (802553,  19,       1) /* ArmorModVsElectric */
     , (802553,  31,      18) /* VisualAwarenessRange */
     , (802553,  34,     1.1) /* PowerupTime */
     , (802553,  36,       2) /* ChargeSpeed */
     , (802553,  39,     1.2) /* DefaultScale */
     , (802553,  64,       1) /* ResistSlash */
     , (802553,  65,       1) /* ResistPierce */
     , (802553,  66,       1) /* ResistBludgeon */
     , (802553,  67,       1) /* ResistFire */
     , (802553,  68,       1) /* ResistCold */
     , (802553,  69,       1) /* ResistAcid */
     , (802553,  70,       1) /* ResistElectric */
     , (802553,  71,       1) /* ResistHealthBoost */
     , (802553,  72,       1) /* ResistStaminaDrain */
     , (802553,  73,       1) /* ResistStaminaBoost */
     , (802553,  74,       1) /* ResistManaDrain */
     , (802553,  75,       1) /* ResistManaBoost */
     , (802553,  80,       3) /* AiUseMagicDelay */
     , (802553, 104,      10) /* ObviousRadarRange */
     , (802553, 122,       2) /* AiAcquireHealth */
     , (802553, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802553,   1, 'Mournful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802553,   1,   33559125) /* Setup */
     , (802553,   2,  150995334) /* MotionTable */
     , (802553,   3,  536871102) /* SoundTable */
     , (802553,   4,  805306368) /* CombatTable */
     , (802553,   6,   67115468) /* PaletteBase */
     , (802553,   7,  268436907) /* ClothingBase */
     , (802553,   8,  100677371) /* Icon */
     , (802553,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802553,   1, 920, 0, 0) /* Strength */
     , (802553,   2, 920, 0, 0) /* Endurance */
     , (802553,   3, 920, 0, 0) /* Quickness */
     , (802553,   4, 920, 0, 0) /* Coordination */
     , (802553,   5, 920, 0, 0) /* Focus */
     , (802553,   6, 920, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802553,   1, 10000, 0, 0, 10000) /* MaxHealth */
     , (802553,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802553,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802553,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802553,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802553, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802553, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802553, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802553, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802553, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802553, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802553, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802553, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802553, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802553, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802553,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802553,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802553,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802553,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802553,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802553,  5,  4, 600,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802553,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802553,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802553,  8,  4, 600,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802553,  94)
     , (802553, 414);
