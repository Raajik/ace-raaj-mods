DELETE FROM `weenie` WHERE `class_Id` = 800395;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800395, 'Tradewind''s Path King', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800395,   1,         16) /* ItemType - Creature */
     , (800395,   2,         22) /* CreatureType - Shadow */
     , (800395,   3,         39) /* PaletteTemplate - Black */
     , (800395,   6,         -1) /* ItemsCapacity */
     , (800395,   7,         -1) /* ContainersCapacity */
     , (800395,  16,          1) /* ItemUseable - No */
     , (800395,  25,        500) /* Level */
     , (800395,  27,         32) /* ArmorType - Metal */
     , (800395,  67,         64) /* Tolerance - Attack if Attacked */
     , (800395,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800395,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800395, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800395, 113,          1) /* Gender - Male */
     , (800395, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800395, 146,   50000000) /* XpOverride */
     , (800395, 332,    5000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800395,   1, True ) /* Stuck */
     , (800395,  12, True ) /* ReportCollisions */
     , (800395,  13, False) /* Ethereal */
     , (800395,  14, True ) /* GravityStatus */
	 , (800395,  29, True ) /* NoCorpse */
     , (800395,  42, True ) /* AllowEdgeSlide */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800395,   1,       5) /* HeartbeatInterval */
     , (800395,   2,       0) /* HeartbeatTimestamp */
     , (800395,   3,     0.7) /* HealthRate */
     , (800395,   4,     2.5) /* StaminaRate */
     , (800395,   5,       1) /* ManaRate */
     , (800395,  12,       1) /* Shade */
     , (800395,  13,       1) /* ArmorModVsSlash */
     , (800395,  14,       3) /* ArmorModVsPierce */
     , (800395,  15,       3) /* ArmorModVsBludgeon */
     , (800395,  16,       2) /* ArmorModVsCold */
     , (800395,  17,       2) /* ArmorModVsFire */
     , (800395,  18,       2) /* ArmorModVsAcid */
     , (800395,  19,       3) /* ArmorModVsElectric */
     , (800395,  31,      28) /* VisualAwarenessRange */
     , (800395,  34,     1.1) /* PowerupTime */
     , (800395,  36,       1) /* ChargeSpeed */
     , (800395,  39,     2.5) /* DefaultScale */
     , (800395,  64,       1) /* ResistSlash */
     , (800395,  65,       1) /* ResistPierce */
     , (800395,  66,       1) /* ResistBludgeon */
     , (800395,  67,       1) /* ResistFire */
     , (800395,  68,       1) /* ResistCold */
     , (800395,  69,       1) /* ResistAcid */
     , (800395,  70,       1) /* ResistElectric */
     , (800395,  71,       1) /* ResistHealthBoost */
     , (800395,  72,       1) /* ResistStaminaDrain */
     , (800395,  73,       1) /* ResistStaminaBoost */
     , (800395,  74,       1) /* ResistManaDrain */
     , (800395,  75,       1) /* ResistManaBoost */
     , (800395,  80,       3) /* AiUseMagicDelay */
     , (800395, 104,      10) /* ObviousRadarRange */
     , (800395, 122,       2) /* AiAcquireHealth */
     , (800395, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800395,   1, 'Tradewind''s Path King') /* Name */
     , (800395,  45, 'TPEventKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800395,   1,   33554433) /* Setup */
     , (800395,   2,  150994945) /* MotionTable */
     , (800395,   3,  536870913) /* SoundTable */
     , (800395,   4,  805306368) /* CombatTable */
     , (800395,   6,   67108990) /* PaletteBase */
     , (800395,   8,  100670398) /* Icon */
     , (800395,  22,  872415331) /* PhysicsEffectTable */
     , (800395,  32,       5920) /* WieldedTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800395,   1, 1500, 0, 0) /* Strength */
     , (800395,   2, 1500, 0, 0) /* Endurance */
     , (800395,   3, 500, 0, 0) /* Quickness */
     , (800395,   4, 800, 0, 0) /* Coordination */
     , (800395,   5, 1500, 0, 0) /* Focus */
     , (800395,   6, 1500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800395,   1,  2500000, 0, 0, 2500000) /* MaxHealth */
     , (800395,   3,  993600, 0, 0, 994000) /* MaxStamina */
     , (800395,   5,  992700, 0, 0, 993000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800395,  6, 0, 2, 0, 100, 0, 0) /* MeleeDefense        Trained */
     , (800395,  7, 0, 2, 0, 152, 0, 0) /* MissileDefense      Trained */
     , (800395, 15, 0, 2, 0, 196, 0, 0) /* MagicDefense        Trained */
     , (800395, 16, 0, 3, 0, 594, 0, 0) /* ManaConversion      Specialized */
     , (800395, 24, 0, 2, 0, 550, 0, 0) /* Run                 Trained */
     , (800395, 31, 0, 2, 0, 850, 0, 0) /* CreatureEnchantment Trained */
     , (800395, 33, 0, 2, 0, 850, 0, 0) /* LifeMagic           Trained */
     , (800395, 34, 0, 3, 0, 850, 0, 0) /* WarMagic            Specialized */
     , (800395, 44, 0, 3, 0, 1533, 0, 0) /* HeavyWeapons        Specialized */
     , (800395, 45, 0, 3, 0, 1533, 0, 0) /* LightWeapons        Specialized */
     , (800395, 46, 0, 3, 0, 1533, 0, 0) /* FinesseWeapons      Specialized */
     , (800395, 48, 0, 3, 0, 800, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800395,  0,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800395,  1,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800395,  2,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800395,  3,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800395,  4,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800395,  5,  4, 40, 0.75,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800395,  6,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800395,  7,  4,  0,    0,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800395,  8,  4, 80, 0.75,  1300,  1300,  1300,  1300,  1300,  1300,  1300,  1300,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800395,  1787,   2.02)  /* Halo of Frost */
     , (800395,  2136,   2.02)  /* Icy Torment */
     , (800395,  2137,   2.02)  /* Sudden Frost */
     , (800395,  1785,   2.02)  /* Ring of Fire */
     , (800395,  1783,   2.02)  /* Ring of Acid */
     , (800395,  1985,   2.02)  /* Nullify Life Magic Other */
     , (800395,  2074,   2.02)  /* Gossamer Flesh */
     , (800395,  4479,   2.02)  /* Cold Vuln VIII */
     , (800395,  4473,   2.02)  /* Acid Vuln VIII */
     , (800395,  4481,   2.02)  /* Fire Vuln VIII */
     , (800395,  2168,   2.02)  /* Gelidite's Gift */
     , (800395,  1242,   2.02)  /* Drain Health VI */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800395, 2, 21159,  1, 93, 0, False) /* Create Covenant Tassets (21159) for Wield */
     , (800395, 2, 21152,  1, 93, 0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (800395, 2, 21157,  1, 93, 0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (800395, 2, 21151,  1, 93, 0, False) /* Create Covenant Bracers (21151) for Wield */
     , (800395, 2, 21153,  1, 93, 0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (800395, 2, 21154,  1, 93, 0, False) /* Create Covenant Girth (21154) for Wield */
     , (800395, 2, 21155,  1, 93, 0, False) /* Create Covenant Greaves (21155) for Wield */
     , (800395, 2, 21150,  1, 93, 0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (800395, 2, 87038,  1, 93, 0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (800395, 2, 800396,  1, 93, 0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (800395, 2, 800397,  1, 93, 0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (800395, 2,  2597,  1, 92, 0, False) /* Create Pants (2597) for Wield */
     , (800395, 2,  2588,  1, 14, 0, False) /* Create Shirt (2588) for Wield */;
