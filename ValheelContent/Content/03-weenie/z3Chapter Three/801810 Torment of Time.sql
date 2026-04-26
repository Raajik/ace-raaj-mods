DELETE FROM `weenie` WHERE `class_Id` = 801810;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801810, 'Torment of Time', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801810,   1,         16) /* ItemType - Creature */
     , (801810,   2,         20) /* CreatureType - Wisp */
     , (801810,   6,         -1) /* ItemsCapacity */
     , (801810,   7,         -1) /* ContainersCapacity */
     , (801810,  16,          1) /* ItemUseable - No */
     , (801810,  25,        525) /* Level */
     , (801810,  40,          2) /* CombatMode - Melee */
     , (801810,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (801810, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801810, 146,  200050000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801810,   1, True ) /* Stuck */
     , (801810,   6, True ) /* AiUsesMana */
     , (801810,  11, False) /* IgnoreCollisions */
     , (801810,  12, True ) /* ReportCollisions */
     , (801810,  13, False) /* Ethereal */
     , (801810,  14, True ) /* GravityStatus */
     , (801810,  19, True ) /* Attackable */
     , (801810,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801810,   1,       5) /* HeartbeatInterval */
     , (801810,   2,       0) /* HeartbeatTimestamp */
     , (801810,   3,     0.4) /* HealthRate */
     , (801810,   4,       5) /* StaminaRate */
     , (801810,   5,       1) /* ManaRate */
     , (801810,  13,      22) /* ArmorModVsSlash */
     , (801810,  14,      22) /* ArmorModVsPierce */
     , (801810,  15,      22) /* ArmorModVsBludgeon */
     , (801810,  16,      22) /* ArmorModVsCold */
     , (801810,  17,      22) /* ArmorModVsFire */
     , (801810,  18,      22) /* ArmorModVsAcid */
     , (801810,  19,      22) /* ArmorModVsElectric */
     , (801810,  31,      30) /* VisualAwarenessRange */
     , (801810,  34,       1) /* PowerupTime */
     , (801810,  36,       1) /* ChargeSpeed */
     , (801810,  39,     1.3) /* DefaultScale */
     , (801810,  64,      13) /* ResistSlash */
     , (801810,  65,     0.1) /* ResistPierce */
     , (801810,  66,     0.1) /* ResistBludgeon */
     , (801810,  67,     0.3) /* ResistFire */
     , (801810,  68,     0.3) /* ResistCold */
     , (801810,  69,     0.3) /* ResistAcid */
     , (801810,  70,     0.1) /* ResistElectric */
     , (801810,  71,       1) /* ResistHealthBoost */
     , (801810,  72,       1) /* ResistStaminaDrain */
     , (801810,  73,       1) /* ResistStaminaBoost */
     , (801810,  74,       1) /* ResistManaDrain */
     , (801810,  75,       1) /* ResistManaBoost */
     , (801810,  80,       3) /* AiUseMagicDelay */
     , (801810, 104,      10) /* ObviousRadarRange */
     , (801810, 125,       1) /* ResistHealthDrain */
     , (801810, 166,     0.6) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801810,   1, 'Torment of Time') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801810,   1,   33555867) /* Setup */
     , (801810,   2,  150994993) /* MotionTable */
     , (801810,   3,  536870985) /* SoundTable */
     , (801810,   4,  805306368) /* CombatTable */
     , (801810,   8,  100668442) /* Icon */
     , (801810,  22,  872415274) /* PhysicsEffectTable */
     , (801810,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801810,   1, 1200, 0, 0) /* Strength */
     , (801810,   2, 200, 0, 0) /* Endurance */
     , (801810,   3, 220, 0, 0) /* Quickness */
     , (801810,   4, 150, 0, 0) /* Coordination */
     , (801810,   5, 370, 0, 0) /* Focus */
     , (801810,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801810,   1,  500020, 0, 0, 500020) /* MaxHealth */
     , (801810,   3,  500020, 0, 0, 500020) /* MaxStamina */
     , (801810,   5,  500020, 0, 0, 500020) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801810,  6, 0, 3, 0, 243, 0, 0) /* MeleeDefense        Specialized */
     , (801810,  7, 0, 3, 0, 194, 0, 0) /* MissileDefense      Specialized */
     , (801810, 14, 0, 3, 0, 243, 0, 0) /* ArcaneLore          Specialized */
     , (801810, 15, 0, 3, 0, 356, 0, 0) /* MagicDefense        Specialized */
     , (801810, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (801810, 24, 0, 3, 0, 340, 0, 0) /* Run                 Specialized */
     , (801810, 31, 0, 3, 0, 295, 0, 0) /* CreatureEnchantment Specialized */
     , (801810, 33, 0, 3, 0, 295, 0, 0) /* LifeMagic           Specialized */
     , (801810, 34, 0, 3, 0, 295, 0, 0) /* WarMagic            Specialized */
     , (801810, 45, 0, 3, 0, 137, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801810,  0, 32,  850,  0.5,  140,  1200,  200,  200,  200,  200,  200,  200,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (801810, 16, 32,  850,    0,  140,  1200,  200,  200,  200,  200,  200,  200,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (801810, 17, 32,  850, 0.75,  120,  1200,  200,  200,  200,  200,  200,  200,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (801810, 21, 32,    0,    0,  110,  1240,   34,   34,   34,   34,   80,   34,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801810, 9, 801816,  1, 0, 0, False) /* Create Progenitor Crystal (40788) for ContainTreasure */;
