DELETE FROM `weenie` WHERE `class_Id` = 803216;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803216, 'Guardian of Fire', 10, '2023-10-20 09:48:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803216,   1,         16) /* ItemType - Creature */
     , (803216,   2,         47) /* CreatureType - Crystal */
     , (803216,   3,         14) /* PaletteTemplate - Red */
     , (803216,   6,         -1) /* ItemsCapacity */
     , (803216,   7,         -1) /* ContainersCapacity */
     , (803216,  16,          1) /* ItemUseable - No */
     , (803216,  25,       3500) /* Level */
     , (803216,  27,          1) /* ArmorType - Cloth */
     , (803216,  40,          2) /* CombatMode - Melee */
     , (803216,  68,       0x80) /* TargetingTactic - Random, Focused */
     , (803216,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803216, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803216, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803216, 140,          1) /* AiOptions - CanOpenDoors */
     , (803216, 146,          1) /* XpOverride */
     , (803216, 332,     950000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803216,   1, False) /* Stuck */
     , (803216,   6, True ) /* AiUsesMana */
     , (803216,  11, False) /* IgnoreCollisions */
     , (803216,  12, True ) /* ReportCollisions */
     , (803216,  13, False) /* Ethereal */
     , (803216,  19, True ) /* Attackable */
     , (803216,  50, True ) /* NeverFailCasting */
     , (803216,  65, True ) /* IgnoreMagicResist */
     , (803216,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803216,   1,       5) /* HeartbeatInterval */
     , (803216,   2,       0) /* HeartbeatTimestamp */
     , (803216,   3,     0.4) /* HealthRate */
     , (803216,   4,       5) /* StaminaRate */
     , (803216,   5,       1) /* ManaRate */
     , (803216,  13,       7) /* ArmorModVsSlash */
     , (803216,  14,       7) /* ArmorModVsPierce */
     , (803216,  15,       7) /* ArmorModVsBludgeon */
     , (803216,  16,       7) /* ArmorModVsCold */
     , (803216,  17,       7) /* ArmorModVsFire */
     , (803216,  18,       7) /* ArmorModVsAcid */
     , (803216,  19,       7) /* ArmorModVsElectric */
     , (803216,  31,      30) /* VisualAwarenessRange */
     , (803216,  34,       1) /* PowerupTime */
     , (803216,  36,       1) /* ChargeSpeed */
     , (803216,  39,     2.3) /* DefaultScale */
     , (803216,  64,   0.001) /* ResistSlash */
     , (803216,  65,   0.001) /* ResistPierce */
     , (803216,  66,   0.001) /* ResistBludgeon */
     , (803216,  67,   0.001) /* ResistFire */
     , (803216,  68,   0.001) /* ResistCold */
     , (803216,  69,   0.001) /* ResistAcid */
     , (803216,  70,   0.001) /* ResistElectric */
     , (803216,  71,       1) /* ResistHealthBoost */
     , (803216,  72,       1) /* ResistStaminaDrain */
     , (803216,  73,       1) /* ResistStaminaBoost */
     , (803216,  74,       1) /* ResistManaDrain */
     , (803216,  75,       1) /* ResistManaBoost */
     , (803216,  80,       3) /* AiUseMagicDelay */
     , (803216, 104,      10) /* ObviousRadarRange */
     , (803216, 117,     0.5) /* FocusedProbability */
     , (803216, 122,       2) /* AiAcquireHealth */
     , (803216, 125,   0.002) /* ResistHealthDrain */
     , (803216, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803216,   1, 'Guardian of Fire') /* Name */
     , (803216,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803216,   1,   33556226) /* Setup */
     , (803216,   2,  150995097) /* MotionTable */
     , (803216,   3,  536871001) /* SoundTable */
     , (803216,   4,  805306372) /* CombatTable */
     , (803216,   6,   67111919) /* PaletteBase */
     , (803216,   7,  268435859) /* ClothingBase */
     , (803216,   8,  100670395) /* Icon */
     , (803216,  22,  872415348) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803216,  0,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803216,  1,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803216,  2,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803216,  3,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803216,  4,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803216,  5,  4,  80000, 0.75,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803216,  6,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803216,  7,  4,      0,    0,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803216,  8,  4,  80000, 0.75,  60000,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803216,   1,80000, 0, 0) /* Strength */
     , (803216,   2, 560, 0, 0) /* Endurance */
     , (803216,   3, 550, 0, 0) /* Quickness */
     , (803216,   4, 500, 0, 0) /* Coordination */
     , (803216,   5, 540, 0, 0) /* Focus */
     , (803216,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803216,   1,2300000, 0, 0,2300000) /* MaxHealth */
     , (803216,   3,300000, 0, 0,300000) /* MaxStamina */
     , (803216,   5,300000, 0, 0,300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803216,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803216,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803216, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803216, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803216, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803216, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803216, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803216, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803216, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */
     , (803216, 9,803215,  0, 0,  1, False) /* Create Elemental Prism for ContainTreasure */;