DELETE FROM `weenie` WHERE `class_Id` = 803222;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803222, 'Guardian of Lightning', 10, '2023-10-20 09:48:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803222,   1,         16) /* ItemType - Creature */
     , (803222,   2,         47) /* CreatureType - Crystal */
     , (803222,   3,         13) /* PaletteTemplate - Red */
     , (803222,   6,         -1) /* ItemsCapacity */
     , (803222,   7,         -1) /* ContainersCapacity */
     , (803222,  16,          1) /* ItemUseable - No */
     , (803222,  25,       3500) /* Level */
     , (803222,  27,          1) /* ArmorType - Cloth */
     , (803222,  40,          2) /* CombatMode - Melee */
     , (803222,  68,       0x80) /* TargetingTactic - Random, Focused */
     , (803222,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803222, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803222, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803222, 140,          1) /* AiOptions - CanOpenDoors */
     , (803222, 146,          1) /* XpOverride */
     , (803222, 332,     950000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803222,   1, False) /* Stuck */
     , (803222,   6, True ) /* AiUsesMana */
     , (803222,  11, False) /* IgnoreCollisions */
     , (803222,  12, True ) /* ReportCollisions */
     , (803222,  13, False) /* Ethereal */
     , (803222,  19, True ) /* Attackable */
     , (803222,  50, True ) /* NeverFailCasting */
     , (803222,  65, True ) /* IgnoreMagicResist */
     , (803222,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803222,   1,       5) /* HeartbeatInterval */
     , (803222,   2,       0) /* HeartbeatTimestamp */
     , (803222,   3,     0.4) /* HealthRate */
     , (803222,   4,       5) /* StaminaRate */
     , (803222,   5,       1) /* ManaRate */
     , (803222,  13,       7) /* ArmorModVsSlash */
     , (803222,  14,       7) /* ArmorModVsPierce */
     , (803222,  15,       7) /* ArmorModVsBludgeon */
     , (803222,  16,       7) /* ArmorModVsCold */
     , (803222,  17,       7) /* ArmorModVsFire */
     , (803222,  18,       7) /* ArmorModVsAcid */
     , (803222,  19,       7) /* ArmorModVsElectric */
     , (803222,  31,      30) /* VisualAwarenessRange */
     , (803222,  34,       1) /* PowerupTime */
     , (803222,  36,       1) /* ChargeSpeed */
     , (803222,  39,     2.3) /* DefaultScale */
     , (803222,  64,   0.001) /* ResistSlash */
     , (803222,  65,   0.001) /* ResistPierce */
     , (803222,  66,   0.001) /* ResistBludgeon */
     , (803222,  67,   0.001) /* ResistFire */
     , (803222,  68,   0.001) /* ResistCold */
     , (803222,  69,   0.001) /* ResistAcid */
     , (803222,  70,   0.001) /* ResistElectric */
     , (803222,  71,       1) /* ResistHealthBoost */
     , (803222,  72,       1) /* ResistStaminaDrain */
     , (803222,  73,       1) /* ResistStaminaBoost */
     , (803222,  74,       1) /* ResistManaDrain */
     , (803222,  75,       1) /* ResistManaBoost */
     , (803222,  80,       3) /* AiUseMagicDelay */
     , (803222, 104,      10) /* ObviousRadarRange */
     , (803222, 117,     0.5) /* FocusedProbability */
     , (803222, 122,       2) /* AiAcquireHealth */
     , (803222, 125,   0.002) /* ResistHealthDrain */
     , (803222, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803222,   1, 'Guardian of Lightning') /* Name */
     , (803222,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803222,   1,   33556226) /* Setup */
     , (803222,   2,  150995097) /* MotionTable */
     , (803222,   3,  536871001) /* SoundTable */
     , (803222,   4,  805306372) /* CombatTable */
     , (803222,   6,   67111919) /* PaletteBase */
     , (803222,   7,  268435859) /* ClothingBase */
     , (803222,   8,  100670395) /* Icon */
     , (803222,  22,  872415348) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803222,  0,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803222,  1,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803222,  2,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803222,  3,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803222,  4,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803222,  5,  4,  80000, 0.75,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803222,  6,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803222,  7,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803222,  8,  4,  80000, 0.75,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803222,   1,80000, 0, 0) /* Strength */
     , (803222,   2, 560, 0, 0) /* Endurance */
     , (803222,   3, 550, 0, 0) /* Quickness */
     , (803222,   4, 500, 0, 0) /* Coordination */
     , (803222,   5, 540, 0, 0) /* Focus */
     , (803222,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803222,   1,2300000, 0, 0,2300000) /* MaxHealth */
     , (803222,   3,300000, 0, 0,300000) /* MaxStamina */
     , (803222,   5,300000, 0, 0,300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803222,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803222,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803222, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803222, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803222, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803222, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803222, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803222, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803222, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803222, 9,803214,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */;