DELETE FROM `weenie` WHERE `class_Id` = 800102;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800102, 'holtmayor', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800102,   1,         16) /* ItemType - Creature */
     , (800102,   2,         31) /* CreatureType - Human */
     , (800102,   6,         -1) /* ItemsCapacity */
     , (800102,   7,         -1) /* ContainersCapacity */
     , (800102,  16,          1) /* ItemUseable - No */
     , (800102,  25,        350) /* Level */
     , (800102,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800102, 113,          1) /* Gender - Male */
     , (800102, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800102, 188,          1) /* HeritageGroup - Aluvian */
     , (800102, 146,     200000) /* XpOverride */
     , (800102, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800102,   1, True ) /* Stuck */
     , (800102,  50, False) /* NeverFailCasting */
     , (800102,  65, True ) /* IgnoreMagicResist */
     , (800102,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800102,   1,       5) /* HeartbeatInterval */
     , (800102,   2,       0) /* HeartbeatTimestamp */
     , (800102,   3,     0.9) /* HealthRate */
     , (800102,   4,       4) /* StaminaRate */
     , (800102,   5,       2) /* ManaRate */
     , (800102,  12,     0.5) /* Shade */
     , (800102,  13,       1) /* ArmorModVsSlash */
     , (800102,  14,       1) /* ArmorModVsPierce */
     , (800102,  15,       1) /* ArmorModVsBludgeon */
     , (800102,  16,       1) /* ArmorModVsCold */
     , (800102,  17,     0.7) /* ArmorModVsFire */
     , (800102,  18,       1) /* ArmorModVsAcid */
     , (800102,  19,       1) /* ArmorModVsElectric */
     , (800102,  31,      23) /* VisualAwarenessRange */
     , (800102,  34,       3) /* PowerupTime */
     , (800102,  36,       1) /* ChargeSpeed */
     , (800102,  39,     1.3) /* DefaultScale */
     , (800102,  64,     0.1) /* ResistSlash */
     , (800102,  65,     0.1) /* ResistPierce */
     , (800102,  66,     0.1) /* ResistBludgeon */
     , (800102,  67,     0.5) /* ResistFire */
     , (800102,  68,     0.1) /* ResistCold */
     , (800102,  69,     0.1) /* ResistAcid */
     , (800102,  70,     0.1) /* ResistElectric */
     , (800102,  71,       1) /* ResistHealthBoost */
     , (800102,  72,       1) /* ResistStaminaDrain */
     , (800102,  73,       1) /* ResistStaminaBoost */
     , (800102,  74,       1) /* ResistManaDrain */
     , (800102,  75,       1) /* ResistManaBoost */
     , (800102, 104,      10) /* ObviousRadarRange */
     , (800102, 117,     0.5) /* FocusedProbability */
     , (800102, 125,       1) /* ResistHealthDrain */
     , (800102, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800102,   1, 'Corrupt Mayor of Holtburg') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800102,   1,   33554433) /* Setup */
     , (800102,   2,  150994945) /* MotionTable */
     , (800102,   3,  536870913) /* SroundTable */
     , (800102,   4,  805306368) /* CombatTable */
     , (800102,   8,  100667446) /* Icon */
     , (800102,  22,  872415236) /* PhysicsEffectTable */
     , (800102,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800102,   1, 2000, 0, 0) /* Strength */
     , (800102,   2, 1250, 0, 0) /* Endurance */
     , (800102,   3, 320, 0, 0) /* Quickness */
     , (800102,   4, 1820, 0, 0) /* Coordination */
     , (800102,   5, 820, 0, 0) /* Focus */
     , (800102,   6, 820, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800102,   1,  9000, 0, 0, 9000) /* MaxHealth */
     , (800102,   3,  21200, 0, 0, 21650) /* MaxStamina */
     , (800102,   5,  12400, 0, 0, 12720) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800102,  6, 0, 2, 0,  170, 0, 0) /* MeleeDefense        Trained */
     , (800102,  7, 0, 3, 0,  280, 0, 0) /* MissileDefense      Specialized */
     , (800102, 15, 0, 3, 0,  250, 0, 0) /* MagicDefense        Specialized */
     , (800102, 16, 0, 3, 0,  440, 0, 0) /* ManaConversion      Specialized */
     , (800102, 31, 0, 3, 0,  440, 0, 0) /* CreatureEnchantment Specialized */
     , (800102, 33, 0, 3, 0,  470, 0, 0) /* LifeMagic           Specialized */
     , (800102, 34, 0, 3, 0,  670, 0, 0) /* WarMagic            Specialized */
     , (800102, 41, 0, 3, 0,  683, 0, 0) /* TwoHandedCombat     Specialized */
     , (800102, 43, 0, 3, 0,  670, 0, 0) /* VoidMagic           Specialized */
     , (800102, 44, 0, 3, 0, 2683, 0, 0) /* HeavyWeapons        Specialized */
     , (800102, 45, 0, 3, 0, 2683, 0, 0) /* LightWeapons        Specialized */
     , (800102, 46, 0, 3, 0, 2683, 0, 0) /* FinesseWeapons      Specialized */
     , (800102, 47, 0, 3, 0, 2580, 0, 0) /* MissileWeapons      Specialized */;
	 
INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800102,  0,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800102,  1,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800102,  2,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800102,  3,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800102,  4,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800102,  5,  4, 20, 0.75,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800102,  6,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800102,  7,  4,  0,    0,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800102,  8,  4, 20, 0.75,  500,  1000,  1000,  1000,   700,   700,  1000,   700,    500, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800102,  2074,   2.02)  /* Gossamer Flesh */
     , (800102,  2164,   2.02)  /* Swordsman's Gift */
     , (800102,  2168,   2.02)  /* Gelidite's Gift */
     , (800102,  2174,   2.02)  /* Archer's Gift */
     , (800102,  4436,   1.02)  /* Incantation of Blade Volley */
     , (800102,  4447,   1.02)  /* Incantation of Frost Bolt */
     , (800102,  1783,   1.02)  /* Acid Ring */
     , (800102,  1785,   1.02)  /* Fire Ring */
     , (800102,  1241,   2.02)  /* Drain Health Other V */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800102, 2,  25703,  1, 2, 0, False) /* Create Dapper Suit (25703) for Wield */
     , (800102, 2, 800303,  1, 2, 0, False) /* Create Mayor's Axe of Life Drain for Wield */
     , (800102, 2, 300,  5000, 2, 0, False) /* Create Arrows for Wield */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */
	 , (800102, 9, 800373,  1, 0,  1, False) /* Create Deceased Mayor Token for ContainTreasure */;