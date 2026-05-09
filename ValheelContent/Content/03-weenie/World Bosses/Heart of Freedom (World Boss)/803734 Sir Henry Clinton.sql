DELETE FROM `weenie` WHERE `class_Id` = 803734;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803734, 'Sir Henry Clinton', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803734,   1,         16) /* ItemType - Creature */
     , (803734,   2,         31) /* CreatureType - Human */
     , (803734,   6,         -1) /* ItemsCapacity */
     , (803734,   7,         -1) /* ContainersCapacity */
     , (803734,  16,          1) /* ItemUseable - No */
     , (803734,  25,        450) /* Level */
     , (803734,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803734,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803734, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (803734, 113,          1) /* Gender - Male */
     , (803734, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803734, 146,    2500000) /* XpOverride */
     , (803734, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803734,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803734,   1,       5) /* HeartbeatInterval */
     , (803734,   2,       0) /* HeartbeatTimestamp */
     , (803734,   3,       2) /* HealthRate */
     , (803734,   4,       5) /* StaminaRate */
     , (803734,   5,       1) /* ManaRate */
     , (803734,  13,    0.85) /* ArmorModVsSlash */
     , (803734,  14,     0.9) /* ArmorModVsPierce */
     , (803734,  15,    0.71) /* ArmorModVsBludgeon */
     , (803734,  16,    0.65) /* ArmorModVsCold */
     , (803734,  17,       1) /* ArmorModVsFire */
     , (803734,  18,       1) /* ArmorModVsAcid */
     , (803734,  19,    0.65) /* ArmorModVsElectric */
     , (803734,  31,      18) /* VisualAwarenessRange */
     , (803734,  64,     0.4) /* ResistSlash */
     , (803734,  65,     0.4) /* ResistPierce */
     , (803734,  66,     0.6) /* ResistBludgeon */
     , (803734,  67,     0.4) /* ResistFire */
     , (803734,  68,     0.7) /* ResistCold */
     , (803734,  69,     0.4) /* ResistAcid */
     , (803734,  70,     0.7) /* ResistElectric */
     , (803734,  80,       2) /* AiUseMagicDelay */
     , (803734, 104,      10) /* ObviousRadarRange */
     , (803734, 122,       2) /* AiAcquireHealth */
     , (803734, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803734,   1, 'Sir Henry Clinton') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803734,   1,   33554433) /* Setup */
     , (803734,   2,  150994945) /* MotionTable */
     , (803734,   3,  536870913) /* SoundTable */
     , (803734,   4,  805306368) /* CombatTable */
     , (803734,   7,  268437336) /* ClothingBase */
     , (803734,   8,  100667446) /* Icon */
     , (803734,  22,  872415236) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803734,   1, 1200, 0, 0) /* Strength */
     , (803734,   2, 450, 0, 0) /* Endurance */
     , (803734,   3, 320, 0, 0) /* Quickness */
     , (803734,   4, 320, 0, 0) /* Coordination */
     , (803734,   5, 320, 0, 0) /* Focus */
     , (803734,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803734,   1, 60000, 0, 0, 60000) /* MaxHealth */
     , (803734,   3, 60000, 0, 0, 60000) /* MaxStamina */
     , (803734,   5, 60000, 0, 0, 60000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803734,  6, 0, 2, 0, 370, 0, 0) /* MeleeDefense        Trained */
     , (803734,  7, 0, 2, 0, 380, 0, 0) /* MissileDefense      Trained */
     , (803734, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (803734, 16, 0, 2, 0, 240, 0, 0) /* ManaConversion      Trained */
     , (803734, 31, 0, 2, 0, 240, 0, 0) /* CreatureEnchantment Trained */
     , (803734, 33, 0, 2, 0, 270, 0, 0) /* LifeMagic           Trained */
     , (803734, 34, 0, 2, 0, 270, 0, 0) /* WarMagic            Trained */
     , (803734, 41, 0, 2, 0, 483, 0, 0) /* TwoHandedCombat     Trained */
     , (803734, 43, 0, 2, 0, 270, 0, 0) /* VoidMagic           Trained */
     , (803734, 44, 0, 2, 0, 483, 0, 0) /* HeavyWeapons        Trained */
     , (803734, 45, 0, 2, 0, 483, 0, 0) /* LightWeapons        Trained */
     , (803734, 46, 0, 2, 0, 483, 0, 0) /* FinesseWeapons      Trained */
     , (803734, 47, 0, 3, 0, 380, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803734,  0,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803734,  1,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803734,  2,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803734,  3,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803734,  4,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803734,  5,  4, 1500, 0.75,  400,  340,  360,  284,  260,  400,  400,  260,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803734,  6,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803734,  7,  4,  0,    0,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803734,  8,  4, 1500, 0.75,  400,  340,  360,  284,  260,  400,  400,  260,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803734,  2074,   2.02)  /* Gossamer Flesh */
     , (803734,  2164,   2.02)  /* Swordsman's Gift */
     , (803734,  2168,   2.02)  /* Gelidite's Gift */
     , (803734,  2174,   2.02)  /* Archer's Gift */
     , (803734,  4436,   2.02)  /* Incantation of Blade Volley */
     , (803734,  4447,   2.02)  /* Incantation of Frost Bolt */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803734, 2, 38856,  1, 0, 0, False) /* Create Radiant Blood Blade (38856) for Wield */
     , (803734, 2, 41859,  1, 0, 0, False) /* Create Radiant Blood Shield (41859) for Wield */;
