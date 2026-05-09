DELETE FROM `weenie` WHERE `class_Id` = 800642;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800642, 'Rusted Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800642,   1,        512) /* ItemType - Container */
     , (800642,   5,      14750) /* EncumbranceVal */
     , (800642,   6,        120) /* ItemsCapacity */
     , (800642,   7,         20) /* ContainersCapacity */
     , (800642,  16,         48) /* ItemUseable - ViewedRemote */
     , (800642,  19,       2500) /* Value */
     , (800642,  38,       9999) /* ResistLockpick */
     , (800642,  81,         20) /* MaxGeneratedObjects */
     , (800642,  82,         20) /* InitGeneratedObjects */
     , (800642,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800642, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800642,   1, True ) /* Stuck */
     , (800642,   2, False) /* Open */
     , (800642,   3, True) /* Locked */
     , (800642,  11, True ) /* IgnoreCollisions */
     , (800642,  12, True ) /* ReportCollisions */
     , (800642,  14, True ) /* GravityStatus */
     , (800642,  19, True ) /* Attackable */
     , (800642,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800642,  11,       1) /* ResetInterval */
     , (800642,  41,       1) /* RegenerationInterval */
     , (800642,  43,       1) /* GeneratorRadius */
     , (800642,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800642,   1, 'Rusted Chest') /* Name */
     , (800642,  12, 'shemchest') /* LockCode */
     , (800642,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800642,   1,   33554556) /* Setup */
     , (800642,   2,  150994948) /* MotionTable */
     , (800642,   3,  536870945) /* SoundTable */
     , (800642,   8,  100667424) /* Icon */
     , (800642,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800642, -1, 800643, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Invasion Records (800643) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
