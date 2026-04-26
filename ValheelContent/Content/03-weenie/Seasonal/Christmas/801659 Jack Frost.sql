DELETE FROM `weenie` WHERE `class_Id` = 801659;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801659, 'Jack Frost2', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801659,   1,         16) /* ItemType - Creature */
     , (801659,   2,         31) /* CreatureType - Human */
     , (801659,   3,         13) /* PaletteTemplate - Purple */
     , (801659,   6,         -1) /* ItemsCapacity */
     , (801659,   7,         -1) /* ContainersCapacity */
     , (801659,  16,          1) /* ItemUseable - No */
     , (801659,  25,        450) /* Level */
     , (801659,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801659,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801659, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801659, 146,  500000000) /* XpOverride */
     , (801659, 332,    5000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801659,   1, True ) /* Stuck */
     , (801659,  65, True ) /* IgnoreMagicResist */
     , (801659,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801659,   1,       5) /* HeartbeatInterval */
     , (801659,   2,       0) /* HeartbeatTimestamp */
     , (801659,   3,     400) /* HealthRate */
     , (801659,   4,       4) /* StaminaRate */
     , (801659,   5,       2) /* ManaRate */
     , (801659,  13,       1) /* ArmorModVsSlash */
     , (801659,  14,       1) /* ArmorModVsPierce */
     , (801659,  15,       1) /* ArmorModVsBludgeon */
     , (801659,  16,       1) /* ArmorModVsCold */
     , (801659,  17,       1) /* ArmorModVsFire */
     , (801659,  18,       1) /* ArmorModVsAcid */
     , (801659,  19,     1.2) /* ArmorModVsElectric */
     , (801659,  31,      24) /* VisualAwarenessRange */
     , (801659,  34,       1) /* PowerupTime */
     , (801659,  36,       1) /* ChargeSpeed */
     , (801659,  39,     2) /* DefaultScale */
     , (801659,  64,     0.1) /* ResistSlash */
     , (801659,  65,     0.1) /* ResistPierce */
     , (801659,  66,     0.1) /* ResistBludgeon */
     , (801659,  67,     0.1) /* ResistFire */
     , (801659,  68,     0.1) /* ResistCold */
     , (801659,  69,     0.1) /* ResistAcid */
     , (801659,  70,     0.7) /* ResistElectric */
     , (801659,  77,       1) /* PhysicsScriptIntensity */
     , (801659, 104,      10) /* ObviousRadarRange */
     , (801659, 125,       1) /* ResistHealthDrain */
     , (801659, 166,    0.25) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801659,   1, 'Jack Frost') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801659,   1,   33554433) /* Setup */
     , (801659,   2,  150994945) /* MotionTable */
     , (801659,   3,  536870913) /* SoundTable */
     , (801659,   4,  805306368) /* CombatTable */
     , (801659,   6,   67108990) /* PaletteBase */
     , (801659,   7,  268435632) /* ClothingBase */
     , (801659,   8,  100670397) /* Icon */
     , (801659,   9,   83890513) /* EyesTexture */
     , (801659,  10,   83890548) /* NoseTexture */
     , (801659,  11,   83890638) /* MouthTexture */
     , (801659,  15,   67117000) /* HairPalette */
     , (801659,  16,   67110063) /* EyesPalette */
     , (801659,  17,   67109559) /* SkinPalette */
     , (801659,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801659,   1, 6500, 0, 0) /* Strength */
     , (801659,   2, 1500, 0, 0) /* Endurance */
     , (801659,   3, 800, 0, 0) /* Quickness */
     , (801659,   4, 800, 0, 0) /* Coordination */
     , (801659,   5, 800, 0, 0) /* Focus */
     , (801659,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801659,   1, 5000000, 0, 0, 5000000) /* MaxHealth */
     , (801659,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801659,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801659,  6, 0, 2, 0,  60, 0, 0) /* MeleeDefense        Trained */
     , (801659,  7, 0, 2, 0,  20, 0, 0) /* MissileDefense      Trained */
     , (801659, 15, 0, 2, 0,  40, 0, 0) /* MagicDefense        Trained */
     , (801659, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (801659, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (801659, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (801659, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801659, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801659, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801659, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801659, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801659,  0,  2, 850, 0.75, 12000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801659, 16,  4, 850, 0.75, 12000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801659, 18,  1, 850,  0.5, 12000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801659, 19,  1, 850, 0.75, 12000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801659, 20,  1, 850, 0.75, 12000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801659, 22, 32, 850,  0.5, 12000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801659, 2, 43,  1, 90, 0, False) /* Create Auroric Exarch Coat (23932) for Wield */
     , (801659, 2, 64,  1, 90, 0, False) /* Create Auroric Exarch Girth (23938) for Wield */
     , (801659, 2, 106,  1, 90, 0, False) /* Create Auroric Exarch Leggings (23951) for Wield */
     , (801659, 2, 2437,  1, 90, 0, False) /* Create Sollerets of Grace (25812) for Wield */
     , (801659, 2, 46551,  1, 90, 0, False) /* Create Sollerets of Grace (25812) for Wield */
     , (801659, 2, 37211,  1, 90, 0, False) /* Create Sollerets of Grace (25812) for Wield */
     , (801659, 2, 32165,  1, 90, 0, False) /* Create Sollerets of Grace (25812) for Wield */
     , (801659, 2, 801384,  1, 92, 0, False) /* Create Shadow Blade of the King (801384) for Wield */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (801659, 9,  32165,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */;
