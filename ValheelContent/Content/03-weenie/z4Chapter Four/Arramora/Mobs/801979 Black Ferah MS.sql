DELETE FROM `weenie` WHERE `class_Id` = 801979;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801979, 'MSashadowofblackferah', 10, '2023-01-30 09:31:24') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801979,   1,         16) /* ItemType - Creature */
     , (801979,   2,         22) /* CreatureType - Shadow */
     , (801979,   3,         39) /* PaletteTemplate - Black */
     , (801979,   6,         -1) /* ItemsCapacity */
     , (801979,   7,         -1) /* ContainersCapacity */
     , (801979,  16,          1) /* ItemUseable - No */
     , (801979,  25,        650) /* Level */
     , (801979,  27,          0) /* ArmorType - None */
     , (801979,  68,          3) /* TargetingTactic - Random, Focused */
     , (801979,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801979, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (801979, 113,          2) /* Gender - Female */
     , (801979, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801979, 140,          1) /* AiOptions - CanOpenDoors */
     , (801979, 146,     700000) /* XpOverride */
     , (801979, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801979,   1, True ) /* Stuck */
     , (801979,   6, True ) /* AiUsesMana */
     , (801979,  11, False) /* IgnoreCollisions */
     , (801979,  12, True ) /* ReportCollisions */
     , (801979,  13, False) /* Ethereal */
     , (801979,  14, True ) /* GravityStatus */
     , (801979,  19, True ) /* Attackable */
     , (801979,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801979,   1,       5) /* HeartbeatInterval */
     , (801979,   2,       0) /* HeartbeatTimestamp */
     , (801979,   3,     0.4) /* HealthRate */
     , (801979,   4,       5) /* StaminaRate */
     , (801979,   5,       1) /* ManaRate */
     , (801979,  13,       1) /* ArmorModVsSlash */
     , (801979,  14,     1.8) /* ArmorModVsPierce */
     , (801979,  15,     1.8) /* ArmorModVsBludgeon */
     , (801979,  16,       1) /* ArmorModVsCold */
     , (801979,  17,       1) /* ArmorModVsFire */
     , (801979,  18,       1) /* ArmorModVsAcid */
     , (801979,  19,       1) /* ArmorModVsElectric */
     , (801979,  31,      30) /* VisualAwarenessRange */
     , (801979,  34,       1) /* PowerupTime */
     , (801979,  36,       1) /* ChargeSpeed */
     , (801979,  39,       1) /* DefaultScale */
     , (801979,  64,     0.01) /* ResistSlash */
     , (801979,  65,     0.10) /* ResistPierce */
     , (801979,  66,     0.10) /* ResistBludgeon */
     , (801979,  67,     0.01) /* ResistFire */
     , (801979,  68,     0.01) /* ResistCold */
     , (801979,  69,     0.01) /* ResistAcid */
     , (801979,  70,     0.01) /* ResistElectric */
     , (801979,  71,       1) /* ResistHealthBoost */
     , (801979,  72,       1) /* ResistStaminaDrain */
     , (801979,  73,       1) /* ResistStaminaBoost */
     , (801979,  74,       1) /* ResistManaDrain */
     , (801979,  75,       1) /* ResistManaBoost */
     , (801979,  80,       3) /* AiUseMagicDelay */
     , (801979, 104,      10) /* ObviousRadarRange */
     , (801979, 117,     0.5) /* FocusedProbability */
     , (801979, 122,       2) /* AiAcquireHealth */
     , (801979, 125,       1) /* ResistHealthDrain */
     , (801979, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801979,   1, 'A Shadow of Black Ferah') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801979,   1, 0x0200071B) /* Setup */
     , (801979,   2, 0x09000093) /* MotionTable */
     , (801979,   3, 0x20000002) /* SoundTable */
     , (801979,   4, 0x30000028) /* CombatTable */
     , (801979,   6, 0x0400007E) /* PaletteBase */
     , (801979,   7, 0x1000019F) /* ClothingBase */
     , (801979,   8, 0x06001BBE) /* Icon */
     , (801979,  22, 0x34000063) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801979,  0,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801979,  1,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801979,  2,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801979,  3,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801979,  4,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801979,  5,  4,1000, 0.75, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801979,  6,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801979,  7,  4,  0,    0, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801979,  8,  4,1000, 0.75, 450, 1715, 1715, 1715, 1715, 1715, 1715, 1715,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801979,   1,8455, 0, 0) /* Strength */
     , (801979,   2,2410, 0, 0) /* Endurance */
     , (801979,   3, 360, 0, 0) /* Quickness */
     , (801979,   4, 395, 0, 0) /* Coordination */
     , (801979,   5,2280, 0, 0) /* Focus */
     , (801979,   6,2280, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801979,   1, 150000, 0, 0,150000) /* MaxHealth */
     , (801979,   3,  9590, 0, 0,10000) /* MaxStamina */
     , (801979,   5,  9720, 0, 0,10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801979,  6, 0, 3, 0, 352, 0, 0) /* MeleeDefense        Specialized */
     , (801979,  7, 0, 3, 0, 251, 0, 0) /* MissileDefense      Specialized */
     , (801979, 14, 0, 3, 0, 250, 0, 0) /* ArcaneLore          Specialized */
     , (801979, 15, 0, 3, 0, 188, 0, 0) /* MagicDefense        Specialized */
     , (801979, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (801979, 31, 0, 3, 0, 240, 0, 0) /* CreatureEnchantment Specialized */
     , (801979, 33, 0, 3, 0,3240, 0, 0) /* LifeMagic           Specialized */
     , (801979, 34, 0, 3, 0,3240, 0, 0) /* WarMagic            Specialized */
     , (801979, 44, 0, 3, 0,3383, 0, 0) /* HeavyWeapons        Specialized */
     , (801979, 45, 0, 3, 0,3383, 0, 0) /* LightWeapons        Specialized */
     , (801979, 46, 0, 3, 0,3383, 0, 0) /* FinesseWeapons      Specialized */
     , (801979, 47, 0, 3, 0,3333, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801979,    69,  2.032) /* Shock Wave VI */
     , (801979,    74,  2.032) /* Frost Bolt VI */
     , (801979,    80,  2.032) /* Lightning Bolt VI */
     , (801979,    85,  2.032) /* Flame Bolt VI */
     , (801979,    97,  2.032) /* Whirling Blade VI */
     , (801979,   234,  2.023) /* Vulnerability Other VI */
     , (801979,   276,  2.006) /* Magic Resistance Self III */
     , (801979,   285,  2.023) /* Magic Yield Other VI */
     , (801979,  1053,  2.023) /* Bludgeoning Vulnerability Other VI */
     , (801979,  1065,  2.023) /* Cold Vulnerability Other VI */
     , (801979,  1089,  2.023) /* Lightning Vulnerability Other VI */
     , (801979,  1108,  2.023) /* Fire Vulnerability Other VI */
     , (801979,  1242,  2.011) /* Drain Health Other VI */
     , (801979,  1311,  2.006) /* Armor Self V */
     , (801979,  2070,  2.023) /* Heart Rend */
     , (801979,  2073,   2.02) /* Adja's Intervention */
     , (801979,  2125,  2.003) /* Flensing Wings */
     , (801979,  2126,  2.003) /* Thousand Fists */
     , (801979,  2130,  2.003) /* Infernae */
     , (801979,  2138,  2.003) /* Blizzard */
     , (801979,  2142,  2.003) /* Tempest */
     , (801979,  2328,  2.023) /* Vitality Siphon */
     , (801979,  3941,  2.032) /* Heavy Lightning Ring */
     , (801979,  3946,  2.023) /* Acid Wave */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801979, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1000 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801979, 2, 801989,  0, 86, 0, False) /* Create  (801874) for Wield */;