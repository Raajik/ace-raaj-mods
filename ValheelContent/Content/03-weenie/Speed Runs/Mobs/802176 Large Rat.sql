DELETE FROM `weenie` WHERE `class_Id` = 802176;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802176, 'largerat', 10, '2023-03-15 06:46:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802176,   1,         16) /* ItemType - Creature */
     , (802176,   2,         10) /* CreatureType - Rat */
     , (802176,   3,          4) /* PaletteTemplate - Brown */
     , (802176,   6,         -1) /* ItemsCapacity */
     , (802176,   7,         -1) /* ContainersCapacity */
     , (802176,  16,          1) /* ItemUseable - No */
     , (802176,  25,        135) /* Level */
     , (802176,  27,          0) /* ArmorType - None */
     , (802176,  40,          2) /* CombatMode - Melee */
     , (802176,  67,         64) /* Tolerance - Retaliate */
     , (802176,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (802176,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802176, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802176, 146,       1000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802176,   1, True ) /* Stuck */
     , (802176,  11, False) /* IgnoreCollisions */
     , (802176,  12, True ) /* ReportCollisions */
     , (802176,  13, False) /* Ethereal */
     , (802176,  14, True ) /* GravityStatus */
     , (802176,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802176,   1,       5) /* HeartbeatInterval */
     , (802176,   2,       0) /* HeartbeatTimestamp */
     , (802176,   3,   0.067) /* HealthRate */
     , (802176,   4,       5) /* StaminaRate */
     , (802176,   5,       2) /* ManaRate */
     , (802176,  12,     0.5) /* Shade */
     , (802176,  13,       1) /* ArmorModVsSlash */
     , (802176,  14,     0.5) /* ArmorModVsPierce */
     , (802176,  15,     0.5) /* ArmorModVsBludgeon */
     , (802176,  16,       1) /* ArmorModVsCold */
     , (802176,  17,     0.4) /* ArmorModVsFire */
     , (802176,  18,     0.8) /* ArmorModVsAcid */
     , (802176,  19,     0.8) /* ArmorModVsElectric */
     , (802176,  31,      15) /* VisualAwarenessRange */
     , (802176,  34,       2) /* PowerupTime */
     , (802176,  36,       1) /* ChargeSpeed */
     , (802176,  39,     3.2) /* DefaultScale */
     , (802176,  64,     0.6) /* ResistSlash */
     , (802176,  65,     1.6) /* ResistPierce */
     , (802176,  66,     1.6) /* ResistBludgeon */
     , (802176,  67,     2.1) /* ResistFire */
     , (802176,  68,     0.6) /* ResistCold */
     , (802176,  69,    0.85) /* ResistAcid */
     , (802176,  70,    0.85) /* ResistElectric */
     , (802176,  71,       1) /* ResistHealthBoost */
     , (802176,  72,       1) /* ResistStaminaDrain */
     , (802176,  73,       1) /* ResistStaminaBoost */
     , (802176,  74,       1) /* ResistManaDrain */
     , (802176,  75,       1) /* ResistManaBoost */
     , (802176, 104,      10) /* ObviousRadarRange */
     , (802176, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802176,   1, 'Large Rat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802176,   1,   33554493) /* Setup */
     , (802176,   2,  150994958) /* MotionTable */
     , (802176,   3,  536870927) /* SoundTable */
     , (802176,   4,  805306377) /* CombatTable */
     , (802176,   6,   67109300) /* PaletteBase */
     , (802176,   7,  268435555) /* ClothingBase */
     , (802176,   8,  100667451) /* Icon */
     , (802176,  22,  872415267) /* PhysicsEffectTable */
     , (802176,  35,        459) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802176,   1, 330, 0, 0) /* Strength */
     , (802176,   2, 350, 0, 0) /* Endurance */
     , (802176,   3, 320, 0, 0) /* Quickness */
     , (802176,   4, 300, 0, 0) /* Coordination */
     , (802176,   5,  70, 0, 0) /* Focus */
     , (802176,   6,  60, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802176,   1,  4975, 0, 0, 5000) /* MaxHealth */
     , (802176,   3,  4950, 0, 0, 5000) /* MaxStamina */
     , (802176,   5,     0, 0, 0, 60) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802176,  6, 0, 3, 0,  44, 0, 0) /* MeleeDefense        Specialized */
     , (802176,  7, 0, 3, 0,  45, 0, 0) /* MissileDefense      Specialized */
     , (802176, 15, 0, 3, 0,  18, 0, 0) /* MagicDefense        Specialized */
     , (802176, 22, 0, 3, 0,  40, 0, 0) /* Jump                Specialized */
     , (802176, 24, 0, 3, 0,  40, 0, 0) /* Run                 Specialized */
     , (802176, 45, 0, 3, 0, 290, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802176,  0,  2, 60, 0.75,    8,    4,    4,    4,    4,    4,    4,    4,    0, 1, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0) /* Head */
     , (802176, 16,  4, 60, 0.75,    8,    4,    4,    4,    4,    4,    4,    4,    0, 2, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75) /* Torso */
     , (802176, 17,  4,  0,    0,    8,    4,    4,    4,    4,    4,    4,    4,    0, 3,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25) /* Tail */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802176,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'SRRatKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have killed 1 out of 1 Large Rats!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802176, 9,  3682,  0, 0, 0.15, False) /* Create Brown Rat Tail (3682) for ContainTreasure */
     , (802176, 9,     0,  0, 0, 0.85, False) /* Create nothing for ContainTreasure */;
