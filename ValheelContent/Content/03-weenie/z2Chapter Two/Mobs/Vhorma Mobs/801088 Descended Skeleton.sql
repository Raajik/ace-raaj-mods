DELETE FROM `weenie` WHERE `class_Id` = 801088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801088, 'Descended Skeleton', 10, '2020-04-14 01:13:58') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801088,   1,         16) /* ItemType - Creature */
     , (801088,   2,         30) /* CreatureType - Skeleton */
     , (801088,   3,         66) /* PaletteTemplate - PaleOrange */
     , (801088,   6,         -1) /* ItemsCapacity */
     , (801088,   7,         -1) /* ContainersCapacity */
     , (801088,  16,          1) /* ItemUseable - No */
     , (801088,  25,        400) /* Level */
     , (801088,  27,          1) /* ArmorType - Cloth */
     , (801088,  40,         14) /* CombatMode - CombatCombat */
     , (801088,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801088,  68,       0x80) /* TargetingTactic - Random, TopDamager */
     , (801088,  81,         25) /* MaxGeneratedObjects */
     , (801088,  82,         25) /* InitGeneratedObjects */
     , (801088,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801088, 103,          3) /* GeneratorDestructionType - Kill */
     , (801088, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801088, 146,   30001320) /* XpOverride */
     , (801088, 332,      50000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801088,   1, True ) /* Stuck */
     , (801088,   4, True ) /* RotProof */
     , (801088,   6, False) /* AiUsesMana */
     , (801088,  12, True ) /* ReportCollisions */
     , (801088,  14, True ) /* GravityStatus */
     , (801088,  19, True ) /* Attackable */
     , (801088,  50, False) /* NeverFailCasting */
     , (801088,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801088,   1,       5) /* HeartbeatInterval */
     , (801088,   2,       0) /* HeartbeatTimestamp */
     , (801088,   3,     250) /* HealthRate */
     , (801088,   4,     100) /* StaminaRate */
     , (801088,  13,       1) /* ArmorModVsSlash */
     , (801088,  14,       1) /* ArmorModVsPierce */
     , (801088,  15,       1.2) /* ArmorModVsBludgeon */
     , (801088,  16,       1) /* ArmorModVsCold */
     , (801088,  17,       1) /* ArmorModVsFire */
     , (801088,  18,       1) /* ArmorModVsAcid */
     , (801088,  19,       1) /* ArmorModVsElectric */
     , (801088,  31,      30) /* VisualAwarenessRange */
     , (801088,  34,       3) /* PowerupTime */
     , (801088,  39,       1) /* DefaultScale */
     , (801088,  41,      30) /* RegenerationInterval */
     , (801088,  43,      15) /* GeneratorRadius */
     , (801088,  55,     100) /* HomeRadius */
     , (801088,  64,    0.1) /* ResistSlash */
     , (801088,  65,    0.1) /* ResistPierce */
     , (801088,  66,    0.7) /* ResistBludgeon */
     , (801088,  67,    0.1) /* ResistFire */
     , (801088,  68,    0.1) /* ResistCold */
     , (801088,  69,    0.1) /* ResistAcid */
     , (801088,  70,    0.1) /* ResistElectric */
     , (801088,  71,       1) /* ResistHealthBoost */
     , (801088,  72,       0) /* ResistStaminaDrain */
     , (801088,  73,       1) /* ResistStaminaBoost */
     , (801088,  74,       0) /* ResistManaDrain */
     , (801088,  75,       1) /* ResistManaBoost */
     , (801088,  76,       0) /* Translucency */
     , (801088,  80,       3) /* AiUseMagicDelay */
     , (801088, 104,      30) /* ObviousRadarRange */
     , (801088, 125,    0.03) /* ResistHealthDrain */
     , (801088, 127,       2) /* AiCounteractEnchantment */
     , (801088, 166,       0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801088,   1, 'Descended Skeleton') /* Name */
     , (801088,  45, 'FactionKT21') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801088,   1,   33560298) /* Setup */
     , (801088,   2,  150994981) /* MotionTable */
     , (801088,   3,  536870942) /* SoundTable */
     , (801088,   4,  805306368) /* CombatTable */
     , (801088,   6,   67116522) /* PaletteBase */
     , (801088,   7,  268437540) /* ClothingBase */
     , (801088,   8,  100669124) /* Icon */
     , (801088,  22,  872415269) /* PhysicsEffectTable */
     , (801088,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801088,   1, 1200, 0, 0) /* Strength */
     , (801088,   2, 650, 0, 0) /* Endurance */
     , (801088,   3, 350, 0, 0) /* Quickness */
     , (801088,   4, 350, 0, 0) /* Coordination */
     , (801088,   5, 350, 0, 0) /* Focus */
     , (801088,   6, 350, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801088,   1,  13000, 0, 0, 13000) /* MaxHealth */
     , (801088,   3,  55000, 0, 0, 55000) /* MaxStamina */
     , (801088,   5, 12500, 0, 0, 12500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801088,  6, 0, 3, 0, 180, 0, 0) /* MeleeDefense        Specialized */
     , (801088,  7, 0, 3, 0, 100, 0, 0) /* MissileDefense      Specialized */
     , (801088, 15, 0, 3, 0, 100, 0, 0) /* MagicDefense        Specialized */
     , (801088, 44, 0, 3, 0, 400, 0, 1198.474609375) /* HeavyWeapons        Specialized */
     , (801088, 48, 0, 3, 0, 800, 0, 1198.474609375) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801088,  0,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801088,  1,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801088,  2,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801088,  3,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801088,  4,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801088,  5,  8, 1000, 0.15, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801088,  6,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801088,  7,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801088,  8,  8, 1000, 0.15, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801088,  2074,    2.1)  /* Gossamer Flesh */
     , (801088,  2162,    2.1)  /* Olthoi's Gift */
     , (801088,  2166,    2.1)  /* Tusker's Gift */
     , (801088,  2168,    2.1)  /* Gelidite's Gift */
     , (801088,  2174,    2.1)  /* Archer's Gift */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801088, 2, 29544,  1, 93, 0, True) /* Create Marksman's Robe (29544) for Wield */
     , (801088, 2,    57,  1, 93, 0, True) /* Create Platemail Gauntlets (57) for Wield */
     , (801088, 2,   107,  1, 93, 0, True) /* Create Sollerets (107) for Wield */
     , (801088, 2, 666699,  1, 93, 0, True) /* Create Fire Sword (666699) for Wield */
     , (801088, 2, 30371,  1, 0, 0, True) /* Create Dread Marauder Shield (30371) for Wield */
     , (801088, 9, 800756,  0, 0, 0.05, True) /* Create Ethereial Essence for ContainTreasure */
     , (801088, 9,      0,  0, 0, 0.95, True) /* Create Nothing for ContainTreasure */;;
