DELETE FROM `weenie` WHERE `class_Id` = 802935;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802935, 'FracturedSoul', 10, '2023-08-27 06:35:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802935,   0,          0) /*  */
     , (802935,   1,         16) /* ItemType - Creature */
     , (802935,   2,         51) /* CreatureType - Empyrean */
     , (802935,   3,         14) /* PaletteTemplate - Red */
     , (802935,   6,         -1) /* ItemsCapacity */
     , (802935,   7,         -1) /* ContainersCapacity */
     , (802935,   8,        120) /* Mass */
     , (802935,  16,          1) /* ItemUseable - No */
     , (802935,  25,        710) /* Level */
     , (802935,  27,          0) /* ArmorType - None */
     , (802935,  67,         64) /* Tolerance - Retaliate */
     , (802935,  68,       0x80) /* TargetingTactic - HasShield */
     , (802935,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802935, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802935, 146,        500) /* XpOverride */
     , (802935, 332,        500) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802935,   1, True ) /* Stuck */
     , (802935,  11, False) /* IgnoreCollisions */
     , (802935,  12, True ) /* ReportCollisions */
     , (802935,  13, False) /* Ethereal */
     , (802935,  14, True ) /* GravityStatus */
     , (802935,  19, True ) /* Attackable */
     , (802935,  29, True ) /* NoCorpse */
     , (802935,  50, False) /* NeverFailCasting */
     , (802935,  65, True ) /* IgnoreMagicResist */
     , (802935,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802935,   1,       2) /* HeartbeatInterval */
     , (802935,   2,       0) /* HeartbeatTimestamp */
     , (802935,   3,       2) /* HealthRate */
     , (802935,   4,       5) /* StaminaRate */
     , (802935,   5,       1) /* ManaRate */
     , (802935,  13,       1) /* ArmorModVsSlash */
     , (802935,  14,       1) /* ArmorModVsPierce */
     , (802935,  15,       1) /* ArmorModVsBludgeon */
     , (802935,  16,     1.3) /* ArmorModVsCold */
     , (802935,  17,       1) /* ArmorModVsFire */
     , (802935,  18,       1) /* ArmorModVsAcid */
     , (802935,  19,     1.3) /* ArmorModVsElectric */
     , (802935,  31,      13) /* VisualAwarenessRange */
     , (802935,  39,     1.4) /* DefaultScale */
     , (802935,  64,    0.01) /* ResistSlash */
     , (802935,  65,    0.01) /* ResistPierce */
     , (802935,  66,    0.01) /* ResistBludgeon */
     , (802935,  67,    0.01) /* ResistFire */
     , (802935,  68,    0.03) /* ResistCold */
     , (802935,  69,    0.01) /* ResistAcid */
     , (802935,  70,    0.03) /* ResistElectric */
     , (802935,  71,       1) /* ResistHealthBoost */
     , (802935,  72,       1) /* ResistStaminaDrain */
     , (802935,  73,       1) /* ResistStaminaBoost */
     , (802935,  74,       1) /* ResistManaDrain */
     , (802935,  75,       1) /* ResistManaBoost */
     , (802935,  76,     0.8) /* Translucency */
     , (802935, 104,      10) /* ObviousRadarRange */
     , (802935, 117,     0.5) /* FocusedProbability */
     , (802935, 125,    0.01) /* ResistHealthDrain */
     , (802935, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802935,   1, 'Fractured Soul') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802935,   1, 0x02000001) /* Setup */
     , (802935,   2, 0x09000001) /* MotionTable */
     , (802935,   3, 0x20000001) /* SoundTable */
     , (802935,   4, 0x30000000) /* CombatTable */
     , (802935,   6, 0x0400007E) /* PaletteBase */
     , (802935,   7, 0x100000B0) /* ClothingBase */
     , (802935,   8, 0x06001BBD) /* Icon */
     , (802935,   9, 0x05001151) /* EyesTexture */
     , (802935,  10, 0x05001174) /* NoseTexture */
     , (802935,  11, 0x050011CE) /* MouthTexture */
     , (802935,  15, 0x04001FC8) /* HairPalette */
     , (802935,  16, 0x040004AF) /* EyesPalette */
     , (802935,  17, 0x040002B7) /* SkinPalette */
     , (802935,  22, 0x34000063) /* PhysicsEffectTable */
     , (802935,  31,     802877) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802935,  0,  2,20000, 0.75, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802935, 16,  4,20000, 0.75, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802935, 18,  1,20000,  0.5, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802935, 19,  1,20000, 0.75, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802935, 20,  1,20000, 0.75, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802935, 22, 32,20000,  0.5, 2200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802935,   1, 5000, 0, 0) /* Strength */
     , (802935,   2, 2500, 0, 0) /* Endurance */
     , (802935,   3, 500, 0, 0) /* Quickness */
     , (802935,   4, 500, 0, 0) /* Coordination */
     , (802935,   5, 500, 0, 0) /* Focus */
     , (802935,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802935,   1,860000, 0, 0,860000) /* MaxHealth */
     , (802935,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802935,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802935,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802935,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802935, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802935, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802935, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802935, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802935, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802935, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802935, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802935, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802935, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802935, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802935, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802935, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802935, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802935, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802935, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802935, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

