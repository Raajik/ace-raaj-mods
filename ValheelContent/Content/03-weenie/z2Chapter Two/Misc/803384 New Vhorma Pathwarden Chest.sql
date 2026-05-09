DELETE FROM `weenie` WHERE `class_Id` = 803384;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803384, 'NVPathChest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803384,   1,        512) /* ItemType - Container */
     , (803384,   5,      14750) /* EncumbranceVal */
     , (803384,   6,        120) /* ItemsCapacity */
     , (803384,   7,        120) /* ContainersCapacity */
     , (803384,  16,         48) /* ItemUseable - ViewedRemote */
     , (803384,  19,       2500) /* Value */
     , (803384,  38,       9999) /* ResistLockpick */
     , (803384,  81,        120) /* MaxGeneratedObjects */
     , (803384,  82,        120) /* InitGeneratedObjects */
     , (803384,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803384, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803384,   1, True ) /* Stuck */
     , (803384,   2, False) /* Open */
     , (803384,   3, True ) /* Locked */
     , (803384,  11, True ) /* IgnoreCollisions */
     , (803384,  12, True ) /* ReportCollisions */
     , (803384,  14, True ) /* GravityStatus */
     , (803384,  19, True ) /* Attackable */
     , (803384,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803384,  11,       1) /* ResetInterval */
     , (803384,  41,       1) /* RegenerationInterval */
     , (803384,  43,       1) /* GeneratorRadius */
     , (803384,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803384,   1, 'Advanced Pathwarden Chest') /* Name */
     , (803384,  12, 'NVPathChest') /* LockCode */
     , (803384,  14, 'This chest contains level 180+ contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803384,   1,   33554556) /* Setup */
     , (803384,   2,  150994948) /* MotionTable */
     , (803384,   3,  536870945) /* SoundTable */
     , (803384,   8,  100667424) /* Icon */
     , (803384,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803384, -1, 800119, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Trinket of Old (800119) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1,  30254, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Eternal Mana Charge (30254) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 800213, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Hardened Shadow Armor (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 800214, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Hardened Shadow Armor (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 800215, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Hardened Shadow Armor (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 800216, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Hardened Shadow Armor (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 800217, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Hardened Shadow Armor (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 810016, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Bow (800279) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 810017, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Wand (800280) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 810018, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Sword (800281) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 810019, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Sword (800281) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 810021, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Split Claw (800282) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1, 810022, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Split Claw (800282) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803384, -1,  20630, 0, 1, 1, 2, 8, 50, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Trade Note (250,000) (20630) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
