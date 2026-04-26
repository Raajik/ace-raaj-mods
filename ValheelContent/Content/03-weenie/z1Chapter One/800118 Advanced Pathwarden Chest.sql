DELETE FROM `weenie` WHERE `class_Id` = 800118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800118, 'advancedpathwardenchest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800118,   1,        512) /* ItemType - Container */
     , (800118,   5,      14750) /* EncumbranceVal */
     , (800118,   6,        120) /* ItemsCapacity */
     , (800118,   7,         20) /* ContainersCapacity */
     , (800118,  16,         48) /* ItemUseable - ViewedRemote */
     , (800118,  19,       2500) /* Value */
     , (800118,  38,       9999) /* ResistLockpick */
     , (800118,  81,         20) /* MaxGeneratedObjects */
     , (800118,  82,         20) /* InitGeneratedObjects */
     , (800118,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800118, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800118,   1, True ) /* Stuck */
     , (800118,   2, False) /* Open */
     , (800118,   3, True ) /* Locked */
     , (800118,  11, True ) /* IgnoreCollisions */
     , (800118,  12, True ) /* ReportCollisions */
     , (800118,  14, True ) /* GravityStatus */
     , (800118,  19, True ) /* Attackable */
     , (800118,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800118,  11,       1) /* ResetInterval */
     , (800118,  41,       1) /* RegenerationInterval */
     , (800118,  43,       1) /* GeneratorRadius */
     , (800118,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800118,   1, 'Advanced Pathwarden Chest') /* Name */
     , (800118,  12, 'advancedpathwardenchestkey') /* LockCode */
     , (800118,  14, 'This chest contains level 180+ contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800118,   1,   33554556) /* Setup */
     , (800118,   2,  150994948) /* MotionTable */
     , (800118,   3,  536870945) /* SoundTable */
     , (800118,   8,  100667424) /* Icon */
     , (800118,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800118, -1, 800119, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Trinket of Old (800119) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 30254, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Eternal Mana Charge (30254) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800268, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Boots (800268) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800269, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Gauntlets (800269) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800114, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Robe (800114) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800270, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Valheel Greaves (800270) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800271, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Bracers (800271) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800272, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Helm (800272) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800273, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Pauldrons (800273) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800274, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Breastplate (800274) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800275, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Girth (800275) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800276, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Tassets (800276) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800277, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Axe (800277) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800278, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Great Spear (800278) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800279, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Bow (800279) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800280, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Wand (800280) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800281, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Sword (800281) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800282, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Split Claw (800282) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 800330, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Nether Wand (800330) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (800118, -1, 20630, 0, 1, 1, 2, 8, 10, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Trade Note (250,000) (20630) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
