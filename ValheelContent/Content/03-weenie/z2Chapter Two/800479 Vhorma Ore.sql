DELETE FROM `weenie` WHERE `class_Id` = 800479;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800479, 'Vhorma Ore', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800479,   1,         16) /* ItemType - Creature */
     , (800479,   2,         31) /* CreatureType - Human */
     , (800479,   6,         -1) /* ItemsCapacity */
     , (800479,   7,         -1) /* ContainersCapacity */
     , (800479,  16,          1) /* ItemUseable - No */
     , (800479,  25,          1) /* Level */
     , (800479,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800479, 113,          1) /* Gender - Male */
     , (800479, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800479, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800479,   1, True ) /* Stuck */
	 /* , (800479,  29, True ) /* NoCorpse */
     , (800479,  38, True ) /* Frozen */
     , (800479,  65, True ) /* IgnoreMagicResist */
     , (800479,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800479,   1,       5) /* HeartbeatInterval */
     , (800479,   2,       0) /* HeartbeatTimestamp */
     , (800479,   3,       2) /* HealthRate */
     , (800479,   4,       5) /* StaminaRate */
     , (800479,   5,       1) /* ManaRate */
     , (800479,  13,     0.9) /* ArmorModVsSlash */
     , (800479,  14,       1) /* ArmorModVsPierce */
     , (800479,  15,     1.1) /* ArmorModVsBludgeon */
     , (800479,  16,     0.4) /* ArmorModVsCold */
     , (800479,  17,     0.4) /* ArmorModVsFire */
     , (800479,  18,       1) /* ArmorModVsAcid */
     , (800479,  19,     0.6) /* ArmorModVsElectric */
     , (800479,  31,      12) /* VisualAwarenessRange */
     , (800479,  39,     2.8) /* DefaultScale */
     , (800479,  64,    0.67) /* ResistSlash */
     , (800479,  65,    0.67) /* ResistPierce */
     , (800479,  66,    0.67) /* ResistBludgeon */
     , (800479,  67,    0.67) /* ResistFire */
     , (800479,  68,    0.67) /* ResistCold */
     , (800479,  69,    0.67) /* ResistAcid */
     , (800479,  70,    0.67) /* ResistElectric */
     , (800479,  71,       1) /* ResistHealthBoost */
     , (800479,  72,       1) /* ResistStaminaDrain */
     , (800479,  73,       1) /* ResistStaminaBoost */
     , (800479,  74,       1) /* ResistManaDrain */
     , (800479,  75,       1) /* ResistManaBoost */
     , (800479, 104,      10) /* ObviousRadarRange */
     , (800479, 117,     0.5) /* FocusedProbability */
     , (800479, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800479,   1, 'Vhorma Ore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800479,   1,   33555863) /* Setup */
     , (800479,   3,  536871003) /* SoundTable */
     , (800479,   8,  100667500) /* Icon */
     , (800479,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800479,   1, 1, 0, 0) /* Strength */
     , (800479,   2, 1, 0, 0) /* Endurance */
     , (800479,   3, 1, 0, 0) /* Quickness */
     , (800479,   4, 1, 0, 0) /* Coordination */
     , (800479,   5, 1, 0, 0) /* Focus */
     , (800479,   6, 1, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800479,   1,  50000, 0, 0, 50000) /* MaxHealth */
     , (800479,   3,  1, 0, 0, 5) /* MaxStamina */
     , (800479,   5,  1, 0, 0, 5) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800479,  0,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800479,  1,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800479,  2,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800479,  3,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800479,  4,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800479,  5,  4, 20, 0.75,  120,  108,  120,  132,   48,   48,  120,   72,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800479,  6,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800479,  7,  4,  0,    0,  120,  108,  120,  132,   48,   48,  120,   72,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800479,  8,  4, 20, 0.75,  120,  108,  120,  132,   48,   48,  120,   72,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800479, 9, 800474,  1, 0, 0.2, False) /* Create Spy Informant Letter for ContainTreasure */
	 , (800479, 9, 800474,  1, 0, 0.2, False) /* Create Spy Informant Letter for ContainTreasure */
	 , (800479, 9, 800474,  1, 0, 0.2, False) /* Create Spy Informant Letter for ContainTreasure */
	 , (800479, 9, 800474,  1, 0, 0.2, False) /* Create Spy Informant Letter for ContainTreasure */
	 , (800479, 9, 800474,  1, 0,   1, False) /* Create Spy Informant Letter for ContainTreasure */;