DELETE FROM `weenie` WHERE `class_Id` = 800106;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800106, 'shoushimayor', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800106,   1,         16) /* ItemType - Creature */
     , (800106,   2,         31) /* CreatureType - Human */
     , (800106,   6,         -1) /* ItemsCapacity */
     , (800106,   7,         -1) /* ContainersCapacity */
     , (800106,  16,          1) /* ItemUseable - No */
     , (800106,  25,        350) /* Level */
     , (800106,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800106, 113,          1) /* Gender - Male */
     , (800106, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800106, 188,          1) /* HeritageGroup - Aluvian */
     , (800106, 146,     200000) /* XpOverride */
     , (800106, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800106,   1, True ) /* Stuck */
     , (800106,  50, True) /* NeverFailCasting */
     , (800106,  65, True ) /* IgnoreMagicResist */
     , (800106,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800106,   1,       5) /* HeartbeatInterval */
     , (800106,   2,       0) /* HeartbeatTimestamp */
     , (800106,   3,     0.9) /* HealthRate */
     , (800106,   4,       4) /* StaminaRate */
     , (800106,   5,       2) /* ManaRate */
     , (800106,  12,     0.5) /* Shade */
     , (800106,  13,       1) /* ArmorModVsSlash */
     , (800106,  14,       1) /* ArmorModVsPierce */
     , (800106,  15,       1) /* ArmorModVsBludgeon */
     , (800106,  16,       1) /* ArmorModVsCold */
     , (800106,  17,     0.7) /* ArmorModVsFire */
     , (800106,  18,       1) /* ArmorModVsAcid */
     , (800106,  19,       1) /* ArmorModVsElectric */
     , (800106,  31,      23) /* VisualAwarenessRange */
     , (800106,  34,       3) /* PowerupTime */
     , (800106,  36,       1) /* ChargeSpeed */
     , (800106,  39,     1.3) /* DefaultScale */
     , (800106,  64,     0.1) /* ResistSlash */
     , (800106,  65,     0.1) /* ResistPierce */
     , (800106,  66,     0.1) /* ResistBludgeon */
     , (800106,  67,     0.5) /* ResistFire */
     , (800106,  68,     0.1) /* ResistCold */
     , (800106,  69,     0.1) /* ResistAcid */
     , (800106,  70,     0.1) /* ResistElectric */
     , (800106,  71,       1) /* ResistHealthBoost */
     , (800106,  72,       1) /* ResistStaminaDrain */
     , (800106,  73,       1) /* ResistStaminaBoost */
     , (800106,  74,       1) /* ResistManaDrain */
     , (800106,  75,       1) /* ResistManaBoost */
     , (800106, 104,      10) /* ObviousRadarRange */
     , (800106, 117,     0.5) /* FocusedProbability */
     , (800106, 125,       1) /* ResistHealthDrain */
     , (800106, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800106,   1, 'Corrupt Mayor of Shoushi') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800106,   1,   33554433) /* Setup */
     , (800106,   2,  150994945) /* MotionTable */
     , (800106,   3,  536870913) /* SroundTable */
     , (800106,   4,  805306368) /* CombatTable */
     , (800106,   8,  100667446) /* Icon */
     , (800106,  22,  872415236) /* PhysicsEffectTable */
     , (800106,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800106,   1, 2000, 0, 0) /* Strength */
     , (800106,   2, 1250, 0, 0) /* Endurance */
     , (800106,   3, 320, 0, 0) /* Quickness */
     , (800106,   4, 1820, 0, 0) /* Coordination */
     , (800106,   5, 820, 0, 0) /* Focus */
     , (800106,   6, 820, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800106,   1,  9000, 0, 0, 9000) /* MaxHealth */
     , (800106,   3,  21200, 0, 0, 21650) /* MaxStamina */
     , (800106,   5,  12400, 0, 0, 12720) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800106,  6, 0, 3, 0, 170, 0, 0) /* MeleeDefense        Specialized */
     , (800106,  7, 0, 3, 0, 280, 0, 0) /* MissileDefense      Specialized */
     , (800106, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (800106, 16, 0, 3, 0, 440, 0, 0) /* ManaConversion      Specialized */
     , (800106, 31, 0, 3, 0, 440, 0, 0) /* CreatureEnchantment Specialized */
     , (800106, 33, 0, 3, 0, 470, 0, 0) /* LifeMagic           Specialized */
     , (800106, 34, 0, 3, 0, 470, 0, 0) /* WarMagic            Specialized */
     , (800106, 41, 0, 3, 0, 683, 0, 0) /* TwoHandedCombat     Specialized */
     , (800106, 43, 0, 3, 0, 470, 0, 0) /* VoidMagic           Specialized */
     , (800106, 44, 0, 3, 0, 1683, 0, 0) /* HeavyWeapons        Specialized */
     , (800106, 45, 0, 3, 0, 1683, 0, 0) /* LightWeapons        Specialized */
     , (800106, 46, 0, 3, 0, 1683, 0, 0) /* FinesseWeapons      Specialized */
     , (800106, 47, 0, 3, 0, 1580, 0, 0) /* MissileWeapons      Specialized */;
	 
INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800106,  0,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800106,  1,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800106,  2,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800106,  3,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800106,  4,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800106,  5,  4, 20, 0.75,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800106,  6,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800106,  7,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800106,  8,  4, 20, 0.75,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800106,  2074,   2.02)  /* Gossamer Flesh */
     , (800106,  2164,   2.02)  /* Swordsman's Gift */
     , (800106,  2168,   2.02)  /* Gelidite's Gift */
     , (800106,  2174,   2.02)  /* Archer's Gift */
     , (800106,  4436,   1.02)  /* Incantation of Blade Volley */
     , (800106,  4447,   1.02)  /* Incantation of Frost Bolt */
     , (800106,  1783,   1.02)  /* Acid Ring */
     , (800106,  1785,   1.02)  /* Fire Ring */
     , (800106,  1241,   2.02)  /* Drain Health Other V */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800106, 2,   25703,  1, 2, 0, False) /* Create Dapper Suit (25703) for Wield */
     , (800106, 2, 800303,  1, 2, 0, False) /* Create Dagger for Wield */
     , (800106, 2, 300,  5000, 2, 0, False) /* Create Arrows for Wield */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800106, 9, 800377,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */;
