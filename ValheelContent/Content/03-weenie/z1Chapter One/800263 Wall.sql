DELETE FROM `weenie` WHERE `class_Id` = 800263;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800263, 'decorativewall', 10, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800263,   1,         16) /* ItemType - Creature */
     , (800263,   6,         -1) /* ItemsCapacity */
     , (800263,   7,         -1) /* ContainersCapacity */
     , (800263,  16,          1) /* ItemUseable - No */
     , (800263,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800263, 133,          0) /* ShowableOnRadar - Undefined */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800263,   1, True ) /* Stuck */
     , (800263,   6, False) /* AiUsesMana */
     , (800263,  11, False) /* IgnoreCollisions */
     , (800263,  12, True ) /* ReportCollisions */
     , (800263,  13, False) /* Ethereal */
     , (800263,  14, True ) /* GravityStatus */
     , (800263,  19, False ) /* Attackable */
     , (800263,  29, True ) /* NoCorpse */
     , (800263,  52, True ) /* AiImmobile */
     , (800263,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (800263,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800263,   1,       5) /* HeartbeatInterval */
     , (800263,   2,       0) /* HeartbeatTimestamp */
     , (800263,   3,     0.6) /* HealthRate */
     , (800263,   4,     0.5) /* StaminaRate */
     , (800263,   5,       2) /* ManaRate */
     , (800263,   6,     0.1) /* HealthUponResurrection */
     , (800263,   7,    0.25) /* StaminaUponResurrection */
     , (800263,   8,     0.3) /* ManaUponResurrection */
     , (800263,  12,     0.5) /* Shade */
     , (800263,  13,    0.75) /* ArmorModVsSlash */
     , (800263,  14,    0.75) /* ArmorModVsPierce */
     , (800263,  15,       1) /* ArmorModVsBludgeon */
     , (800263,  16,     100) /* ArmorModVsCold */
     , (800263,  17,       1) /* ArmorModVsFire */
     , (800263,  18,     0.8) /* ArmorModVsAcid */
     , (800263,  19,    0.89) /* ArmorModVsElectric */
     , (800263,  31,      10) /* VisualAwarenessRange */
     , (800263,  34,     3.3) /* PowerupTime */
     , (800263,  64,     0.5) /* ResistSlash */
     , (800263,  65,     0.5) /* ResistPierce */
     , (800263,  66,    0.89) /* ResistBludgeon */
     , (800263,  67,    0.65) /* ResistFire */
     , (800263,  68,       0) /* ResistCold */
     , (800263,  69,     0.6) /* ResistAcid */
     , (800263,  70,     0.6) /* ResistElectric */
     , (800263,  71,       1) /* ResistHealthBoost */
     , (800263,  72,       1) /* ResistStaminaDrain */
     , (800263,  73,       1) /* ResistStaminaBoost */
     , (800263,  74,       1) /* ResistManaDrain */
     , (800263,  75,       1) /* ResistManaBoost */
     , (800263,  80,       3) /* AiUseMagicDelay */
     , (800263, 104,      10) /* ObviousRadarRange */
     , (800263, 122,       2) /* AiAcquireHealth */
     , (800263, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800263,   1, 'Wall') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800263,   1,   33560311) /* Setup */
     , (800263,   2,  150995407) /* MotionTable */
     , (800263,   3,  536871001) /* SoundTable */
     , (800263,   8,  100671984) /* Icon */
     , (800263,  22,  872415339) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800263,   1,  2000, 0, 0, 2000) /* MaxHealth */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800263,  0,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800263,  1,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800263,  2,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800263,  3,  3,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800263,  4,  3,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800263,  5,  8, 60, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800263,  6,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800263,  7,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800263,  8,  4, 60, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
