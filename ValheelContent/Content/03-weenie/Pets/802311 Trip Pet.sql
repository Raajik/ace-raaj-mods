DELETE FROM `weenie` WHERE `class_Id` = 802311;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802311, 'Trip', 71, '2023-04-03 08:51:23') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802311,   1,         16) /* ItemType - Creature */
     , (802311,   2,         60) /* CreatureType - AcidElemental */
     , (802311,   3,         14) /* PaletteTemplate - White */
     , (802311,   6,         -1) /* ItemsCapacity */
     , (802311,   7,         -1) /* ContainersCapacity */
     , (802311,  16,          1) /* ItemUseable - No */
     , (802311,  25,        450) /* Level */
     , (802311,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802311, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802311, 140,          1) /* AiOptions - CanOpenDoors */
     , (802311, 267,         43) /* Lifespan */
     , (802311, 333,         500) /* LumAugDamage */
     , (802311, 334,         500) /* LumAugDamage */
     , (802311, 335,         500) /* LumAugDamage */
     , (802311, 336,         500) /* LumAugDamage */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802311,   1, True ) /* Stuck */
     , (802311,  11, False) /* IgnoreCollisions */
     , (802311,  12, True ) /* ReportCollisions */
     , (802311,  13, False) /* Ethereal */
     , (802311, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802311,   1,       5) /* HeartbeatInterval */
     , (802311,   2,       0) /* HeartbeatTimestamp */
     , (802311,   3,    0.45) /* HealthRate */
     , (802311,   4,     0.5) /* StaminaRate */
     , (802311,   5,       2) /* ManaRate */
     , (802311,  12,     0.5) /* Shade */
     , (802311,  13,       1) /* ArmorModVsSlash */
     , (802311,  14,       1) /* ArmorModVsPierce */
     , (802311,  15,       1) /* ArmorModVsBludgeon */
     , (802311,  16,       1) /* ArmorModVsCold */
     , (802311,  17,    0.38) /* ArmorModVsFire */
     , (802311,  18,       1) /* ArmorModVsAcid */
     , (802311,  19,       1) /* ArmorModVsElectric */
     , (802311,  31,      18) /* VisualAwarenessRange */
     , (802311,  34,     1.1) /* PowerupTime */
     , (802311,  36,       2) /* ChargeSpeed */
     , (802311,  39,     1.3) /* DefaultScale */
     , (802311,  64,       1) /* ResistSlash */
     , (802311,  65,       1) /* ResistPierce */
     , (802311,  66,       1) /* ResistBludgeon */
     , (802311,  67,    0.38) /* ResistFire */
     , (802311,  68,       1) /* ResistCold */
     , (802311,  69,       1) /* ResistAcid */
     , (802311,  70,       1) /* ResistElectric */
     , (802311,  71,       1) /* ResistHealthBoost */
     , (802311,  72,       1) /* ResistStaminaDrain */
     , (802311,  73,       1) /* ResistStaminaBoost */
     , (802311,  74,       1) /* ResistManaDrain */
     , (802311,  75,       1) /* ResistManaBoost */
     , (802311,  76,     0.2) /* Translucency */
     , (802311,  80,       3) /* AiUseMagicDelay */
     , (802311, 104,      10) /* ObviousRadarRange */
     , (802311, 122,       2) /* AiAcquireHealth */
     , (802311, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802311,   1, 'Trip') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802311,   1, 0x02000D5D) /* Setup */
     , (802311,   2, 0x0900008F) /* MotionTable */
     , (802311,   3, 0x2000005A) /* SoundTable */
     , (802311,   4, 0x30000000) /* CombatTable */
     , (802311,   6, 0x0400007E) /* PaletteBase */
     , (802311,   7, 0x100003CF) /* ClothingBase */
     , (802311,   8, 0x06002401) /* Icon */
     , (802311,  22, 0x34000075) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802311,  0, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802311,  1, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802311,  2, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802311,  3, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802311,  4, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802311,  5, 32,500, 0.75,  300,  150,  150,  150,  150,  150,  150,  150,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802311,  6, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802311,  7, 32,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802311,  8, 32,500, 0.75,  300,  150,  150,  150,  150,  150,  150,  150,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802311,   1,1500, 0, 0) /* Strength */
     , (802311,   2, 800, 0, 0) /* Endurance */
     , (802311,   3, 800, 0, 0) /* Quickness */
     , (802311,   4, 800, 0, 0) /* Coordination */
     , (802311,   5, 800, 0, 0) /* Focus */
     , (802311,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802311,   1, 11500, 0, 0,11500) /* MaxHealth */
     , (802311,   3, 42000, 0, 0,45700) /* MaxStamina */
     , (802311,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802311,  6, 0, 3, 0, 260, 0, 0) /* MeleeDefense        Specialized */
     , (802311,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (802311, 15, 0, 3, 0, 215, 0, 0) /* MagicDefense        Specialized */
     , (802311, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (802311, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (802311, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (802311, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802311, 2, 25528,  1, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;

