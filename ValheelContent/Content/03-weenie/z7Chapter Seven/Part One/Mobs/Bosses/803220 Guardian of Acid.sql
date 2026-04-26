DELETE FROM `weenie` WHERE `class_Id` = 803220;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803220, 'Guardian of Acid', 10, '2023-10-20 09:48:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803220,   1,         16) /* ItemType - Creature */
     , (803220,   2,         47) /* CreatureType - Crystal */
     , (803220,   3,          7) /* PaletteTemplate - Red */
     , (803220,   6,         -1) /* ItemsCapacity */
     , (803220,   7,         -1) /* ContainersCapacity */
     , (803220,  16,          1) /* ItemUseable - No */
     , (803220,  25,       3500) /* Level */
     , (803220,  27,          1) /* ArmorType - Cloth */
     , (803220,  40,          2) /* CombatMode - Melee */
     , (803220,  68,       0x80) /* TargetingTactic - Random, Focused */
     , (803220,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803220, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803220, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803220, 140,          1) /* AiOptions - CanOpenDoors */
     , (803220, 146,          1) /* XpOverride */
     , (803220, 332,     950000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803220,   1, False) /* Stuck */
     , (803220,   6, True ) /* AiUsesMana */
     , (803220,  11, False) /* IgnoreCollisions */
     , (803220,  12, True ) /* ReportCollisions */
     , (803220,  13, False) /* Ethereal */
     , (803220,  19, True ) /* Attackable */
     , (803220,  50, True ) /* NeverFailCasting */
     , (803220,  65, True ) /* IgnoreMagicResist */
     , (803220,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803220,   1,       5) /* HeartbeatInterval */
     , (803220,   2,       0) /* HeartbeatTimestamp */
     , (803220,   3,     0.4) /* HealthRate */
     , (803220,   4,       5) /* StaminaRate */
     , (803220,   5,       1) /* ManaRate */
     , (803220,  13,       7) /* ArmorModVsSlash */
     , (803220,  14,       7) /* ArmorModVsPierce */
     , (803220,  15,       7) /* ArmorModVsBludgeon */
     , (803220,  16,       7) /* ArmorModVsCold */
     , (803220,  17,       7) /* ArmorModVsFire */
     , (803220,  18,       7) /* ArmorModVsAcid */
     , (803220,  19,       7) /* ArmorModVsElectric */
     , (803220,  31,      30) /* VisualAwarenessRange */
     , (803220,  34,       1) /* PowerupTime */
     , (803220,  36,       1) /* ChargeSpeed */
     , (803220,  39,     2.3) /* DefaultScale */
     , (803220,  64,   0.001) /* ResistSlash */
     , (803220,  65,   0.001) /* ResistPierce */
     , (803220,  66,   0.001) /* ResistBludgeon */
     , (803220,  67,   0.001) /* ResistFire */
     , (803220,  68,   0.001) /* ResistCold */
     , (803220,  69,   0.001) /* ResistAcid */
     , (803220,  70,   0.001) /* ResistElectric */
     , (803220,  71,       1) /* ResistHealthBoost */
     , (803220,  72,       1) /* ResistStaminaDrain */
     , (803220,  73,       1) /* ResistStaminaBoost */
     , (803220,  74,       1) /* ResistManaDrain */
     , (803220,  75,       1) /* ResistManaBoost */
     , (803220,  80,       3) /* AiUseMagicDelay */
     , (803220, 104,      10) /* ObviousRadarRange */
     , (803220, 117,     0.5) /* FocusedProbability */
     , (803220, 122,       2) /* AiAcquireHealth */
     , (803220, 125,   0.002) /* ResistHealthDrain */
     , (803220, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803220,   1, 'Guardian of Acid') /* Name */
     , (803220,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803220,   1,   33556226) /* Setup */
     , (803220,   2,  150995097) /* MotionTable */
     , (803220,   3,  536871001) /* SoundTable */
     , (803220,   4,  805306372) /* CombatTable */
     , (803220,   6,   67111919) /* PaletteBase */
     , (803220,   7,  268435859) /* ClothingBase */
     , (803220,   8,  100670395) /* Icon */
     , (803220,  22,  872415348) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803220,  0,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803220,  1,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803220,  2,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803220,  3,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803220,  4,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803220,  5,  4,  80000, 0.75,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803220,  6,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803220,  7,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803220,  8,  4,  80000, 0.75,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803220,   1,80000, 0, 0) /* Strength */
     , (803220,   2, 560, 0, 0) /* Endurance */
     , (803220,   3, 550, 0, 0) /* Quickness */
     , (803220,   4, 500, 0, 0) /* Coordination */
     , (803220,   5, 540, 0, 0) /* Focus */
     , (803220,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803220,   1,2300000, 0, 0,2300000) /* MaxHealth */
     , (803220,   3,300000, 0, 0,300000) /* MaxStamina */
     , (803220,   5,300000, 0, 0,300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803220,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803220,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803220, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803220, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803220, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803220, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803220, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803220, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803220, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803220, 9,803213,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */;