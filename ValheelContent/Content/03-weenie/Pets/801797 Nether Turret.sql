DELETE FROM `weenie` WHERE `class_Id` = 801797;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801797, 'Nether Turret', 71, '2022-12-30 09:45:15') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801797,   1,         16) /* ItemType - Creature */
     , (801797,   2,         47) /* CreatureType - Crystal */
     , (801797,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (801797,   6,         -1) /* ItemsCapacity */
     , (801797,   7,         -1) /* ContainersCapacity */
     , (801797,  16,          1) /* ItemUseable - No */
     , (801797,  25,        500) /* Level */
     , (801797,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801797, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801797, 140,          1) /* AiOptions - CanOpenDoors */
     , (801797, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801797,   1, True ) /* Stuck */
     , (801797,  11, False) /* IgnoreCollisions */
     , (801797,  12, True ) /* ReportCollisions */
     , (801797,  13, False) /* Ethereal */
     , (801797,  52, True ) /* AiImmobile */
     , (801797, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801797,   1,       1) /* HeartbeatInterval */
     , (801797,   2,       0) /* HeartbeatTimestamp */
     , (801797,   3,    0.45) /* HealthRate */
     , (801797,   4,     0.5) /* StaminaRate */
     , (801797,   5,       2) /* ManaRate */
     , (801797,  12,     0.5) /* Shade */
     , (801797,  13,       1) /* ArmorModVsSlash */
     , (801797,  14,       1) /* ArmorModVsPierce */
     , (801797,  15,       1) /* ArmorModVsBludgeon */
     , (801797,  16,       1) /* ArmorModVsCold */
     , (801797,  17,    0.38) /* ArmorModVsFire */
     , (801797,  18,       1) /* ArmorModVsAcid */
     , (801797,  19,       1) /* ArmorModVsElectric */
     , (801797,  22,     0.1) /* DamageVariance */
     , (801797,  31,      18) /* VisualAwarenessRange */
     , (801797,  34,     1.1) /* PowerupTime */
     , (801797,  36,       2) /* ChargeSpeed */
     , (801797,  39,     1.5) /* DefaultScale */
     , (801797,  64,       1) /* ResistSlash */
     , (801797,  65,       1) /* ResistPierce */
     , (801797,  66,       1) /* ResistBludgeon */
     , (801797,  67,    0.38) /* ResistFire */
     , (801797,  68,       1) /* ResistCold */
     , (801797,  69,       1) /* ResistAcid */
     , (801797,  70,       1) /* ResistElectric */
     , (801797,  71,       1) /* ResistHealthBoost */
     , (801797,  72,       1) /* ResistStaminaDrain */
     , (801797,  73,       1) /* ResistStaminaBoost */
     , (801797,  74,       1) /* ResistManaDrain */
     , (801797,  75,       1) /* ResistManaBoost */
     , (801797,  80,       3) /* AiUseMagicDelay */
     , (801797, 104,      10) /* ObviousRadarRange */
     , (801797, 105,     0.5) /* HotspotCycleTime */
     , (801797, 106,     0.1) /* HotspotCycleTimeVariance */
     , (801797, 122,       2) /* AiAcquireHealth */
     , (801797, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801797,   1, 'Nether Turret') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801797,   1,   33561556) /* Setup */
     , (801797,   2,  150995096) /* MotionTable */
     , (801797,   3,  536871001) /* SoundTable */
     , (801797,   4,  805306407) /* CombatTable */
     , (801797,   8,  100691499) /* Icon */
     , (801797,  22,  872415348) /* PhysicsEffectTable */
     , (801797,  30,         85) /* PhysicsScript - BreatheFrost */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801797,   1, 800, 0, 0) /* Strength */
     , (801797,   2, 800, 0, 0) /* Endurance */
     , (801797,   3, 800, 0, 0) /* Quickness */
     , (801797,   4, 800, 0, 0) /* Coordination */
     , (801797,   5, 800, 0, 0) /* Focus */
     , (801797,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801797,   1,  5000, 0, 0, 5250) /* MaxHealth */
     , (801797,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (801797,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801797,  6, 0, 3, 0, 400, 0, 639.738254437219) /* MeleeDefense        Specialized */
     , (801797,  7, 0, 3, 0, 400, 0, 639.738254437219) /* MissileDefense      Specialized */
     , (801797, 15, 0, 3, 0, 400, 0, 639.738254437219) /* MagicDefense        Specialized */
     , (801797, 20, 0, 2, 0, 400, 0, 639.738254437219) /* Deception           Trained */
     , (801797, 22, 0, 2, 0, 400, 0, 639.738254437219) /* Jump                Trained */
     , (801797, 24, 0, 2, 0, 400, 0, 639.738254437219) /* Run                 Trained */
     , (801797, 33, 0, 3, 0, 400, 0, 0) /* LifeMagic           Specialized */
     , (801797, 34, 0, 3, 0, 400, 0, 0) /* WarMagic            Specialized */
     , (801797, 45, 0, 3, 0, 600, 0, 639.738254437219) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801797,  0,  4, 500, 0.75,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 1,  0.5,  0.2,    0,  0.5,  0.2,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (801797, 10,  4,  0,    0,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 2,  0.2,  0.4,  0.5,  0.2,  0.4,  0.5,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (801797, 12,  4, 500, 0.75,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 3,    0,    0, 0.25,    0,    0, 0.25,    0,    0,    0,    0,    0,    0) /* FrontFoot */
     , (801797, 13,  4,  0,    0,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 2,    0,    0,    0,    0,    0,    0,  0.3,  0.4,  0.5,  0.3,  0.4,  0.5) /* RearLeg */
     , (801797, 15,  4, 500, 0.75,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 3,    0,    0,    0,    0,    0,    0,    0,    0, 0.25,    0,    0, 0.25) /* RearFoot */
     , (801797, 16,  4,  0,    0,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 2,  0.3,  0.4, 0.25,  0.3,  0.4, 0.25,  0.6,  0.5, 0.25,  0.6,  0.5, 0.25) /* Torso */
     , (801797, 17,  4, 500, 0.75,  250,  250,  250,  250,  250,  300,  270, 25000,    0, 2,    0,    0,    0,    0,    0,    0,  0.1,  0.1,    0,  0.1,  0.1,    0) /* Tail */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801797, 2, 801801,  1, 92, 0, False) /* Create NetherTurretBow (801801) for Wield */
     , (801797, 2, 43951, 500, 92, 0, False) /* Create Deadly Prismatic Arrow (43951) for Wield */;
