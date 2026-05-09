DELETE FROM `weenie` WHERE `class_Id` = 801387;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801387, 'Turkey Avenger', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801387,   1,         16) /* ItemType - Creature */
     , (801387,   2,         54) /* CreatureType - Marionette */
     , (801387,   3,         14) /* PaletteTemplate - Red */
     , (801387,   6,         -1) /* ItemsCapacity */
     , (801387,   7,         -1) /* ContainersCapacity */
     , (801387,  16,          1) /* ItemUseable - No */
     , (801387,  25,        220) /* Level */
     , (801387,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801387, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801387, 140,          1) /* AiOptions - CanOpenDoors */
     , (801387, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801387,   1, True ) /* Stuck */
     , (801387,  11, False) /* IgnoreCollisions */
     , (801387,  12, True ) /* ReportCollisions */
     , (801387,  13, False) /* Ethereal */
     , (801387, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801387,   1,       5) /* HeartbeatInterval */
     , (801387,   2,       0) /* HeartbeatTimestamp */
     , (801387,   3,    0.45) /* HealthRate */
     , (801387,   4,     0.5) /* StaminaRate */
     , (801387,   5,       2) /* ManaRate */
     , (801387,  12,     0.5) /* Shade */
     , (801387,  13,       1) /* ArmorModVsSlash */
     , (801387,  14,       1) /* ArmorModVsPierce */
     , (801387,  15,       1) /* ArmorModVsBludgeon */
     , (801387,  16,       1) /* ArmorModVsCold */
     , (801387,  17,    0.38) /* ArmorModVsFire */
     , (801387,  18,       1) /* ArmorModVsAcid */
     , (801387,  19,       1) /* ArmorModVsElectric */
     , (801387,  31,      18) /* VisualAwarenessRange */
     , (801387,  34,     1.1) /* PowerupTime */
     , (801387,  36,       2) /* ChargeSpeed */
     , (801387,  39,       2) /* DefaultScale */
     , (801387,  64,       1) /* ResistSlash */
     , (801387,  65,       1) /* ResistPierce */
     , (801387,  66,       1) /* ResistBludgeon */
     , (801387,  67,    0.38) /* ResistFire */
     , (801387,  68,       1) /* ResistCold */
     , (801387,  69,       1) /* ResistAcid */
     , (801387,  70,       1) /* ResistElectric */
     , (801387,  71,       1) /* ResistHealthBoost */
     , (801387,  72,       1) /* ResistStaminaDrain */
     , (801387,  73,       1) /* ResistStaminaBoost */
     , (801387,  74,       1) /* ResistManaDrain */
     , (801387,  75,       1) /* ResistManaBoost */
     , (801387,  80,       3) /* AiUseMagicDelay */
     , (801387, 104,      10) /* ObviousRadarRange */
     , (801387, 122,       2) /* AiAcquireHealth */
     , (801387, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801387,   1, 'Turkey Avenger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801387,   1,   33555874) /* Setup */
     , (801387,   2,  150995399) /* MotionTable */
     , (801387,   3,  536871130) /* SoundTable */
     , (801387,   4,  805306423) /* CombatTable */
     , (801387,   8,  100674625) /* Icon */
     , (801387,  22,  872415349) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801387,   1, 1000, 0, 0) /* Strength */
     , (801387,   2, 800, 0, 0) /* Endurance */
     , (801387,   3, 800, 0, 0) /* Quickness */
     , (801387,   4, 800, 0, 0) /* Coordination */
     , (801387,   5, 800, 0, 0) /* Focus */
     , (801387,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801387,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (801387,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (801387,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801387,  6, 0, 3, 0, 360, 0, 0) /* MeleeDefense        Specialized */
     , (801387,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (801387, 15, 0, 3, 0, 315, 0, 0) /* MagicDefense        Specialized */
     , (801387, 20, 0, 2, 0, 200, 0, 0) /* Deception           Trained */
     , (801387, 22, 0, 2, 0, 300, 0, 0) /* Jump                Trained */
     , (801387, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (801387, 45, 0, 3, 0, 500, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801387,  0, 300, 65, 0.25, 3950, 3090, 3090, 3085, 4700, 2550, 3090, 4900,    0, 1,  0.5,  0.2,    0,  0.5,  0.2,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (801387, 10,  2,  0,    0, 3800, 3010, 3010, 3075, 4300, 2650, 3010, 4600,    0, 2,  0.2,  0.4,  0.5,  0.2,  0.4,  0.5,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (801387, 12,  2, 60,  0.5, 3800, 3010, 3010, 3075, 4300, 2650, 3010, 4600,    0, 3,    0,    0, 0.25,    0,    0, 0.25,    0,    0,    0,    0,    0,    0) /* FrontFoot */
     , (801387, 13,  2,  0,    0, 3800, 3010, 3010, 3075, 4300, 2650, 3010, 4600,    0, 2,    0,    0,    0,    0,    0,    0,  0.3,  0.4,  0.5,  0.3,  0.4,  0.5) /* RearLeg */
     , (801387, 15,  2, 60,  0.5, 3800, 3010, 3010, 3075, 4300, 2650, 3010, 4600,    0, 3,    0,    0,    0,    0,    0,    0,    0,    0, 0.25,    0,    0, 0.25) /* RearFoot */
     , (801387, 16,  2,  0,    0, 3875, 3085, 3010, 3075, 4400, 2750, 3010, 4700,    0, 2,  0.3,  0.4, 0.25,  0.3,  0.4, 0.25,  0.6,  0.5, 0.25,  0.6,  0.5, 0.25) /* Torso */
     , (801387, 17, 300, 70, 0.39, 3800, 3010, 3010, 3075, 4300, 2650, 3010, 4600,    0, 2,    0,    0,    0,    0,    0,    0,  0.1,  0.1,    0,  0.1,  0.1,    0) /* Tail */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801387,  94)
     , (801387, 414);
