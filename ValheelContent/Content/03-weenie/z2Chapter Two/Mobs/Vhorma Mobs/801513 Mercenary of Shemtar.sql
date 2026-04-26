DELETE FROM `weenie` WHERE `class_Id` = 801513;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801513, 'Mercenary of Shemtar', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801513,   1,         16) /* ItemType - Creature */
     , (801513,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801513,   3,         13) /* PaletteTemplate - Purple */
     , (801513,   6,         -1) /* ItemsCapacity */
     , (801513,   7,         -1) /* ContainersCapacity */
     , (801513,  16,          1) /* ItemUseable - No */
     , (801513,  25,        415) /* Level */
     , (801513,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801513,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801513, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801513, 146,     30001320) /* XpOverride */
     , (801513, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801513,   1, True ) /* Stuck */
     , (801513,  65, True ) /* IgnoreMagicResist */
     , (801513,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801513,   1,       5) /* HeartbeatInterval */
     , (801513,   2,       0) /* HeartbeatTimestamp */
     , (801513,   3,     400) /* HealthRate */
     , (801513,   4,       4) /* StaminaRate */
     , (801513,   5,       2) /* ManaRate */
     , (801513,  13,       1) /* ArmorModVsSlash */
     , (801513,  14,       1) /* ArmorModVsPierce */
     , (801513,  15,       1) /* ArmorModVsBludgeon */
     , (801513,  16,       1) /* ArmorModVsCold */
     , (801513,  17,       1) /* ArmorModVsFire */
     , (801513,  18,       1) /* ArmorModVsAcid */
     , (801513,  19,     0.7) /* ArmorModVsElectric */
     , (801513,  31,      24) /* VisualAwarenessRange */
     , (801513,  34,       1) /* PowerupTime */
     , (801513,  36,       1) /* ChargeSpeed */
     , (801513,  39,     1.2) /* DefaultScale */
     , (801513,  64,     0.1) /* ResistSlash */
     , (801513,  65,     0.1) /* ResistPierce */
     , (801513,  66,     0.1) /* ResistBludgeon */
     , (801513,  67,     0.1) /* ResistFire */
     , (801513,  68,     0.1) /* ResistCold */
     , (801513,  69,     0.1) /* ResistAcid */
     , (801513,  70,     0.5) /* ResistElectric */
     , (801513,  77,       1) /* PhysicsScriptIntensity */
     , (801513, 104,      10) /* ObviousRadarRange */
     , (801513, 125,    0.1) /* ResistHealthDrain */
     , (801513, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801513,   1, 'Mercenary of Shemtar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801513,   1,   33554433) /* Setup */
     , (801513,   2,  150994945) /* MotionTable */
     , (801513,   3,  536870913) /* SoundTable */
     , (801513,   4,  805306368) /* CombatTable */
     , (801513,   6,   67108990) /* PaletteBase */
     , (801513,   7,  268435632) /* ClothingBase */
     , (801513,   8,  100670397) /* Icon */
     , (801513,   9,   83890513) /* EyesTexture */
     , (801513,  10,   83890548) /* NoseTexture */
     , (801513,  11,   83890638) /* MouthTexture */
     , (801513,  15,   67117000) /* HairPalette */
     , (801513,  16,   67110063) /* EyesPalette */
     , (801513,  17,   67109559) /* SkinPalette */
     , (801513,  22,  872415331) /* PhysicsEffectTable */
     , (801513,  32,       5920) /* WieldedTreasureType */
     , (801513,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801513,   1, 800, 0, 0) /* Strength */
     , (801513,   2, 800, 0, 0) /* Endurance */
     , (801513,   3, 800, 0, 0) /* Quickness */
     , (801513,   4, 800, 0, 0) /* Coordination */
     , (801513,   5, 800, 0, 0) /* Focus */
     , (801513,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801513,   1, 25000, 0, 0, 25000) /* MaxHealth */
     , (801513,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801513,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801513,  6, 0, 2, 0,  60, 0, 0) /* MeleeDefense        Trained */
     , (801513,  7, 0, 2, 0,  20, 0, 0) /* MissileDefense      Trained */
     , (801513, 15, 0, 2, 0,  40, 0, 0) /* MagicDefense        Trained */
     , (801513, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (801513, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (801513, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (801513, 34, 0, 2, 0, 400, 0, 0) /* WarMagic            Trained */
     , (801513, 41, 0, 2, 0, 400, 0, 0) /* TwoHandedCombat     Trained */
     , (801513, 44, 0, 2, 0, 400, 0, 0) /* HeavyWeapons        Trained */
     , (801513, 45, 0, 2, 0, 400, 0, 0) /* LightWeapons        Trained */
     , (801513, 46, 0, 2, 0, 400, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801513,  0,  2, 2300, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801513, 16,  4, 2300, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801513, 18,  1, 2300,  0.5,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801513, 19,  1, 2300, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801513, 20,  1, 2300, 0.75,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801513, 22, 32, 2300,  0.5,  200, 1500, 1500, 1500, 1500, 1500, 1500, 1500,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801513, 2, 800215,  1, 90, 0, False) /* Create Hardened Shadow Gauntlets (800215) for Wield */
     , (801513, 2, 800217,  1, 90, 0, False) /* Create Hardened Shadow Leggings (800217) for Wield */
     , (801513, 2, 800214,  1, 90, 0, False) /* Create Hardened Shadow Sollerets (800214) for Wield */
     , (801513, 2, 800213,  1, 90, 0, False) /* Create Hardened Shadow Coat (800213) for Wield */
     , (801513, 2, 802021,  1, 90, 0, False) /* Create Cursed Hollow Sword (802021) for Wield */
     , (801513, 2, 5000522,  1, 90, 0, False) /* Create Dragon Shield (5000522) for Wield */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */
     , (801513, 9, 801514,  0, 0, 1, False) /* Create Shemtar's Orders (801514) for ContainTreasure */;
