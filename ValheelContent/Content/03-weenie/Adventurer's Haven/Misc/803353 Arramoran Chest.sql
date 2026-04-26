DELETE FROM `weenie` WHERE `class_Id` = 803353;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803353, 'Arramoran Chest', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803353,   1,        512) /* ItemType - Container */
     , (803353,   5,       9000) /* EncumbranceVal */
     , (803353,   6,        120) /* ItemsCapacity */
     , (803353,   7,         20) /* ContainersCapacity */
     , (803353,   8,       3000) /* Mass */
     , (803353,  16,         48) /* ItemUseable - ViewedRemote */
     , (803353,  19,       2500) /* Value */
     , (803353,  37,        240) /* ResistItemAppraisal */
     , (803353,  38,       9999) /* ResistLockpick */
     , (803353,  81,         40) /* MaxGeneratedObjects */
     , (803353,  82,         20) /* InitGeneratedObjects */
     , (803353,  83,          2) /* ActivationResponse - Use */
     , (803353,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803353,  96,        500) /* EncumbranceCapacity */
     , (803353, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803353,   1, True ) /* Stuck */
     , (803353,   2, False) /* Open */
     , (803353,   3, True ) /* Locked */
     , (803353,  12, True ) /* ReportCollisions */
     , (803353,  13, False) /* Ethereal */
     , (803353,  33, False) /* ResetMessagePending */
     , (803353,  34, False) /* DefaultOpen */
     , (803353,  35, True ) /* DefaultLocked */
     , (803353,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803353,  39,     1.1) /* DefaultScale */
     , (803353,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803353,   1, 'Arramoran Chest') /* Name */
     , (803353,  12, 'arramoranlock') /* LockCode */
     , (803353,  14, 'Use this item to open it and see its contents.') /* Use */
     , (803353,  16, 'A chest containing the highest quality gear. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803353,   1,   33557027) /* Setup */
     , (803353,   2,  150994948) /* MotionTable */
     , (803353,   3,  536870945) /* SoundTable */
     , (803353,   7,  268436160) /* ClothingBase */
     , (803353,   8,  100671480) /* Icon */
     , (803353,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803353, -1, 5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803353, -1, 5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803353, -1, 5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803353, -1, 5000, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */;
