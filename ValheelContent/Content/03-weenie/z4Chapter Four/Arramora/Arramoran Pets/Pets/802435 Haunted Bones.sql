DELETE FROM `weenie` WHERE `class_Id` = 802435;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802435, 'Haunted Bones', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802435,   1,         16) /* ItemType - Creature */
     , (802435,   2,         30) /* CreatureType - Shadow */
     , (802435,   3,         12) /* PaletteTemplate - Red */
     , (802435,   6,         -1) /* ItemsCapacity */
     , (802435,   7,         -1) /* ContainersCapacity */
     , (802435,  16,          1) /* ItemUseable - No */
     , (802435,  25,        450) /* Level */
     , (802435,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802435, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802435, 140,          1) /* AiOptions - CanOpenDoors */
     , (802435, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802435,   1, True ) /* Stuck */
     , (802435,  11, False) /* IgnoreCollisions */
     , (802435,  12, True ) /* ReportCollisions */
     , (802435,  13, False) /* Ethereal */
     , (802435, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802435,   1,       5) /* HeartbeatInterval */
     , (802435,   2,       0) /* HeartbeatTimestamp */
     , (802435,   3,    0.45) /* HealthRate */
     , (802435,   4,     0.5) /* StaminaRate */
     , (802435,   5,       2) /* ManaRate */
     , (802435,  12,     0.5) /* Shade */
     , (802435,  13,       1) /* ArmorModVsSlash */
     , (802435,  14,       1) /* ArmorModVsPierce */
     , (802435,  15,       1) /* ArmorModVsBludgeon */
     , (802435,  16,       1) /* ArmorModVsCold */
     , (802435,  17,       1) /* ArmorModVsFire */
     , (802435,  18,       1) /* ArmorModVsAcid */
     , (802435,  19,       1) /* ArmorModVsElectric */
     , (802435,  31,      18) /* VisualAwarenessRange */
     , (802435,  34,     1.1) /* PowerupTime */
     , (802435,  36,       2) /* ChargeSpeed */
     , (802435,  39,     1.2) /* DefaultScale */
     , (802435,  64,       1) /* ResistSlash */
     , (802435,  65,       1) /* ResistPierce */
     , (802435,  66,       1) /* ResistBludgeon */
     , (802435,  67,       1) /* ResistFire */
     , (802435,  68,       1) /* ResistCold */
     , (802435,  69,       1) /* ResistAcid */
     , (802435,  70,       1) /* ResistElectric */
     , (802435,  71,       1) /* ResistHealthBoost */
     , (802435,  72,       1) /* ResistStaminaDrain */
     , (802435,  73,       1) /* ResistStaminaBoost */
     , (802435,  74,       1) /* ResistManaDrain */
     , (802435,  75,       1) /* ResistManaBoost */
     , (802435,  80,       3) /* AiUseMagicDelay */
     , (802435, 104,      10) /* ObviousRadarRange */
     , (802435, 122,       2) /* AiAcquireHealth */
     , (802435, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802435,   1, 'Haunted Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802435,   1,   33560230) /* Setup */
     , (802435,   2,  150994981) /* MotionTable */
     , (802435,   3,  536870942) /* SoundTable */
     , (802435,   4,  805306368) /* CombatTable */
     , (802435,   6,   67116522) /* PaletteBase */
     , (802435,   7,  268437008) /* ClothingBase */
     , (802435,   8,  100669124) /* Icon */
     , (802435,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802435,   1, 1000, 0, 0) /* Strength */
     , (802435,   2, 1000, 0, 0) /* Endurance */
     , (802435,   3, 1000, 0, 0) /* Quickness */
     , (802435,   4, 1000, 0, 0) /* Coordination */
     , (802435,   5, 1000, 0, 0) /* Focus */
     , (802435,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802435,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (802435,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (802435,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802435,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802435,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802435, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802435, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802435, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802435, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802435, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802435, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802435, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802435, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802435, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802435, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802435,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802435,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802435,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802435,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802435,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802435,  5,  4, 400, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802435,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802435,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802435,  8,  4, 400, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802435,  94)
     , (802435, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802435, 2, 802434,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;