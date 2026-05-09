-- Lorewalker Zahir POI Hunt Narrator Weenies
-- WCIDs 850001-850015
-- Simple human creature NPCs used by the WorldEvents POI Hunt system.
-- The mod spawns these dynamically and handles all player interaction via code.

-- Clean up any existing entries for this range
DELETE FROM `weenie_properties_create_list` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` BETWEEN 850001 AND 850015);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_string` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_float` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie_properties_int` WHERE `object_Id` BETWEEN 850001 AND 850015;
DELETE FROM `weenie` WHERE `class_Id` BETWEEN 850001 AND 850015;

-- Base weenie entries
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`) VALUES
(850001, 'lorewalkerzahir_narrator_01', 10, NOW()),
(850002, 'lorewalkerzahir_narrator_02', 10, NOW()),
(850003, 'lorewalkerzahir_narrator_03', 10, NOW()),
(850004, 'lorewalkerzahir_narrator_04', 10, NOW()),
(850005, 'lorewalkerzahir_narrator_05', 10, NOW()),
(850006, 'lorewalkerzahir_narrator_06', 10, NOW()),
(850007, 'lorewalkerzahir_narrator_07', 10, NOW()),
(850008, 'lorewalkerzahir_narrator_08', 10, NOW()),
(850009, 'lorewalkerzahir_narrator_09', 10, NOW()),
(850010, 'lorewalkerzahir_narrator_10', 10, NOW()),
(850011, 'lorewalkerzahir_narrator_11', 10, NOW()),
(850012, 'lorewalkerzahir_narrator_12', 10, NOW()),
(850013, 'lorewalkerzahir_narrator_13', 10, NOW()),
(850014, 'lorewalkerzahir_narrator_14', 10, NOW()),
(850015, 'lorewalkerzahir_narrator_15', 10, NOW());

-- Integer properties
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES
(850001,   1,         16) /* ItemType - Creature */       , (850001,   2,         31) /* CreatureType - Human */      , (850001,   6,         -1) /* ItemsCapacity */             , (850001,   7,         -1) /* ContainersCapacity */        , (850001,  16,         32) /* ItemUseable - Remote */      , (850001,  25,        100) /* Level */                     , (850001,  93,    6292504) /* PhysicsState */              , (850001,  95,          8) /* RadarBlipColor - Yellow */   , (850001, 113,          1) /* Gender - Male */             , (850001, 133,          4) /* ShowableOnRadar - ShowAlways */, (850001, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850002,   1,         16) /* ItemType - Creature */       , (850002,   2,         31) /* CreatureType - Human */      , (850002,   6,         -1) /* ItemsCapacity */             , (850002,   7,         -1) /* ContainersCapacity */        , (850002,  16,         32) /* ItemUseable - Remote */      , (850002,  25,        100) /* Level */                     , (850002,  93,    6292504) /* PhysicsState */              , (850002,  95,          8) /* RadarBlipColor - Yellow */   , (850002, 113,          1) /* Gender - Male */             , (850002, 133,          4) /* ShowableOnRadar - ShowAlways */, (850002, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850003,   1,         16) /* ItemType - Creature */       , (850003,   2,         31) /* CreatureType - Human */      , (850003,   6,         -1) /* ItemsCapacity */             , (850003,   7,         -1) /* ContainersCapacity */        , (850003,  16,         32) /* ItemUseable - Remote */      , (850003,  25,        100) /* Level */                     , (850003,  93,    6292504) /* PhysicsState */              , (850003,  95,          8) /* RadarBlipColor - Yellow */   , (850003, 113,          1) /* Gender - Male */             , (850003, 133,          4) /* ShowableOnRadar - ShowAlways */, (850003, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850004,   1,         16) /* ItemType - Creature */       , (850004,   2,         31) /* CreatureType - Human */      , (850004,   6,         -1) /* ItemsCapacity */             , (850004,   7,         -1) /* ContainersCapacity */        , (850004,  16,         32) /* ItemUseable - Remote */      , (850004,  25,        100) /* Level */                     , (850004,  93,    6292504) /* PhysicsState */              , (850004,  95,          8) /* RadarBlipColor - Yellow */   , (850004, 113,          1) /* Gender - Male */             , (850004, 133,          4) /* ShowableOnRadar - ShowAlways */, (850004, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850005,   1,         16) /* ItemType - Creature */       , (850005,   2,         31) /* CreatureType - Human */      , (850005,   6,         -1) /* ItemsCapacity */             , (850005,   7,         -1) /* ContainersCapacity */        , (850005,  16,         32) /* ItemUseable - Remote */      , (850005,  25,        100) /* Level */                     , (850005,  93,    6292504) /* PhysicsState */              , (850005,  95,          8) /* RadarBlipColor - Yellow */   , (850005, 113,          1) /* Gender - Male */             , (850005, 133,          4) /* ShowableOnRadar - ShowAlways */, (850005, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850006,   1,         16) /* ItemType - Creature */       , (850006,   2,         31) /* CreatureType - Human */      , (850006,   6,         -1) /* ItemsCapacity */             , (850006,   7,         -1) /* ContainersCapacity */        , (850006,  16,         32) /* ItemUseable - Remote */      , (850006,  25,        100) /* Level */                     , (850006,  93,    6292504) /* PhysicsState */              , (850006,  95,          8) /* RadarBlipColor - Yellow */   , (850006, 113,          1) /* Gender - Male */             , (850006, 133,          4) /* ShowableOnRadar - ShowAlways */, (850006, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850007,   1,         16) /* ItemType - Creature */       , (850007,   2,         31) /* CreatureType - Human */      , (850007,   6,         -1) /* ItemsCapacity */             , (850007,   7,         -1) /* ContainersCapacity */        , (850007,  16,         32) /* ItemUseable - Remote */      , (850007,  25,        100) /* Level */                     , (850007,  93,    6292504) /* PhysicsState */              , (850007,  95,          8) /* RadarBlipColor - Yellow */   , (850007, 113,          1) /* Gender - Male */             , (850007, 133,          4) /* ShowableOnRadar - ShowAlways */, (850007, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850008,   1,         16) /* ItemType - Creature */       , (850008,   2,         31) /* CreatureType - Human */      , (850008,   6,         -1) /* ItemsCapacity */             , (850008,   7,         -1) /* ContainersCapacity */        , (850008,  16,         32) /* ItemUseable - Remote */      , (850008,  25,        100) /* Level */                     , (850008,  93,    6292504) /* PhysicsState */              , (850008,  95,          8) /* RadarBlipColor - Yellow */   , (850008, 113,          1) /* Gender - Male */             , (850008, 133,          4) /* ShowableOnRadar - ShowAlways */, (850008, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850009,   1,         16) /* ItemType - Creature */       , (850009,   2,         31) /* CreatureType - Human */      , (850009,   6,         -1) /* ItemsCapacity */             , (850009,   7,         -1) /* ContainersCapacity */        , (850009,  16,         32) /* ItemUseable - Remote */      , (850009,  25,        100) /* Level */                     , (850009,  93,    6292504) /* PhysicsState */              , (850009,  95,          8) /* RadarBlipColor - Yellow */   , (850009, 113,          1) /* Gender - Male */             , (850009, 133,          4) /* ShowableOnRadar - ShowAlways */, (850009, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850010,   1,         16) /* ItemType - Creature */       , (850010,   2,         31) /* CreatureType - Human */      , (850010,   6,         -1) /* ItemsCapacity */             , (850010,   7,         -1) /* ContainersCapacity */        , (850010,  16,         32) /* ItemUseable - Remote */      , (850010,  25,        100) /* Level */                     , (850010,  93,    6292504) /* PhysicsState */              , (850010,  95,          8) /* RadarBlipColor - Yellow */   , (850010, 113,          1) /* Gender - Male */             , (850010, 133,          4) /* ShowableOnRadar - ShowAlways */, (850010, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850011,   1,         16) /* ItemType - Creature */       , (850011,   2,         31) /* CreatureType - Human */      , (850011,   6,         -1) /* ItemsCapacity */             , (850011,   7,         -1) /* ContainersCapacity */        , (850011,  16,         32) /* ItemUseable - Remote */      , (850011,  25,        100) /* Level */                     , (850011,  93,    6292504) /* PhysicsState */              , (850011,  95,          8) /* RadarBlipColor - Yellow */   , (850011, 113,          1) /* Gender - Male */             , (850011, 133,          4) /* ShowableOnRadar - ShowAlways */, (850011, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850012,   1,         16) /* ItemType - Creature */       , (850012,   2,         31) /* CreatureType - Human */      , (850012,   6,         -1) /* ItemsCapacity */             , (850012,   7,         -1) /* ContainersCapacity */        , (850012,  16,         32) /* ItemUseable - Remote */      , (850012,  25,        100) /* Level */                     , (850012,  93,    6292504) /* PhysicsState */              , (850012,  95,          8) /* RadarBlipColor - Yellow */   , (850012, 113,          1) /* Gender - Male */             , (850012, 133,          4) /* ShowableOnRadar - ShowAlways */, (850012, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850013,   1,         16) /* ItemType - Creature */       , (850013,   2,         31) /* CreatureType - Human */      , (850013,   6,         -1) /* ItemsCapacity */             , (850013,   7,         -1) /* ContainersCapacity */        , (850013,  16,         32) /* ItemUseable - Remote */      , (850013,  25,        100) /* Level */                     , (850013,  93,    6292504) /* PhysicsState */              , (850013,  95,          8) /* RadarBlipColor - Yellow */   , (850013, 113,          1) /* Gender - Male */             , (850013, 133,          4) /* ShowableOnRadar - ShowAlways */, (850013, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850014,   1,         16) /* ItemType - Creature */       , (850014,   2,         31) /* CreatureType - Human */      , (850014,   6,         -1) /* ItemsCapacity */             , (850014,   7,         -1) /* ContainersCapacity */        , (850014,  16,         32) /* ItemUseable - Remote */      , (850014,  25,        100) /* Level */                     , (850014,  93,    6292504) /* PhysicsState */              , (850014,  95,          8) /* RadarBlipColor - Yellow */   , (850014, 113,          1) /* Gender - Male */             , (850014, 133,          4) /* ShowableOnRadar - ShowAlways */, (850014, 134,         16) /* PlayerKillerStatus - RubberGlue */,
(850015,   1,         16) /* ItemType - Creature */       , (850015,   2,         31) /* CreatureType - Human */      , (850015,   6,         -1) /* ItemsCapacity */             , (850015,   7,         -1) /* ContainersCapacity */        , (850015,  16,         32) /* ItemUseable - Remote */      , (850015,  25,        100) /* Level */                     , (850015,  93,    6292504) /* PhysicsState */              , (850015,  95,          8) /* RadarBlipColor - Yellow */   , (850015, 113,          1) /* Gender - Male */             , (850015, 133,          4) /* ShowableOnRadar - ShowAlways */, (850015, 134,         16) /* PlayerKillerStatus - RubberGlue */;

-- Boolean properties
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`) VALUES
(850001,   1, True ) /* Stuck */       , (850001,  19, False) /* Attackable */,
(850002,   1, True ) /* Stuck */       , (850002,  19, False) /* Attackable */,
(850003,   1, True ) /* Stuck */       , (850003,  19, False) /* Attackable */,
(850004,   1, True ) /* Stuck */       , (850004,  19, False) /* Attackable */,
(850005,   1, True ) /* Stuck */       , (850005,  19, False) /* Attackable */,
(850006,   1, True ) /* Stuck */       , (850006,  19, False) /* Attackable */,
(850007,   1, True ) /* Stuck */       , (850007,  19, False) /* Attackable */,
(850008,   1, True ) /* Stuck */       , (850008,  19, False) /* Attackable */,
(850009,   1, True ) /* Stuck */       , (850009,  19, False) /* Attackable */,
(850010,   1, True ) /* Stuck */       , (850010,  19, False) /* Attackable */,
(850011,   1, True ) /* Stuck */       , (850011,  19, False) /* Attackable */,
(850012,   1, True ) /* Stuck */       , (850012,  19, False) /* Attackable */,
(850013,   1, True ) /* Stuck */       , (850013,  19, False) /* Attackable */,
(850014,   1, True ) /* Stuck */       , (850014,  19, False) /* Attackable */,
(850015,   1, True ) /* Stuck */       , (850015,  19, False) /* Attackable */;

-- Float properties
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`) VALUES
(850001,  54,       3) /* UseRadius */,
(850002,  54,       3) /* UseRadius */,
(850003,  54,       3) /* UseRadius */,
(850004,  54,       3) /* UseRadius */,
(850005,  54,       3) /* UseRadius */,
(850006,  54,       3) /* UseRadius */,
(850007,  54,       3) /* UseRadius */,
(850008,  54,       3) /* UseRadius */,
(850009,  54,       3) /* UseRadius */,
(850010,  54,       3) /* UseRadius */,
(850011,  54,       3) /* UseRadius */,
(850012,  54,       3) /* UseRadius */,
(850013,  54,       3) /* UseRadius */,
(850014,  54,       3) /* UseRadius */,
(850015,  54,       3) /* UseRadius */;

-- String properties
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`) VALUES
(850001,   1, 'Lorewalker Zahir') /* Name */,
(850002,   1, 'Lorewalker Zahir') /* Name */,
(850003,   1, 'Lorewalker Zahir') /* Name */,
(850004,   1, 'Lorewalker Zahir') /* Name */,
(850005,   1, 'Lorewalker Zahir') /* Name */,
(850006,   1, 'Lorewalker Zahir') /* Name */,
(850007,   1, 'Lorewalker Zahir') /* Name */,
(850008,   1, 'Lorewalker Zahir') /* Name */,
(850009,   1, 'Lorewalker Zahir') /* Name */,
(850010,   1, 'Lorewalker Zahir') /* Name */,
(850011,   1, 'Lorewalker Zahir') /* Name */,
(850012,   1, 'Lorewalker Zahir') /* Name */,
(850013,   1, 'Lorewalker Zahir') /* Name */,
(850014,   1, 'Lorewalker Zahir') /* Name */,
(850015,   1, 'Lorewalker Zahir') /* Name */;

