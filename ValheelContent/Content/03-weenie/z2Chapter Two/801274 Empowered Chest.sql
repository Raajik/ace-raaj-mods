DELETE FROM `weenie` WHERE `class_Id` = 801274;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801274, 'Empowered Chest', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801274,   1,        512) /* ItemType - Container */
     , (801274,   5,       9000) /* EncumbranceVal */
     , (801274,   6,        120) /* ItemsCapacity */
     , (801274,   7,         20) /* ContainersCapacity */
     , (801274,   8,       3000) /* Mass */
     , (801274,  16,         48) /* ItemUseable - ViewedRemote */
     , (801274,  19,       2500) /* Value */
     , (801274,  37,        240) /* ResistItemAppraisal */
     , (801274,  38,       9999) /* ResistLockpick */
     , (801274,  81,         40) /* MaxGeneratedObjects */
     , (801274,  82,         20) /* InitGeneratedObjects */
     , (801274,  83,          2) /* ActivationResponse - Use */
     , (801274,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (801274,  96,        500) /* EncumbranceCapacity */
     , (801274, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801274,   1, True ) /* Stuck */
     , (801274,   2, False) /* Open */
     , (801274,   3, True ) /* Locked */
     , (801274,  12, True ) /* ReportCollisions */
     , (801274,  13, False) /* Ethereal */
     , (801274,  33, False) /* ResetMessagePending */
     , (801274,  34, False) /* DefaultOpen */
     , (801274,  35, True ) /* DefaultLocked */
     , (801274,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801274,  39,     1.8) /* DefaultScale */
     , (801274,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801274,   1, 'Empowered Chest') /* Name */
     , (801274,  12, 'empoweredkey') /* LockCode */
     , (801274,  14, 'Use this item to open it and see its contents.') /* Use */
     , (801274,  16, 'A chest containing the highest quality mixed gear. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801274,   1,   33558324) /* Setup */
     , (801274,   2,  150995235) /* MotionTable */
     , (801274,   3,  536870945) /* SoundTable */
     , (801274,   8,  100674256) /* Icon */
     , (801274,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801274, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801274, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801274, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801274, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801274, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801274, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */;
