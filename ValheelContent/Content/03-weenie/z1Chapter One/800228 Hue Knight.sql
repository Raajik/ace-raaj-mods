DELETE FROM `weenie` WHERE `class_Id` = 800228;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800228, 'hue knight2', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800228,   1,         16) /* ItemType - Creature */
     , (800228,   2,         99) /* CreatureType - GearKnight */
     , (800228,   6,         -1) /* ItemsCapacity */
     , (800228,   7,         -1) /* ContainersCapacity */
     , (800228,  16,          1) /* ItemUseable - No */
     , (800228,  25,        220) /* Level */
     , (800228,  93,       1032) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (800228, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800228, 140,          1) /* AiOptions - CanOpenDoors */
	 , (800228, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800228,   1, True ) /* Stuck */
     , (800228,  12, True ) /* ReportCollisions */
     , (800228,  14, True ) /* GravityStatus */
     , (800226,  13, False) /* Ethereal */
     , (800226, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800228,   1,       5) /* HeartbeatInterval */
     , (800228,   2,       0) /* HeartbeatTimestamp */
     , (800228,   3,     0.1) /* HealthRate */
     , (800228,   4,       5) /* StaminaRate */
     , (800228,   5,       2) /* ManaRate */
     , (800228,  13,    2) /* ArmorModVsSlash */
     , (800228,  14,    2) /* ArmorModVsPierce */
     , (800228,  15,    2) /* ArmorModVsBludgeon */
     , (800228,  16,    2) /* ArmorModVsCold */
     , (800228,  17,    2) /* ArmorModVsFire */
     , (800228,  18,    2) /* ArmorModVsAcid */
     , (800228,  19,    2) /* ArmorModVsElectric */
     , (800228,  31,      15) /* VisualAwarenessRange */
     , (800228,  34,       1) /* PowerupTime */
     , (800228,  36,       1) /* ChargeSpeed */
     , (800228,  39,     1.8) /* DefaultScale */
     , (800228,  64,     1) /* ResistSlash */
     , (800228,  65,     1) /* ResistPierce */
     , (800228,  66,     1) /* ResistBludgeon */
     , (800228,  67,     1) /* ResistFire */
     , (800228,  68,     1) /* ResistCold */
     , (800228,  69,    1) /* ResistAcid */
     , (800228,  70,    1) /* ResistElectric */
     , (800228,  80,       3) /* AiUseMagicDelay */
     , (800228, 104,      10) /* ObviousRadarRange */
     , (800228, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800228,   1, 'Hue Knight') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800228,   1,   33557164) /* Setup */
     , (800228,   2,  150995368) /* MotionTable */
     , (800228,   3,  536871123) /* SoundTable */
     , (800228,   4,  805306368) /* CombatTable */
     , (800228,   8,  100674350) /* Icon */
     , (800228,  22,  872415269) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800228,   1, 3465, 0, 0) /* Strength */
     , (800228,   2, 3415, 0, 0) /* Endurance */
     , (800228,   3, 3370, 0, 0) /* Quickness */
     , (800228,   4, 3405, 0, 0) /* Coordination */
     , (800228,   5,  2385, 0, 0) /* Focus */
     , (800228,   6,  2385, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800228,   1,   50600, 0, 0, 50808) /* MaxHealth */
     , (800228,   3,  41000, 0, 0, 41415) /* MaxStamina */
     , (800228,   5,     0, 0, 0, 385) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800228,  6, 0, 2, 0, 1556, 0, 0) /* MeleeDefense        Trained */
     , (800228,  7, 0, 2, 0, 1405, 0, 0) /* MissileDefense      Trained */
     , (800228, 15, 0, 2, 0, 1463, 0, 0) /* MagicDefense        Trained */
     , (800228, 16, 0, 2, 0, 1300, 0, 0) /* ManaConversion      Trained */
     , (800228, 33, 0, 2, 0, 1350, 0, 0) /* LifeMagic           Trained */
     , (800228, 34, 0, 2, 0, 1350, 0, 0) /* WarMagic            Trained */
     , (800228, 41, 0, 2, 0, 1526, 0, 0) /* TwoHandedCombat     Trained */
     , (800228, 44, 0, 2, 0, 1526, 0, 0) /* HeavyWeapons        Trained */
     , (800228, 45, 0, 2, 0, 1526, 0, 0) /* LightWeapons        Trained */
     , (800228, 46, 0, 2, 0, 1526, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800228,  0,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800228,  1,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800228,  2,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800228,  3,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800228,  4,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800228,  5,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800228,  6,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800228,  7,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800228,  8,  4, 80,  0.5,  450,  380,  380,  380,  380,  380,  250,  280,    0, 2,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800228,  94)
     , (800228, 414);