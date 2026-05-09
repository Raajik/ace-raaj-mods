DELETE FROM `weenie` WHERE `class_Id` = 880017;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880017, 'theProtectorOfTheWasps', 10, '2023-02-25 03:13:51') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880017,   1,         16) /* ItemType - Creature */
     , (880017,   2,         31) /* CreatureType - Human */
     , (880017,   6,         -1) /* ItemsCapacity */
     , (880017,   7,         -1) /* ContainersCapacity */
     , (880017,   8,        120) /* Mass */
     , (880017,  16,          1) /* ItemUseable - No */
     , (880017,  25,        180) /* Level */
     , (880017,  27,          0) /* ArmorType - None */
     , (880017,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (880017,  72,          8) /* FriendType - Tusker */
     , (880017,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (880017, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (880017, 113,          1) /* Gender - Male */
     , (880017, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (880017, 146,     250000) /* XpOverride */
     , (880017, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880017,   1, True ) /* Stuck */
     , (880017,   6, True ) /* AiUsesMana */
     , (880017,  11, False) /* IgnoreCollisions */
     , (880017,  12, True ) /* ReportCollisions */
     , (880017,  13, False) /* Ethereal */
     , (880017,  14, True ) /* GravityStatus */
     , (880017,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880017,   1,       5) /* HeartbeatInterval */
     , (880017,   2,       0) /* HeartbeatTimestamp */
     , (880017,   3,       2) /* HealthRate */
     , (880017,   4,       5) /* StaminaRate */
     , (880017,   5,       1) /* ManaRate */
     , (880017,  13,     1.5) /* ArmorModVsSlash */
     , (880017,  14,       2) /* ArmorModVsPierce */
     , (880017,  15,       1) /* ArmorModVsBludgeon */
     , (880017,  16,     1.4) /* ArmorModVsCold */
     , (880017,  17,       2) /* ArmorModVsFire */
     , (880017,  18,    0.75) /* ArmorModVsAcid */
     , (880017,  19,     1.2) /* ArmorModVsElectric */
     , (880017,  31,      15) /* VisualAwarenessRange */
     , (880017,  39,       3) /* DefaultScale */
     , (880017,  64,    0.75) /* ResistSlash */
     , (880017,  65,    0.75) /* ResistPierce */
     , (880017,  66,    0.75) /* ResistBludgeon */
     , (880017,  67,    0.75) /* ResistFire */
     , (880017,  68,    0.75) /* ResistCold */
     , (880017,  69,       1) /* ResistAcid */
     , (880017,  70,    0.75) /* ResistElectric */
     , (880017,  71,       1) /* ResistHealthBoost */
     , (880017,  72,       1) /* ResistStaminaDrain */
     , (880017,  73,       1) /* ResistStaminaBoost */
     , (880017,  74,       1) /* ResistManaDrain */
     , (880017,  75,       1) /* ResistManaBoost */
     , (880017,  80,       2) /* AiUseMagicDelay */
     , (880017, 104,      10) /* ObviousRadarRange */
     , (880017, 117,     0.5) /* FocusedProbability */
     , (880017, 122,       2) /* AiAcquireHealth */
     , (880017, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880017,   1, 'Protector Of The Wasps') /* Name */
     , (880017,   3, 'Male') /* Sex */
     , (880017,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880017,   1, 0x02000001) /* Setup */
     , (880017,   2, 0x09000001) /* MotionTable */
     , (880017,   3, 0x20000001) /* SoundTable */
     , (880017,   4, 0x30000000) /* CombatTable */
     , (880017,   8, 0x06001036) /* Icon */
     , (880017,   9, 0x05001153) /* EyesTexture */
     , (880017,  10, 0x0500117D) /* NoseTexture */
     , (880017,  11, 0x05001186) /* MouthTexture */
     , (880017,  15, 0x04001FB3) /* HairPalette */
     , (880017,  16, 0x040004AF) /* EyesPalette */
     , (880017,  17, 0x040002B7) /* SkinPalette */
     , (880017,  22, 0x34000004) /* PhysicsEffectTable */
     , (880017,  31,     880019) /* LinkedPortalOne - Dark Isle */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (880017,12, 0xEFA90026, 111.719376, 132.56216, 72.36179, -0.6881, 0, 0, 0.725615) /* PortalSummonLoc */
/* @teleloc 0xEFA90026 [111.719376 132.562164 72.361794] -0.688100 0.000000 0.000000 0.725615 */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (880017,  0,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (880017,  1,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (880017,  2,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (880017,  3,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (880017,  4,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (880017,  5,  4,100, 0.75,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (880017,  6,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (880017,  7,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (880017,  8,  4,100, 0.75,  350,  175,  175,  175,  175,  175,  175,  175,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (880017,   1, 450, 0, 0) /* Strength */
     , (880017,   2, 450, 0, 0) /* Endurance */
     , (880017,   3, 230, 0, 0) /* Quickness */
     , (880017,   4, 200, 0, 0) /* Coordination */
     , (880017,   5, 240, 0, 0) /* Focus */
     , (880017,   6, 240, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (880017,   1,  5000, 0, 0, 5000) /* MaxHealth */
     , (880017,   3,  5000, 0, 0, 5000) /* MaxStamina */
     , (880017,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (880017,  6, 0, 3, 0, 390, 0, 0) /* MeleeDefense        Specialized */
     , (880017,  7, 0, 3, 0, 440, 0, 0) /* MissileDefense      Specialized */
     , (880017, 15, 0, 3, 0, 286, 0, 0) /* MagicDefense        Specialized */
     , (880017, 20, 0, 3, 0,  50, 0, 0) /* Deception           Specialized */
     , (880017, 24, 0, 3, 0, 100, 0, 0) /* Run                 Specialized */
     , (880017, 31, 0, 3, 0, 300, 0, 0) /* CreatureEnchantment Specialized */
     , (880017, 32, 0, 3, 0, 300, 0, 0) /* ItemEnchantment     Specialized */
     , (880017, 33, 0, 3, 0, 300, 0, 0) /* LifeMagic           Specialized */
     , (880017, 34, 0, 3, 0, 300, 0, 0) /* WarMagic            Specialized */
     , (880017, 44, 0, 3, 0, 340, 0, 0) /* HeavyWeapons        Specialized */
     , (880017, 45, 0, 3, 0, 340, 0, 0) /* LightWeapons        Specialized */
     , (880017, 46, 0, 3, 0, 340, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (880017,  2073,   2.08) /* Adja's Intervention */
     , (880017,  2122,   2.06) /* Disintegration */
     , (880017,  2128,   2.06) /* Ilservian's Flame */
     , (880017,  2132,   2.06) /* The Spike */
     , (880017,  2136,   2.06) /* Icy Torment */
     , (880017,  2140,   2.06) /* Alset's Coil */
     , (880017,  2144,   2.06) /* Crushing Shame */
     , (880017,  2146,   2.06) /* Evisceration */
     , (880017,  2717,   2.06) /* Acid Arc VII */
     , (880017,  2724,   2.06) /* Force Arc VII */
     , (880017,  2731,   2.06) /* Frost Arc VII */
     , (880017,  2738,   2.06) /* Lightning Arc VII */
     , (880017,  2745,   2.06) /* Flame Arc VII */
     , (880017,  2752,   2.06) /* Shock Arc VII */
     , (880017,  2759,   2.06) /* Blade Arc VII */
     , (880017,  3185,   2.08) /* Eradicate Creature Magic Self */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880017, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Keeper of the Wasps has fallen.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 99 /* TeleportTarget */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xF4BA0008 /* 0xF4BA0008 [12.111575 180.14896 181.01741] 0.999673 0 0 0.025577 */, 12.111575, 180.14896, 181.01741, 0.999673, 0, 0, 0.025577);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (880017, 2, 87188,  0, 0,    0, False) /* Create Borelean Jumpsuit (87188) for Wield */
     , (880017, 2,  2587,  0,14,    0, False) /* Create Shirt (2587) for Wield */;

