DELETE FROM `weenie` WHERE `class_Id` = 880006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880006, 'ProtectorOfTheWasps', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880006,   1,         16) /* ItemType - Creature */
     , (880006,   2,         19) /* CreatureType - Virindi */
     , (880006,   6,         -1) /* ItemsCapacity */
     , (880006,   7,         -1) /* ContainersCapacity */
     , (880006,  16,          1) /* ItemUseable - No */
     , (880006,  25,        160) /* Level */
     , (880006,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (880006, 133,          2) /* ShowableOnRadar - ShowMovement */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880006,   1, True ) /* Stuck */
     , (880006,   6, True ) /* AiUsesMana */
     , (880006,  11, False) /* IgnoreCollisions */
     , (880006,  12, True ) /* ReportCollisions */
     , (880006,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880006,   1,       5) /* HeartbeatInterval */
     , (880006,   2,       0) /* HeartbeatTimestamp */
     , (880006,   3,       4) /* HealthRate */
     , (880006,   4,      10) /* StaminaRate */
     , (880006,   5,       3) /* ManaRate */
     , (880006,  12,   0.267) /* Shade */
     , (880006,  13,       1) /* ArmorModVsSlash */
     , (880006,  14,     0.9) /* ArmorModVsPierce */
     , (880006,  15,     0.4) /* ArmorModVsBludgeon */
     , (880006,  16,       1) /* ArmorModVsCold */
     , (880006,  17,     0.4) /* ArmorModVsFire */
     , (880006,  18,    0.67) /* ArmorModVsAcid */
     , (880006,  19,       1) /* ArmorModVsElectric */
     , (880006,  31,      22) /* VisualAwarenessRange */
     , (880006,  34,       1) /* PowerupTime */
     , (880006,  36,       1) /* ChargeSpeed */
     , (880006,  39,     2.5) /* DefaultScale */
     , (880006,  64,    0.25) /* ResistSlash */
     , (880006,  65,    0.25) /* ResistPierce */
     , (880006,  66,     1.1) /* ResistBludgeon */
     , (880006,  67,     1.1) /* ResistFire */
     , (880006,  68,     0.3) /* ResistCold */
     , (880006,  69,     1.1) /* ResistAcid */
     , (880006,  70,     0.4) /* ResistElectric */
     , (880006,  71,       1) /* ResistHealthBoost */
     , (880006,  72,       1) /* ResistStaminaDrain */
     , (880006,  73,       1) /* ResistStaminaBoost */
     , (880006,  74,       1) /* ResistManaDrain */
     , (880006,  75,       1) /* ResistManaBoost */
     , (880006,  80,       4) /* AiUseMagicDelay */
     , (880006, 104,      10) /* ObviousRadarRange */
     , (880006, 122,       2) /* AiAcquireHealth */
     , (880006, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880006,   1, 'Wasp Keeper') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880006,   1, 0x02001A8B) /* Setup */
     , (880006,   2, 0x09000028) /* MotionTable */
     , (880006,   3, 0x20000012) /* SoundTable */
     , (880006,   4, 0x3000000D) /* CombatTable */
     , (880006,   6, 0x040009B2) /* PaletteBase */
     , (880006,   8, 0x06001227) /* Icon */
     , (880006,  22, 0x34000029) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (880006,   1, 210, 0, 0) /* Strength */
     , (880006,   2, 230, 0, 0) /* Endurance */
     , (880006,   3, 230, 0, 0) /* Quickness */
     , (880006,   4, 230, 0, 0) /* Coordination */
     , (880006,   5, 230, 0, 0) /* Focus */
     , (880006,   6, 270, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (880006,   1, 3500, 0, 0, 3500) /* MaxHealth */
     , (880006,   3,  3000, 0, 0, 3230) /* MaxStamina */
     , (880006,   5,  2000, 0, 0, 2270) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (880006,  6, 0, 2, 0, 425, 0, 0) /* MeleeDefense        Trained */
     , (880006,  7, 0, 2, 0, 450, 0, 0) /* MissileDefense      Trained */
     , (880006, 15, 0, 2, 0, 425, 0, 0) /* MagicDefense        Trained */
     , (880006, 24, 0, 2, 0, 300, 0, 0) /* Run                 Trained */
     , (880006, 33, 0, 2, 0, 425, 0, 0) /* LifeMagic           Trained */
     , (880006, 34, 0, 2, 0, 425, 0, 0) /* WarMagic            Trained */
     , (880006, 45, 0, 3, 0, 440, 0, 0) /* LightWeapons        Specialized */
     , (880006, 46, 0, 3, 0, 440, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (880006,  0,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (880006,  1,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (880006,  2,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (880006,  3,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (880006,  4,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (880006,  5,  4, 10, 0.75,  800,  800,  720,  320,  800,  320,  536,  800,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (880006,  6,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (880006,  7,  4,  0,    0,  800,  800,  720,  320,  800,  320,  536,  800,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (880006,  8,  4, 10, 0.75,  800,  800,  720,  320,  800,  320,  536,  800,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (880006,  1785,   2.06)  /* Cassius' Ring of Fire */
     , (880006,  2128,   2.06)  /* Ilservian's Flame */
     , (880006,  2170,   2.06)  /* Inferno's Gift */
     , (880006,  2074,   2.06)  /* Gossamer Flesh */
     , (880006,  2745,   2.08)  /* Flame Arc VII */
     , (880006,  1841,      2)  /* Slithering Flames */;

  
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */
     , (880006, 9, 802105,  1, 0, 1, False) /* Create Sacred A'nekshay Crystal (44303) for ContainTreasure */;
