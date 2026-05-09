DELETE FROM `weenie` WHERE `class_Id` = 803993;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803993, 'MunchesChest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803993,   1,        512) /* ItemType - Container */
     , (803993,   5,      14750) /* EncumbranceVal */
     , (803993,   6,        120) /* ItemsCapacity */
     , (803993,   7,        120) /* ContainersCapacity */
     , (803993,  16,         48) /* ItemUseable - ViewedRemote */
     , (803993,  19,       2500) /* Value */
     , (803993,  38,       9999) /* ResistLockpick */
     , (803993,  81,        120) /* MaxGeneratedObjects */
     , (803993,  82,        120) /* InitGeneratedObjects */
     , (803993,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803993, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803993,   1, True ) /* Stuck */
     , (803993,   2, False) /* Open */
     , (803993,   3, False) /* Locked */
     , (803993,  11, True ) /* IgnoreCollisions */
     , (803993,  12, True ) /* ReportCollisions */
     , (803993,  14, True ) /* GravityStatus */
     , (803993,  19, True ) /* Attackable */
     , (803993,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803993,  11,       1) /* ResetInterval */
     , (803993,  41,       1) /* RegenerationInterval */
     , (803993,  43,       1) /* GeneratorRadius */
     , (803993,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803993,   1, 'Munch''s Chest') /* Name */
     /*, (803993,  12, 'NVPathChest')  LockCode */
     , (803993,  14, 'This chest contains something nefarious.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803993,   1,   33554556) /* Setup */
     , (803993,   2,  150994948) /* MotionTable */
     , (803993,   3,  536870945) /* SoundTable */
     , (803993,   8,  100667424) /* Icon */
     , (803993,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803993, -1, 803994, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Trinket of Old (800119) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803993, -1, 803996, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Trinket of Old (800119) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
