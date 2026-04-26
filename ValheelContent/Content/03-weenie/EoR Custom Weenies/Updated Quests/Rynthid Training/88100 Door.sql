DELETE FROM `weenie` WHERE `class_Id` = 88100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (88100, 'ace88100-door', 10, '2022-06-21 15:22:25') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (88100,   1,         16) /* ItemType - Creature */
     , (88100,   6,         -1) /* ItemsCapacity */
     , (88100,   7,         -1) /* ContainersCapacity */
     , (88100,  16,          1) /* ItemUseable - No */
     , (88100,  67,          1) /* Tolerance - NoAttack */
     , (88100,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (88100,   1, True ) /* Stuck */
     , (88100,   6, False) /* AiUsesMana */
     , (88100,  11, False) /* IgnoreCollisions */
     , (88100,  12, True ) /* ReportCollisions */
     , (88100,  13, False) /* Ethereal */
     , (88100,  14, True ) /* GravityStatus */
     , (88100,  19, True ) /* Attackable */
     , (88100,  29, True ) /* NoCorpse */
     , (88100,  52, True ) /* AiImmobile */
     , (88100,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (88100,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (88100,   1,       5) /* HeartbeatInterval */
     , (88100,   2,       0) /* HeartbeatTimestamp */
     , (88100,   3,     0.6) /* HealthRate */
     , (88100,   4,     0.5) /* StaminaRate */
     , (88100,   5,       2) /* ManaRate */
     , (88100,   6,     0.1) /* HealthUponResurrection */
     , (88100,   7,    0.25) /* StaminaUponResurrection */
     , (88100,   8,     0.3) /* ManaUponResurrection */
     , (88100,  12,     0.5) /* Shade */
     , (88100,  13,    0.75) /* ArmorModVsSlash */
     , (88100,  14,    0.75) /* ArmorModVsPierce */
     , (88100,  15,       1) /* ArmorModVsBludgeon */
     , (88100,  16,     100) /* ArmorModVsCold */
     , (88100,  17,       1) /* ArmorModVsFire */
     , (88100,  18,     0.8) /* ArmorModVsAcid */
     , (88100,  19,    0.89) /* ArmorModVsElectric */
     , (88100,  31,      10) /* VisualAwarenessRange */
     , (88100,  34,     3.3) /* PowerupTime */
     , (88100,  64,     0.5) /* ResistSlash */
     , (88100,  65,     0.5) /* ResistPierce */
     , (88100,  66,    0.75) /* ResistBludgeon */
     , (88100,  67,    0.85) /* ResistFire */
     , (88100,  68,       0) /* ResistCold */
     , (88100,  69,     0.6) /* ResistAcid */
     , (88100,  70,     0.6) /* ResistElectric */
     , (88100,  71,       1) /* ResistHealthBoost */
     , (88100,  72,       1) /* ResistStaminaDrain */
     , (88100,  73,       1) /* ResistStaminaBoost */
     , (88100,  74,       1) /* ResistManaDrain */
     , (88100,  75,       1) /* ResistManaBoost */
     , (88100,  80,       3) /* AiUseMagicDelay */
     , (88100, 104,      10) /* ObviousRadarRange */
     , (88100, 122,       2) /* AiAcquireHealth */
     , (88100, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (88100,   1, 'Door') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (88100,   1,   33555023) /* Setup */
     , (88100,   2,  150994966) /* MotionTable */
     , (88100,   3,  536870946) /* SoundTable */
     , (88100,   8,  100668183) /* Icon */
     , (88100,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (88100,   1,   1, 0, 0) /* Strength */
     , (88100,   2,   1, 0, 0) /* Endurance */
     , (88100,   3,   1, 0, 0) /* Quickness */
     , (88100,   4,   1, 0, 0) /* Coordination */
     , (88100,   5,   1, 0, 0) /* Focus */
     , (88100,   6,   1, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (88100,   1, 500000, 0, 0, 500000) /* MaxHealth */
     , (88100,   3,   800, 0, 0, 801) /* MaxStamina */
     , (88100,   5,     0, 0, 0, 1) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (88100,  6, 0, 2, 0,   1, 0, 0) /* MeleeDefense        Trained */
     , (88100,  7, 0, 2, 0,   1, 0, 0) /* MissileDefense      Trained */
     , (88100, 15, 0, 3, 0,   1, 0, 0) /* MagicDefense        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (88100,  0,  4,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (88100,  1,  4,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (88100,  2,  4,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (88100,  3,  3,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (88100,  4,  3,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (88100,  5,  8, 1500, 0.75,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (88100,  6,  4,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (88100,  7,  4,  0,    0,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (88100,  8,  4, 1500, 0.75,  200,  150,  150,  200, 20000,  200,  160,  178,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
