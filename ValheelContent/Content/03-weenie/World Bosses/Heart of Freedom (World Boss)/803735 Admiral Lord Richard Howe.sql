DELETE FROM `weenie` WHERE `class_Id` = 803735;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803735, 'Admiral Lord Richard Howe', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803735,   1,         16) /* ItemType - Creature */
     , (803735,   2,         31) /* CreatureType - Human */
     , (803735,   6,         -1) /* ItemsCapacity */
     , (803735,   7,         -1) /* ContainersCapacity */
     , (803735,  16,          1) /* ItemUseable - No */
     , (803735,  25,        450) /* Level */
     , (803735,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803735,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803735, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (803735, 113,          1) /* Gender - Male */
     , (803735, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803735, 146,    2500000) /* XpOverride */
     , (803735, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803735,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803735,   1,       5) /* HeartbeatInterval */
     , (803735,   2,       0) /* HeartbeatTimestamp */
     , (803735,   3,       2) /* HealthRate */
     , (803735,   4,       5) /* StaminaRate */
     , (803735,   5,       1) /* ManaRate */
     , (803735,  13,    0.85) /* ArmorModVsSlash */
     , (803735,  14,     0.9) /* ArmorModVsPierce */
     , (803735,  15,    0.71) /* ArmorModVsBludgeon */
     , (803735,  16,    0.65) /* ArmorModVsCold */
     , (803735,  17,       1) /* ArmorModVsFire */
     , (803735,  18,       1) /* ArmorModVsAcid */
     , (803735,  19,    0.65) /* ArmorModVsElectric */
     , (803735,  31,      18) /* VisualAwarenessRange */
     , (803735,  64,     0.4) /* ResistSlash */
     , (803735,  65,     0.4) /* ResistPierce */
     , (803735,  66,     0.6) /* ResistBludgeon */
     , (803735,  67,     0.4) /* ResistFire */
     , (803735,  68,     0.7) /* ResistCold */
     , (803735,  69,     0.4) /* ResistAcid */
     , (803735,  70,     0.7) /* ResistElectric */
     , (803735,  80,       2) /* AiUseMagicDelay */
     , (803735, 104,      10) /* ObviousRadarRange */
     , (803735, 122,       2) /* AiAcquireHealth */
     , (803735, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803735,   1, 'Admiral Lord Richard Howe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803735,   1,   33554433) /* Setup */
     , (803735,   2,  150994945) /* MotionTable */
     , (803735,   3,  536870913) /* SoundTable */
     , (803735,   4,  805306368) /* CombatTable */
     , (803735,   7,  268437336) /* ClothingBase */
     , (803735,   8,  100667446) /* Icon */
     , (803735,  22,  872415236) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803735,   1, 1200, 0, 0) /* Strength */
     , (803735,   2, 450, 0, 0) /* Endurance */
     , (803735,   3, 320, 0, 0) /* Quickness */
     , (803735,   4, 320, 0, 0) /* Coordination */
     , (803735,   5, 320, 0, 0) /* Focus */
     , (803735,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803735,   1, 60000, 0, 0, 60000) /* MaxHealth */
     , (803735,   3, 60000, 0, 0, 60000) /* MaxStamina */
     , (803735,   5, 60000, 0, 0, 60000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803735,  6, 0, 2, 0, 370, 0, 0) /* MeleeDefense        Trained */
     , (803735,  7, 0, 2, 0, 380, 0, 0) /* MissileDefense      Trained */
     , (803735, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (803735, 16, 0, 2, 0, 240, 0, 0) /* ManaConversion      Trained */
     , (803735, 31, 0, 2, 0, 240, 0, 0) /* CreatureEnchantment Trained */
     , (803735, 33, 0, 2, 0, 270, 0, 0) /* LifeMagic           Trained */
     , (803735, 34, 0, 2, 0, 270, 0, 0) /* WarMagic            Trained */
     , (803735, 41, 0, 2, 0, 483, 0, 0) /* TwoHandedCombat     Trained */
     , (803735, 43, 0, 2, 0, 270, 0, 0) /* VoidMagic           Trained */
     , (803735, 44, 0, 2, 0, 483, 0, 0) /* HeavyWeapons        Trained */
     , (803735, 45, 0, 2, 0, 483, 0, 0) /* LightWeapons        Trained */
     , (803735, 46, 0, 2, 0, 483, 0, 0) /* FinesseWeapons      Trained */
     , (803735, 47, 0, 3, 0, 380, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803735,  0,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803735,  1,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803735,  2,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803735,  3,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803735,  4,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803735,  5,  4, 1500, 0.75,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803735,  6,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803735,  7,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803735,  8,  4, 1500, 0.75,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803735,  2074,   2.02)  /* Gossamer Flesh */
     , (803735,  2164,   2.02)  /* Swordsman's Gift */
     , (803735,  2168,   2.02)  /* Gelidite's Gift */
     , (803735,  2174,   2.02)  /* Archer's Gift */
     , (803735,  4436,   2.02)  /* Incantation of Blade Volley */
     , (803735,  4447,   2.02)  /* Incantation of Frost Bolt */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803735, 2, 38856,  1, 0, 0, False) /* Create Radiant Blood Blade (38856) for Wield */
     , (803735, 2, 41859,  1, 0, 0, False) /* Create Radiant Blood Shield (41859) for Wield */;
