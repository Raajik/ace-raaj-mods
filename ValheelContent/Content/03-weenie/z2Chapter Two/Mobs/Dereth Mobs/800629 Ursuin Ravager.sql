DELETE FROM `weenie` WHERE `class_Id` = 800629;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800629, 'Ursuin Ravager', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800629,   1,         16) /* ItemType - Creature */
     , (800629,   2,         46) /* CreatureType - Ursuin */
     , (800629,   3,         14) /* PaletteTemplate - Red */
     , (800629,   6,         -1) /* ItemsCapacity */
     , (800629,   7,         -1) /* ContainersCapacity */
     , (800629,  16,          1) /* ItemUseable - No */
     , (800629,  25,        240) /* Level */
     , (800629,  27,          0) /* ArmorType - None */
     , (800629,  40,          2) /* CombatMode - Melee */
     , (800629,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800629,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800629, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800629, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800629, 140,          1) /* AiOptions - CanOpenDoors */
     , (800629, 146,    26000000) /* XpOverride */
     , (800629, 332,      12000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800629,   1, True ) /* Stuck */
     , (800629,  11, False) /* IgnoreCollisions */
     , (800629,  12, True ) /* ReportCollisions */
     , (800629,  13, False) /* Ethereal */
     , (800629,  14, True ) /* GravityStatus */
     , (800629,  19, True ) /* Attackable */
     , (800629,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800629,   1,       5) /* HeartbeatInterval */
     , (800629,   2,       0) /* HeartbeatTimestamp */
     , (800629,   3,     0.5) /* HealthRate */
     , (800629,   4,       5) /* StaminaRate */
     , (800629,   5,       2) /* ManaRate */
     , (800629,  12,       0) /* Shade */
     , (800629,  13,       1) /* ArmorModVsSlash */
     , (800629,  14,       1) /* ArmorModVsPierce */
     , (800629,  15,       1) /* ArmorModVsBludgeon */
     , (800629,  16,     0.7) /* ArmorModVsCold */
     , (800629,  17,       1) /* ArmorModVsFire */
     , (800629,  18,       1) /* ArmorModVsAcid */
     , (800629,  19,       1) /* ArmorModVsElectric */
     , (800629,  31,      24) /* VisualAwarenessRange */
     , (800629,  34,     0.9) /* PowerupTime */
     , (800629,  36,       1) /* ChargeSpeed */
     , (800629,  39,     1.2) /* DefaultScale */
     , (800629,  64,     0.1) /* ResistSlash */
     , (800629,  65,     0.1) /* ResistPierce */
     , (800629,  66,     0.1) /* ResistBludgeon */
     , (800629,  67,     0.1) /* ResistFire */
     , (800629,  68,     0.5) /* ResistCold */
     , (800629,  69,     0.1) /* ResistAcid */
     , (800629,  70,     0.1) /* ResistElectric */
     , (800629,  71,       1) /* ResistHealthBoost */
     , (800629,  72,       1) /* ResistStaminaDrain */
     , (800629,  73,       1) /* ResistStaminaBoost */
     , (800629,  74,       1) /* ResistManaDrain */
     , (800629,  75,       1) /* ResistManaBoost */
     , (800629, 104,      10) /* ObviousRadarRange */
     , (800629, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800629,   1, 'Ursuin Ravager') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800629,   1,   33560186) /* Setup */
     , (800629,   2,  150995100) /* MotionTable */
     , (800629,   3,  536871011) /* SoundTable */
     , (800629,   4,  805306409) /* CombatTable */
     , (800629,   6,   67112944) /* PaletteBase */
     , (800629,   7,  268436633) /* ClothingBase */
     , (800629,   8,  100670959) /* Icon */
     , (800629,  22,  872415366) /* PhysicsEffectTable */
     , (800629,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800629,   1, 1400, 0, 0) /* Strength */
     , (800629,   2, 1200, 0, 0) /* Endurance */
     , (800629,   3, 320, 0, 0) /* Quickness */
     , (800629,   4, 1320, 0, 0) /* Coordination */
     , (800629,   5, 1150, 0, 0) /* Focus */
     , (800629,   6, 1150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800629,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800629,   3,  4700, 0, 0, 5000) /* MaxStamina */
     , (800629,   5,     0, 0, 0, 150) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800629,  6, 0, 3, 0, 300, 0, 0) /* MeleeDefense        Specialized */
     , (800629,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (800629, 13, 0, 3, 0, 400, 0, 0) /* UnarmedCombat       Specialized */
     , (800629, 15, 0, 3, 0, 255, 0, 0) /* MagicDefense        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800629,  0,  2, 1000, 0.75,  390,  218,  312,  218,  218,  285,  218,  218,    0, 1,  0.4,  0.1,    0,  0.4,  0.1,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (800629, 10,  1, 1000, 0.75,  390,  218,  312,  218,  218,  285,  218,  218,    0, 3,    0,  0.2,  0.8,    0,  0.2,  0.8,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (800629, 13,  1, 1000, 0.75,  390,  218,  312,  218,  218,  285,  218,  218,    0, 3,    0,    0,    0,    0,    0,    0,  0.1,  0.3,  0.7,  0.1,  0.3,  0.7) /* RearLeg */
     , (800629, 16,  4,  0,    0,  390,  218,  312,  218,  218,  285,  218,  218,    0, 2,  0.6,  0.7,  0.2,  0.6,  0.7,  0.2,  0.9,  0.7,  0.3,  0.9,  0.7,  0.3) /* Torso */;