-- DID properties
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`) VALUES
(850001,   1, 0x02000001) /* Setup */       , (850001,   2, 0x09000001) /* MotionTable */  , (850001,   3, 0x20000001) /* SoundTable */   , (850001,   6, 0x0400007E) /* PaletteBase */  , (850001,   8, 0x06001036) /* Icon */         ,
(850002,   1, 0x02000001) /* Setup */       , (850002,   2, 0x09000001) /* MotionTable */  , (850002,   3, 0x20000001) /* SoundTable */   , (850002,   6, 0x0400007E) /* PaletteBase */  , (850002,   8, 0x06001036) /* Icon */         ,
(850003,   1, 0x02000001) /* Setup */       , (850003,   2, 0x09000001) /* MotionTable */  , (850003,   3, 0x20000001) /* SoundTable */   , (850003,   6, 0x0400007E) /* PaletteBase */  , (850003,   8, 0x06001036) /* Icon */         ,
(850004,   1, 0x02000001) /* Setup */       , (850004,   2, 0x09000001) /* MotionTable */  , (850004,   3, 0x20000001) /* SoundTable */   , (850004,   6, 0x0400007E) /* PaletteBase */  , (850004,   8, 0x06001036) /* Icon */         ,
(850005,   1, 0x02000001) /* Setup */       , (850005,   2, 0x09000001) /* MotionTable */  , (850005,   3, 0x20000001) /* SoundTable */   , (850005,   6, 0x0400007E) /* PaletteBase */  , (850005,   8, 0x06001036) /* Icon */         ,
(850006,   1, 0x02000001) /* Setup */       , (850006,   2, 0x09000001) /* MotionTable */  , (850006,   3, 0x20000001) /* SoundTable */   , (850006,   6, 0x0400007E) /* PaletteBase */  , (850006,   8, 0x06001036) /* Icon */         ,
(850007,   1, 0x02000001) /* Setup */       , (850007,   2, 0x09000001) /* MotionTable */  , (850007,   3, 0x20000001) /* SoundTable */   , (850007,   6, 0x0400007E) /* PaletteBase */  , (850007,   8, 0x06001036) /* Icon */         ,
(850008,   1, 0x02000001) /* Setup */       , (850008,   2, 0x09000001) /* MotionTable */  , (850008,   3, 0x20000001) /* SoundTable */   , (850008,   6, 0x0400007E) /* PaletteBase */  , (850008,   8, 0x06001036) /* Icon */         ,
(850009,   1, 0x02000001) /* Setup */       , (850009,   2, 0x09000001) /* MotionTable */  , (850009,   3, 0x20000001) /* SoundTable */   , (850009,   6, 0x0400007E) /* PaletteBase */  , (850009,   8, 0x06001036) /* Icon */         ,
(850010,   1, 0x02000001) /* Setup */       , (850010,   2, 0x09000001) /* MotionTable */  , (850010,   3, 0x20000001) /* SoundTable */   , (850010,   6, 0x0400007E) /* PaletteBase */  , (850010,   8, 0x06001036) /* Icon */         ,
(850011,   1, 0x02000001) /* Setup */       , (850011,   2, 0x09000001) /* MotionTable */  , (850011,   3, 0x20000001) /* SoundTable */   , (850011,   6, 0x0400007E) /* PaletteBase */  , (850011,   8, 0x06001036) /* Icon */         ,
(850012,   1, 0x02000001) /* Setup */       , (850012,   2, 0x09000001) /* MotionTable */  , (850012,   3, 0x20000001) /* SoundTable */   , (850012,   6, 0x0400007E) /* PaletteBase */  , (850012,   8, 0x06001036) /* Icon */         ,
(850013,   1, 0x02000001) /* Setup */       , (850013,   2, 0x09000001) /* MotionTable */  , (850013,   3, 0x20000001) /* SoundTable */   , (850013,   6, 0x0400007E) /* PaletteBase */  , (850013,   8, 0x06001036) /* Icon */         ,
(850014,   1, 0x02000001) /* Setup */       , (850014,   2, 0x09000001) /* MotionTable */  , (850014,   3, 0x20000001) /* SoundTable */   , (850014,   6, 0x0400007E) /* PaletteBase */  , (850014,   8, 0x06001036) /* Icon */         ,
(850015,   1, 0x02000001) /* Setup */       , (850015,   2, 0x09000001) /* MotionTable */  , (850015,   3, 0x20000001) /* SoundTable */   , (850015,   6, 0x0400007E) /* PaletteBase */  , (850015,   8, 0x06001036) /* Icon */         ;

-- Attribute properties
INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`) VALUES
(850001,   1, 200, 0, 0) /* Strength */      , (850001,   2, 200, 0, 0) /* Endurance */     , (850001,   3, 200, 0, 0) /* Quickness */     , (850001,   4, 200, 0, 0) /* Coordination */  , (850001,   5, 200, 0, 0) /* Focus */         , (850001,   6, 200, 0, 0) /* Self */          ,
(850002,   1, 200, 0, 0) /* Strength */      , (850002,   2, 200, 0, 0) /* Endurance */     , (850002,   3, 200, 0, 0) /* Quickness */     , (850002,   4, 200, 0, 0) /* Coordination */  , (850002,   5, 200, 0, 0) /* Focus */         , (850002,   6, 200, 0, 0) /* Self */          ,
(850003,   1, 200, 0, 0) /* Strength */      , (850003,   2, 200, 0, 0) /* Endurance */     , (850003,   3, 200, 0, 0) /* Quickness */     , (850003,   4, 200, 0, 0) /* Coordination */  , (850003,   5, 200, 0, 0) /* Focus */         , (850003,   6, 200, 0, 0) /* Self */          ,
(850004,   1, 200, 0, 0) /* Strength */      , (850004,   2, 200, 0, 0) /* Endurance */     , (850004,   3, 200, 0, 0) /* Quickness */     , (850004,   4, 200, 0, 0) /* Coordination */  , (850004,   5, 200, 0, 0) /* Focus */         , (850004,   6, 200, 0, 0) /* Self */          ,
(850005,   1, 200, 0, 0) /* Strength */      , (850005,   2, 200, 0, 0) /* Endurance */     , (850005,   3, 200, 0, 0) /* Quickness */     , (850005,   4, 200, 0, 0) /* Coordination */  , (850005,   5, 200, 0, 0) /* Focus */         , (850005,   6, 200, 0, 0) /* Self */          ,
(850006,   1, 200, 0, 0) /* Strength */      , (850006,   2, 200, 0, 0) /* Endurance */     , (850006,   3, 200, 0, 0) /* Quickness */     , (850006,   4, 200, 0, 0) /* Coordination */  , (850006,   5, 200, 0, 0) /* Focus */         , (850006,   6, 200, 0, 0) /* Self */          ,
(850007,   1, 200, 0, 0) /* Strength */      , (850007,   2, 200, 0, 0) /* Endurance */     , (850007,   3, 200, 0, 0) /* Quickness */     , (850007,   4, 200, 0, 0) /* Coordination */  , (850007,   5, 200, 0, 0) /* Focus */         , (850007,   6, 200, 0, 0) /* Self */          ,
(850008,   1, 200, 0, 0) /* Strength */      , (850008,   2, 200, 0, 0) /* Endurance */     , (850008,   3, 200, 0, 0) /* Quickness */     , (850008,   4, 200, 0, 0) /* Coordination */  , (850008,   5, 200, 0, 0) /* Focus */         , (850008,   6, 200, 0, 0) /* Self */          ,
(850009,   1, 200, 0, 0) /* Strength */      , (850009,   2, 200, 0, 0) /* Endurance */     , (850009,   3, 200, 0, 0) /* Quickness */     , (850009,   4, 200, 0, 0) /* Coordination */  , (850009,   5, 200, 0, 0) /* Focus */         , (850009,   6, 200, 0, 0) /* Self */          ,
(850010,   1, 200, 0, 0) /* Strength */      , (850010,   2, 200, 0, 0) /* Endurance */     , (850010,   3, 200, 0, 0) /* Quickness */     , (850010,   4, 200, 0, 0) /* Coordination */  , (850010,   5, 200, 0, 0) /* Focus */         , (850010,   6, 200, 0, 0) /* Self */          ,
(850011,   1, 200, 0, 0) /* Strength */      , (850011,   2, 200, 0, 0) /* Endurance */     , (850011,   3, 200, 0, 0) /* Quickness */     , (850011,   4, 200, 0, 0) /* Coordination */  , (850011,   5, 200, 0, 0) /* Focus */         , (850011,   6, 200, 0, 0) /* Self */          ,
(850012,   1, 200, 0, 0) /* Strength */      , (850012,   2, 200, 0, 0) /* Endurance */     , (850012,   3, 200, 0, 0) /* Quickness */     , (850012,   4, 200, 0, 0) /* Coordination */  , (850012,   5, 200, 0, 0) /* Focus */         , (850012,   6, 200, 0, 0) /* Self */          ,
(850013,   1, 200, 0, 0) /* Strength */      , (850013,   2, 200, 0, 0) /* Endurance */     , (850013,   3, 200, 0, 0) /* Quickness */     , (850013,   4, 200, 0, 0) /* Coordination */  , (850013,   5, 200, 0, 0) /* Focus */         , (850013,   6, 200, 0, 0) /* Self */          ,
(850014,   1, 200, 0, 0) /* Strength */      , (850014,   2, 200, 0, 0) /* Endurance */     , (850014,   3, 200, 0, 0) /* Quickness */     , (850014,   4, 200, 0, 0) /* Coordination */  , (850014,   5, 200, 0, 0) /* Focus */         , (850014,   6, 200, 0, 0) /* Self */          ,
(850015,   1, 200, 0, 0) /* Strength */      , (850015,   2, 200, 0, 0) /* Endurance */     , (850015,   3, 200, 0, 0) /* Quickness */     , (850015,   4, 200, 0, 0) /* Coordination */  , (850015,   5, 200, 0, 0) /* Focus */         , (850015,   6, 200, 0, 0) /* Self */          ;

