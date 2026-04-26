DELETE FROM `weenie` WHERE `class_Id` = 803563;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803563, 'Loot Drudge(275)', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803563,   1,         16) /* ItemType - Creature */
     , (803563,   2,          3) /* CreatureType - Drudge */
     , (803563,   3,          4) /* PaletteTemplate - Brown */
     , (803563,   6,         -1) /* ItemsCapacity */
     , (803563,   7,         -1) /* ContainersCapacity */
     , (803563,  16,          1) /* ItemUseable - No */
     , (803563,  25,          1) /* Level */
     , (803563,  27,          0) /* ArmorType - None */
     , (803563,  40,          1) /* CombatMode - Melee */
     , (803563,  67,         40) /* Tolerance - Retaliate */
     , (803563,  68,       0x80) /* TargetingTactic - Chess */
     , (803563,  72,         31) /* FriendType - Human */
     , (803563,  81,        120) /* MaxGeneratedObjects */
     , (803563,  82,          1) /* InitGeneratedObjects */
     , (803563,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803563, 100,          1) /* GeneratorType - Relative */
     , (803563, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803563, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803563, 140,          1) /* AiOptions - CanOpenDoors */
     , (803563, 146,          1) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803563,   1, True ) /* Stuck */
     , (803563,   6, False) /* AiUsesMana */
     , (803563,  11, False) /* IgnoreCollisions */
     , (803563,  12, True ) /* ReportCollisions */
     , (803563,  13, False) /* Ethereal */
     , (803563,  14, True ) /* GravityStatus */
     , (803563,  19, True ) /* Attackable */
     , (803563,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803563,   1,       5) /* HeartbeatInterval */
     , (803563,   2,       0) /* HeartbeatTimestamp */
     , (803563,   3,     4.8) /* HealthRate */
     , (803563,   4,       3) /* StaminaRate */
     , (803563,   5,       1) /* ManaRate */
     , (803563,  12,     0.5) /* Shade */
     , (803563,  13,    0.82) /* ArmorModVsSlash */
     , (803563,  14,    0.44) /* ArmorModVsPierce */
     , (803563,  15,    0.83) /* ArmorModVsBludgeon */
     , (803563,  16,    0.72) /* ArmorModVsCold */
     , (803563,  17,    0.83) /* ArmorModVsFire */
     , (803563,  18,    0.72) /* ArmorModVsAcid */
     , (803563,  19,    0.05) /* ArmorModVsElectric */
     , (803563,  31,      18) /* VisualAwarenessRange */
     , (803563,  34,       1) /* PowerupTime */
     , (803563,  36,       1) /* ChargeSpeed */
     , (803563,  39,     0.5) /* DefaultScale */
     , (803563,  64,     0.9) /* ResistSlash */
     , (803563,  65,    0.56) /* ResistPierce */
     , (803563,  66,    0.96) /* ResistBludgeon */
     , (803563,  67,    0.96) /* ResistFire */
     , (803563,  68,    0.85) /* ResistCold */
     , (803563,  69,    0.85) /* ResistAcid */
     , (803563,  70,    0.22) /* ResistElectric */
     , (803563,  71,       1) /* ResistHealthBoost */
     , (803563,  72,       1) /* ResistStaminaDrain */
     , (803563,  73,       1) /* ResistStaminaBoost */
     , (803563,  74,       1) /* ResistManaDrain */
     , (803563,  75,       1) /* ResistManaBoost */
     , (803563,  80,       3) /* AiUseMagicDelay */
     , (803563, 104,      10) /* ObviousRadarRange */
     , (803563, 122,       2) /* AiAcquireHealth */
     , (803563, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803563,   1, 'Loot Drudge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803563,   1,   33556445) /* Setup */
     , (803563,   2,  150994952) /* MotionTable */
     , (803563,   3,  536870919) /* SoundTable */
     , (803563,   4,  805306372) /* CombatTable */
     , (803563,   6,   67112812) /* PaletteBase */
     , (803563,   7,  268436614) /* ClothingBase */
     , (803563,   8,  100667445) /* Icon */
     , (803563,  22,  872415258) /* PhysicsEffectTable */
     , (803563,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803563,   1, 50, 0, 0) /* Strength */
     , (803563,   2, 50, 0, 0) /* Endurance */
     , (803563,   3, 50, 0, 0) /* Quickness */
     , (803563,   4, 50, 0, 0) /* Coordination */
     , (803563,   5, 50, 0, 0) /* Focus */
     , (803563,   6, 50, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803563,   1,   400, 0, 0, 400) /* MaxHealth */
     , (803563,   3,   400, 0, 0, 400) /* MaxStamina */
     , (803563,   5,   400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803563,  6, 0, 3, 0, 50, 0, 0) /* MeleeDefense        Specialized */
     , (803563,  7, 0, 3, 0, 50, 0, 0) /* MissileDefense      Specialized */
     , (803563, 14, 0, 3, 0, 50, 0, 0) /* ArcaneLore          Specialized */
     , (803563, 15, 0, 3, 0, 50, 0, 0) /* MagicDefense        Specialized */
     , (803563, 20, 0, 3, 0, 50, 0, 0) /* Deception           Specialized */
     , (803563, 24, 0, 3, 0, 55000, 0, 0) /* Run                 Specialized */
     , (803563, 31, 0, 3, 0, 50, 0, 0) /* CreatureEnchantment Specialized */
     , (803563, 33, 0, 3, 0, 50, 0, 0) /* LifeMagic           Specialized */
     , (803563, 34, 0, 3, 0, 50, 0, 0) /* WarMagic            Specialized */
     , (803563, 44, 0, 3, 0, 50, 0, 0) /* HeavyWeapons        Specialized */
     , (803563, 45, 0, 3, 0, 50, 0, 0) /* LightWeapons        Specialized */
     , (803563, 47, 0, 3, 0, 50, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803563,  0,  4,  0,    0,  50,  312,  167,  315,  274,  315,  274,   19,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803563,  1,  4,  0,    0,  50,  312,  167,  315,  274,  315,  274,   19,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803563,  2,  4,  0,    0,  50,  312,  167,  315,  274,  315,  274,   19,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803563,  3,  4,  0,    0,  50,  295,  158,  299,  259,  299,  259,   18,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803563,  4,  4,  0,    0,  50,  303,  163,  307,  266,  307,  266,   19,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803563,  5,  4,  1,    0,  50,  287,  154,  291,  252,  291,  252,   18,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803563,  6,  4,  0,    0,  50,  283,  152,  286,  248,  286,  248,   17,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803563,  7,  4,  0,    0,  50,  279,  150,  282,  245,  282,  245,   17,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803563,  8,  4,  1,    0,  50,  279,  150,  282,  245,  282,  245,   17,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803563, 9, 800112,    50, 0, 0.45, False) /* Create Carnage Tokens for ContainTreasure */
     , (803563, 9,      0,     0, 0, 0.55, False) /* Create nothing for ContainTreasure */;
