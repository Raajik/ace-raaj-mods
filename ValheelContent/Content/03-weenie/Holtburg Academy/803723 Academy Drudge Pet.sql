DELETE FROM `weenie` WHERE `class_Id` = 803723;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803723, 'Academy Drudge Pet', 71, '2023-10-02 09:05:29') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803723,   1,         16) /* ItemType - Creature */
     , (803723,   2,          3) /* CreatureType - AcidElemental */
     , (803723,   3,         46) /* PaletteTemplate - White */
     , (803723,   6,         -1) /* ItemsCapacity */
     , (803723,   7,         -1) /* ContainersCapacity */
     , (803723,  16,          1) /* ItemUseable - No */
     , (803723,  25,          1) /* Level */
     , (803723,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803723, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803723, 140,          1) /* AiOptions - CanOpenDoors */
     , (803723, 267,         43) /* Lifespan */
     , (803723, 333,          1) /* Lifespan */
     , (803723, 334,          1) /* Lifespan */
     , (803723, 335,          1) /* Lifespan */
     , (803723, 336,          1) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803723,   1, True ) /* Stuck */
     , (803723,  11, False) /* IgnoreCollisions */
     , (803723,  12, True ) /* ReportCollisions */
     , (803723,  13, False) /* Ethereal */
     , (803723, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803723,   1,       5) /* HeartbeatInterval */
     , (803723,   2,       0) /* HeartbeatTimestamp */
     , (803723,   3,    0.45) /* HealthRate */
     , (803723,   4,     0.5) /* StaminaRate */
     , (803723,   5,       2) /* ManaRate */
     , (803723,  12,     0.5) /* Shade */
     , (803723,  13,       1) /* ArmorModVsSlash */
     , (803723,  14,       1) /* ArmorModVsPierce */
     , (803723,  15,       1) /* ArmorModVsBludgeon */
     , (803723,  16,       1) /* ArmorModVsCold */
     , (803723,  17,       1) /* ArmorModVsFire */
     , (803723,  18,       1) /* ArmorModVsAcid */
     , (803723,  19,       1) /* ArmorModVsElectric */
     , (803723,  31,      18) /* VisualAwarenessRange */
     , (803723,  34,       1) /* PowerupTime */
     , (803723,  36,       2) /* ChargeSpeed */
     , (803723,  39,       1) /* DefaultScale */
     , (803723,  64,       1) /* ResistSlash */
     , (803723,  65,       1) /* ResistPierce */
     , (803723,  66,       1) /* ResistBludgeon */
     , (803723,  67,       1) /* ResistFire */
     , (803723,  68,       1) /* ResistCold */
     , (803723,  69,       1) /* ResistAcid */
     , (803723,  70,       1) /* ResistElectric */
     , (803723,  71,       1) /* ResistHealthBoost */
     , (803723,  72,       1) /* ResistStaminaDrain */
     , (803723,  73,       1) /* ResistStaminaBoost */
     , (803723,  74,       1) /* ResistManaDrain */
     , (803723,  75,       1) /* ResistManaBoost */
     , (803723,  76,     0.2) /* Translucency */
     , (803723,  80,       3) /* AiUseMagicDelay */
     , (803723, 104,      10) /* ObviousRadarRange */
     , (803723, 122,       2) /* AiAcquireHealth */
     , (803723, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803723,   1, 'Academy Drudge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803723,   1,   33554484) /* Setup */
     , (803723,   2,  150995082) /* MotionTable */
     , (803723,   3,  536870993) /* SoundTable */
     , (803723,   4,  805306372) /* CombatTable */
     , (803723,   6,   67109305) /* PaletteBase */
     , (803723,   7,  268435834) /* ClothingBase */
     , (803723,   8,  100667445) /* Icon */
     , (803723,  22,  872415339) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803723,  0, 32,  0,    0, 250, 115, 115, 115, 115, 115, 115, 115,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803723,  1, 32,  0,    0, 250, 115, 115, 115, 115, 115, 115, 115,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803723,  2, 32,  0,    0, 230, 115, 115, 115, 115, 115, 115, 115,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803723,  3, 32,  0,    0, 230, 115, 115, 115, 115, 115, 115, 115,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803723,  4, 32,  0,    0, 230, 115, 115, 115, 115, 115, 115, 115,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803723,  5, 32, 15, 0.75, 230, 115, 115, 115, 115, 115, 115, 115,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803723,  6, 32,  0,    0, 230, 115, 115, 115, 115, 115, 115, 115,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803723,  7, 32,  0,    0, 230, 115, 115, 115, 115, 115, 115, 115,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803723,  8, 32, 15, 0.75, 230, 115, 115, 115, 115, 115, 115, 115,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803723,   1, 100, 0, 0) /* Strength */
     , (803723,   2, 100, 0, 0) /* Endurance */
     , (803723,   3, 100, 0, 0) /* Quickness */
     , (803723,   4, 100, 0, 0) /* Coordination */
     , (803723,   5, 100, 0, 0) /* Focus */
     , (803723,   6, 100, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803723,   1, 500, 0, 0, 500) /* MaxHealth */
     , (803723,   3, 500, 0, 0, 500) /* MaxStamina */
     , (803723,   5, 500, 0, 0, 500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803723,  6, 0, 3, 0, 150, 0, 0) /* MeleeDefense        Specialized */
     , (803723,  7, 0, 3, 0, 150, 0, 0) /* MissileDefense      Specialized */
     , (803723, 15, 0, 3, 0, 150, 0, 0) /* MagicDefense        Specialized */
     , (803723, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803723, 22, 0, 2, 0, 150, 0, 0) /* Jump                Trained */
     , (803723, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (803723, 45, 0, 3, 0, 200, 0, 0) /* LightWeapons        Specialized */;

