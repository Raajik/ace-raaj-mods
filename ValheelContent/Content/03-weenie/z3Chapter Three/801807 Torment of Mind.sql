DELETE FROM `weenie` WHERE `class_Id` = 801807;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801807, 'Torment of Mind', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801807,   1,         16) /* ItemType - Creature */
     , (801807,   2,         20) /* CreatureType - Wisp */
     , (801807,   6,         -1) /* ItemsCapacity */
     , (801807,   7,         -1) /* ContainersCapacity */
     , (801807,  16,          1) /* ItemUseable - No */
     , (801807,  25,        525) /* Level */
     , (801807,  40,          2) /* CombatMode - Melee */
     , (801807,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (801807, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801807, 146,  200050000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801807,   1, True ) /* Stuck */
     , (801807,   6, True ) /* AiUsesMana */
     , (801807,  11, False) /* IgnoreCollisions */
     , (801807,  12, True ) /* ReportCollisions */
     , (801807,  13, False) /* Ethereal */
     , (801807,  14, True ) /* GravityStatus */
     , (801807,  19, True ) /* Attackable */
     , (801807,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801807,   1,       5) /* HeartbeatInterval */
     , (801807,   2,       0) /* HeartbeatTimestamp */
     , (801807,   3,     0.4) /* HealthRate */
     , (801807,   4,       5) /* StaminaRate */
     , (801807,   5,       1) /* ManaRate */
     , (801807,  13,      22) /* ArmorModVsSlash */
     , (801807,  14,      22) /* ArmorModVsPierce */
     , (801807,  15,      22) /* ArmorModVsBludgeon */
     , (801807,  16,      22) /* ArmorModVsCold */
     , (801807,  17,      22) /* ArmorModVsFire */
     , (801807,  18,      22) /* ArmorModVsAcid */
     , (801807,  19,      22) /* ArmorModVsElectric */
     , (801807,  31,      30) /* VisualAwarenessRange */
     , (801807,  34,       1) /* PowerupTime */
     , (801807,  36,       1) /* ChargeSpeed */
     , (801807,  39,     1.3) /* DefaultScale */
     , (801807,  64,      13) /* ResistSlash */
     , (801807,  65,     0.1) /* ResistPierce */
     , (801807,  66,     0.1) /* ResistBludgeon */
     , (801807,  67,     0.3) /* ResistFire */
     , (801807,  68,     0.3) /* ResistCold */
     , (801807,  69,     0.3) /* ResistAcid */
     , (801807,  70,     0.1) /* ResistElectric */
     , (801807,  71,       1) /* ResistHealthBoost */
     , (801807,  72,       1) /* ResistStaminaDrain */
     , (801807,  73,       1) /* ResistStaminaBoost */
     , (801807,  74,       1) /* ResistManaDrain */
     , (801807,  75,       1) /* ResistManaBoost */
     , (801807,  80,       3) /* AiUseMagicDelay */
     , (801807, 104,      10) /* ObviousRadarRange */
     , (801807, 125,       1) /* ResistHealthDrain */
     , (801807, 166,     0.6) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801807,   1, 'Torment of Mind') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801807,   1,   33556955) /* Setup */
     , (801807,   2,  150995087) /* MotionTable */
     , (801807,   3,  536870985) /* SoundTable */
     , (801807,   4,  805306368) /* CombatTable */
     , (801807,   8,  100671332) /* Icon */
     , (801807,  22,  872415274) /* PhysicsEffectTable */
     , (801807,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801807,   1, 1200, 0, 0) /* Strength */
     , (801807,   2, 200, 0, 0) /* Endurance */
     , (801807,   3, 220, 0, 0) /* Quickness */
     , (801807,   4, 150, 0, 0) /* Coordination */
     , (801807,   5, 370, 0, 0) /* Focus */
     , (801807,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801807,   1,  500020, 0, 0, 500020) /* MaxHealth */
     , (801807,   3,  500020, 0, 0, 500020) /* MaxStamina */
     , (801807,   5,  500020, 0, 0, 500020) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801807,  6, 0, 3, 0, 243, 0, 0) /* MeleeDefense        Specialized */
     , (801807,  7, 0, 3, 0, 194, 0, 0) /* MissileDefense      Specialized */
     , (801807, 14, 0, 3, 0, 243, 0, 0) /* ArcaneLore          Specialized */
     , (801807, 15, 0, 3, 0, 356, 0, 0) /* MagicDefense        Specialized */
     , (801807, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (801807, 24, 0, 3, 0, 340, 0, 0) /* Run                 Specialized */
     , (801807, 31, 0, 3, 0, 295, 0, 0) /* CreatureEnchantment Specialized */
     , (801807, 33, 0, 3, 0, 295, 0, 0) /* LifeMagic           Specialized */
     , (801807, 34, 0, 3, 0, 295, 0, 0) /* WarMagic            Specialized */
     , (801807, 45, 0, 3, 0, 137, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801807,  0, 32,  850,  0.5,  140,  1200,  200,  200,  200,  200,  200,  200,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (801807, 16, 32,  850,    0,  140,  1200,  200,  200,  200,  200,  200,  200,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (801807, 17, 32,  850, 0.75,  120,  1200,  200,  200,  200,  200,  200,  200,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (801807, 21, 32,    0,    0,  110,  1240,   34,   34,   34,   34,   80,   34,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;


INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801807, 9, 801813,  1, 0, 0, False) /* Create Progenitor Crystal (40788) for ContainTreasure */;
