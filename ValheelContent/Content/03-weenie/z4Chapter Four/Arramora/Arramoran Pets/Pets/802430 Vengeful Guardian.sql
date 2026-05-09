DELETE FROM `weenie` WHERE `class_Id` = 802430;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802430, 'Vengeful Guardian', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802430,   1,         16) /* ItemType - Creature */
     , (802430,   2,         83) /* CreatureType - Shadow */
     , (802430,   3,         14) /* PaletteTemplate - Red */
     , (802430,   6,         -1) /* ItemsCapacity */
     , (802430,   7,         -1) /* ContainersCapacity */
     , (802430,  16,          1) /* ItemUseable - No */
     , (802430,  25,        450) /* Level */
     , (802430,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802430, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802430, 140,          1) /* AiOptions - CanOpenDoors */
     , (802430, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802430,   1, True ) /* Stuck */
     , (802430,  11, False) /* IgnoreCollisions */
     , (802430,  12, True ) /* ReportCollisions */
     , (802430,  13, False) /* Ethereal */
     , (802430, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802430,   1,       5) /* HeartbeatInterval */
     , (802430,   2,       0) /* HeartbeatTimestamp */
     , (802430,   3,    0.45) /* HealthRate */
     , (802430,   4,     0.5) /* StaminaRate */
     , (802430,   5,       2) /* ManaRate */
     , (802430,  12,     0.5) /* Shade */
     , (802430,  13,       1) /* ArmorModVsSlash */
     , (802430,  14,       1) /* ArmorModVsPierce */
     , (802430,  15,       1) /* ArmorModVsBludgeon */
     , (802430,  16,       1) /* ArmorModVsCold */
     , (802430,  17,       1) /* ArmorModVsFire */
     , (802430,  18,       1) /* ArmorModVsAcid */
     , (802430,  19,       1) /* ArmorModVsElectric */
     , (802430,  31,      18) /* VisualAwarenessRange */
     , (802430,  34,     1.1) /* PowerupTime */
     , (802430,  36,       2) /* ChargeSpeed */
     , (802430,  39,     1.2) /* DefaultScale */
     , (802430,  64,       1) /* ResistSlash */
     , (802430,  65,       1) /* ResistPierce */
     , (802430,  66,       1) /* ResistBludgeon */
     , (802430,  67,       1) /* ResistFire */
     , (802430,  68,       1) /* ResistCold */
     , (802430,  69,       1) /* ResistAcid */
     , (802430,  70,       1) /* ResistElectric */
     , (802430,  71,       1) /* ResistHealthBoost */
     , (802430,  72,       1) /* ResistStaminaDrain */
     , (802430,  73,       1) /* ResistStaminaBoost */
     , (802430,  74,       1) /* ResistManaDrain */
     , (802430,  75,       1) /* ResistManaBoost */
     , (802430,  80,       3) /* AiUseMagicDelay */
     , (802430, 104,      10) /* ObviousRadarRange */
     , (802430, 122,       2) /* AiAcquireHealth */
     , (802430, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802430,   1, 'Vengeful Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802430,   1,   33559125) /* Setup */
     , (802430,   2,  150995334) /* MotionTable */
     , (802430,   3,  536871102) /* SoundTable */
     , (802430,   4,  805306368) /* CombatTable */
     , (802430,   6,   67115468) /* PaletteBase */
     , (802430,   7,  268436907) /* ClothingBase */
     , (802430,   8,  100677371) /* Icon */
     , (802430,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802430,   1, 1000, 0, 0) /* Strength */
     , (802430,   2, 1000, 0, 0) /* Endurance */
     , (802430,   3, 1000, 0, 0) /* Quickness */
     , (802430,   4, 1000, 0, 0) /* Coordination */
     , (802430,   5, 1000, 0, 0) /* Focus */
     , (802430,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802430,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (802430,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (802430,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802430,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802430,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802430, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802430, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802430, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802430, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802430, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802430, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802430, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802430, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802430, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802430, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802430,  0,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802430,  1,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802430,  2,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802430,  3,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802430,  4,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802430,  5,  4, 400,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802430,  6,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802430,  7,  4,  0,    0,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802430,  8,  4, 400,  0.4,  1570,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802430,  94)
     , (802430, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802430, 2, 802429,  1, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;