-- Secondary attribute (vitals) properties
INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`) VALUES
(850001,   1,     0, 0, 0,  100) /* MaxHealth */     , (850001,   3,     0, 0, 0,  100) /* MaxStamina */    , (850001,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850002,   1,     0, 0, 0,  100) /* MaxHealth */     , (850002,   3,     0, 0, 0,  100) /* MaxStamina */    , (850002,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850003,   1,     0, 0, 0,  100) /* MaxHealth */     , (850003,   3,     0, 0, 0,  100) /* MaxStamina */    , (850003,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850004,   1,     0, 0, 0,  100) /* MaxHealth */     , (850004,   3,     0, 0, 0,  100) /* MaxStamina */    , (850004,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850005,   1,     0, 0, 0,  100) /* MaxHealth */     , (850005,   3,     0, 0, 0,  100) /* MaxStamina */    , (850005,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850006,   1,     0, 0, 0,  100) /* MaxHealth */     , (850006,   3,     0, 0, 0,  100) /* MaxStamina */    , (850006,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850007,   1,     0, 0, 0,  100) /* MaxHealth */     , (850007,   3,     0, 0, 0,  100) /* MaxStamina */    , (850007,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850008,   1,     0, 0, 0,  100) /* MaxHealth */     , (850008,   3,     0, 0, 0,  100) /* MaxStamina */    , (850008,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850009,   1,     0, 0, 0,  100) /* MaxHealth */     , (850009,   3,     0, 0, 0,  100) /* MaxStamina */    , (850009,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850010,   1,     0, 0, 0,  100) /* MaxHealth */     , (850010,   3,     0, 0, 0,  100) /* MaxStamina */    , (850010,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850011,   1,     0, 0, 0,  100) /* MaxHealth */     , (850011,   3,     0, 0, 0,  100) /* MaxStamina */    , (850011,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850012,   1,     0, 0, 0,  100) /* MaxHealth */     , (850012,   3,     0, 0, 0,  100) /* MaxStamina */    , (850012,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850013,   1,     0, 0, 0,  100) /* MaxHealth */     , (850013,   3,     0, 0, 0,  100) /* MaxStamina */    , (850013,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850014,   1,     0, 0, 0,  100) /* MaxHealth */     , (850014,   3,     0, 0, 0,  100) /* MaxStamina */    , (850014,   5,     0, 0, 0,  100) /* MaxMana */       ,
(850015,   1,     0, 0, 0,  100) /* MaxHealth */     , (850015,   3,     0, 0, 0,  100) /* MaxStamina */    , (850015,   5,     0, 0, 0,  100) /* MaxMana */       ;
