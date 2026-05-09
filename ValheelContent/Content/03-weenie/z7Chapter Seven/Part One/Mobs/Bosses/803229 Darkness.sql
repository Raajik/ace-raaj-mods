DELETE FROM `weenie` WHERE `class_Id` = 803229;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803229, 'Darkness', 10, '2023-10-20 09:48:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803229,   1,         16) /* ItemType - Creature */
     , (803229,   2,         22) /* CreatureType - Crystal */
     , (803229,   3,         13) /* PaletteTemplate - Red */
     , (803229,   6,         -1) /* ItemsCapacity */
     , (803229,   7,         -1) /* ContainersCapacity */
     , (803229,  16,          1) /* ItemUseable - No */
     , (803229,  25,       4000) /* Level */
     , (803229,  27,          1) /* ArmorType - Cloth */
     , (803229,  40,          2) /* CombatMode - Melee */
     , (803229,  68,       0x80) /* TargetingTactic - Random, Focused */
     , (803229,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803229, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803229, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803229, 140,          1) /* AiOptions - CanOpenDoors */
     , (803229, 146,          1) /* XpOverride */
     , (803229, 332,     950000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803229,   1, False) /* Stuck */
     , (803229,   6, True ) /* AiUsesMana */
     , (803229,  11, False) /* IgnoreCollisions */
     , (803229,  12, True ) /* ReportCollisions */
     , (803229,  13, False) /* Ethereal */
     , (803229,  19, True ) /* Attackable */
     , (803229,  50, True ) /* NeverFailCasting */
     , (803229,  65, True ) /* IgnoreMagicResist */
     , (803229,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803229,   1,       5) /* HeartbeatInterval */
     , (803229,   2,       0) /* HeartbeatTimestamp */
     , (803229,   3,     0.4) /* HealthRate */
     , (803229,   4,       5) /* StaminaRate */
     , (803229,   5,       1) /* ManaRate */
     , (803229,  13,       7) /* ArmorModVsSlash */
     , (803229,  14,       7) /* ArmorModVsPierce */
     , (803229,  15,       7) /* ArmorModVsBludgeon */
     , (803229,  16,       7) /* ArmorModVsCold */
     , (803229,  17,       7) /* ArmorModVsFire */
     , (803229,  18,       7) /* ArmorModVsAcid */
     , (803229,  19,       7) /* ArmorModVsElectric */
     , (803229,  31,      30) /* VisualAwarenessRange */
     , (803229,  34,       1) /* PowerupTime */
     , (803229,  36,       1) /* ChargeSpeed */
     , (803229,  39,     2.3) /* DefaultScale */
     , (803229,  64,   0.001) /* ResistSlash */
     , (803229,  65,   0.001) /* ResistPierce */
     , (803229,  66,   0.001) /* ResistBludgeon */
     , (803229,  67,   0.001) /* ResistFire */
     , (803229,  68,   0.001) /* ResistCold */
     , (803229,  69,   0.001) /* ResistAcid */
     , (803229,  70,   0.001) /* ResistElectric */
     , (803229,  71,       1) /* ResistHealthBoost */
     , (803229,  72,       1) /* ResistStaminaDrain */
     , (803229,  73,       1) /* ResistStaminaBoost */
     , (803229,  74,       1) /* ResistManaDrain */
     , (803229,  75,       1) /* ResistManaBoost */
     , (803229,  80,       3) /* AiUseMagicDelay */
     , (803229, 104,      10) /* ObviousRadarRange */
     , (803229, 117,     0.5) /* FocusedProbability */
     , (803229, 122,       2) /* AiAcquireHealth */
     , (803229, 125,   0.002) /* ResistHealthDrain */
     , (803229, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803229,   1, 'Darkness') /* Name */
     , (803229,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803229,   1,   33556913) /* Setup */
     , (803229,   2,  150994968) /* MotionTable */
     , (803229,   3,  536870985) /* SoundTable */
     , (803229,   4,  805306376) /* CombatTable */
     , (803229,   8,  100670397) /* Icon */
     , (803229,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803229,  0,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803229,  1,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803229,  2,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803229,  3,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803229,  4,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803229,  5,  4,  90000, 0.75,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803229,  6,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803229,  7,  4,      0,    0,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803229,  8,  4,  90000, 0.75,  75000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803229,   1,80000, 0, 0) /* Strength */
     , (803229,   2, 560, 0, 0) /* Endurance */
     , (803229,   3, 550, 0, 0) /* Quickness */
     , (803229,   4, 500, 0, 0) /* Coordination */
     , (803229,   5, 540, 0, 0) /* Focus */
     , (803229,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803229,   1,2500000, 0, 0,2500000) /* MaxHealth */
     , (803229,   3,300000, 0, 0,300000) /* MaxStamina */
     , (803229,   5,300000, 0, 0,300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803229,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803229,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803229, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803229, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803229, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803229, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803229, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803229, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803229, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803229, 9,803232,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */;