DELETE FROM `weenie` WHERE `class_Id` = 801980;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801980, 'nexusoforder', 10, '2022-12-31 11:30:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801980,   1,         16) /* ItemType - Creature */
     , (801980,   2,         13) /* CreatureType - Golem */
     , (801980,   6,         -1) /* ItemsCapacity */
     , (801980,   7,         -1) /* ContainersCapacity */
     , (801980,  16,          1) /* ItemUseable - No */
     , (801980,  25,        650) /* Level */
     , (801980,  27,         32) /* ArmorType - Metal */
     , (801980,  40,          2) /* CombatMode - Melee */
     , (801980,  68,         3) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801980,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801980, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (801980, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801980, 146,     700000) /* XpOverride */
     , (801980, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801980,   1, True ) /* Stuck */
     , (801980,  11, False) /* IgnoreCollisions */
     , (801980,  12, True ) /* ReportCollisions */
     , (801980,  13, False) /* Ethereal */
     , (801980,  14, True ) /* GravityStatus */
     , (801980,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801980,   1,       5) /* HeartbeatInterval */
     , (801980,   2,       0) /* HeartbeatTimestamp */
     , (801980,   3,     0.4) /* HealthRate */
     , (801980,   4,       5) /* StaminaRate */
     , (801980,   5,       1) /* ManaRate */
     , (801980,  13,       1) /* ArmorModVsSlash */
     , (801980,  14,     1.8) /* ArmorModVsPierce */
     , (801980,  15,     1.8) /* ArmorModVsBludgeon */
     , (801980,  16,       1) /* ArmorModVsCold */
     , (801980,  17,       1) /* ArmorModVsFire */
     , (801980,  18,       1) /* ArmorModVsAcid */
     , (801980,  19,       1) /* ArmorModVsElectric */
     , (801980,  31,      30) /* VisualAwarenessRange */
     , (801980,  34,       1) /* PowerupTime */
     , (801980,  36,       1) /* ChargeSpeed */
     , (801980,  39,       1) /* DefaultScale */
     , (801980,  64,     0.01) /* ResistSlash */
     , (801980,  65,     0.10) /* ResistPierce */
     , (801980,  66,     0.10) /* ResistBludgeon */
     , (801980,  67,     0.01) /* ResistFire */
     , (801980,  68,     0.01) /* ResistCold */
     , (801980,  69,     0.01) /* ResistAcid */
     , (801980,  70,     0.01) /* ResistElectric */
     , (801980,  71,       1) /* ResistHealthBoost */
     , (801980,  72,       1) /* ResistStaminaDrain */
     , (801980,  73,       1) /* ResistStaminaBoost */
     , (801980,  74,       1) /* ResistManaDrain */
     , (801980,  75,       1) /* ResistManaBoost */
     , (801980,  80,       3) /* AiUseMagicDelay */
     , (801980, 104,      10) /* ObviousRadarRange */
     , (801980, 117,     0.5) /* FocusedProbability */
     , (801980, 122,       2) /* AiAcquireHealth */
     , (801980, 125,       1) /* ResistHealthDrain */
     , (801980, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801980,   1, 'Nexus of Order') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801980,   1,   33560279) /* Setup */
     , (801980,   2,  150995334) /* MotionTable */
     , (801980,   3,  536870933) /* SoundTable */
     , (801980,   4,  805306368) /* CombatTable */
     , (801980,   7,  268436634) /* ClothingBase */
     , (801980,   8,  100674350) /* Icon */
     , (801980,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801980,   1, 8490, 0, 0) /* Strength */
     , (801980,   2, 2000, 0, 0) /* Endurance */
     , (801980,   3, 430, 0, 0) /* Quickness */
     , (801980,   4, 350, 0, 0) /* Coordination */
     , (801980,   5, 450, 0, 0) /* Focus */
     , (801980,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801980,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (801980,   3, 19000, 0, 0, 20000) /* MaxStamina */
     , (801980,   5,  9500, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801980,  6, 0, 2, 0, 300, 0, 0) /* MeleeDefense        Trained */
     , (801980,  7, 0, 2, 0, 300, 0, 0) /* MissileDefense      Trained */
     , (801980, 15, 0, 2, 0, 340, 0, 0) /* MagicDefense        Trained */
     , (801980, 41, 0, 3, 0, 600, 0, 0) /* TwoHandedCombat     Specialized */
     , (801980, 44, 0, 3, 0, 300, 0, 0) /* HeavyWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801980,  0,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801980,  1,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801980,  2,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801980,  3,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801980,  4,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801980,  5,  4,  1000, 0.75,  450,  325,  325,  325,  325,  325,  325,  325,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801980,  6,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801980,  7,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801980,  8,  4,  1000, 0.75,  450,  325,  325,  325,  325,  325,  325,  325,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801980, 2, 801989,  0, 86, 0, False) /* Create  (801874) for Wield */;