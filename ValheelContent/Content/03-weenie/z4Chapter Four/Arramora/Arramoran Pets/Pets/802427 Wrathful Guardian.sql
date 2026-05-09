DELETE FROM `weenie` WHERE `class_Id` = 802427;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802427, 'Wrathful Guardian', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802427,   1,         16) /* ItemType - Creature */
     , (802427,   2,         83) /* CreatureType - Shadow */
     , (802427,   3,          3) /* PaletteTemplate - Red */
     , (802427,   6,         -1) /* ItemsCapacity */
     , (802427,   7,         -1) /* ContainersCapacity */
     , (802427,  16,          1) /* ItemUseable - No */
     , (802427,  25,        450) /* Level */
     , (802427,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802427, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802427, 140,          1) /* AiOptions - CanOpenDoors */
     , (802427, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802427,   1, True ) /* Stuck */
     , (802427,  11, False) /* IgnoreCollisions */
     , (802427,  12, True ) /* ReportCollisions */
     , (802427,  13, False) /* Ethereal */
     , (802427, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802427,   1,       5) /* HeartbeatInterval */
     , (802427,   2,       0) /* HeartbeatTimestamp */
     , (802427,   3,    0.45) /* HealthRate */
     , (802427,   4,     0.5) /* StaminaRate */
     , (802427,   5,       2) /* ManaRate */
     , (802427,  12,     0.5) /* Shade */
     , (802427,  13,       1) /* ArmorModVsSlash */
     , (802427,  14,       1) /* ArmorModVsPierce */
     , (802427,  15,       1) /* ArmorModVsBludgeon */
     , (802427,  16,       1) /* ArmorModVsCold */
     , (802427,  17,       1) /* ArmorModVsFire */
     , (802427,  18,       1) /* ArmorModVsAcid */
     , (802427,  19,       1) /* ArmorModVsElectric */
     , (802427,  31,      18) /* VisualAwarenessRange */
     , (802427,  34,     1.1) /* PowerupTime */
     , (802427,  36,       2) /* ChargeSpeed */
     , (802427,  39,     1.2) /* DefaultScale */
     , (802427,  64,       1) /* ResistSlash */
     , (802427,  65,       1) /* ResistPierce */
     , (802427,  66,       1) /* ResistBludgeon */
     , (802427,  67,       1) /* ResistFire */
     , (802427,  68,       1) /* ResistCold */
     , (802427,  69,       1) /* ResistAcid */
     , (802427,  70,       1) /* ResistElectric */
     , (802427,  71,       1) /* ResistHealthBoost */
     , (802427,  72,       1) /* ResistStaminaDrain */
     , (802427,  73,       1) /* ResistStaminaBoost */
     , (802427,  74,       1) /* ResistManaDrain */
     , (802427,  75,       1) /* ResistManaBoost */
     , (802427,  80,       3) /* AiUseMagicDelay */
     , (802427, 104,      10) /* ObviousRadarRange */
     , (802427, 122,       2) /* AiAcquireHealth */
     , (802427, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802427,   1, 'Wrathful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802427,   1,   33559125) /* Setup */
     , (802427,   2,  150995334) /* MotionTable */
     , (802427,   3,  536871102) /* SoundTable */
     , (802427,   4,  805306368) /* CombatTable */
     , (802427,   6,   67115468) /* PaletteBase */
     , (802427,   7,  268436907) /* ClothingBase */
     , (802427,   8,  100677371) /* Icon */
     , (802427,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802427,   1, 1000, 0, 0) /* Strength */
     , (802427,   2, 1000, 0, 0) /* Endurance */
     , (802427,   3, 1000, 0, 0) /* Quickness */
     , (802427,   4, 1000, 0, 0) /* Coordination */
     , (802427,   5, 1000, 0, 0) /* Focus */
     , (802427,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802427,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (802427,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (802427,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802427,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802427,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802427, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802427, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802427, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802427, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802427, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802427, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802427, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802427, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802427, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802427, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802427,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802427,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802427,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802427,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802427,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802427,  5,  4, 400,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802427,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802427,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802427,  8,  4, 400,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802427,  94)
     , (802427, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802427, 2, 802429,  1, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;