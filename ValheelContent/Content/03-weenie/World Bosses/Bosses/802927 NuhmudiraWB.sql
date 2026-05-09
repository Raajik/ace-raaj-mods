DELETE FROM `weenie` WHERE `class_Id` = 802927;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802927, 'NuhmudiraWB', 10, '2023-02-17 09:55:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802927,   1,         16) /* ItemType - Creature */
     , (802927,   2,         19) /* CreatureType - Virindi */
     , (802927,   3,         82) /* PaletteTemplate - Green */
     , (802927,   6,         -1) /* ItemsCapacity */
     , (802927,   7,         -1) /* ContainersCapacity */
     , (802927,  16,          1) /* ItemUseable - No */
     , (802927,  25,        475) /* Level */
     , (802927,  67,         64) /* Tolerance - Retaliate */
     , (802927,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802927,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (802927, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802927, 146,    2500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802927,   1, True ) /* Stuck */
     , (802927,  12, True ) /* ReportCollisions */
     , (802927,  14, True ) /* GravityStatus */
     , (802927,  19, True ) /* Attackable */
     , (802927,  29, False) /* NoCorpse */
     , (802927,  42, True ) /* AllowEdgeSlide */
     , (802927,  52, False) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802927,   1,       5) /* HeartbeatInterval */
     , (802927,   2,       0) /* HeartbeatTimestamp */
     , (802927,   3,     0.6) /* HealthRate */
     , (802927,   4,     0.5) /* StaminaRate */
     , (802927,   5,       2) /* ManaRate */
     , (802927,  12,     0.5) /* Shade */
     , (802927,  13,       1) /* ArmorModVsSlash */
     , (802927,  14,       1) /* ArmorModVsPierce */
     , (802927,  15,       1) /* ArmorModVsBludgeon */
     , (802927,  16,       1) /* ArmorModVsCold */
     , (802927,  17,     0.7) /* ArmorModVsFire */
     , (802927,  18,       1) /* ArmorModVsAcid */
     , (802927,  19,       1) /* ArmorModVsElectric */
     , (802927,  31,       1) /* VisualAwarenessRange */
     , (802927,  34,       1) /* PowerupTime */
     , (802927,  36,       1) /* ChargeSpeed */
     , (802927,  39,     1.8) /* DefaultScale */
     , (802927,  64,     0.1) /* ResistSlash */
     , (802927,  65,     0.1) /* ResistPierce */
     , (802927,  66,     0.1) /* ResistBludgeon */
     , (802927,  67,     0.5) /* ResistFire */
     , (802927,  68,     0.1) /* ResistCold */
     , (802927,  69,     0.1) /* ResistAcid */
     , (802927,  70,     0.1) /* ResistElectric */
     , (802927,  80,       3) /* AiUseMagicDelay */
     , (802927, 104,      10) /* ObviousRadarRange */
     , (802927, 122,       2) /* AiAcquireHealth */
     , (802927, 125,    0.02) /* ResistHealthDrain */
     , (802927, 165,       1) /* ArmorModVsNether */
     , (802927, 166,    0.08) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802927,   1, 'Nuhmudira') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802927,   1,   33554510) /* Setup */
     , (802927,   2,  150994945) /* MotionTable */
     , (802927,   3,  536870913) /* SoundTable */
     , (802927,   4,  805306368) /* CombatTable */
     , (802927,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802927,   1, 380, 0, 0) /* Strength */
     , (802927,   2, 380, 0, 0) /* Endurance */
     , (802927,   3, 350, 0, 0) /* Quickness */
     , (802927,   4, 380, 0, 0) /* Coordination */
     , (802927,   5, 480, 0, 0) /* Focus */
     , (802927,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802927,   1, 100000, 0, 0, 100000) /* MaxHealth */
     , (802927,   3, 50000, 0, 0, 50000) /* MaxStamina */
     , (802927,   5, 50000, 0, 0, 50000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802927,  6, 0, 2, 0, 520, 0, 0) /* MeleeDefense        Trained */
     , (802927,  7, 0, 2, 0, 420, 0, 0) /* MissileDefense      Trained */
     , (802927, 15, 0, 2, 0, 360, 0, 0) /* MagicDefense        Trained */
     , (802927, 16, 0, 2, 0, 440, 0, 0) /* ManaConversion      Trained */
     , (802927, 31, 0, 2, 0, 440, 0, 0) /* CreatureEnchantment Trained */
     , (802927, 33, 0, 2, 0, 440, 0, 0) /* LifeMagic           Trained */
     , (802927, 34, 0, 2, 0, 440, 0, 0) /* WarMagic            Trained */
     , (802927, 41, 0, 2, 0, 550, 0, 0) /* TwoHandedCombat     Trained */
     , (802927, 43, 0, 2, 0, 440, 0, 0) /* VoidMagic           Trained */
     , (802927, 44, 0, 2, 0, 550, 0, 0) /* HeavyWeapons        Trained */
     , (802927, 45, 0, 2, 0, 550, 0, 0) /* LightWeapons        Trained */
     , (802927, 46, 0, 2, 0, 550, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802927,  0,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802927,  1,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802927,  2,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802927,  3,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802927,  4,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802927,  5,  4,  150, 0.75,    500,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802927,  6,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802927,  7,  4,  0,    0,    500,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802927,  8,  4,  150, 0.75,    500,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 9, 803248,  0,  0,    1,   False) /* Create World Boss Gem (802035) for ContainTreasure */
     , (802927, 2,  40439,  0, 88,  0.7,   False) /* Create Pathwarden Robe (40439) for Wield */;
