DELETE FROM `weenie` WHERE `class_Id` = 801337;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801337, 'Panumbris Shadow Minion', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801337,   1,         16) /* ItemType - Creature */
     , (801337,   2,         22) /* CreatureType - Shadow */
     , (801337,   3,         14) /* PaletteTemplate - Red */
     , (801337,   6,         -1) /* ItemsCapacity */
     , (801337,   7,         -1) /* ContainersCapacity */
     , (801337,  16,          1) /* ItemUseable - No */
     , (801337,  25,        220) /* Level */
     , (801337,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801337, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801337, 140,          1) /* AiOptions - CanOpenDoors */
     , (801337, 267,        120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801337,   1, True ) /* Stuck */
     , (801337,  11, False) /* IgnoreCollisions */
     , (801337,  12, True ) /* ReportCollisions */
     , (801337,  13, False) /* Ethereal */
     , (801337, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801337,   1,       5) /* HeartbeatInterval */
     , (801337,   2,       0) /* HeartbeatTimestamp */
     , (801337,   3,    0.45) /* HealthRate */
     , (801337,   4,     0.5) /* StaminaRate */
     , (801337,   5,       2) /* ManaRate */
     , (801337,  12,     0.5) /* Shade */
     , (801337,  13,       1) /* ArmorModVsSlash */
     , (801337,  14,       1) /* ArmorModVsPierce */
     , (801337,  15,       1) /* ArmorModVsBludgeon */
     , (801337,  16,       1) /* ArmorModVsCold */
     , (801337,  17,    0.38) /* ArmorModVsFire */
     , (801337,  18,       1) /* ArmorModVsAcid */
     , (801337,  19,       1) /* ArmorModVsElectric */
     , (801337,  31,      18) /* VisualAwarenessRange */
     , (801337,  34,     1.1) /* PowerupTime */
     , (801337,  36,       2) /* ChargeSpeed */
     , (801337,  39,     0.7) /* DefaultScale */
     , (801337,  64,       1) /* ResistSlash */
     , (801337,  65,       1) /* ResistPierce */
     , (801337,  66,       1) /* ResistBludgeon */
     , (801337,  67,    0.38) /* ResistFire */
     , (801337,  68,       1) /* ResistCold */
     , (801337,  69,       1) /* ResistAcid */
     , (801337,  70,       1) /* ResistElectric */
     , (801337,  71,       1) /* ResistHealthBoost */
     , (801337,  72,       1) /* ResistStaminaDrain */
     , (801337,  73,       1) /* ResistStaminaBoost */
     , (801337,  74,       1) /* ResistManaDrain */
     , (801337,  75,       1) /* ResistManaBoost */
     , (801337,  80,       3) /* AiUseMagicDelay */
     , (801337, 104,      10) /* ObviousRadarRange */
     , (801337, 122,       2) /* AiAcquireHealth */
     , (801337, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801337,   1, 'Panumbris Shadow Minion') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801337,   1,   33556251) /* Setup */
     , (801337,   2,  150995091) /* MotionTable */
     , (801337,   3,  536870914) /* SoundTable */
     , (801337,   4,  805306408) /* CombatTable */
     , (801337,   6,   67108990) /* PaletteBase */
     , (801337,   7,  268435871) /* ClothingBase */
     , (801337,   8,  100670398) /* Icon */
     , (801337,   9,   83890281) /* EyesTexture */
     , (801337,  10,   83890308) /* NoseTexture */
     , (801337,  11,   83890340) /* MouthTexture */
     , (801337,  15,   67117028) /* HairPalette */
     , (801337,  16,   67109565) /* EyesPalette */
     , (801337,  17,   67109558) /* SkinPalette */
     , (801337,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801337,   1, 1200, 0, 0) /* Strength */
     , (801337,   2, 800, 0, 0) /* Endurance */
     , (801337,   3, 800, 0, 0) /* Quickness */
     , (801337,   4, 800, 0, 0) /* Coordination */
     , (801337,   5, 800, 0, 0) /* Focus */
     , (801337,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801337,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (801337,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (801337,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801337,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (801337,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (801337, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (801337, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (801337, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (801337, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (801337, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (801337, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (801337, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (801337, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (801337, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (801337, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801337,  0,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801337,  1,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801337,  2,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801337,  3,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801337,  4,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801337,  5,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801337,  6,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801337,  7,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801337,  8,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801337,  5331,  2.003)  /* Clouded Soul */
     , (801337,  5332,  2.003)  /* Bael'zharon's Nether Streak */
     , (801337,  5333,  2.003)  /* Bael'zharon's Nether Arc */
     , (801337,  5348,  2.003)  /* Incantation of Nether Streak */
     , (801337,  5356,  2.003)  /* Incantation of Nether Bolt */
     , (801337,  5368,  2.032)  /* Incantation of Nether Arc */
     , (801337,  5370,  2.032)  /* Incantation of Nether Streak */
     , (801337,  5551,  2.032)  /* Incantation of Nether Blast */
     , (801337,  6195,  2.032)  /* Clouded Soul II */
     , (801337,  6320,  2.032)  /* Ring of Skulls II */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801337,  94)
     , (801337, 414);
