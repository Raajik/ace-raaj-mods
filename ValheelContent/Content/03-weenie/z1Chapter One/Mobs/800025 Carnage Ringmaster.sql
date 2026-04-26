DELETE FROM `weenie` WHERE `class_Id` = 800025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800025, 'carnageringmaster', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800025,   1,         16) /* ItemType - Creature */
     , (800025,   2,         14) /* CreatureType - Undead */
     , (800025,   3,          9) /* PaletteTemplate - Grey */
     , (800025,   6,         -1) /* ItemsCapacity */
     , (800025,   7,         -1) /* ContainersCapacity */
     , (800025,  16,          1) /* ItemUseable - No */
     , (800025,  25,        300) /* Level */
     , (800025,  27,          0) /* ArmorType - None */
     , (800025,  40,          1) /* CombatMode - NonCombat */
     , (800025,  68,          3) /* TargetingTactic - Random, Focused */
     , (800025,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (800025, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800025, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800025, 140,          1) /* AiOptions - CanOpenDoors */
     , (800025, 146,   7867485) /* XpOverride */
     , (800025, 332,      80000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800025,   1, True ) /* Stuck */
     , (800025,   6, True ) /* AiUsesMana */
     , (800025,  11, False) /* IgnoreCollisions */
     , (800025,  12, True ) /* ReportCollisions */
     , (800025,  13, False) /* Ethereal */
     , (800025,  14, True ) /* GravityStatus */
     , (800025,  19, True ) /* Attackable */
     , (800025,  42, True ) /* AllowEdgeSlide */
     , (800025,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800025,   1,       5) /* HeartbeatInterval */
     , (800025,   2,       0) /* HeartbeatTimestamp */
     , (800025,   3,      20) /* HealthRate */
     , (800025,   4,      20) /* StaminaRate */
     , (800025,   5,       2) /* ManaRate */
     , (800025,  12,     0.5) /* Shade */
     , (800025,  13,       1) /* ArmorModVsSlash */
     , (800025,  14,       1) /* ArmorModVsPierce */
     , (800025,  15,       1) /* ArmorModVsBludgeon */
     , (800025,  16,       1) /* ArmorModVsCold */
     , (800025,  17,     0.7) /* ArmorModVsFire */
     , (800025,  18,       1) /* ArmorModVsAcid */
     , (800025,  19,       1) /* ArmorModVsElectric */
     , (800025,  31,      18) /* VisualAwarenessRange */
     , (800025,  34,     1.1) /* PowerupTime */
     , (800025,  36,       1) /* ChargeSpeed */
     , (800025,  39,     1.6) /* DefaultScale */
     , (800025,  64,     0.1) /* ResistSlash */
     , (800025,  65,     0.1) /* ResistPierce */
     , (800025,  66,     0.1) /* ResistBludgeon */
     , (800025,  67,     0.5) /* ResistFire */
     , (800025,  68,     0.1) /* ResistCold */
     , (800025,  69,     0.1) /* ResistAcid */
     , (800025,  70,     0.1) /* ResistElectric */
     , (800025,  71,       1) /* ResistHealthBoost */
     , (800025,  72,       1) /* ResistStaminaDrain */
     , (800025,  73,       1) /* ResistStaminaBoost */
     , (800025,  74,       1) /* ResistManaDrain */
     , (800025,  75,       1) /* ResistManaBoost */
     , (800025,  80,       3) /* AiUseMagicDelay */
     , (800025, 104,      10) /* ObviousRadarRange */
     , (800025, 122,       2) /* AiAcquireHealth */
     , (800025, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800025,   1, 'Carnage Ringmaster') /* Name */
     , (800025,  45, 'RingmasterKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800025,   1,   33554839) /* Setup */
     , (800025,   2,  150994967) /* MotionTable */
     , (800025,   3,  536870934) /* SoundTable */
     , (800025,   4,  805306368) /* CombatTable */
     , (800025,   6,   67110722) /* PaletteBase */
     , (800025,   7,  268436626) /* ClothingBase */
     , (800025,   8,  100667942) /* Icon */
     , (800025,  22,  872415272) /* PhysicsEffectTable */
     , (800025,  32,        272) /* WieldedTreasureType */
     , (800025,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800025,   1, 3320, 0, 0) /* Strength */
     , (800025,   2, 340, 0, 0) /* Endurance */
     , (800025,   3, 300, 0, 0) /* Quickness */
     , (800025,   4, 300, 0, 0) /* Coordination */
     , (800025,   5, 870, 0, 0) /* Focus */
     , (800025,   6, 850, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800025,   1, 4000, 0, 0, 4000) /* MaxHealth */
     , (800025,   3, 4000, 0, 0, 4000) /* MaxStamina */
     , (800025,   5, 4000, 0, 0, 4000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800025,  6, 0, 2, 0, 330, 0, 0) /* MeleeDefense        Trained */
     , (800025,  7, 0, 2, 0, 355, 0, 0) /* MissileDefense      Trained */
     , (800025, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (800025, 15, 0, 2, 0, 125, 0, 0) /* MagicDefense        Trained */
     , (800025, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (800025, 31, 0, 2, 0, 325, 0, 0) /* CreatureEnchantment Trained */
     , (800025, 33, 0, 2, 0, 325, 0, 0) /* LifeMagic           Trained */
     , (800025, 34, 0, 2, 0, 4250, 0, 0) /* WarMagic            Trained */
     , (800025, 44, 0, 2, 0, 3850, 0, 0) /* HeavyWeapons        Trained */
     , (800025, 45, 0, 2, 0, 3850, 0, 0) /* LightWeapons        Trained */
     , (800025, 46, 0, 2, 0, 3850, 0, 0) /* FinesseWeapons      Trained */
     , (800025, 47, 0, 2, 0, 3850, 0, 0) /* MissileWeapons      Trained */
     , (800025, 48, 0, 2, 0, 1800, 0, 0) /* Shield              Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800025,  0,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800025,  1,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800025,  2,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800025,  3,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800025,  4,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800025,  5,  4, 600, 0.75,  500,  400,  275,  350,  125,  300,  350,  375,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800025,  6,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800025,  7,  4,  0,    0,  500,  400,  275,  350,  125,  300,  350,  375,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800025,  8,  4, 600, 0.75,  500,  400,  275,  350,  125,  300,  350,  375,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800025, 9, 800033,  0, 0, 0.2, False) /* Create Shemtar's Helm of Enlightenment (800033) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */
     , (800025, 9, 300104,  0, 0, 1, False) /* Create Ringmaster's Head (300104) for ContainTreasure */;
