DELETE FROM `weenie` WHERE `class_Id` = 803733;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803733, 'Major-General William Howe', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803733,   1,         16) /* ItemType - Creature */
     , (803733,   2,         31) /* CreatureType - Human */
     , (803733,   6,         -1) /* ItemsCapacity */
     , (803733,   7,         -1) /* ContainersCapacity */
     , (803733,  16,          1) /* ItemUseable - No */
     , (803733,  25,        450) /* Level */
     , (803733,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803733,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803733, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (803733, 113,          1) /* Gender - Male */
     , (803733, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803733, 146,    2500000) /* XpOverride */
     , (803733, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803733,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803733,   1,       5) /* HeartbeatInterval */
     , (803733,   2,       0) /* HeartbeatTimestamp */
     , (803733,   3,       2) /* HealthRate */
     , (803733,   4,       5) /* StaminaRate */
     , (803733,   5,       1) /* ManaRate */
     , (803733,  13,    0.85) /* ArmorModVsSlash */
     , (803733,  14,     0.9) /* ArmorModVsPierce */
     , (803733,  15,    0.71) /* ArmorModVsBludgeon */
     , (803733,  16,    0.65) /* ArmorModVsCold */
     , (803733,  17,       1) /* ArmorModVsFire */
     , (803733,  18,       1) /* ArmorModVsAcid */
     , (803733,  19,    0.65) /* ArmorModVsElectric */
     , (803733,  31,      18) /* VisualAwarenessRange */
     , (803733,  64,     0.4) /* ResistSlash */
     , (803733,  65,     0.4) /* ResistPierce */
     , (803733,  66,     0.6) /* ResistBludgeon */
     , (803733,  67,     0.4) /* ResistFire */
     , (803733,  68,     0.7) /* ResistCold */
     , (803733,  69,     0.4) /* ResistAcid */
     , (803733,  70,     0.7) /* ResistElectric */
     , (803733,  80,       2) /* AiUseMagicDelay */
     , (803733, 104,      10) /* ObviousRadarRange */
     , (803733, 122,       2) /* AiAcquireHealth */
     , (803733, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803733,   1, 'Major-General William Howe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803733,   1,   33554433) /* Setup */
     , (803733,   2,  150994945) /* MotionTable */
     , (803733,   3,  536870913) /* SoundTable */
     , (803733,   4,  805306368) /* CombatTable */
     , (803733,   7,  268437336) /* ClothingBase */
     , (803733,   8,  100667446) /* Icon */
     , (803733,  22,  872415236) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803733,   1, 1200, 0, 0) /* Strength */
     , (803733,   2, 450, 0, 0) /* Endurance */
     , (803733,   3, 320, 0, 0) /* Quickness */
     , (803733,   4, 320, 0, 0) /* Coordination */
     , (803733,   5, 320, 0, 0) /* Focus */
     , (803733,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803733,   1, 60000, 0, 0, 60000) /* MaxHealth */
     , (803733,   3, 60000, 0, 0, 60000) /* MaxStamina */
     , (803733,   5, 60000, 0, 0, 60000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803733,  6, 0, 2, 0, 370, 0, 0) /* MeleeDefense        Trained */
     , (803733,  7, 0, 2, 0, 380, 0, 0) /* MissileDefense      Trained */
     , (803733, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (803733, 16, 0, 2, 0, 240, 0, 0) /* ManaConversion      Trained */
     , (803733, 31, 0, 2, 0, 240, 0, 0) /* CreatureEnchantment Trained */
     , (803733, 33, 0, 2, 0, 270, 0, 0) /* LifeMagic           Trained */
     , (803733, 34, 0, 2, 0, 270, 0, 0) /* WarMagic            Trained */
     , (803733, 41, 0, 2, 0, 483, 0, 0) /* TwoHandedCombat     Trained */
     , (803733, 43, 0, 2, 0, 270, 0, 0) /* VoidMagic           Trained */
     , (803733, 44, 0, 2, 0, 483, 0, 0) /* HeavyWeapons        Trained */
     , (803733, 45, 0, 2, 0, 483, 0, 0) /* LightWeapons        Trained */
     , (803733, 46, 0, 2, 0, 483, 0, 0) /* FinesseWeapons      Trained */
     , (803733, 47, 0, 3, 0, 380, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803733,  0,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803733,  1,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803733,  2,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803733,  3,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803733,  4,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803733,  5,  4, 1500, 0.75,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803733,  6,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803733,  7,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803733,  8,  4, 1500, 0.75,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803733,  2074,   2.02)  /* Gossamer Flesh */
     , (803733,  2164,   2.02)  /* Swordsman's Gift */
     , (803733,  2168,   2.02)  /* Gelidite's Gift */
     , (803733,  2174,   2.02)  /* Archer's Gift */
     , (803733,  4436,   2.02)  /* Incantation of Blade Volley */
     , (803733,  4447,   2.02)  /* Incantation of Frost Bolt */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803733, 2, 38856,  1, 0, 0, False) /* Create Radiant Blood Blade (38856) for Wield */
     , (803733, 2, 41859,  1, 0, 0, False) /* Create Radiant Blood Shield (41859) for Wield */;
