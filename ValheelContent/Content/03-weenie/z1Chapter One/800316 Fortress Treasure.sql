DELETE FROM `weenie` WHERE `class_Id` = 800316;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800316, 'Fortress Treasure', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800316,   1,        512) /* ItemType - Container */
     , (800316,   5,      14750) /* EncumbranceVal */
     , (800316,   6,        120) /* ItemsCapacity */
     , (800316,   7,         20) /* ContainersCapacity */
     , (800316,  16,         48) /* ItemUseable - ViewedRemote */
     , (800316,  19,       2500) /* Value */
     , (800316,  38,       500) /* ResistLockpick */
     , (800316,  81,         20) /* MaxGeneratedObjects */
     , (800316,  82,         20) /* InitGeneratedObjects */
     , (800316,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800316, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800316,   1, True ) /* Stuck */
     , (800316,   2, False) /* Open */
     , (800316,   3, True ) /* Locked */
     , (800316,  11, True ) /* IgnoreCollisions */
     , (800316,  12, True ) /* ReportCollisions */
     , (800316,  14, True ) /* GravityStatus */
     , (800316,  19, True ) /* Attackable */
     , (800316,  86, False ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800316,  11,       300) /* ResetInterval */
     , (800316,  41,       300) /* RegenerationInterval */
     , (800316,  43,       1) /* GeneratorRadius */
     , (800316,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800316,   1, 'Fortress Treasure') /* Name */
     , (800316,  12, 'fortressdefenderchest') /* LockCode */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800316,   1, 0x0200007C) /* Setup */
     , (800316,   2, 0x09000004) /* MotionTable */
     , (800316,   3, 0x20000021) /* SoundTable */
     , (800316,   8, 0x06001020) /* Icon */
     , (800316,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800316, -1, 800317, 0, 5,   5, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Bael'Zharon's Champion Medal (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
