DELETE FROM `weenie` WHERE `class_Id` = 800115;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800115, 'Elorin the Cursed', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800115,   1,         16) /* ItemType - Creature */
     , (800115,   2,         31) /* CreatureType - Human */
     , (800115,   6,         -1) /* ItemsCapacity */
     , (800115,   7,         -1) /* ContainersCapacity */
     , (800115,  16,          1) /* ItemUseable - No */
     , (800115,  25,        475) /* Level */
     , (800115,  68,          0x80) /* TargetingTactic - Random */
     , (800115,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800115, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800115, 113,          1) /* Gender - Male */
     , (800115, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800115, 146,     7867485) /* XpOverride */
     , (800115, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800115,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800115,   1,       5) /* HeartbeatInterval */
     , (800115,   2,       0) /* HeartbeatTimestamp */
     , (800115,   3,       2) /* HealthRate */
     , (800115,   4,       5) /* StaminaRate */
     , (800115,   5,       1) /* ManaRate */
     , (800115,  13,       1) /* ArmorModVsSlash */
     , (800115,  14,       1) /* ArmorModVsPierce */
     , (800115,  15,       1) /* ArmorModVsBludgeon */
     , (800115,  16,       1) /* ArmorModVsCold */
     , (800115,  17,     0.6) /* ArmorModVsFire */
     , (800115,  18,     0.6) /* ArmorModVsAcid */
     , (800115,  19,     0.6) /* ArmorModVsElectric */
     , (800115,  31,      18) /* VisualAwarenessRange */
     , (800115,  39,     2.3) /* DefaultScale */
     , (800115,  64,     0.1) /* ResistSlash */
     , (800115,  65,     0.1) /* ResistPierce */
     , (800115,  66,     0.1) /* ResistBludgeon */
     , (800115,  67,     0.5) /* ResistFire */
     , (800115,  68,     0.1) /* ResistCold */
     , (800115,  69,     0.5) /* ResistAcid */
     , (800115,  70,     0.5) /* ResistElectric */
     , (800115,  80,       2) /* AiUseMagicDelay */
     , (800115, 104,      10) /* ObviousRadarRange */
     , (800115, 122,       2) /* AiAcquireHealth */
     , (800115, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800115,   1, 'Elorin the Cursed') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800115,   1,   33554433) /* Setup */
     , (800115,   2,  150994945) /* MotionTable */
     , (800115,   3,  536870913) /* SoundTable */
     , (800115,   4,  805306368) /* CombatTable */
     , (800115,   7,  268437336) /* ClothingBase */
     , (800115,   8,  100667446) /* Icon */
     , (800115,  22,  872415236) /* PhysicsEffectTable */
     , (800115,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800115,   1, 3620, 0, 0) /* Strength */
     , (800115,   2, 850, 0, 0) /* Endurance */
     , (800115,   3, 820, 0, 0) /* Quickness */
     , (800115,   4, 820, 0, 0) /* Coordination */
     , (800115,   5, 820, 0, 0) /* Focus */
     , (800115,   6, 820, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800115,   1, 50000, 0, 0, 50000) /* MaxHealth */
     , (800115,   3, 50000, 0, 0, 50000) /* MaxStamina */
     , (800115,   5, 50000, 0, 0, 50000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800115,  6, 0, 2, 0, 170, 0, 0) /* MeleeDefense        Trained */
     , (800115,  7, 0, 2, 0, 180, 0, 0) /* MissileDefense      Trained */
     , (800115, 15, 0, 2, 0, 150, 0, 0) /* MagicDefense        Trained */
     , (800115, 16, 0, 2, 0, 440, 0, 0) /* ManaConversion      Trained */
     , (800115, 31, 0, 2, 0, 440, 0, 0) /* CreatureEnchantment Trained */
     , (800115, 33, 0, 2, 0, 470, 0, 0) /* LifeMagic           Trained */
     , (800115, 34, 0, 2, 0, 470, 0, 0) /* WarMagic            Trained */
     , (800115, 41, 0, 2, 0, 683, 0, 0) /* TwoHandedCombat     Trained */
     , (800115, 43, 0, 2, 0, 470, 0, 0) /* VoidMagic           Trained */
     , (800115, 44, 0, 2, 0, 1683, 0, 0) /* HeavyWeapons        Trained */
     , (800115, 45, 0, 2, 0, 1683, 0, 0) /* LightWeapons        Trained */
     , (800115, 46, 0, 2, 0, 1683, 0, 0) /* FinesseWeapons      Trained */
     , (800115, 47, 0, 3, 0, 1580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800115,  0,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800115,  1,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800115,  2,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800115,  3,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800115,  4,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800115,  5,  4, 1200, 0.75, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800115,  6,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800115,  7,  4,  0,    0, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800115,  8,  4, 1200, 0.75, 500, 2000, 2000, 2000, 1000, 1000, 2000, 1000, 5000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800115,  1783,   2.02)  /* Searing Disc */
     , (800115,  1785,   2.02)  /* Cassius' Ring of Fire */
     , (800115,  2074,   2.02)  /* Gossamer Flesh */
     , (800115,  2164,   2.02)  /* Swordsman's Gift */
     , (800115,  2168,   2.02)  /* Gelidite's Gift */
     , (800115,  2174,   2.02)  /* Archer's Gift */
     , (800115,  4436,   2.02)  /* Incantation of Blade Volley */
     , (800115,  4447,   2.02)  /* Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800115, 2, 800176,  1, 0, 0, False) /* Create Elorin's Blade (800176) for Wield */
     , (800115, 2, 41859,  1, 0, 0, False) /* Create Radiant Blood Shield (41859) for Wield */
     , (800115, 9, 800140,  1, 0, 0.01, False) /* Create Blue Ball (800140) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */
     , (800115, 9, 800176,  1, 0, 1, False) /* Create Elorin's Blade (800176) for ContainTreasure */;
