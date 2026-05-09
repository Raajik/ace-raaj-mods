DELETE FROM `weenie` WHERE `class_Id` = 880021;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880021, 'ace880021-virindifulguris', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880021,   1,         16) /* ItemType - Creature */
     , (880021,   2,         19) /* CreatureType - Virindi */
     , (880021,   3,          3) /* PaletteTemplate - BluePurple */
     , (880021,   6,         -1) /* ItemsCapacity */
     , (880021,   7,         -1) /* ContainersCapacity */
     , (880021,  16,          1) /* ItemUseable - No */
     , (880021,  25,        240) /* Level */
     , (880021,  68,          3) /* TargetingTactic - Random, Focused */
     , (880021,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (880021, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (880021, 146,    1850000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880021,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880021,   1,       5) /* HeartbeatInterval */
     , (880021,   2,       0) /* HeartbeatTimestamp */
     , (880021,   3,     0.6) /* HealthRate */
     , (880021,   4,     0.5) /* StaminaRate */
     , (880021,   5,       2) /* ManaRate */
     , (880021,  12,     0.5) /* Shade */
     , (880021,  13,     0.8) /* ArmorModVsSlash */
     , (880021,  14,       1) /* ArmorModVsPierce */
     , (880021,  15,       1) /* ArmorModVsBludgeon */
     , (880021,  16,       1) /* ArmorModVsCold */
     , (880021,  17,     0.8) /* ArmorModVsFire */
     , (880021,  18,     0.8) /* ArmorModVsAcid */
     , (880021,  19,       1) /* ArmorModVsElectric */
     , (880021,  31,      18) /* VisualAwarenessRange */
     , (880021,  34,       1) /* PowerupTime */
     , (880021,  36,       1) /* ChargeSpeed */
     , (880021,  39,       5) /* DefaultScale */
     , (880021,  64,     0.7) /* ResistSlash */
     , (880021,  65,     0.6) /* ResistPierce */
     , (880021,  66,     0.6) /* ResistBludgeon */
     , (880021,  67,     0.7) /* ResistFire */
     , (880021,  68,     0.4) /* ResistCold */
     , (880021,  69,     0.7) /* ResistAcid */
     , (880021,  70,     0.4) /* ResistElectric */
     , (880021,  80,       3) /* AiUseMagicDelay */
     , (880021, 104,      10) /* ObviousRadarRange */
     , (880021, 122,       2) /* AiAcquireHealth */
     , (880021, 125,       1) /* ResistHealthDrain */
     , (880021, 165,       1) /* ArmorModVsNether */
     , (880021, 166,       1) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880021,   1, 'Crums') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880021,   1, 0x02001A8B) /* Setup */
     , (880021,   2, 0x09000028) /* MotionTable */
     , (880021,   3, 0x20000012) /* SoundTable */
     , (880021,   4, 0x3000000D) /* CombatTable */
     , (880021,   6, 0x040009B2) /* PaletteBase */
     , (880021,   7, 0x100007AF) /* ClothingBase */
     , (880021,   8, 0x06001227) /* Icon */
     , (880021,  22, 0x34000029) /* PhysicsEffectTable */
     , (880021,  35,       1000) /* DeathTreasureType - Loot Tier: 7 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (880021,   1, 350, 0, 0) /* Strength */
     , (880021,   2, 350, 0, 0) /* Endurance */
     , (880021,   3, 320, 0, 0) /* Quickness */
     , (880021,   4, 380, 0, 0) /* Coordination */
     , (880021,   5, 480, 0, 0) /* Focus */
     , (880021,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (880021,   1,  6200, 0, 0, 6375) /* MaxHealth */
     , (880021,   3,  3000, 0, 0, 3350) /* MaxStamina */
     , (880021,   5,  4800, 0, 0, 5280) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (880021,  6, 0, 2, 0, 520, 0, 0) /* MeleeDefense        Trained */
     , (880021,  7, 0, 2, 0, 420, 0, 0) /* MissileDefense      Trained */
     , (880021, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (880021, 16, 0, 2, 0, 440, 0, 0) /* ManaConversion      Trained */
     , (880021, 31, 0, 2, 0, 440, 0, 0) /* CreatureEnchantment Trained */
     , (880021, 33, 0, 2, 0, 440, 0, 0) /* LifeMagic           Trained */
     , (880021, 34, 0, 2, 0, 440, 0, 0) /* WarMagic            Trained */
     , (880021, 41, 0, 2, 0, 550, 0, 0) /* TwoHandedCombat     Trained */
     , (880021, 43, 0, 2, 0, 440, 0, 0) /* VoidMagic           Trained */
     , (880021, 44, 0, 2, 0, 550, 0, 0) /* HeavyWeapons        Trained */
     , (880021, 45, 0, 2, 0, 550, 0, 0) /* LightWeapons        Trained */
     , (880021, 46, 0, 2, 0, 550, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (880021,  0,  1,  0,    0,  500,  400,  500,  500,  500,  400,  400,  500,  500, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (880021,  1,  1,  0,    0,  500,  400,  500,  500,  500,  400,  400,  500,  500, 2, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (880021,  2,  1,  0,    0,  500,  400,  500,  500,  500,  400,  400,  500,  500, 3,    0, 0.23,  0.1,    0, 0.23,  0.2,    0, 0.17, 0.45,    0, 0.17, 0.45) /* Abdomen */
     , (880021,  3,  1,  0,    0,  500,  400,  500,  500,  500,  400,  400,  500,  500, 1, 0.23, 0.04,  0.2, 0.23, 0.04,  0.1, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (880021,  4,  1,  0,    0,  500,  400,  500,  500,  500,  400,  400,  500,  500, 2,    0,  0.3,  0.3,    0,  0.3,  0.4,    0,  0.3,  0.1,    0,  0.3,  0.1) /* LowerArm */
     , (880021,  5,  1, 150, 0.75,  500,  400,  500,  500,  500,  400,  400,  500,  500, 2,    0,  0.2,  0.3,    0,  0.2,  0.2,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (880021, 17,  1,  0,    0,  500,  400,  500,  500,  500,  400,  400,  500,  500, 3,    0,    0,  0.1,    0,    0,  0.1,    0, 0.13, 0.45,    0, 0.13, 0.45) /* Tail */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (880021,  4426,    2.2)  /* Incantation of Lightning Arc */
     , (880021,  4451,   2.25)  /* Incantation of Lightning Bolt */
     , (880021,  4483,   2.25)  /* Incantation of Lightning Vulnerability Other */;

     INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */
     , (880021, 9, 880018,  0, 0, 0, False) /* Create Dark Tusker Paw (880018) for ContainTreasure */;
