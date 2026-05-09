DELETE FROM `weenie` WHERE `class_Id` = 800613;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800613, 'Spire Mercenary2', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800613,   1,         16) /* ItemType - Creature */
     , (800613,   2,         31) /* CreatureType - Human */
     , (800613,   6,         -1) /* ItemsCapacity */
     , (800613,   7,         -1) /* ContainersCapacity */
     , (800613,   8,        120) /* Mass */
     , (800613,  16,          1) /* ItemUseable - No */
     , (800613,  25,        325) /* Level */
     , (800613,  27,          0) /* ArmorType - None */
     , (800613,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800613,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800613, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800613, 113,          1) /* Gender - Male */
     , (800613, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800613, 146,    9000000) /* XpOverride */
     , (800613, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800613,   1, True ) /* Stuck */
     , (800613,  11, False) /* IgnoreCollisions */
     , (800613,  12, True ) /* ReportCollisions */
     , (800613,  13, False) /* Ethereal */
     , (800613,  14, True ) /* GravityStatus */
     , (800613,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800613,   1,       5) /* HeartbeatInterval */
     , (800613,   2,       0) /* HeartbeatTimestamp */
     , (800613,   3,       2) /* HealthRate */
     , (800613,   4,       5) /* StaminaRate */
     , (800613,   5,       1) /* ManaRate */
     , (800613,  13,     0.9) /* ArmorModVsSlash */
     , (800613,  14,       1) /* ArmorModVsPierce */
     , (800613,  15,     1.1) /* ArmorModVsBludgeon */
     , (800613,  16,     0.4) /* ArmorModVsCold */
     , (800613,  17,     0.4) /* ArmorModVsFire */
     , (800613,  18,       1) /* ArmorModVsAcid */
     , (800613,  19,     0.6) /* ArmorModVsElectric */
     , (800613,  31,      13) /* VisualAwarenessRange */
     , (800613,  64,       1) /* ResistSlash */
     , (800613,  65,       1) /* ResistPierce */
     , (800613,  66,       1) /* ResistBludgeon */
     , (800613,  67,       1) /* ResistFire */
     , (800613,  68,       1) /* ResistCold */
     , (800613,  69,       1) /* ResistAcid */
     , (800613,  70,       1) /* ResistElectric */
     , (800613,  71,       1) /* ResistHealthBoost */
     , (800613,  72,       1) /* ResistStaminaDrain */
     , (800613,  73,       1) /* ResistStaminaBoost */
     , (800613,  74,       1) /* ResistManaDrain */
     , (800613,  75,       1) /* ResistManaBoost */
     , (800613, 104,      10) /* ObviousRadarRange */
     , (800613, 117,     0.5) /* FocusedProbability */
     , (800613, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800613,   1, 'Spire Mercenary') /* Name */
     , (800613,  45, 'RedspireKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800613,   1,   33554433) /* Setup */
     , (800613,   2,  150994945) /* MotionTable */
     , (800613,   3,  536870913) /* SoundTable */
     , (800613,   4,  805306368) /* CombatTable */
     , (800613,   8,  100667446) /* Icon */
     , (800613,   9,   83890457) /* EyesTexture */
     , (800613,  10,   83890555) /* NoseTexture */
     , (800613,  11,   83890613) /* MouthTexture */
     , (800613,  15,   67117002) /* HairPalette */
     , (800613,  16,   67110063) /* EyesPalette */
     , (800613,  17,   67109560) /* SkinPalette */
     , (800613,  22,  872415236) /* PhysicsEffectTable */
     , (800613,  32,        364) /* WieldedTreasureType */
     , (800613,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800613,   1, 1200, 0, 0) /* Strength */
     , (800613,   2, 1200, 0, 0) /* Endurance */
     , (800613,   3, 800, 0, 0) /* Quickness */
     , (800613,   4, 800, 0, 0) /* Coordination */
     , (800613,   5, 1200, 0, 0) /* Focus */
     , (800613,   6, 1200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800613,   1,   67130, 0, 0, 70180) /* MaxHealth */
     , (800613,   3,   12110, 0, 0, 21110) /* MaxStamina */
     , (800613,   5,     0, 0, 0, 80) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800613,  6, 0, 3, 0, 210, 0, 0) /* MeleeDefense        Specialized */
     , (800613,  7, 0, 3, 0, 315, 0, 0) /* MissileDefense      Specialized */
     , (800613, 15, 0, 3, 0, 210, 0, 0) /* MagicDefense        Specialized */
     , (800613, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (800613, 24, 0, 3, 0,   5, 0, 0) /* Run                 Specialized */
     , (800613, 44, 0, 3, 0, 1260, 0, 0) /* HeavyWeapons        Specialized */
     , (800613, 45, 0, 3, 0, 1260, 0, 0) /* LightWeapons        Specialized */
     , (800613, 46, 0, 3, 0, 1260, 0, 0) /* FinesseWeapons      Specialized */
     , (800613, 47, 0, 3, 0, 1270, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800613,  0,  4,  0,    0,  260,  234,  260,  286,  104,  104,  260,  156,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800613,  1,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800613,  2,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800613,  3,  4,  0,    0,  240,  216,  240,  264,   96,   96,  240,  144,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800613,  4,  4,  0,    0,  240,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800613,  5,  4,  2, 0.75,  240,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800613,  6,  4,  0,    0,  260,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800613,  7,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800613,  8,  4,  2, 0.75,  245,  221,  245,  270,   98,   98,  245,  147,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

