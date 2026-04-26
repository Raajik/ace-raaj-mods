DELETE FROM `weenie` WHERE `class_Id` = 801335;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801335, 'Umbris Shadow Minion', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801335,   1,         16) /* ItemType - Creature */
     , (801335,   2,         22) /* CreatureType - Shadow */
     , (801335,   3,         14) /* PaletteTemplate - Red */
     , (801335,   6,         -1) /* ItemsCapacity */
     , (801335,   7,         -1) /* ContainersCapacity */
     , (801335,  16,          1) /* ItemUseable - No */
     , (801335,  25,        220) /* Level */
     , (801335,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801335, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801335, 140,          1) /* AiOptions - CanOpenDoors */
     , (801335, 267,        120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801335,   1, True ) /* Stuck */
     , (801335,  11, False) /* IgnoreCollisions */
     , (801335,  12, True ) /* ReportCollisions */
     , (801335,  13, False) /* Ethereal */
     , (801335, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801335,   1,       5) /* HeartbeatInterval */
     , (801335,   2,       0) /* HeartbeatTimestamp */
     , (801335,   3,    0.45) /* HealthRate */
     , (801335,   4,     0.5) /* StaminaRate */
     , (801335,   5,       2) /* ManaRate */
     , (801335,  12,     0.5) /* Shade */
     , (801335,  13,       1) /* ArmorModVsSlash */
     , (801335,  14,       1) /* ArmorModVsPierce */
     , (801335,  15,       1) /* ArmorModVsBludgeon */
     , (801335,  16,       1) /* ArmorModVsCold */
     , (801335,  17,    0.38) /* ArmorModVsFire */
     , (801335,  18,       1) /* ArmorModVsAcid */
     , (801335,  19,       1) /* ArmorModVsElectric */
     , (801335,  31,      18) /* VisualAwarenessRange */
     , (801335,  34,     1.1) /* PowerupTime */
     , (801335,  36,       2) /* ChargeSpeed */
     , (801335,  39,     0.7) /* DefaultScale */
     , (801335,  64,       1) /* ResistSlash */
     , (801335,  65,       1) /* ResistPierce */
     , (801335,  66,       1) /* ResistBludgeon */
     , (801335,  67,    0.38) /* ResistFire */
     , (801335,  68,       1) /* ResistCold */
     , (801335,  69,       1) /* ResistAcid */
     , (801335,  70,       1) /* ResistElectric */
     , (801335,  71,       1) /* ResistHealthBoost */
     , (801335,  72,       1) /* ResistStaminaDrain */
     , (801335,  73,       1) /* ResistStaminaBoost */
     , (801335,  74,       1) /* ResistManaDrain */
     , (801335,  75,       1) /* ResistManaBoost */
     , (801335,  80,       3) /* AiUseMagicDelay */
     , (801335, 104,      10) /* ObviousRadarRange */
     , (801335, 122,       2) /* AiAcquireHealth */
     , (801335, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801335,   1, 'Umbris Shadow Minion') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801335,   1,   33556251) /* Setup */
     , (801335,   2,  150995091) /* MotionTable */
     , (801335,   3,  536870914) /* SoundTable */
     , (801335,   4,  805306408) /* CombatTable */
     , (801335,   6,   67108990) /* PaletteBase */
     , (801335,   7,  268435871) /* ClothingBase */
     , (801335,   8,  100670398) /* Icon */
     , (801335,   9,   83890261) /* EyesTexture */
     , (801335,  10,   83890286) /* NoseTexture */
     , (801335,  11,   83890353) /* MouthTexture */
     , (801335,  15,   67116981) /* HairPalette */
     , (801335,  16,   67110065) /* EyesPalette */
     , (801335,  17,   67109560) /* SkinPalette */
     , (801335,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801335,   1, 1200, 0, 0) /* Strength */
     , (801335,   2, 800, 0, 0) /* Endurance */
     , (801335,   3, 800, 0, 0) /* Quickness */
     , (801335,   4, 800, 0, 0) /* Coordination */
     , (801335,   5, 800, 0, 0) /* Focus */
     , (801335,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801335,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (801335,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (801335,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801335,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (801335,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (801335, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (801335, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (801335, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (801335, 31, 0, 3, 0, 110, 0, 0) /* CreatureEnchantment Specialized */
     , (801335, 33, 0, 3, 0, 110, 0, 0) /* LifeMagic           Specialized */
     , (801335, 34, 0, 3, 0, 110, 0, 0) /* WarMagic            Specialized */
     , (801335, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (801335, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (801335, 46, 0, 3, 0, 318, 0, 0) /* FinesseWeapons      Specialized */
     , (801335, 47, 0, 3, 0, 322, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801335,  0,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801335,  1,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801335,  2,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801335,  3,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801335,  4,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801335,  5,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801335,  6,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801335,  7,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801335,  8,  4, 500,    1,  230,  230,  198,  209,  175,  230,  179,  198,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801335,  94)
     , (801335, 414);
