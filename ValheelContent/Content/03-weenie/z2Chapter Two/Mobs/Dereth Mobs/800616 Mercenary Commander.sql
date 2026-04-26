DELETE FROM `weenie` WHERE `class_Id` = 800616;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800616, 'Mercenary Commander', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800616,   1,         16) /* ItemType - Creature */
     , (800616,   2,         31) /* CreatureType - Human */
     , (800616,   6,         -1) /* ItemsCapacity */
     , (800616,   7,         -1) /* ContainersCapacity */
     , (800616,   8,        120) /* Mass */
     , (800616,  16,          1) /* ItemUseable - No */
     , (800616,  25,        325) /* Level */
     , (800616,  27,          0) /* ArmorType - None */
     , (800616,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800616,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800616, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800616, 113,          1) /* Gender - Male */
     , (800616, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800616, 146,    26000000) /* XpOverride */
     , (800616, 188,          1) /* HeritageGroup - Aluvian */
     , (800616, 332,      12000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800616,   1, True ) /* Stuck */
     , (800616,  11, False) /* IgnoreCollisions */
     , (800616,  12, True ) /* ReportCollisions */
     , (800616,  13, False) /* Ethereal */
     , (800616,  14, True ) /* GravityStatus */
     , (800616,  19, True ) /* Attackable */
     , (800616,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800616,   1,       5) /* HeartbeatInterval */
     , (800616,   2,       0) /* HeartbeatTimestamp */
     , (800616,   3,       2) /* HealthRate */
     , (800616,   4,       5) /* StaminaRate */
     , (800616,   5,       1) /* ManaRate */
     , (800616,  13,       1) /* ArmorModVsSlash */
     , (800616,  14,       1) /* ArmorModVsPierce */
     , (800616,  15,       1) /* ArmorModVsBludgeon */
     , (800616,  16,     0.7) /* ArmorModVsCold */
     , (800616,  17,     0.7) /* ArmorModVsFire */
     , (800616,  18,       1) /* ArmorModVsAcid */
     , (800616,  19,     0.7) /* ArmorModVsElectric */
     , (800616,  31,      13) /* VisualAwarenessRange */
     , (800616,  39,     1.5) /* DefaultScale */
     , (800616,  64,     0.1) /* ResistSlash */
     , (800616,  65,     0.1) /* ResistPierce */
     , (800616,  66,     0.1) /* ResistBludgeon */
     , (800616,  67,     0.3) /* ResistFire */
     , (800616,  68,     0.3) /* ResistCold */
     , (800616,  69,     0.1) /* ResistAcid */
     , (800616,  70,     0.5) /* ResistElectric */
     , (800616,  71,       1) /* ResistHealthBoost */
     , (800616,  72,       1) /* ResistStaminaDrain */
     , (800616,  73,       1) /* ResistStaminaBoost */
     , (800616,  74,       1) /* ResistManaDrain */
     , (800616,  75,       1) /* ResistManaBoost */
     , (800616, 104,      10) /* ObviousRadarRange */
     , (800616, 117,     0.5) /* FocusedProbability */
     , (800616, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800616,   1, 'Mercenary Commander') /* Name */
     , (800616,  45, 'MercCommanderKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800616,   1,   33554433) /* Setup */
     , (800616,   2,  150994945) /* MotionTable */
     , (800616,   3,  536870913) /* SoundTable */
     , (800616,   4,  805306368) /* CombatTable */
     , (800616,   8,  100667446) /* Icon */
     , (800616,   9,   83890457) /* EyesTexture */
     , (800616,  10,   83890555) /* NoseTexture */
     , (800616,  11,   83890613) /* MouthTexture */
     , (800616,  15,   67117002) /* HairPalette */
     , (800616,  16,   67110063) /* EyesPalette */
     , (800616,  17,   67109560) /* SkinPalette */
     , (800616,  22,  872415236) /* PhysicsEffectTable */
     , (800616,  32,        364) /* WieldedTreasureType */
     , (800616,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800616,   1, 1800, 0, 0) /* Strength */
     , (800616,   2, 1800, 0, 0) /* Endurance */
     , (800616,   3, 800, 0, 0) /* Quickness */
     , (800616,   4, 800, 0, 0) /* Coordination */
     , (800616,   5, 800, 0, 0) /* Focus */
     , (800616,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800616,   1, 12000, 0, 0, 12000) /* MaxHealth */
     , (800616,   3, 12110, 0, 0, 21110) /* MaxStamina */
     , (800616,   5,     0, 0, 0, 80) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800616,  6, 0, 3, 0, 150, 0, 0) /* MeleeDefense        Specialized */
     , (800616,  7, 0, 3, 0, 150, 0, 0) /* MissileDefense      Specialized */
     , (800616, 15, 0, 3, 0, 150, 0, 0) /* MagicDefense        Specialized */
     , (800616, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (800616, 24, 0, 3, 0, 150, 0, 0) /* Run                 Specialized */
     , (800616, 44, 0, 3, 0, 400, 0, 0) /* HeavyWeapons        Specialized */
     , (800616, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */
     , (800616, 46, 0, 3, 0, 400, 0, 0) /* FinesseWeapons      Specialized */
     , (800616, 47, 0, 3, 0, 400, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800616,  0,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800616,  1,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800616,  2,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800616,  3,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800616,  4,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800616,  5,  4,  1000, 0.75,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800616,  6,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800616,  7,  4,  0,    0,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800616,  8,  4,  1000, 0.75,  300, 1300, 1300, 1300, 1300, 1300, 1300, 1300,  300, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
