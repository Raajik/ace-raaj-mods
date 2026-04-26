DELETE FROM `weenie` WHERE `class_Id` = 803257;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803257, 'TestTankPet', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803257,   1,         16) /* ItemType - Creature */
     , (803257,   2,         83) /* CreatureType - Shadow */
     , (803257,   3,         3) /* PaletteTemplate - Red */
     , (803257,   6,         -1) /* ItemsCapacity */
     , (803257,   7,         -1) /* ContainersCapacity */
     , (803257,  16,          1) /* ItemUseable - No */
     , (803257,  25,       2000) /* Level */
     , (803257,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803257, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803257, 140,          1) /* AiOptions - CanOpenDoors */
     , (803257, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803257,    1, True ) /* Stuck */
     , (803257,   11, False) /* IgnoreCollisions */
     , (803257,   12, True ) /* ReportCollisions */
     , (803257,   13, False) /* Ethereal */
     , (803257,  103, True ) /* NonProjectileMagicImmune */
     , (803257, 9039, True ) /* PetIsTank */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803257,   1,       5) /* HeartbeatInterval */
     , (803257,   2,       0) /* HeartbeatTimestamp */
     , (803257,   3,    0.45) /* HealthRate */
     , (803257,   4,     0.5) /* StaminaRate */
     , (803257,   5,       2) /* ManaRate */
     , (803257,  12,     0.5) /* Shade */
     , (803257,  13,       4) /* ArmorModVsSlash */
     , (803257,  14,       4) /* ArmorModVsPierce */
     , (803257,  15,       4) /* ArmorModVsBludgeon */
     , (803257,  16,       4) /* ArmorModVsCold */
     , (803257,  17,       4) /* ArmorModVsFire */
     , (803257,  18,       4) /* ArmorModVsAcid */
     , (803257,  19,       4) /* ArmorModVsElectric */
     , (803257,  31,      18) /* VisualAwarenessRange */
     , (803257,  34,     1.1) /* PowerupTime */
     , (803257,  36,       2) /* ChargeSpeed */
     , (803257,  39,     1.2) /* DefaultScale */
     , (803257,  64,     0.1) /* ResistSlash */
     , (803257,  65,     0.1) /* ResistPierce */
     , (803257,  66,     0.1) /* ResistBludgeon */
     , (803257,  67,     0.1) /* ResistFire */
     , (803257,  68,     0.1) /* ResistCold */
     , (803257,  69,     0.1) /* ResistAcid */
     , (803257,  70,     0.1) /* ResistElectric */
     , (803257,  71,       1) /* ResistHealthBoost */
     , (803257,  72,       1) /* ResistStaminaDrain */
     , (803257,  73,       1) /* ResistStaminaBoost */
     , (803257,  74,       1) /* ResistManaDrain */
     , (803257,  75,       1) /* ResistManaBoost */
     , (803257,  80,       3) /* AiUseMagicDelay */
     , (803257, 104,      10) /* ObviousRadarRange */
     , (803257, 122,       2) /* AiAcquireHealth */
     , (803257, 125,     0.1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803257,   1, 'TestTankPet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803257,   1,   33557855) /* Setup */
     , (803257,   2,  150995087) /* MotionTable */
     , (803257,   3,  536871002) /* SoundTable */
     , (803257,   4,  805306368) /* CombatTable */
     , (803257,   6,   67108990) /* PaletteBase */
     , (803257,   7,  268436431) /* ClothingBase */
     , (803257,   8,  100672514) /* Icon */
     , (803257,  22,  872415349) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803257,   1, 5000, 0, 0) /* Strength */
     , (803257,   2, 5000, 0, 0) /* Endurance */
     , (803257,   3, 5000, 0, 0) /* Quickness */
     , (803257,   4, 5000, 0, 0) /* Coordination */
     , (803257,   5, 5000, 0, 0) /* Focus */
     , (803257,   6, 5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803257,   1, 15000, 0, 0, 15000) /* MaxHealth */
     , (803257,   3, 15000, 0, 0, 15000) /* MaxStamina */
     , (803257,   5, 15000, 0, 0, 15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803257,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803257,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803257, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803257, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803257, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803257, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803257, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803257, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (803257, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (803257, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (803257, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (803257, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803257,  0,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803257,  1,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803257,  2,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803257,  3,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803257,  4,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803257,  5,  4, 5000,  0.4,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803257,  6,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803257,  7,  4,    0,    0,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803257,  8,  4, 5000,  0.4,  15000,  662,  662,  570,  570,  505,  570,  452,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (803257,  94)
     , (803257, 414);
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803257, 2, 803068,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803068,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803070,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803071,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803072,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803073,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803074,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803075,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803076,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803089,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803257, 2, 803182,  0, 93, 2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */;
