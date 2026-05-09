DELETE FROM `weenie` WHERE `class_Id` = 802437;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802437, 'Wretched Bones', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802437,   1,         16) /* ItemType - Creature */
     , (802437,   2,         30) /* CreatureType - Shadow */
     , (802437,   3,          1) /* PaletteTemplate - Red */
     , (802437,   6,         -1) /* ItemsCapacity */
     , (802437,   7,         -1) /* ContainersCapacity */
     , (802437,  16,          1) /* ItemUseable - No */
     , (802437,  25,        450) /* Level */
     , (802437,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802437, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802437, 140,          1) /* AiOptions - CanOpenDoors */
     , (802437, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802437,   1, True ) /* Stuck */
     , (802437,  11, False) /* IgnoreCollisions */
     , (802437,  12, True ) /* ReportCollisions */
     , (802437,  13, False) /* Ethereal */
     , (802437, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802437,   1,       5) /* HeartbeatInterval */
     , (802437,   2,       0) /* HeartbeatTimestamp */
     , (802437,   3,    0.45) /* HealthRate */
     , (802437,   4,     0.5) /* StaminaRate */
     , (802437,   5,       2) /* ManaRate */
     , (802437,  12,     0.5) /* Shade */
     , (802437,  13,       1) /* ArmorModVsSlash */
     , (802437,  14,       1) /* ArmorModVsPierce */
     , (802437,  15,       1) /* ArmorModVsBludgeon */
     , (802437,  16,       1) /* ArmorModVsCold */
     , (802437,  17,       1) /* ArmorModVsFire */
     , (802437,  18,       1) /* ArmorModVsAcid */
     , (802437,  19,       1) /* ArmorModVsElectric */
     , (802437,  31,      18) /* VisualAwarenessRange */
     , (802437,  34,     1.1) /* PowerupTime */
     , (802437,  36,       2) /* ChargeSpeed */
     , (802437,  39,     1.2) /* DefaultScale */
     , (802437,  64,       1) /* ResistSlash */
     , (802437,  65,       1) /* ResistPierce */
     , (802437,  66,       1) /* ResistBludgeon */
     , (802437,  67,       1) /* ResistFire */
     , (802437,  68,       1) /* ResistCold */
     , (802437,  69,       1) /* ResistAcid */
     , (802437,  70,       1) /* ResistElectric */
     , (802437,  71,       1) /* ResistHealthBoost */
     , (802437,  72,       1) /* ResistStaminaDrain */
     , (802437,  73,       1) /* ResistStaminaBoost */
     , (802437,  74,       1) /* ResistManaDrain */
     , (802437,  75,       1) /* ResistManaBoost */
     , (802437,  80,       3) /* AiUseMagicDelay */
     , (802437, 104,      10) /* ObviousRadarRange */
     , (802437, 122,       2) /* AiAcquireHealth */
     , (802437, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802437,   1, 'Wretched Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802437,   1,   33560230) /* Setup */
     , (802437,   2,  150994981) /* MotionTable */
     , (802437,   3,  536870942) /* SoundTable */
     , (802437,   4,  805306368) /* CombatTable */
     , (802437,   6,   67116522) /* PaletteBase */
     , (802437,   7,  268437008) /* ClothingBase */
     , (802437,   8,  100669124) /* Icon */
     , (802437,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802437,   1, 1000, 0, 0) /* Strength */
     , (802437,   2, 1000, 0, 0) /* Endurance */
     , (802437,   3, 1000, 0, 0) /* Quickness */
     , (802437,   4, 1000, 0, 0) /* Coordination */
     , (802437,   5, 1000, 0, 0) /* Focus */
     , (802437,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802437,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (802437,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (802437,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802437,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802437,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802437, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802437, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802437, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802437, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802437, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802437, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802437, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802437, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802437, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802437, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802437,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802437,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802437,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802437,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802437,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802437,  5,  4, 400, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802437,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802437,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802437,  8,  4, 400, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802437,  94)
     , (802437, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802437, 2, 802434,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;