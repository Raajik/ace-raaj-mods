DELETE FROM `weenie` WHERE `class_Id` = 802936;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802936, 'FracturedNightmare', 10, '2023-08-27 06:35:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802936,   0,          0) /*  */
     , (802936,   1,         16) /* ItemType - Creature */
     , (802936,   2,         51) /* CreatureType - Empyrean */
     , (802936,   3,         14) /* PaletteTemplate - Red */
     , (802936,   6,         -1) /* ItemsCapacity */
     , (802936,   7,         -1) /* ContainersCapacity */
     , (802936,   8,        120) /* Mass */
     , (802936,  16,          1) /* ItemUseable - No */
     , (802936,  25,        800) /* Level */
     , (802936,  27,          0) /* ArmorType - None */
     , (802936,  67,         64) /* Tolerance - Retaliate */
     , (802936,  68,       0x80) /* TargetingTactic - HasShield */
     , (802936,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802936, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802936, 146,        500) /* XpOverride */
     , (802936, 332,        500) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802936,   1, True ) /* Stuck */
     , (802936,  11, False) /* IgnoreCollisions */
     , (802936,  12, True ) /* ReportCollisions */
     , (802936,  13, False) /* Ethereal */
     , (802936,  14, True ) /* GravityStatus */
     , (802936,  19, True ) /* Attackable */
     , (802936,  29, True ) /* NoCorpse */
     , (802936,  50, False) /* NeverFailCasting */
     , (802936,  65, True ) /* IgnoreMagicResist */
     , (802936,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802936,   1,       2) /* HeartbeatInterval */
     , (802936,   2,       0) /* HeartbeatTimestamp */
     , (802936,   3,       2) /* HealthRate */
     , (802936,   4,       5) /* StaminaRate */
     , (802936,   5,       1) /* ManaRate */
     , (802936,  13,       1) /* ArmorModVsSlash */
     , (802936,  14,       1) /* ArmorModVsPierce */
     , (802936,  15,       1) /* ArmorModVsBludgeon */
     , (802936,  16,     1.3) /* ArmorModVsCold */
     , (802936,  17,       1) /* ArmorModVsFire */
     , (802936,  18,       1) /* ArmorModVsAcid */
     , (802936,  19,     1.3) /* ArmorModVsElectric */
     , (802936,  31,      13) /* VisualAwarenessRange */
     , (802936,  39,     1.8) /* DefaultScale */
     , (802936,  64,    0.01) /* ResistSlash */
     , (802936,  65,    0.01) /* ResistPierce */
     , (802936,  66,    0.01) /* ResistBludgeon */
     , (802936,  67,    0.01) /* ResistFire */
     , (802936,  68,    0.03) /* ResistCold */
     , (802936,  69,    0.01) /* ResistAcid */
     , (802936,  70,    0.03) /* ResistElectric */
     , (802936,  71,       1) /* ResistHealthBoost */
     , (802936,  72,       1) /* ResistStaminaDrain */
     , (802936,  73,       1) /* ResistStaminaBoost */
     , (802936,  74,       1) /* ResistManaDrain */
     , (802936,  75,       1) /* ResistManaBoost */
     , (802936,  76,     0.8) /* Translucency */
     , (802936, 104,      10) /* ObviousRadarRange */
     , (802936, 117,     0.5) /* FocusedProbability */
     , (802936, 125,    0.01) /* ResistHealthDrain */
     , (802936, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802936,   1, 'Fractured Nightmare') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802936,   1, 0x020013F1) /* Setup */
     , (802936,   2, 0x09000001) /* MotionTable */
     , (802936,   3, 0x20000001) /* SoundTable */
     , (802936,   4, 0x30000028) /* CombatTable */
     , (802936,   8, 0x06001BBE) /* Icon */
     , (802936,  22, 0x34000063) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802936,  0,  2,30000, 0.3, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802936, 16,  4,30000, 0.3, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802936, 18,  1,30000, 0.3, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802936, 19,  1,30000, 0.3, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802936, 20,  1,30000, 0.3, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802936, 22, 32,30000, 0.3, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802936,   1, 6500, 0, 0) /* Strength */
     , (802936,   2, 2500, 0, 0) /* Endurance */
     , (802936,   3, 500, 0, 0) /* Quickness */
     , (802936,   4, 500, 0, 0) /* Coordination */
     , (802936,   5, 500, 0, 0) /* Focus */
     , (802936,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802936,   1,1000000, 0, 0,1000000) /* MaxHealth */
     , (802936,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802936,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802936,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802936,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802936, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802936, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802936, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802936, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802936, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802936, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802936, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802936, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802936, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802936, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802936, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802936, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802936, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802936, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802936, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802936, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

