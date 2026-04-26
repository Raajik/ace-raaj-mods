DELETE FROM `weenie` WHERE `class_Id` = 802301;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802301, 'Admin Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802301,   1,        512) /* ItemType - Container */
     , (802301,   5,      14750) /* EncumbranceVal */
     , (802301,   6,        120) /* ItemsCapacity */
     , (802301,   7,         20) /* ContainersCapacity */
     , (802301,  16,         48) /* ItemUseable - ViewedRemote */
     , (802301,  19,       2500) /* Value */
     , (802301,  38,       9999) /* ResistLockpick */
     , (802301,  81,         20) /* MaxGeneratedObjects */
     , (802301,  82,         20) /* InitGeneratedObjects */
     , (802301,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802301, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802301,   1, True ) /* Stuck */
     , (802301,   2, False) /* Open */
     , (802301,   3, False ) /* Locked */
     , (802301,  11, True ) /* IgnoreCollisions */
     , (802301,  12, True ) /* ReportCollisions */
     , (802301,  14, True ) /* GravityStatus */
     , (802301,  19, True ) /* Attackable */
     , (802301,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802301,  11,       1) /* ResetInterval */
     , (802301,  41,       1) /* RegenerationInterval */
     , (802301,  43,       1) /* GeneratorRadius */
     , (802301,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802301,   1, 'Admin Chest') /* Name */
     , (802301,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802301,   1, 0x0200007C) /* Setup */
     , (802301,   2, 0x09000004) /* MotionTable */
     , (802301,   3, 0x20000021) /* SoundTable */
     , (802301,   8, 0x06001020) /* Icon */
     , (802301,  22, 0x3400002B) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802301, 9,803329,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;
	 
INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802301, -1,   5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (802301, -1,   5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (802301, -1,   5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */;

     	 
