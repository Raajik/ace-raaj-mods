DELETE FROM `weenie` WHERE `class_Id` = 800609;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800609, 'Spire Mercenary', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800609,   1,         16) /* ItemType - Creature */
     , (800609,   2,         31) /* CreatureType - Human */
     , (800609,   6,         -1) /* ItemsCapacity */
     , (800609,   7,         -1) /* ContainersCapacity */
     , (800609,   8,        120) /* Mass */
     , (800609,  16,          1) /* ItemUseable - No */
     , (800609,  25,        325) /* Level */
     , (800609,  27,          0) /* ArmorType - None */
     , (800609,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800609,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800609, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800609, 113,          1) /* Gender - Male */
     , (800609, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800609, 146,    26000000) /* XpOverride */
     , (800609, 188,          1) /* HeritageGroup - Aluvian */
     , (800609, 332,      12000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800609,   1, True ) /* Stuck */
     , (800609,  11, False) /* IgnoreCollisions */
     , (800609,  12, True ) /* ReportCollisions */
     , (800609,  13, False) /* Ethereal */
     , (800609,  14, True ) /* GravityStatus */
     , (800609,  19, True ) /* Attackable */
     , (800609,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800609,   1,       5) /* HeartbeatInterval */
     , (800609,   2,       0) /* HeartbeatTimestamp */
     , (800609,   3,       2) /* HealthRate */
     , (800609,   4,       5) /* StaminaRate */
     , (800609,   5,       1) /* ManaRate */
     , (800609,  13,       1) /* ArmorModVsSlash */
     , (800609,  14,       1) /* ArmorModVsPierce */
     , (800609,  15,       1) /* ArmorModVsBludgeon */
     , (800609,  16,     0.7) /* ArmorModVsCold */
     , (800609,  17,     0.7) /* ArmorModVsFire */
     , (800609,  18,       1) /* ArmorModVsAcid */
     , (800609,  19,     0.7) /* ArmorModVsElectric */
     , (800609,  31,      13) /* VisualAwarenessRange */
     , (800609,  64,     0.1) /* ResistSlash */
     , (800609,  65,     0.1) /* ResistPierce */
     , (800609,  66,     0.1) /* ResistBludgeon */
     , (800609,  67,     0.3) /* ResistFire */
     , (800609,  68,     0.3) /* ResistCold */
     , (800609,  69,     0.1) /* ResistAcid */
     , (800609,  70,     0.5) /* ResistElectric */
     , (800609,  71,       1) /* ResistHealthBoost */
     , (800609,  72,       1) /* ResistStaminaDrain */
     , (800609,  73,       1) /* ResistStaminaBoost */
     , (800609,  74,       1) /* ResistManaDrain */
     , (800609,  75,       1) /* ResistManaBoost */
     , (800609, 104,      10) /* ObviousRadarRange */
     , (800609, 117,     0.5) /* FocusedProbability */
     , (800609, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800609,   1, 'Spire Mercenary') /* Name */
     , (800609,  45, 'GreenspireKT2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800609,   1,   33554433) /* Setup */
     , (800609,   2,  150994945) /* MotionTable */
     , (800609,   3,  536870913) /* SoundTable */
     , (800609,   4,  805306368) /* CombatTable */
     , (800609,   8,  100667446) /* Icon */
     , (800609,   9,   83890457) /* EyesTexture */
     , (800609,  10,   83890555) /* NoseTexture */
     , (800609,  11,   83890613) /* MouthTexture */
     , (800609,  15,   67117002) /* HairPalette */
     , (800609,  16,   67110063) /* EyesPalette */
     , (800609,  17,   67109560) /* SkinPalette */
     , (800609,  22,  872415236) /* PhysicsEffectTable */
     , (800609,  32,        364) /* WieldedTreasureType */
     , (800609,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800609,   1, 1400, 0, 0) /* Strength */
     , (800609,   2, 1200, 0, 0) /* Endurance */
     , (800609,   3, 800, 0, 0) /* Quickness */
     , (800609,   4, 800, 0, 0) /* Coordination */
     , (800609,   5, 1200, 0, 0) /* Focus */
     , (800609,   6, 1200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800609,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800609,   3, 12110, 0, 0, 21110) /* MaxStamina */
     , (800609,   5,     0, 0, 0, 80) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800609,  6, 0, 3, 0, 210, 0, 0) /* MeleeDefense        Specialized */
     , (800609,  7, 0, 3, 0, 315, 0, 0) /* MissileDefense      Specialized */
     , (800609, 15, 0, 3, 0, 210, 0, 0) /* MagicDefense        Specialized */
     , (800609, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (800609, 24, 0, 3, 0,   5, 0, 0) /* Run                 Specialized */
     , (800609, 44, 0, 3, 0, 400, 0, 0) /* HeavyWeapons        Specialized */
     , (800609, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */
     , (800609, 46, 0, 3, 0, 400, 0, 0) /* FinesseWeapons      Specialized */
     , (800609, 47, 0, 3, 0, 400, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800609,  0,  4,  0,    0,  260,  234,  260,  286,  104,  104,  260,  156,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800609,  1,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800609,  2,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800609,  3,  4,  0,    0,  240,  216,  240,  264,   96,   96,  240,  144,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800609,  4,  4,  0,    0,  240,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800609,  5,  4, 1000, 0.75,  240,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800609,  6,  4,  0,    0,  260,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800609,  7,  4,  0,    0,  250,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800609,  8,  4, 1000, 0.75,  245,  221,  245,  270,   98,   98,  245,  147,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
