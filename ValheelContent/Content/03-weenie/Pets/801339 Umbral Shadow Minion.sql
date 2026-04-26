DELETE FROM `weenie` WHERE `class_Id` = 801339;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801339, 'Umbral Shadow Minion', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801339,   1,         16) /* ItemType - Creature */
     , (801339,   2,         22) /* CreatureType - Shadow */
     , (801339,   3,         14) /* PaletteTemplate - Red */
     , (801339,   6,         -1) /* ItemsCapacity */
     , (801339,   7,         -1) /* ContainersCapacity */
     , (801339,  16,          1) /* ItemUseable - No */
     , (801339,  25,        220) /* Level */
     , (801339,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801339, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801339, 140,          1) /* AiOptions - CanOpenDoors */
     , (801339, 267,        120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801339,   1, True ) /* Stuck */
     , (801339,  11, False) /* IgnoreCollisions */
     , (801339,  12, True ) /* ReportCollisions */
     , (801339,  13, False) /* Ethereal */
     , (801339, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801339,   1,       5) /* HeartbeatInterval */
     , (801339,   2,       0) /* HeartbeatTimestamp */
     , (801339,   3,    0.45) /* HealthRate */
     , (801339,   4,     0.5) /* StaminaRate */
     , (801339,   5,       2) /* ManaRate */
     , (801339,  12,     0.5) /* Shade */
     , (801339,  13,       1) /* ArmorModVsSlash */
     , (801339,  14,       1) /* ArmorModVsPierce */
     , (801339,  15,       1) /* ArmorModVsBludgeon */
     , (801339,  16,       1) /* ArmorModVsCold */
     , (801339,  17,    0.38) /* ArmorModVsFire */
     , (801339,  18,       1) /* ArmorModVsAcid */
     , (801339,  19,       1) /* ArmorModVsElectric */
     , (801339,  31,      18) /* VisualAwarenessRange */
     , (801339,  34,     1.1) /* PowerupTime */
     , (801339,  36,       2) /* ChargeSpeed */
     , (801339,  39,     0.7) /* DefaultScale */
     , (801339,  64,       1) /* ResistSlash */
     , (801339,  65,       1) /* ResistPierce */
     , (801339,  66,       1) /* ResistBludgeon */
     , (801339,  67,    0.38) /* ResistFire */
     , (801339,  68,       1) /* ResistCold */
     , (801339,  69,       1) /* ResistAcid */
     , (801339,  70,       1) /* ResistElectric */
     , (801339,  71,       1) /* ResistHealthBoost */
     , (801339,  72,       1) /* ResistStaminaDrain */
     , (801339,  73,       1) /* ResistStaminaBoost */
     , (801339,  74,       1) /* ResistManaDrain */
     , (801339,  75,       1) /* ResistManaBoost */
     , (801339,  80,       3) /* AiUseMagicDelay */
     , (801339, 104,      10) /* ObviousRadarRange */
     , (801339, 122,       2) /* AiAcquireHealth */
     , (801339, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801339,   1, 'Umbral Shadow Minion') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801339,   1,   33554433) /* Setup */
     , (801339,   2,  150994945) /* MotionTable */
     , (801339,   3,  536870913) /* SoundTable */
     , (801339,   4,  805306408) /* CombatTable */
     , (801339,   6,   67108990) /* PaletteBase */
     , (801339,   8,  100670398) /* Icon */
     , (801339,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801339,   1, 1200, 0, 0) /* Strength */
     , (801339,   2, 800, 0, 0) /* Endurance */
     , (801339,   3, 800, 0, 0) /* Quickness */
     , (801339,   4, 800, 0, 0) /* Coordination */
     , (801339,   5, 800, 0, 0) /* Focus */
     , (801339,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801339,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (801339,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (801339,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801339,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (801339,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (801339, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (801339, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (801339, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (801339, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (801339, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (801339, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (801339, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (801339, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (801339, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (801339, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801339,  0,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801339,  1,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801339,  2,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801339,  3,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801339,  4,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801339,  5,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801339,  6,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801339,  7,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801339,  8,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801339,  4474,  2.032)  /* Incantation of Acid Vulnerability Self */
     , (801339,  4475,  2.032)  /* Incantation of Blade Vulnerability Other */
     , (801339,  4477,  2.003)  /* Incantation of Bludgeoning Vulnerability Other */
     , (801339,  4479,  2.032)  /* Incantation of Cold Vulnerability Other */
     , (801339,  4481,  2.032)  /* Incantation of Fire Vulnerability Other */
     , (801339,  4483,  2.003)  /* Incantation of Lightning Vulnerability Other */
     , (801339,  4485,  2.032)  /* Incantation of Piercing Vulnerability Other */
     , (801339,  4543,  2.003)  /* Incantation of Defenselessness Other */
     , (801339,  4597,  2.003)  /* Incantation of Magic Yield Other */
     , (801339,  4633,  2.003)  /* Incantation of Vulnerability Other */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801339,  94)
     , (801339, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801339, 2, 21159,  1, 93, 0, False) /* Create Covenant Tassets (21159) for Wield */
     , (801339, 2, 21152,  1, 93, 0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (801339, 2, 21157,  1, 93, 0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (801339, 2, 21151,  1, 93, 0, False) /* Create Covenant Bracers (21151) for Wield */
     , (801339, 2, 21153,  1, 93, 0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801339, 2, 21154,  1, 93, 0, False) /* Create Covenant Girth (21154) for Wield */
     , (801339, 2, 21155,  1, 93, 0, False) /* Create Covenant Greaves (21155) for Wield */
     , (801339, 2, 21150,  1, 93, 0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801339, 2, 87038,  1, 93, 0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (801339, 2,  2597,  1, 92, 0, False) /* Create Pants (2597) for Wield */
     , (801339, 2,  2588,  1, 14, 0, False) /* Create Shirt (2588) for Wield */;
