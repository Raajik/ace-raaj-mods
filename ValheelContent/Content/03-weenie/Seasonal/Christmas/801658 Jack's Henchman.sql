DELETE FROM `weenie` WHERE `class_Id` = 801658;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801658, 'Jacks Henchman', 10, '2020-04-14 01:14:09') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801658,   1,         16) /* ItemType - Creature */
     , (801658,   2,         30) /* CreatureType - Skeleton */
     , (801658,   3,         39) /* PaletteTemplate - Black */
     , (801658,   6,         -1) /* ItemsCapacity */
     , (801658,   7,         -1) /* ContainersCapacity */
     , (801658,  16,          1) /* ItemUseable - No */
     , (801658,  25,        400) /* Level */
     , (801658,  27,          1) /* ArmorType - Cloth */
     , (801658,  40,         14) /* CombatMode - CombatCombat */
     , (801658,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801658,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (801658,  81,         25) /* MaxGeneratedObjects */
     , (801658,  82,         25) /* InitGeneratedObjects */
     , (801658,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801658, 103,          3) /* GeneratorDestructionType - Kill */
     , (801658, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801658, 146,   20000000) /* XpOverride */
     , (801658, 188,          3) /* HeritageGroup - Sho */
     , (801658, 332,      35000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801658,   1, True ) /* Stuck */
     , (801658,   4, True ) /* RotProof */
     , (801658,   6, False) /* AiUsesMana */
     , (801658,  12, True ) /* ReportCollisions */
     , (801658,  14, True ) /* GravityStatus */
     , (801658,  19, True ) /* Attackable */
     , (801658,  50, False) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801658,   1,       5) /* HeartbeatInterval */
     , (801658,   2,       0) /* HeartbeatTimestamp */
     , (801658,   3,     250) /* HealthRate */
     , (801658,   4,     100) /* StaminaRate */
     , (801658,  13, 0.0010000000474974513) /* ArmorModVsSlash */
     , (801658,  14, 0.0010000000474974513) /* ArmorModVsPierce */
     , (801658,  15, 0.0010000000474974513) /* ArmorModVsBludgeon */
     , (801658,  16, 0.0010000000474974513) /* ArmorModVsCold */
     , (801658,  17, 0.0010000000474974513) /* ArmorModVsFire */
     , (801658,  18, 0.0010000000474974513) /* ArmorModVsAcid */
     , (801658,  19, 0.0010000000474974513) /* ArmorModVsElectric */
     , (801658,  31,      30) /* VisualAwarenessRange */
     , (801658,  34,       3) /* PowerupTime */
     , (801658,  39,       1) /* DefaultScale */
     , (801658,  41,      30) /* RegenerationInterval */
     , (801658,  43,      15) /* GeneratorRadius */
     , (801658,  55,     100) /* HomeRadius */
     , (801658,  64,    0.75) /* ResistSlash */
     , (801658,  65,    0.75) /* ResistPierce */
     , (801658,  66,    0.75) /* ResistBludgeon */
     , (801658,  67,    0.75) /* ResistFire */
     , (801658,  68,    0.75) /* ResistCold */
     , (801658,  69,    0.75) /* ResistAcid */
     , (801658,  70,    0.75) /* ResistElectric */
     , (801658,  71,       1) /* ResistHealthBoost */
     , (801658,  72,       0) /* ResistStaminaDrain */
     , (801658,  73,       1) /* ResistStaminaBoost */
     , (801658,  74,       0) /* ResistManaDrain */
     , (801658,  75,       1) /* ResistManaBoost */
     , (801658,  76,       0) /* Translucency */
     , (801658,  80,       3) /* AiUseMagicDelay */
     , (801658, 104,      30) /* ObviousRadarRange */
     , (801658, 127,       2) /* AiCounteractEnchantment */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801658,   1, 'Jack''s Henchman') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801658,   1,   33561248) /* Setup */
     , (801658,   2,  150994945) /* MotionTable */
     , (801658,   3,  536871124) /* SoundTable */
     , (801658,   4,  805306368) /* CombatTable */
     , (801658,   5,  234881029) /* QualityFilter */
     , (801658,   6,   67108990) /* PaletteBase */
     , (801658,   8,  100667446) /* Icon */
     , (801658,   9,   83898478) /* EyesTexture */
     , (801658,  10,   83898497) /* NoseTexture */
     , (801658,  11,   83898498) /* MouthTexture */
     , (801658,  12,   83898436) /* DefaultEyesTexture */
     , (801658,  13,   83898437) /* DefaultNoseTexture */
     , (801658,  14,   83898435) /* DefaultMouthTexture */
     , (801658,  15,   67117003) /* HairPalette */
     , (801658,  16,   67116950) /* EyesPalette */
     , (801658,  17,   67116925) /* SkinPalette */
     , (801658,  18,   16795238) /* HeadObject */
     , (801658,  22,  872415435) /* PhysicsEffectTable */
     , (801658,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801658,   1, 1500, 0, 0) /* Strength */
     , (801658,   2, 1500, 0, 0) /* Endurance */
     , (801658,   3, 500, 0, 0) /* Quickness */
     , (801658,   4, 500, 0, 0) /* Coordination */
     , (801658,   5, 500, 0, 0) /* Focus */
     , (801658,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801658,   1, 250000, 0, 0, 250000) /* MaxHealth */
     , (801658,   3, 250000, 0, 0, 250000) /* MaxStamina */
     , (801658,   5, 250000, 0, 0, 250000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801658,  6, 0, 3, 0, 480, 0, 0) /* MeleeDefense        Specialized */
     , (801658,  7, 0, 3, 0, 475, 0, 0) /* MissileDefense      Specialized */
     , (801658, 14, 0, 3, 0, 475, 0, 1198.474609375) /* ArcaneLore          Specialized */
     , (801658, 15, 0, 3, 0, 355, 0, 0) /* MagicDefense        Specialized */
     , (801658, 16, 0, 3, 0, 200, 0, 1198.474609375) /* ManaConversion      Specialized */
     , (801658, 18, 0, 3, 0, 200, 0, 1198.474609375) /* ItemTinkering       Specialized */
     , (801658, 19, 0, 3, 0, 200, 0, 1198.474609375) /* AssessPerson        Specialized */
     , (801658, 20, 0, 3, 0, 5000, 0, 1198.474609375) /* Deception           Specialized */
     , (801658, 21, 0, 3, 0, 200, 0, 1198.474609375) /* Healing             Specialized */
     , (801658, 22, 0, 3, 0, 200, 0, 1198.474609375) /* Jump                Specialized */
     , (801658, 23, 0, 3, 0, 200, 0, 1198.474609375) /* Lockpick            Specialized */
     , (801658, 24, 0, 3, 0, 200, 0, 1198.474609375) /* Run                 Specialized */
     , (801658, 27, 0, 3, 0, 200, 0, 1198.474609375) /* AssessCreature      Specialized */
     , (801658, 28, 0, 3, 0, 200, 0, 1198.474609375) /* WeaponTinkering     Specialized */
     , (801658, 29, 0, 3, 0,  20, 0, 1198.474609375) /* ArmorTinkering      Specialized */
     , (801658, 30, 0, 3, 0, 200, 0, 1198.474609375) /* MagicItemTinkering  Specialized */
     , (801658, 31, 0, 3, 0, 260, 0, 1198.474609375) /* CreatureEnchantment Specialized */
     , (801658, 32, 0, 3, 0, 260, 0, 1198.474609375) /* ItemEnchantment     Specialized */
     , (801658, 33, 0, 3, 0, 260, 0, 1198.474609375) /* LifeMagic           Specialized */
     , (801658, 34, 0, 3, 0, 260, 0, 1198.474609375) /* WarMagic            Specialized */
     , (801658, 36, 0, 3, 0, 900, 0, 1198.474609375) /* Loyalty             Specialized */
     , (801658, 37, 0, 3, 0, 400, 0, 1198.474609375) /* Fletching           Specialized */
     , (801658, 38, 0, 3, 0, 400, 0, 1198.474609375) /* Alchemy             Specialized */
     , (801658, 39, 0, 3, 0, 900, 0, 1198.474609375) /* Cooking             Specialized */
     , (801658, 41, 0, 3, 0, 350, 0, 0) /* TwoHandedCombat     Specialized */
     , (801658, 43, 0, 3, 0, 350, 0, 0) /* VoidMagic           Specialized */
     , (801658, 44, 0, 3, 0, 350, 0, 0) /* HeavyWeapons        Specialized */
     , (801658, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */
     , (801658, 46, 0, 3, 0, 350, 0, 0) /* FinesseWeapons      Specialized */
     , (801658, 47, 0, 3, 0, 350, 0, 0) /* MissileWeapons      Specialized */
     , (801658, 49, 0, 3, 0, 350, 0, 0) /* DualWield           Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801658,  0,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801658,  1,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801658,  2,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801658,  3,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801658,  4,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801658,  5,  8, 75, 0.15, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801658,  6,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801658,  7,  4, 75,    0, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801658,  8,  8, 75, 0.15, 9000, 1800, 1800, 1800, 1800, 1800, 1800, 1800,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801658,  2136,    2.1)  /* Icy Torment */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801658, 2,  8636,  1, 90, 0, True) /* Create Hoory Mattekar Robe (8636) for Wield */
     , (801658, 2,  32165,  1, 0, 0, True) /* Create Shirt (130) for Wield */
     , (801658, 2,  5937,  1, 0, 0, True) /* Create Impious Staff (5937) for Wield */
     , (801658, 9, 300191,  1, 0, 0.01, True) /* Create ValHeel Empowered Key (300191) for ContainTreasure */;
