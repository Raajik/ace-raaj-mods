DELETE FROM `weenie` WHERE `class_Id` = 800290;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800290, 'Grisly Tumerok Berzerker', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800290,   1,         16) /* ItemType - Creature */
     , (800290,   2,          6) /* CreatureType - Tumerok */
     , (800290,   3,         62) /* PaletteTemplate - RedBrown */
     , (800290,   6,         -1) /* ItemsCapacity */
     , (800290,   7,         -1) /* ContainersCapacity */
     , (800290,  16,          1) /* ItemUseable - No */
     , (800290,  25,        235) /* Level */
     , (800290,  68,          0x80) /* TargetingTactic - Random, LastDamager */
     , (800290,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800290, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800290, 140,          1) /* AiOptions - CanOpenDoors */
     , (800290, 146,     6984195) /* XpOverride */
     , (800290, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800290,   1, True ) /* Stuck */
     , (800290,   6, False) /* AiUsesMana */
     , (800290,  11, False) /* IgnoreCollisions */
     , (800290,  12, True ) /* ReportCollisions */
     , (800290,  13, False) /* Ethereal */
     , (800290,  14, True ) /* GravityStatus */
     , (800290,  19, True ) /* Attackable */
     , (800290,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800290,   1,       5) /* HeartbeatInterval */
     , (800290,   2,       0) /* HeartbeatTimestamp */
     , (800290,   3,      24) /* HealthRate */
     , (800290,   4,      23) /* StaminaRate */
     , (800290,   5,       8) /* ManaRate */
     , (800290,  12,       1) /* Shade */
     , (800290,  13,    0.95) /* ArmorModVsSlash */
     , (800290,  14,    0.92) /* ArmorModVsPierce */
     , (800290,  15,    0.88) /* ArmorModVsBludgeon */
     , (800290,  16,    0.54) /* ArmorModVsCold */
     , (800290,  17,    0.52) /* ArmorModVsFire */
     , (800290,  18,    0.82) /* ArmorModVsAcid */
     , (800290,  19,    0.82) /* ArmorModVsElectric */
     , (800290,  31,      16) /* VisualAwarenessRange */
     , (800290,  34,       1) /* PowerupTime */
     , (800290,  36,       1) /* ChargeSpeed */
     , (800290,  39,     1.2) /* DefaultScale */
     , (800290,  64,    0.68) /* ResistSlash */
     , (800290,  65,    0.71) /* ResistPierce */
     , (800290,  66,    0.71) /* ResistBludgeon */
     , (800290,  67,       1) /* ResistFire */
     , (800290,  68,    0.55) /* ResistCold */
     , (800290,  69,    0.55) /* ResistAcid */
     , (800290,  70,    0.55) /* ResistElectric */
     , (800290,  71,       1) /* ResistHealthBoost */
     , (800290,  72,       1) /* ResistStaminaDrain */
     , (800290,  73,       1) /* ResistStaminaBoost */
     , (800290,  74,       1) /* ResistManaDrain */
     , (800290,  75,       1) /* ResistManaBoost */
     , (800290,  80,       3) /* AiUseMagicDelay */
     , (800290, 104,      10) /* ObviousRadarRange */
     , (800290, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800290,   1, 'Grisly Tumerok Berzerker') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800290,   1,   33559568) /* Setup */
     , (800290,   2,  150994954) /* MotionTable */
     , (800290,   3,  536870931) /* SoundTable */
     , (800290,   4,  805306380) /* CombatTable */
     , (800290,   6,   67116625) /* PaletteBase */
     , (800290,   7,  268437022) /* ClothingBase */
     , (800290,   8,  100667452) /* Icon */
     , (800290,  22,  872415270) /* PhysicsEffectTable */
     , (800290,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800290,   1, 300, 0, 0) /* Strength */
     , (800290,   2, 300, 0, 0) /* Endurance */
     , (800290,   3, 325, 0, 0) /* Quickness */
     , (800290,   4, 300, 0, 0) /* Coordination */
     , (800290,   5, 320, 0, 0) /* Focus */
     , (800290,   6, 350, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800290,   1,  3350, 0, 0, 3500) /* MaxHealth */
     , (800290,   3,  5700, 0, 0, 6000) /* MaxStamina */
     , (800290,   5,  3650, 0, 0, 4000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800290,  6, 0, 3, 0, 210, 0, 0) /* MeleeDefense        Specialized */
     , (800290,  7, 0, 3, 0, 230, 0, 0) /* MissileDefense      Specialized */
     , (800290, 14, 0, 3, 0, 300, 0, 0) /* ArcaneLore          Specialized */
     , (800290, 15, 0, 3, 0, 210, 0, 0) /* MagicDefense        Specialized */
     , (800290, 24, 0, 3, 0, 160, 0, 0) /* Run                 Specialized */
     , (800290, 31, 0, 3, 0, 230, 0, 0) /* CreatureEnchantment Specialized */
     , (800290, 33, 0, 3, 0, 230, 0, 0) /* LifeMagic           Specialized */
     , (800290, 34, 0, 3, 0, 230, 0, 0) /* WarMagic            Specialized */
     , (800290, 44, 0, 3, 0, 223, 0, 0) /* HeavyWeapons        Specialized */
     , (800290, 45, 0, 3, 0, 223, 0, 0) /* LightWeapons        Specialized */
     , (800290, 46, 0, 3, 0, 222, 0, 0) /* FinesseWeapons      Specialized */
     , (800290, 47, 0, 3, 0, 270, 0, 0) /* MissileWeapons      Specialized */
     , (800290, 48, 0, 3, 0, 335, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800290,  0,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800290,  1,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800290,  2,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800290,  3,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800290,  4,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800290,  5,  4, 135, 0.75,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800290,  6,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800290,  7,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800290,  8,  4, 135, 0.75,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
