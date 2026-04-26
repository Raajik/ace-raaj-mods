DELETE FROM `weenie` WHERE `class_Id` = 800205;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800205, 'shadowpirate', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800205,   1,         16) /* ItemType - Creature */
     , (800205,   2,         22) /* CreatureType - Shadow */
     , (800205,   3,         39) /* PaletteTemplate - Black */
     , (800205,   6,         -1) /* ItemsCapacity */
     , (800205,   7,         -1) /* ContainersCapacity */
     , (800205,   8,         90) /* Mass */
     , (800205,  16,          1) /* ItemUseable - No */
     , (800205,  25,        320) /* Level */
     , (800205,  27,          0) /* ArmorType - None */
     , (800205,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (800205,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (800205, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800205, 113,          2) /* Gender - Female */
     , (800205, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800205, 140,          1) /* AiOptions - CanOpenDoors */
     , (800205, 146,    7867485) /* XpOverride */
     , (800205, 188,          1) /* HeritageGroup - Aluvian */
     , (800205, 332,       9000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800205,   1, True ) /* Stuck */
     , (800205,   6, True ) /* AiUsesMana */
     , (800205,  11, False) /* IgnoreCollisions */
     , (800205,  12, True ) /* ReportCollisions */
     , (800205,  13, False) /* Ethereal */
     , (800205,  14, True ) /* GravityStatus */
     , (800205,  19, True ) /* Attackable */
     , (800205,  42, True ) /* AllowEdgeSlide */
     , (800205,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800205,   1,       5) /* HeartbeatInterval */
     , (800205,   2,       0) /* HeartbeatTimestamp */
     , (800205,   3,     0.7) /* HealthRate */
     , (800205,   4,     2.5) /* StaminaRate */
     , (800205,   5,       1) /* ManaRate */
     , (800205,  12,     0.5) /* Shade */
     , (800205,  13,       1) /* ArmorModVsSlash */
     , (800205,  14,    0.86) /* ArmorModVsPierce */
     , (800205,  15,    0.91) /* ArmorModVsBludgeon */
     , (800205,  16,    0.76) /* ArmorModVsCold */
     , (800205,  17,       1) /* ArmorModVsFire */
     , (800205,  18,    0.78) /* ArmorModVsAcid */
     , (800205,  19,    0.86) /* ArmorModVsElectric */
     , (800205,  31,      28) /* VisualAwarenessRange */
     , (800205,  34,     1.1) /* PowerupTime */
     , (800205,  36,       1) /* ChargeSpeed */
     , (800205,  39,     1.3) /* DefaultScale */
     , (800205,  64,       1) /* ResistSlash */
     , (800205,  65,     0.5) /* ResistPierce */
     , (800205,  66,    0.67) /* ResistBludgeon */
     , (800205,  67,       1) /* ResistFire */
     , (800205,  68,     0.1) /* ResistCold */
     , (800205,  69,     0.2) /* ResistAcid */
     , (800205,  70,     0.5) /* ResistElectric */
     , (800205,  71,       1) /* ResistHealthBoost */
     , (800205,  72,       1) /* ResistStaminaDrain */
     , (800205,  73,       1) /* ResistStaminaBoost */
     , (800205,  74,       1) /* ResistManaDrain */
     , (800205,  75,       1) /* ResistManaBoost */
     , (800205,  76,     0.5) /* Translucency */
     , (800205,  80,       3) /* AiUseMagicDelay */
     , (800205, 104,      10) /* ObviousRadarRange */
     , (800205, 109,       1) /* BondWieldedTreasure */
     , (800205, 122,       5) /* AiAcquireHealth */
     , (800205, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800205,   1, 'Shadow Pirate') /* Name */
     , (800205,   3, 'Female') /* Sex */
     , (800205,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800205,   1,   33556251) /* Setup */
     , (800205,   2,  150995091) /* MotionTable */
     , (800205,   3,  536870914) /* SoundTable */
     , (800205,   4,  805306408) /* CombatTable */
     , (800205,   6,   67108990) /* PaletteBase */
     , (800205,   7,  268435871) /* ClothingBase */
     , (800205,   8,  100670398) /* Icon */
     , (800205,   9,   83890261) /* EyesTexture */
     , (800205,  10,   83890286) /* NoseTexture */
     , (800205,  11,   83890353) /* MouthTexture */
     , (800205,  15,   67116981) /* HairPalette */
     , (800205,  16,   67110065) /* EyesPalette */
     , (800205,  17,   67109560) /* SkinPalette */
     , (800205,  22,  872415331) /* PhysicsEffectTable */
     , (800205,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800205,   1, 700, 0, 0) /* Strength */
     , (800205,   2, 720, 0, 0) /* Endurance */
     , (800205,   3, 760, 0, 0) /* Quickness */
     , (800205,   4, 740, 0, 0) /* Coordination */
     , (800205,   5, 720, 0, 0) /* Focus */
     , (800205,   6, 470, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800205,   1, 140195, 0, 0, 140255) /* MaxHealth */
     , (800205,   3, 15250, 0, 0, 15370) /* MaxStamina */
     , (800205,   5, 12260, 0, 0, 12330) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800205,  6, 0, 3, 0, 335, 0, 0) /* MeleeDefense        Specialized */
     , (800205,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (800205, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (800205, 15, 0, 3, 0, 305, 0, 0) /* MagicDefense        Specialized */
     , (800205, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (800205, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (800205, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (800205, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (800205, 44, 0, 3, 0, 625, 0, 0) /* HeavyWeapons        Specialized */
     , (800205, 45, 0, 3, 0, 625, 0, 0) /* LightWeapons        Specialized */
     , (800205, 46, 0, 3, 0, 680, 0, 0) /* FinesseWeapons      Specialized */
     , (800205, 47, 0, 3, 0, 620, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800205,  0,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800205,  1,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800205,  2,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800205,  3,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800205,  4,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800205,  5,  4, 600, 0.75,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800205,  6,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800205,  7,  4,  0,    0,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800205,  8,  4, 600, 0.75,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800205,    72,  2.032)  /* Frost Bolt IV */
     , (800205,    78,  2.032)  /* Lightning Bolt IV */
     , (800205,    83,  2.032)  /* Flame Bolt IV */
     , (800205,    89,  2.032)  /* Force Bolt IV */
     , (800205,    95,  2.032)  /* Whirling Blade IV */
     , (800205,   136,  2.003)  /* Frost Volley IV */
     , (800205,   140,  2.003)  /* Lightning Volley IV */
     , (800205,   144,  2.003)  /* Flame Volley IV */
     , (800205,   148,  2.003)  /* Force Volley IV */
     , (800205,   152,  2.003)  /* Blade Volley IV */
     , (800205,   232,  2.023)  /* Vulnerability Other IV */
     , (800205,   277,  2.006)  /* Magic Resistance Self IV */
     , (800205,   283,  2.023)  /* Magic Yield Other IV */
     , (800205,   608,  2.006)  /* Life Magic Mastery Self IV */
     , (800205,   626,  2.023)  /* Life Magic Ineptitude Other IV */
     , (800205,   656,  2.006)  /* Mana Conversion Mastery Self IV */
     , (800205,  1159,   2.02)  /* Heal Self IV */
     , (800205,  1174,  2.023)  /* Harm Other IV */
     , (800205,  1240,  2.023)  /* Drain Health Other IV */
     , (800205,  1310,  2.006)  /* Armor Self IV */
     , (800205,  1418,  2.023)  /* Slowness Other IV */
     , (800205,  1466,  2.023)  /* Feeblemind Other IV */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800205,  94)
     , (800205, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800205, 9, 800203,  0, 0, 0.1, False) /* Create Hardened Scintillating Gem (800203) for ContainTreasure */;
