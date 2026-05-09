DELETE FROM `weenie` WHERE `class_Id` = 803568;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803568, 'Magic Absorbing Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803568,   1,        512) /* ItemType - Container */
     , (803568,   5,      14750) /* EncumbranceVal */
     , (803568,   6,        120) /* ItemsCapacity */
     , (803568,   7,         20) /* ContainersCapacity */
     , (803568,  16,         48) /* ItemUseable - ViewedRemote */
     , (803568,  19,       2500) /* Value */
     , (803568,  38,       9999) /* ResistLockpick */
     , (803568,  81,         20) /* MaxGeneratedObjects */
     , (803568,  82,         20) /* InitGeneratedObjects */
     , (803568,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803568, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803568,   1, True ) /* Stuck */
     , (803568,   2, False) /* Open */
     , (803568,   3, False ) /* Locked */
     , (803568,  11, True ) /* IgnoreCollisions */
     , (803568,  12, True ) /* ReportCollisions */
     , (803568,  14, True ) /* GravityStatus */
     , (803568,  19, True ) /* Attackable */
     , (803568,  86, False ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803568,  11,       1) /* ResetInterval */
     , (803568,  41,       1) /* RegenerationInterval */
     , (803568,  43,       1) /* GeneratorRadius */
     , (803568,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803568,   1, 'Magic Absorbing Chest') /* Name */
     , (803568,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803568,   1, 0x0200007C) /* Setup */
     , (803568,   2, 0x09000004) /* MotionTable */
     , (803568,   3, 0x20000021) /* SoundTable */
     , (803568,   8, 0x06001020) /* Icon */
     , (803568,  22, 0x3400002B) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803568, 9,803566,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803568, 9,803567,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803568, 9,803514,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;
