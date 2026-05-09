DELETE FROM `weenie` WHERE `class_Id` = 801341;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801341, 'Empowered Chest1', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801341,   1,        512) /* ItemType - Container */
     , (801341,   5,       9000) /* EncumbranceVal */
     , (801341,   6,        120) /* ItemsCapacity */
     , (801341,   7,         20) /* ContainersCapacity */
     , (801341,   8,       3000) /* Mass */
     , (801341,  16,         48) /* ItemUseable - ViewedRemote */
     , (801341,  19,       2500) /* Value */
     , (801341,  37,        240) /* ResistItemAppraisal */
     , (801341,  38,       9999) /* ResistLockpick */
     , (801341,  81,         40) /* MaxGeneratedObjects */
     , (801341,  82,         20) /* InitGeneratedObjects */
     , (801341,  83,          2) /* ActivationResponse - Use */
     , (801341,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (801341,  96,        500) /* EncumbranceCapacity */
     , (801341, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801341,   1, True ) /* Stuck */
     , (801341,   2, False) /* Open */
     , (801341,   3, True ) /* Locked */
     , (801341,  12, True ) /* ReportCollisions */
     , (801341,  13, False) /* Ethereal */
     , (801341,  33, False) /* ResetMessagePending */
     , (801341,  34, False) /* DefaultOpen */
     , (801341,  35, True ) /* DefaultLocked */
     , (801341,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801341,  39,     1.1) /* DefaultScale */
     , (801341,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801341,   1, 'Empowered Chest of Champions') /* Name */
     , (801341,  12, 'valheelempoweredkey') /* LockCode */
     , (801341,  14, 'Use this item to open it and see its contents.') /* Use */
     , (801341,  16, 'A chest containing the highest quality gear. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801341,   1,   33557027) /* Setup */
     , (801341,   2,  150994948) /* MotionTable */
     , (801341,   3,  536870945) /* SoundTable */
     , (801341,   7,  268436160) /* ClothingBase */
     , (801341,   8,  100671480) /* Icon */
     , (801341,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801341, -1, 3112, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801341, -1, 3112, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801341, -1, 3112, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801341, -1, 3112, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */;
