DELETE FROM `weenie` WHERE `class_Id` = 801806;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801806, 'Torment of Space', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801806,   1,         16) /* ItemType - Creature */
     , (801806,   2,         20) /* CreatureType - Wisp */
     , (801806,   6,         -1) /* ItemsCapacity */
     , (801806,   7,         -1) /* ContainersCapacity */
     , (801806,  16,          1) /* ItemUseable - No */
     , (801806,  25,        525) /* Level */
     , (801806,  40,          2) /* CombatMode - Melee */
     , (801806,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (801806, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801806, 146,  200050000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801806,   1, True ) /* Stuck */
     , (801806,   6, True ) /* AiUsesMana */
     , (801806,  11, False) /* IgnoreCollisions */
     , (801806,  12, True ) /* ReportCollisions */
     , (801806,  13, False) /* Ethereal */
     , (801806,  14, True ) /* GravityStatus */
     , (801806,  19, True ) /* Attackable */
     , (801806,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801806,   1,       5) /* HeartbeatInterval */
     , (801806,   2,       0) /* HeartbeatTimestamp */
     , (801806,   3,     0.4) /* HealthRate */
     , (801806,   4,       5) /* StaminaRate */
     , (801806,   5,       1) /* ManaRate */
     , (801806,  13,      22) /* ArmorModVsSlash */
     , (801806,  14,      22) /* ArmorModVsPierce */
     , (801806,  15,      22) /* ArmorModVsBludgeon */
     , (801806,  16,      22) /* ArmorModVsCold */
     , (801806,  17,      22) /* ArmorModVsFire */
     , (801806,  18,      22) /* ArmorModVsAcid */
     , (801806,  19,      22) /* ArmorModVsElectric */
     , (801806,  31,      30) /* VisualAwarenessRange */
     , (801806,  34,       1) /* PowerupTime */
     , (801806,  36,       1) /* ChargeSpeed */
     , (801806,  39,     1.3) /* DefaultScale */
     , (801806,  64,      13) /* ResistSlash */
     , (801806,  65,     0.1) /* ResistPierce */
     , (801806,  66,     0.1) /* ResistBludgeon */
     , (801806,  67,     0.3) /* ResistFire */
     , (801806,  68,     0.3) /* ResistCold */
     , (801806,  69,     0.3) /* ResistAcid */
     , (801806,  70,     0.1) /* ResistElectric */
     , (801806,  71,       1) /* ResistHealthBoost */
     , (801806,  72,       1) /* ResistStaminaDrain */
     , (801806,  73,       1) /* ResistStaminaBoost */
     , (801806,  74,       1) /* ResistManaDrain */
     , (801806,  75,       1) /* ResistManaBoost */
     , (801806,  80,       3) /* AiUseMagicDelay */
     , (801806, 104,      10) /* ObviousRadarRange */
     , (801806, 125,       1) /* ResistHealthDrain */
     , (801806, 166,     0.6) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801806,   1, 'Torment of Space') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801806,   1,   33557068) /* Setup */
     , (801806,   2,  150995087) /* MotionTable */
     , (801806,   3,  536870985) /* SoundTable */
     , (801806,   4,  805306368) /* CombatTable */
     , (801806,   8,  100671683) /* Icon */
     , (801806,  22,  872415274) /* PhysicsEffectTable */
     , (801806,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801806,   1, 1200, 0, 0) /* Strength */
     , (801806,   2, 200, 0, 0) /* Endurance */
     , (801806,   3, 220, 0, 0) /* Quickness */
     , (801806,   4, 150, 0, 0) /* Coordination */
     , (801806,   5, 370, 0, 0) /* Focus */
     , (801806,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801806,   1,  500020, 0, 0, 500020) /* MaxHealth */
     , (801806,   3,  500020, 0, 0, 500020) /* MaxStamina */
     , (801806,   5,  500020, 0, 0, 500020) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801806,  6, 0, 3, 0, 243, 0, 0) /* MeleeDefense        Specialized */
     , (801806,  7, 0, 3, 0, 194, 0, 0) /* MissileDefense      Specialized */
     , (801806, 14, 0, 3, 0, 243, 0, 0) /* ArcaneLore          Specialized */
     , (801806, 15, 0, 3, 0, 356, 0, 0) /* MagicDefense        Specialized */
     , (801806, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (801806, 24, 0, 3, 0, 340, 0, 0) /* Run                 Specialized */
     , (801806, 31, 0, 3, 0, 295, 0, 0) /* CreatureEnchantment Specialized */
     , (801806, 33, 0, 3, 0, 295, 0, 0) /* LifeMagic           Specialized */
     , (801806, 34, 0, 3, 0, 295, 0, 0) /* WarMagic            Specialized */
     , (801806, 45, 0, 3, 0, 137, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801806,  0, 32,  850,  0.5,  140,  1200,  200,  200,  200,  200,  200,  200,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (801806, 16, 32,  850,    0,  140,  1200,  200,  200,  200,  200,  200,  200,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (801806, 17, 32,  850, 0.75,  120,  1200,  200,  200,  200,  200,  200,  200,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (801806, 21, 32,    0,    0,  110,  1240,   34,   34,   34,   34,   80,   34,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801806, 9, 801812,  1, 0, 0, False) /* Create Progenitor Crystal (40788) for ContainTreasure */;
