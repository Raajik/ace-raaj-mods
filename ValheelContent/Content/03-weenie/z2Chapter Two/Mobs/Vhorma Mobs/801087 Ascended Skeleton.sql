DELETE FROM `weenie` WHERE `class_Id` = 801087;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801087, 'Ascended Skeleton', 10, '2020-04-14 01:14:10') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801087,   1,         16) /* ItemType - Creature */
     , (801087,   2,         30) /* CreatureType - Skeleton */
     , (801087,   3,         85) /* PaletteTemplate - DyeDarkRed */
     , (801087,   6,         -1) /* ItemsCapacity */
     , (801087,   7,         -1) /* ContainersCapacity */
     , (801087,  16,          1) /* ItemUseable - No */
     , (801087,  25,        400) /* Level */
     , (801087,  27,          0) /* ArmorType - None */
     , (801087,  40,          1) /* CombatMode - NonCombat */
     , (801087,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (801087,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801087, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (801087, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801087, 140,          1) /* AiOptions - CanOpenDoors */
     , (801087, 146,   30001320) /* XpOverride */
     , (801087, 332,      25000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801087,   1, True ) /* Stuck */
     , (801087,   6, True ) /* AiUsesMana */
     , (801087,  11, False) /* IgnoreCollisions */
     , (801087,  12, True ) /* ReportCollisions */
     , (801087,  13, False) /* Ethereal */
     , (801087,  14, True ) /* GravityStatus */
     , (801087,  19, True ) /* Attackable */
     , (801087,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801087,   1,       5) /* HeartbeatInterval */
     , (801087,   2,       0) /* HeartbeatTimestamp */
     , (801087,   3,     175) /* HealthRate */
     , (801087,   4,     100) /* StaminaRate */
     , (801087,  13,       1) /* ArmorModVsSlash */
     , (801087,  14,       1) /* ArmorModVsPierce */
     , (801087,  15,       1.2) /* ArmorModVsBludgeon */
     , (801087,  16,       1) /* ArmorModVsCold */
     , (801087,  17,       1) /* ArmorModVsFire */
     , (801087,  18,       1) /* ArmorModVsAcid */
     , (801087,  19,       1) /* ArmorModVsElectric */
     , (801087,  31,      30) /* VisualAwarenessRange */
     , (801087,  34,       3) /* PowerupTime */
     , (801087,  39,       1) /* DefaultScale */
     , (801087,  41,      30) /* RegenerationInterval */
     , (801087,  43,      15) /* GeneratorRadius */
     , (801087,  55,     100) /* HomeRadius */
     , (801087,  64,    0.1) /* ResistSlash */
     , (801087,  65,    0.1) /* ResistPierce */
     , (801087,  66,    0.7) /* ResistBludgeon */
     , (801087,  67,    0.1) /* ResistFire */
     , (801087,  68,    0.1) /* ResistCold */
     , (801087,  69,    0.1) /* ResistAcid */
     , (801087,  70,    0.1) /* ResistElectric */
     , (801087,  71,       1) /* ResistHealthBoost */
     , (801087,  72,       0) /* ResistStaminaDrain */
     , (801087,  73,       1) /* ResistStaminaBoost */
     , (801087,  74,       0) /* ResistManaDrain */
     , (801087,  75,       1) /* ResistManaBoost */
     , (801087,  76,       0) /* Translucency */
     , (801087,  80,       3) /* AiUseMagicDelay */
     , (801087, 104,      30) /* ObviousRadarRange */
     , (801087, 125,    0.03) /* ResistHealthDrain */
     , (801087, 127,       2) /* AiCounteractEnchantment */
     , (801087, 166,       0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801087,   1, 'Ascended Skeleton') /* Name */
     , (801087,  45, 'FactionKT20') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801087,   1,   33560230) /* Setup */
     , (801087,   2,  150994981) /* MotionTable */
     , (801087,   3,  536870942) /* SoundTable */
     , (801087,   4,  805306368) /* CombatTable */
     , (801087,   6,   67116522) /* PaletteBase */
     , (801087,   7,  268435646) /* ClothingBase */
     , (801087,   8,  100669124) /* Icon */
     , (801087,  22,  872415269) /* PhysicsEffectTable */
     , (801087,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801087,   1, 1200, 0, 0) /* Strength */
     , (801087,   2, 650, 0, 0) /* Endurance */
     , (801087,   3, 350, 0, 0) /* Quickness */
     , (801087,   4, 350, 0, 0) /* Coordination */
     , (801087,   5, 350, 0, 0) /* Focus */
     , (801087,   6, 350, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801087,   1,  13000, 0, 0, 13000) /* MaxHealth */
     , (801087,   3,  55000, 0, 0, 55000) /* MaxStamina */
     , (801087,   5, 12500, 0, 0, 12500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801087,  6, 0, 3, 0, 150, 0, 0) /* MeleeDefense        Specialized */
     , (801087,  7, 0, 3, 0, 150, 0, 0) /* MissileDefense      Specialized */
     , (801087, 15, 0, 3, 0, 100, 0, 0) /* MagicDefense        Specialized */
     , (801087, 31, 0, 3, 0, 450, 0, 1198.474609375) /* CreatureEnchantment Specialized */
     , (801087, 32, 0, 3, 0, 350, 0, 1198.474609375) /* ItemEnchantment     Specialized */
     , (801087, 33, 0, 3, 0, 280, 0, 1198.474609375) /* LifeMagic           Specialized */
     , (801087, 34, 0, 3, 0, 280, 0, 1198.474609375) /* WarMagic            Specialized */
     , (801087, 44, 0, 3, 0, 400, 0, 1198.474609375) /* HeavyWeapons        Specialized */
     , (801087, 48, 0, 3, 0, 600, 0, 1198.474609375) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801087,  0,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801087,  1,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801087,  2,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801087,  3,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801087,  4,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801087,  5,  8, 1000, 0.15, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801087,  6,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801087,  7,  4,  0,    0, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801087,  8,  8, 1000, 0.15, 3000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801087,  2074,    2.1)  /* Gossamer Flesh */
     , (801087,  2162,    2.1)  /* Olthoi's Gift */
     , (801087,  2166,    2.1)  /* Tusker's Gift */
     , (801087,  2168,    2.1)  /* Gelidite's Gift */
     , (801087,  2174,    2.1)  /* Archer's Gift */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801087, 2, 29544,  1, 93, 0, True) /* Create Marksman's Robe (29544) for Wield */
     , (801087, 2,    57,  1, 93, 0, True) /* Create Platemail Gauntlets (57) for Wield */
     , (801087, 2,   107,  1, 93, 0, True) /* Create Sollerets (107) for Wield */
     , (801087, 2, 666699,  1, 93, 0, True) /* Create Fire Sword (666699) for Wield */
     , (801087, 2, 30371,  1, 0, 0, True) /* Create Dread Marauder Shield (30371) for Wield */
     , (801087, 9, 800756,  0, 0, 0.05, True) /* Create Ethereial Essence for ContainTreasure */
     , (801087, 9,      0,  0, 0, 0.95, True) /* Create Nothing for ContainTreasure */;
