DELETE FROM `weenie` WHERE `class_Id` = 802533;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802533, 'HauntedBones450', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802533,   1,         16) /* ItemType - Creature */
     , (802533,   2,         30) /* CreatureType - Shadow */
     , (802533,   3,         12) /* PaletteTemplate - Red */
     , (802533,   6,         -1) /* ItemsCapacity */
     , (802533,   7,         -1) /* ContainersCapacity */
     , (802533,  16,          1) /* ItemUseable - No */
     , (802533,  25,        450) /* Level */
     , (802533,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802533, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802533, 140,          1) /* AiOptions - CanOpenDoors */
     , (802533, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802533,   1, True ) /* Stuck */
     , (802533,  11, False) /* IgnoreCollisions */
     , (802533,  12, True ) /* ReportCollisions */
     , (802533,  13, False) /* Ethereal */
     , (802533, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802533,   1,       5) /* HeartbeatInterval */
     , (802533,   2,       0) /* HeartbeatTimestamp */
     , (802533,   3,    0.45) /* HealthRate */
     , (802533,   4,     0.5) /* StaminaRate */
     , (802533,   5,       2) /* ManaRate */
     , (802533,  12,     0.5) /* Shade */
     , (802533,  13,       1) /* ArmorModVsSlash */
     , (802533,  14,       1) /* ArmorModVsPierce */
     , (802533,  15,       1) /* ArmorModVsBludgeon */
     , (802533,  16,       1) /* ArmorModVsCold */
     , (802533,  17,       1) /* ArmorModVsFire */
     , (802533,  18,       1) /* ArmorModVsAcid */
     , (802533,  19,       1) /* ArmorModVsElectric */
     , (802533,  31,      18) /* VisualAwarenessRange */
     , (802533,  34,     1.1) /* PowerupTime */
     , (802533,  36,       2) /* ChargeSpeed */
     , (802533,  39,     1.2) /* DefaultScale */
     , (802533,  64,       1) /* ResistSlash */
     , (802533,  65,       1) /* ResistPierce */
     , (802533,  66,       1) /* ResistBludgeon */
     , (802533,  67,       1) /* ResistFire */
     , (802533,  68,       1) /* ResistCold */
     , (802533,  69,       1) /* ResistAcid */
     , (802533,  70,       1) /* ResistElectric */
     , (802533,  71,       1) /* ResistHealthBoost */
     , (802533,  72,       1) /* ResistStaminaDrain */
     , (802533,  73,       1) /* ResistStaminaBoost */
     , (802533,  74,       1) /* ResistManaDrain */
     , (802533,  75,       1) /* ResistManaBoost */
     , (802533,  80,       3) /* AiUseMagicDelay */
     , (802533, 104,      10) /* ObviousRadarRange */
     , (802533, 122,       2) /* AiAcquireHealth */
     , (802533, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802533,   1, 'Haunted Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802533,   1,   33560230) /* Setup */
     , (802533,   2,  150994981) /* MotionTable */
     , (802533,   3,  536870942) /* SoundTable */
     , (802533,   4,  805306368) /* CombatTable */
     , (802533,   6,   67116522) /* PaletteBase */
     , (802533,   7,  268437008) /* ClothingBase */
     , (802533,   8,  100669124) /* Icon */
     , (802533,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802533,   1, 850, 0, 0) /* Strength */
     , (802533,   2, 850, 0, 0) /* Endurance */
     , (802533,   3, 850, 0, 0) /* Quickness */
     , (802533,   4, 850, 0, 0) /* Coordination */
     , (802533,   5, 850, 0, 0) /* Focus */
     , (802533,   6, 850, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802533,   1, 7000, 0, 0, 7000) /* MaxHealth */
     , (802533,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802533,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802533,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802533,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802533, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802533, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802533, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802533, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802533, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802533, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802533, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802533, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802533, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802533, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802533,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802533,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802533,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802533,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802533,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802533,  5,  4, 450, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802533,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802533,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802533,  8,  4, 450, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802533,  94)
     , (802533, 414);
