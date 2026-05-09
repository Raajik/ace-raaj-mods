DELETE FROM `weenie` WHERE `class_Id` = 802513;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802513, 'WretchedBones400', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802513,   1,         16) /* ItemType - Creature */
     , (802513,   2,         30) /* CreatureType - Shadow */
     , (802513,   3,         1) /* PaletteTemplate - Red */
     , (802513,   6,         -1) /* ItemsCapacity */
     , (802513,   7,         -1) /* ContainersCapacity */
     , (802513,  16,          1) /* ItemUseable - No */
     , (802513,  25,       400) /* Level */
     , (802513,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802513, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802513, 140,          1) /* AiOptions - CanOpenDoors */
     , (802513, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802513,   1, True ) /* Stuck */
     , (802513,  11, False) /* IgnoreCollisions */
     , (802513,  12, True ) /* ReportCollisions */
     , (802513,  13, False) /* Ethereal */
     , (802513, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802513,   1,       5) /* HeartbeatInterval */
     , (802513,   2,       0) /* HeartbeatTimestamp */
     , (802513,   3,    0.45) /* HealthRate */
     , (802513,   4,     0.5) /* StaminaRate */
     , (802513,   5,       2) /* ManaRate */
     , (802513,  12,     0.5) /* Shade */
     , (802513,  13,       1) /* ArmorModVsSlash */
     , (802513,  14,       1) /* ArmorModVsPierce */
     , (802513,  15,       1) /* ArmorModVsBludgeon */
     , (802513,  16,       1) /* ArmorModVsCold */
     , (802513,  17,       1) /* ArmorModVsFire */
     , (802513,  18,       1) /* ArmorModVsAcid */
     , (802513,  19,       1) /* ArmorModVsElectric */
     , (802513,  31,      18) /* VisualAwarenessRange */
     , (802513,  34,     1.1) /* PowerupTime */
     , (802513,  36,       2) /* ChargeSpeed */
     , (802513,  39,     1.2) /* DefaultScale */
     , (802513,  64,       1) /* ResistSlash */
     , (802513,  65,       1) /* ResistPierce */
     , (802513,  66,       1) /* ResistBludgeon */
     , (802513,  67,       1) /* ResistFire */
     , (802513,  68,       1) /* ResistCold */
     , (802513,  69,       1) /* ResistAcid */
     , (802513,  70,       1) /* ResistElectric */
     , (802513,  71,       1) /* ResistHealthBoost */
     , (802513,  72,       1) /* ResistStaminaDrain */
     , (802513,  73,       1) /* ResistStaminaBoost */
     , (802513,  74,       1) /* ResistManaDrain */
     , (802513,  75,       1) /* ResistManaBoost */
     , (802513,  80,       3) /* AiUseMagicDelay */
     , (802513, 104,      10) /* ObviousRadarRange */
     , (802513, 122,       2) /* AiAcquireHealth */
     , (802513, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802513,   1, 'Wretched Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802513,   1,   33560230) /* Setup */
     , (802513,   2,  150994981) /* MotionTable */
     , (802513,   3,  536870942) /* SoundTable */
     , (802513,   4,  805306368) /* CombatTable */
     , (802513,   6,   67116522) /* PaletteBase */
     , (802513,   7,  268437008) /* ClothingBase */
     , (802513,   8,  100669124) /* Icon */
     , (802513,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802513,   1, 730, 0, 0) /* Strength */
     , (802513,   2, 730, 0, 0) /* Endurance */
     , (802513,   3, 730, 0, 0) /* Quickness */
     , (802513,   4, 730, 0, 0) /* Coordination */
     , (802513,   5, 730, 0, 0) /* Focus */
     , (802513,   6, 730, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802513,   1, 5000, 0, 0, 5000) /* MaxHealth */
     , (802513,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802513,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802513,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802513,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802513, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802513, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802513, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802513, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802513, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802513, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802513, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802513, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802513, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802513, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802513,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802513,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802513,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802513,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802513,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802513,  5,  4, 400, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802513,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802513,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802513,  8,  4, 400, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802513,  94)
     , (802513, 414);
