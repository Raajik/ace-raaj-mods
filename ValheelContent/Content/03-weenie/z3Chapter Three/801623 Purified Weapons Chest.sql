DELETE FROM `weenie` WHERE `class_Id` = 801623;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801623, 'Purified Hollow Weapons Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801623,   1,        512) /* ItemType - Container */
     , (801623,   5,      14750) /* EncumbranceVal */
     , (801623,   6,        120) /* ItemsCapacity */
     , (801623,   7,         20) /* ContainersCapacity */
     , (801623,  16,         48) /* ItemUseable - ViewedRemote */
     , (801623,  19,       2500) /* Value */
     , (801623,  38,       9999) /* ResistLockpick */
     , (801623,  81,         20) /* MaxGeneratedObjects */
     , (801623,  82,         20) /* InitGeneratedObjects */
     , (801623,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (801623, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801623,   1, True ) /* Stuck */
     , (801623,   2, False) /* Open */
     , (801623,   3, False ) /* Locked */
     , (801623,  11, True ) /* IgnoreCollisions */
     , (801623,  12, True ) /* ReportCollisions */
     , (801623,  14, True ) /* GravityStatus */
     , (801623,  19, True ) /* Attackable */
     , (801623,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801623,  11,       1) /* ResetInterval */
     , (801623,  41,       1) /* RegenerationInterval */
     , (801623,  43,       1) /* GeneratorRadius */
     , (801623,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801623,   1, 'Purified Hollow Weapons Chest') /* Name */
     , (801623,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801623,   1, 0x0200007C) /* Setup */
     , (801623,   2, 0x09000004) /* MotionTable */
     , (801623,   3, 0x20000021) /* SoundTable */
     , (801623,   8, 0x06001020) /* Icon */
     , (801623,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801623, -1, 801617, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */
     , (801623, -1, 801618, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */
     , (801623, -1, 801619, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */
     , (801623, -1, 801620, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */
     , (801623, -1, 801621, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */
     , (801623, -1, 801624, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */;
