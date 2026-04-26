DELETE FROM `weenie` WHERE `class_Id` = 800164;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800164, 'Clever Tormentor', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800164,   1,         16) /* ItemType - Creature */
     , (800164,   2,         19) /* CreatureType - Virindi */
     , (800164,   3,         39) /* PaletteTemplate - Black */
     , (800164,   6,         -1) /* ItemsCapacity */
     , (800164,   7,         -1) /* ContainersCapacity */
     , (800164,  16,          1) /* ItemUseable - No */
     , (800164,  25,        400) /* Level */
     , (800164,  65,          1) /* Placement - RightHandCombat */
     , (800164,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (800164,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (800164, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800164, 146,    7867485) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800164,   1, True ) /* Stuck */
     , (800164,   6, False) /* AiUsesMana */
     , (800164,  11, False) /* IgnoreCollisions */
     , (800164,  12, True ) /* ReportCollisions */
     , (800164,  13, False) /* Ethereal */
     , (800164,  14, True ) /* GravityStatus */
     , (800164,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800164,   1,       5) /* HeartbeatInterval */
     , (800164,   2,       0) /* HeartbeatTimestamp */
     , (800164,   3,     0.6) /* HealthRate */
     , (800164,   4,     0.5) /* StaminaRate */
     , (800164,   5,       2) /* ManaRate */
     , (800164,  12,   0.667) /* Shade */
     , (800164,  13,       1) /* ArmorModVsSlash */
     , (800164,  14,       1) /* ArmorModVsPierce */
     , (800164,  15,       1) /* ArmorModVsBludgeon */
     , (800164,  16,     0.5) /* ArmorModVsCold */
     , (800164,  17,     0.5) /* ArmorModVsFire */
     , (800164,  18,       1) /* ArmorModVsAcid */
     , (800164,  19,       1) /* ArmorModVsElectric */
     , (800164,  31,      18) /* VisualAwarenessRange */
     , (800164,  34,       1) /* PowerupTime */
     , (800164,  36,       1) /* ChargeSpeed */
     , (800164,  39,     1.1) /* DefaultScale */
     , (800164,  64,     0.1) /* ResistSlash */
     , (800164,  65,     0.1) /* ResistPierce */
     , (800164,  66,     0.1) /* ResistBludgeon */
     , (800164,  67,     0.5) /* ResistFire */
     , (800164,  68,     0.5) /* ResistCold */
     , (800164,  69,     0.1) /* ResistAcid */
     , (800164,  70,     0.1) /* ResistElectric */
     , (800164,  80,       3) /* AiUseMagicDelay */
     , (800164, 104,      10) /* ObviousRadarRange */
     , (800164, 122,       2) /* AiAcquireHealth */
     , (800164, 125,       1) /* ResistHealthDrain */
     , (800164, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800164,   1, 'Clever Tormentor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800164,   1,   33561549) /* Setup */
     , (800164,   2,  150995487) /* MotionTable */
     , (800164,   3,  536870930) /* SoundTable */
     , (800164,   4,  805306381) /* CombatTable */
     , (800164,   6,   67111346) /* PaletteBase */
     , (800164,   7,  268437588) /* ClothingBase */
     , (800164,   8,  100667943) /* Icon */
     , (800164,  22,  872415273) /* PhysicsEffectTable */
     , (800164,  35,       1000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800164,   1, 700, 0, 0) /* Strength */
     , (800164,   2, 400, 0, 0) /* Endurance */
     , (800164,   3, 370, 0, 0) /* Quickness */
     , (800164,   4, 430, 0, 0) /* Coordination */
     , (800164,   5, 510, 0, 0) /* Focus */
     , (800164,   6, 510, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800164,   1, 11000, 0, 0, 11000) /* MaxHealth */
     , (800164,   3,  9600, 0, 0, 10000) /* MaxStamina */
     , (800164,   5,  4490, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800164,  6, 0, 2, 0, 350, 0, 0) /* MeleeDefense        Trained */
     , (800164,  7, 0, 2, 0, 350, 0, 0) /* MissileDefense      Trained */
     , (800164, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (800164, 16, 0, 2, 0, 380, 0, 0) /* ManaConversion      Trained */
     , (800164, 31, 0, 2, 0, 380, 0, 0) /* CreatureEnchantment Trained */
     , (800164, 33, 0, 2, 0, 380, 0, 0) /* LifeMagic           Trained */
     , (800164, 34, 0, 2, 0, 380, 0, 0) /* WarMagic            Trained */
     , (800164, 41, 0, 2, 0, 460, 0, 0) /* TwoHandedCombat     Trained */
     , (800164, 43, 0, 2, 0, 380, 0, 0) /* VoidMagic           Trained */
     , (800164, 44, 0, 2, 0, 460, 0, 0) /* HeavyWeapons        Trained */
     , (800164, 45, 0, 2, 0, 460, 0, 0) /* LightWeapons        Trained */
     , (800164, 46, 0, 2, 0, 460, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800164,  0, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800164,  1, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800164,  2, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800164,  3, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800164,  4, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800164,  5, 64, 600,  0.5,  650,  520,  520,  520,  520,  520,  520,  520,  600, 2,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0) /* Hand */
     , (800164,  6, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800164,  7, 64,  0,    0,  650,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800164,  8, 64, 600,  0.5,  650,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800164,  2992,    2.1)  /* Depletion */
     , (800164,  3916,  2.111)  /* Flayed Flesh */
     , (800164,  3940,   2.15)  /* Exsanguinating Wave */
     , (800164,  3941,  2.176)  /* Heavy Lightning Ring */
     , (800164,  3989,   2.25)  /* Dark Lightning */
     , (800164,  4312,  2.238)  /* Incantation of Imperil Other */
     , (800164,  4483,  2.313)  /* Incantation of Lightning Vulnerability Other */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800162,  1, 0, 1, False) /* Create Necklace of Gemology (800162) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */
     , (800164, 9, 800163,  1, 0, 1, False) /* Create Rynthid Invasion Plans (800163) for ContainTreasure */;
