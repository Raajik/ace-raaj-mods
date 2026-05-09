DELETE FROM `weenie` WHERE `class_Id` = 800671;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800671, 'WestShoreCommander', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800671,   1,         16) /* ItemType - Creature */
     , (800671,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (800671,   3,         13) /* PaletteTemplate - Purple */
     , (800671,   6,         -1) /* ItemsCapacity */
     , (800671,   7,         -1) /* ContainersCapacity */
     , (800671,  16,          1) /* ItemUseable - No */
     , (800671,  25,        400) /* Level */
     , (800671,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800671,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800671, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800671, 146,    5000000) /* XpOverride */
     , (800671, 332,   10000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800671,   1, True ) /* Stuck */
     , (800671,  65, True ) /* IgnoreMagicResist */
     , (800671,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800671,   1,       5) /* HeartbeatInterval */
     , (800671,   2,       0) /* HeartbeatTimestamp */
     , (800671,   3,     400) /* HealthRate */
     , (800671,   4,       4) /* StaminaRate */
     , (800671,   5,       2) /* ManaRate */
     , (800671,  13,     0.5) /* ArmorModVsSlash */
     , (800671,  14,       1) /* ArmorModVsPierce */
     , (800671,  15,       1) /* ArmorModVsBludgeon */
     , (800671,  16,       1) /* ArmorModVsCold */
     , (800671,  17,       1) /* ArmorModVsFire */
     , (800671,  18,       1) /* ArmorModVsAcid */
     , (800671,  19,       1) /* ArmorModVsElectric */
     , (800671,  31,      24) /* VisualAwarenessRange */
     , (800671,  34,       1) /* PowerupTime */
     , (800671,  36,       1) /* ChargeSpeed */
     , (800671,  39,     1.7) /* DefaultScale */
     , (800671,  64,     0.5) /* ResistSlash */
     , (800671,  65,     0.1) /* ResistPierce */
     , (800671,  66,     0.1) /* ResistBludgeon */
     , (800671,  67,     0.1) /* ResistFire */
     , (800671,  68,     0.1) /* ResistCold */
     , (800671,  69,     0.1) /* ResistAcid */
     , (800671,  70,     0.1) /* ResistElectric */
     , (800671,  77,       1) /* PhysicsScriptIntensity */
     , (800671, 104,      10) /* ObviousRadarRange */
     , (800671, 125,       1) /* ResistHealthDrain */
     , (800671, 166,     0.5) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800671,   1, 'West Shore Commander') /* Name */
     , (800671,  45, 'CommandersKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800671,   1,   33559537) /* Setup */
     , (800671,   2,  150994945) /* MotionTable */
     , (800671,   3,  536870913) /* SoundTable */
     , (800671,   4,  805306408) /* CombatTable */
     , (800671,   8,  100670398) /* Icon */
     , (800671,  22,  872415331) /* PhysicsEffectTable */
     , (800671,  32,       5920) /* WieldedTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800671,   1, 1500, 0, 0) /* Strength */
     , (800671,   2, 500, 0, 0) /* Endurance */
     , (800671,   3, 800, 0, 0) /* Quickness */
     , (800671,   4, 800, 0, 0) /* Coordination */
     , (800671,   5, 800, 0, 0) /* Focus */
     , (800671,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800671,   1, 70000, 0, 0, 70000) /* MaxHealth */
     , (800671,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (800671,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800671,  6, 0, 2, 0,  60, 0, 0) /* MeleeDefense        Trained */
     , (800671,  7, 0, 2, 0,  20, 0, 0) /* MissileDefense      Trained */
     , (800671, 15, 0, 2, 0,  40, 0, 0) /* MagicDefense        Trained */
     , (800671, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (800671, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (800671, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (800671, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (800671, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (800671, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (800671, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (800671, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800671,  0,  2, 150, 0.75, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (800671, 16,  4, 150,    0, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (800671, 18,  1, 150,  0.5, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (800671, 19,  1, 150,    0, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (800671, 20,  1, 150, 0.75, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (800671, 22, 32, 150,  0.5, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800671, 2, 21159,  1, 93, 0, False) /* Create Covenant Tassets (21159) for Wield */
     , (800671, 2, 21152,  1, 93, 0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (800671, 2, 21157,  1, 93, 0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (800671, 2, 21151,  1, 93, 0, False) /* Create Covenant Bracers (21151) for Wield */
     , (800671, 2, 21153,  1, 93, 0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (800671, 2, 21154,  1, 93, 0, False) /* Create Covenant Girth (21154) for Wield */
     , (800671, 2, 21155,  1, 93, 0, False) /* Create Covenant Greaves (21155) for Wield */
     , (800671, 2, 21150,  1, 93, 0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (800671, 2, 87038,  1, 93, 0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (800671, 2, 800396,  1, 93, 0, False) /* Create T'thuun Aegis of the King (800396) for Wield */
     , (800671, 2, 800397,  1, 93, 0, False) /* Create Shadow Blade of the King (800397) for Wield */
     , (800671, 2,  2597,  1, 92, 0, False) /* Create Pants (2597) for Wield */
     , (800671, 2,  2588,  1, 14, 0, False) /* Create Shirt (2588) for Wield */;
