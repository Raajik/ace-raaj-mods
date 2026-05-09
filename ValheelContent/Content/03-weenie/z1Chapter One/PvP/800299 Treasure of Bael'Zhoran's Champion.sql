DELETE FROM `weenie` WHERE `class_Id` = 800299;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800299, 'Treasure of Bael''Zhoran''s Champion', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800299,   1,        512) /* ItemType - Container */
     , (800299,   5,      14750) /* EncumbranceVal */
     , (800299,   6,        120) /* ItemsCapacity */
     , (800299,   7,         20) /* ContainersCapacity */
     , (800299,  16,         48) /* ItemUseable - ViewedRemote */
     , (800299,  19,       2500) /* Value */
     , (800299,  38,       500) /* ResistLockpick */
     , (800299,  81,         20) /* MaxGeneratedObjects */
     , (800299,  82,         20) /* InitGeneratedObjects */
     , (800299,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800299, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800299,   1, True ) /* Stuck */
     , (800299,   2, False) /* Open */
     , (800299,   3, True ) /* Locked */
     , (800299,  11, True ) /* IgnoreCollisions */
     , (800299,  12, True ) /* ReportCollisions */
     , (800299,  14, True ) /* GravityStatus */
     , (800299,  19, True ) /* Attackable */
     , (800299,  86, False ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800299,  11,       300) /* ResetInterval */
     , (800299,  41,       300) /* RegenerationInterval */
     , (800299,  43,       1) /* GeneratorRadius */
     , (800299,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800299,   1, 'Treasure of Bael''Zhoran''s Champion') /* Name */
     , (800299,  12, 'kingofkillchest') /* LockCode */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800299,   1, 0x0200007C) /* Setup */
     , (800299,   2, 0x09000004) /* MotionTable */
     , (800299,   3, 0x20000021) /* SoundTable */
     , (800299,   8, 0x06001020) /* Icon */
     , (800299,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800299, -1, 800300, 5, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Bael'Zharon's Champion Medal (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
