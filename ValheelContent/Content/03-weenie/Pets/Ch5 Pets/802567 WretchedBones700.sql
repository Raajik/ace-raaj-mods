DELETE FROM `weenie` WHERE `class_Id` = 802567;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802567, 'WretchedBones700', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802567,   1,         16) /* ItemType - Creature */
     , (802567,   2,         30) /* CreatureType - Shadow */
     , (802567,   3,         1) /* PaletteTemplate - Red */
     , (802567,   6,         -1) /* ItemsCapacity */
     , (802567,   7,         -1) /* ContainersCapacity */
     , (802567,  16,          1) /* ItemUseable - No */
     , (802567,  25,        700) /* Level */
     , (802567,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802567, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802567, 140,          1) /* AiOptions - CanOpenDoors */
     , (802567, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802567,   1, True ) /* Stuck */
     , (802567,  11, False) /* IgnoreCollisions */
     , (802567,  12, True ) /* ReportCollisions */
     , (802567,  13, False) /* Ethereal */
     , (802567, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802567,   1,       5) /* HeartbeatInterval */
     , (802567,   2,       0) /* HeartbeatTimestamp */
     , (802567,   3,    0.45) /* HealthRate */
     , (802567,   4,     0.5) /* StaminaRate */
     , (802567,   5,       2) /* ManaRate */
     , (802567,  12,     0.5) /* Shade */
     , (802567,  13,       1) /* ArmorModVsSlash */
     , (802567,  14,       1) /* ArmorModVsPierce */
     , (802567,  15,       1) /* ArmorModVsBludgeon */
     , (802567,  16,       1) /* ArmorModVsCold */
     , (802567,  17,       1) /* ArmorModVsFire */
     , (802567,  18,       1) /* ArmorModVsAcid */
     , (802567,  19,       1) /* ArmorModVsElectric */
     , (802567,  31,      18) /* VisualAwarenessRange */
     , (802567,  34,     1.1) /* PowerupTime */
     , (802567,  36,       2) /* ChargeSpeed */
     , (802567,  39,     1.2) /* DefaultScale */
     , (802567,  64,       1) /* ResistSlash */
     , (802567,  65,       1) /* ResistPierce */
     , (802567,  66,       1) /* ResistBludgeon */
     , (802567,  67,       1) /* ResistFire */
     , (802567,  68,       1) /* ResistCold */
     , (802567,  69,       1) /* ResistAcid */
     , (802567,  70,       1) /* ResistElectric */
     , (802567,  71,       1) /* ResistHealthBoost */
     , (802567,  72,       1) /* ResistStaminaDrain */
     , (802567,  73,       1) /* ResistStaminaBoost */
     , (802567,  74,       1) /* ResistManaDrain */
     , (802567,  75,       1) /* ResistManaBoost */
     , (802567,  80,       3) /* AiUseMagicDelay */
     , (802567, 104,      10) /* ObviousRadarRange */
     , (802567, 122,       2) /* AiAcquireHealth */
     , (802567, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802567,   1, 'Wretched Bones') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802567,   1,   33560230) /* Setup */
     , (802567,   2,  150994981) /* MotionTable */
     , (802567,   3,  536870942) /* SoundTable */
     , (802567,   4,  805306368) /* CombatTable */
     , (802567,   6,   67116522) /* PaletteBase */
     , (802567,   7,  268437008) /* ClothingBase */
     , (802567,   8,  100669124) /* Icon */
     , (802567,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802567,   1, 1000, 0, 0) /* Strength */
     , (802567,   2, 1000, 0, 0) /* Endurance */
     , (802567,   3, 1000, 0, 0) /* Quickness */
     , (802567,   4, 1000, 0, 0) /* Coordination */
     , (802567,   5, 1000, 0, 0) /* Focus */
     , (802567,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802567,   1, 15000, 0, 0, 15000) /* MaxHealth */
     , (802567,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802567,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802567,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802567,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802567, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802567, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802567, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802567, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802567, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802567, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802567, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802567, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802567, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802567, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802567,  0,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802567,  1,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802567,  2,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802567,  3,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802567,  4,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802567,  5,  4, 1000, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802567,  6,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802567,  7,  4,  0,    0,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802567,  8,  4, 1000, 0.75,  1450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802567,  94)
     , (802567, 414);
