DELETE FROM `weenie` WHERE `class_Id` = 802495;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802495, 'WretchedBones350', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802495,   1,         16) /* ItemType - Creature */
     , (802495,   2,         30) /* CreatureType - Shadow */
     , (802495,   3,         1) /* PaletteTemplate - Red */
     , (802495,   6,         -1) /* ItemsCapacity */
     , (802495,   7,         -1) /* ContainersCapacity */
     , (802495,  16,          1) /* ItemUseable - No */
     , (802495,  25,       350) /* Level */
     , (802495,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802495, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802495, 140,          1) /* AiOptions - CanOpenDoors */
     , (802495, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802495,   1, True ) /* Stuck */
     , (802495,  11, False) /* IgnoreCollisions */
     , (802495,  12, True ) /* ReportCollisions */
     , (802495,  13, False) /* Ethereal */
     , (802495, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802495,   1,       5) /* HeartbeatInterval */
     , (802495,   2,       0) /* HeartbeatTimestamp */
     , (802495,   3,    0.45) /* HealthRate */
     , (802495,   4,     0.5) /* StaminaRate */
     , (802495,   5,       2) /* ManaRate */
     , (802495,  12,     0.5) /* Shade */
     , (802495,  13,       1) /* ArmorModVsSlash */
     , (802495,  14,       1) /* ArmorModVsPierce */
     , (802495,  15,       1) /* ArmorModVsBludgeon */
     , (802495,  16,       1) /* ArmorModVsCold */
     , (802495,  17,       1) /* ArmorModVsFire */
     , (802495,  18,       1) /* ArmorModVsAcid */
     , (802495,  19,       1) /* ArmorModVsElectric */
     , (802495,  31,      18) /* VisualAwarenessRange */
     , (802495,  34,     1.1) /* PowerupTime */
     , (802495,  36,       2) /* ChargeSpeed */
     , (802495,  39,     1.2) /* DefaultScale */
     , (802495,  64,       1) /* ResistSlash */
     , (802495,  65,       1) /* ResistPierce */
     , (802495,  66,       1) /* ResistBludgeon */
     , (802495,  67,       1) /* ResistFire */
     , (802495,  68,       1) /* ResistCold */
     , (802495,  69,       1) /* ResistAcid */
     , (802495,  70,       1) /* ResistElectric */
     , (802495,  71,       1) /* ResistHealthBoost */
     , (802495,  72,       1) /* ResistStaminaDrain */
     , (802495,  73,       1) /* ResistStaminaBoost */
     , (802495,  74,       1) /* ResistManaDrain */
     , (802495,  75,       1) /* ResistManaBoost */
     , (802495,  80,       3) /* AiUseMagicDelay */
     , (802495, 104,      10) /* ObviousRadarRange */
     , (802495, 122,       2) /* AiAcquireHealth */
     , (802495, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802495,   1, 'Wretched Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802495,   1,   33560230) /* Setup */
     , (802495,   2,  150994981) /* MotionTable */
     , (802495,   3,  536870942) /* SoundTable */
     , (802495,   4,  805306368) /* CombatTable */
     , (802495,   6,   67116522) /* PaletteBase */
     , (802495,   7,  268437008) /* ClothingBase */
     , (802495,   8,  100669124) /* Icon */
     , (802495,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802495,   1, 600, 0, 0) /* Strength */
     , (802495,   2, 600, 0, 0) /* Endurance */
     , (802495,   3, 600, 0, 0) /* Quickness */
     , (802495,   4, 600, 0, 0) /* Coordination */
     , (802495,   5, 600, 0, 0) /* Focus */
     , (802495,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802495,   1, 3500, 0, 0, 3500) /* MaxHealth */
     , (802495,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802495,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802495,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802495,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802495, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802495, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802495, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802495, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802495, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802495, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802495, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802495, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802495, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802495, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802495,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802495,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802495,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802495,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802495,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802495,  5,  4, 350, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802495,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802495,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802495,  8,  4, 350, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802495,  94)
     , (802495, 414);
