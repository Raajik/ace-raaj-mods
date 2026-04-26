DELETE FROM `weenie` WHERE `class_Id` = 802438;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802438, 'Defiled Bones', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802438,   1,         16) /* ItemType - Creature */
     , (802438,   2,         30) /* CreatureType - Shadow */
     , (802438,   3,         2) /* PaletteTemplate - Red */
     , (802438,   6,         -1) /* ItemsCapacity */
     , (802438,   7,         -1) /* ContainersCapacity */
     , (802438,  16,          1) /* ItemUseable - No */
     , (802438,  25,        700) /* Level */
     , (802438,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802438, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802438, 140,          1) /* AiOptions - CanOpenDoors */
     , (802438, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802438,   1, True ) /* Stuck */
     , (802438,  11, False) /* IgnoreCollisions */
     , (802438,  12, True ) /* ReportCollisions */
     , (802438,  13, False) /* Ethereal */
     , (802438, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802438,   1,       5) /* HeartbeatInterval */
     , (802438,   2,       0) /* HeartbeatTimestamp */
     , (802438,   3,    0.45) /* HealthRate */
     , (802438,   4,     0.5) /* StaminaRate */
     , (802438,   5,       2) /* ManaRate */
     , (802438,  12,     0.5) /* Shade */
     , (802438,  13,       1) /* ArmorModVsSlash */
     , (802438,  14,       1) /* ArmorModVsPierce */
     , (802438,  15,       1) /* ArmorModVsBludgeon */
     , (802438,  16,       1) /* ArmorModVsCold */
     , (802438,  17,       1) /* ArmorModVsFire */
     , (802438,  18,       1) /* ArmorModVsAcid */
     , (802438,  19,       1) /* ArmorModVsElectric */
     , (802438,  31,      18) /* VisualAwarenessRange */
     , (802438,  34,     1.1) /* PowerupTime */
     , (802438,  36,       2) /* ChargeSpeed */
     , (802438,  39,     1.2) /* DefaultScale */
     , (802438,  64,       1) /* ResistSlash */
     , (802438,  65,       1) /* ResistPierce */
     , (802438,  66,       1) /* ResistBludgeon */
     , (802438,  67,       1) /* ResistFire */
     , (802438,  68,       1) /* ResistCold */
     , (802438,  69,       1) /* ResistAcid */
     , (802438,  70,       1) /* ResistElectric */
     , (802438,  71,       1) /* ResistHealthBoost */
     , (802438,  72,       1) /* ResistStaminaDrain */
     , (802438,  73,       1) /* ResistStaminaBoost */
     , (802438,  74,       1) /* ResistManaDrain */
     , (802438,  75,       1) /* ResistManaBoost */
     , (802438,  80,       3) /* AiUseMagicDelay */
     , (802438, 104,      10) /* ObviousRadarRange */
     , (802438, 122,       2) /* AiAcquireHealth */
     , (802438, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802438,   1, 'Defiled Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802438,   1,   33560230) /* Setup */
     , (802438,   2,  150994981) /* MotionTable */
     , (802438,   3,  536870942) /* SoundTable */
     , (802438,   4,  805306368) /* CombatTable */
     , (802438,   6,   67116522) /* PaletteBase */
     , (802438,   7,  268437008) /* ClothingBase */
     , (802438,   8,  100669124) /* Icon */
     , (802438,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802438,   1, 1000, 0, 0) /* Strength */
     , (802438,   2, 1000, 0, 0) /* Endurance */
     , (802438,   3, 1000, 0, 0) /* Quickness */
     , (802438,   4, 1000, 0, 0) /* Coordination */
     , (802438,   5, 1000, 0, 0) /* Focus */
     , (802438,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802438,   1, 15000, 0, 0, 15000) /* MaxHealth */
     , (802438,   3, 800, 0, 0, 800) /* MaxStamina */
     , (802438,   5, 800, 0, 0, 800) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802438,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802438,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802438, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802438, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802438, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802438, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802438, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802438, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802438, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802438, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802438, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802438, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802438,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802438,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802438,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802438,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802438,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802438,  5,  4, 1000, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802438,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802438,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802438,  8,  4, 1000, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802438,  94)
     , (802438, 414);
