DELETE FROM `weenie` WHERE `class_Id` = 801344;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801344, 'High Acolyte to Isel', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801344,   1,         16) /* ItemType - Creature */
     , (801344,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801344,   3,         13) /* PaletteTemplate - Purple */
     , (801344,   6,         -1) /* ItemsCapacity */
     , (801344,   7,         -1) /* ContainersCapacity */
     , (801344,  16,          1) /* ItemUseable - No */
     , (801344,  25,        385) /* Level */
     , (801344,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801344,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801344, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801344, 146,     500000) /* XpOverride */
     , (801344, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801344,   1, True ) /* Stuck */
     , (801344,  65, True ) /* IgnoreMagicResist */
     , (801344,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801344,   1,       5) /* HeartbeatInterval */
     , (801344,   2,       0) /* HeartbeatTimestamp */
     , (801344,   3,     400) /* HealthRate */
     , (801344,   4,       4) /* StaminaRate */
     , (801344,   5,       2) /* ManaRate */
     , (801344,  13,       1) /* ArmorModVsSlash */
     , (801344,  14,       1) /* ArmorModVsPierce */
     , (801344,  15,       1) /* ArmorModVsBludgeon */
     , (801344,  16,       1) /* ArmorModVsCold */
     , (801344,  17,       1) /* ArmorModVsFire */
     , (801344,  18,       1) /* ArmorModVsAcid */
     , (801344,  19,     0.7) /* ArmorModVsElectric */
     , (801344,  31,      24) /* VisualAwarenessRange */
     , (801344,  34,       1) /* PowerupTime */
     , (801344,  36,       1) /* ChargeSpeed */
     , (801344,  39,     1.8) /* DefaultScale */
     , (801344,  64,     0.1) /* ResistSlash */
     , (801344,  65,     0.1) /* ResistPierce */
     , (801344,  66,     0.1) /* ResistBludgeon */
     , (801344,  67,     0.1) /* ResistFire */
     , (801344,  68,     0.1) /* ResistCold */
     , (801344,  69,     0.1) /* ResistAcid */
     , (801344,  70,     0.7) /* ResistElectric */
     , (801344,  77,       1) /* PhysicsScriptIntensity */
     , (801344, 104,      10) /* ObviousRadarRange */
     , (801344, 125,       1) /* ResistHealthDrain */
     , (801344, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801344,   1, 'High Acolyte to Isel') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801344,   1,   33554433) /* Setup */
     , (801344,   2,  150994945) /* MotionTable */
     , (801344,   3,  536870913) /* SoundTable */
     , (801344,   4,  805306368) /* CombatTable */
     , (801344,   6,   67108990) /* PaletteBase */
     , (801344,   7,  268435632) /* ClothingBase */
     , (801344,   8,  100670397) /* Icon */
     , (801344,   9,   83890513) /* EyesTexture */
     , (801344,  10,   83890548) /* NoseTexture */
     , (801344,  11,   83890638) /* MouthTexture */
     , (801344,  15,   67117000) /* HairPalette */
     , (801344,  16,   67110063) /* EyesPalette */
     , (801344,  17,   67109559) /* SkinPalette */
     , (801344,  22,  872415331) /* PhysicsEffectTable */
     , (801344,  32,       5920) /* WieldedTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801344,   1, 2500, 0, 0) /* Strength */
     , (801344,   2, 1500, 0, 0) /* Endurance */
     , (801344,   3, 800, 0, 0) /* Quickness */
     , (801344,   4, 800, 0, 0) /* Coordination */
     , (801344,   5, 800, 0, 0) /* Focus */
     , (801344,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801344,   1, 50000, 0, 0, 50000) /* MaxHealth */
     , (801344,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801344,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801344,  6, 0, 2, 0,  60, 0, 0) /* MeleeDefense        Trained */
     , (801344,  7, 0, 2, 0,  20, 0, 0) /* MissileDefense      Trained */
     , (801344, 15, 0, 2, 0,  40, 0, 0) /* MagicDefense        Trained */
     , (801344, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (801344, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (801344, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (801344, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801344, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801344, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801344, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801344, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801344,  0,  2, 375, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801344, 16,  4, 375, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801344, 18,  1, 375,  0.5,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801344, 19,  1, 375, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801344, 20,  1, 375, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801344, 22, 32, 375,  0.5,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801344, 2, 800215,  1, 89, 0, False) /* Create Hardened Shadow Gauntlets (800215) for Wield */
     , (801344, 2, 800217,  1, 89, 0, False) /* Create Hardened Shadow Leggings (800217) for Wield */
     , (801344, 2, 800214,  1, 89, 0, False) /* Create Hardened Shadow Sollerets (800214) for Wield */
     , (801344, 2, 800213,  1, 89, 0, False) /* Create Hardened Shadow Coat (800213) for Wield */
     , (801344, 2, 802022,  1, 89, 0, False) /* Create Cursed Hollow Sword (802022) for Wield */
     , (801344, 2, 5000522,  1, 89, 0, False) /* Create Dragon Shield (5000522) for Wield */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 801343,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */
     , (801344, 9, 300172,  0, 0, 1, False) /* Create Isel's Heart Fire (801343) for ContainTreasure */;
