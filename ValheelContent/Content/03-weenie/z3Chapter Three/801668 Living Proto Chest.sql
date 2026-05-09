DELETE FROM `weenie` WHERE `class_Id` = 801668;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801668, 'LivingProtoChest', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801668,   1,        512) /* ItemType - Container */
     , (801668,   5,       9000) /* EncumbranceVal */
     , (801668,   6,        120) /* ItemsCapacity */
     , (801668,   7,         20) /* ContainersCapacity */
     , (801668,   8,       3000) /* Mass */
     , (801668,  16,         48) /* ItemUseable - ViewedRemote */
     , (801668,  19,       2500) /* Value */
     , (801668,  37,        240) /* ResistItemAppraisal */
     , (801668,  38,       9999) /* ResistLockpick */
     , (801668,  81,         40) /* MaxGeneratedObjects */
     , (801668,  82,         20) /* InitGeneratedObjects */
     , (801668,  83,          2) /* ActivationResponse - Use */
     , (801668,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (801668,  96,        500) /* EncumbranceCapacity */
     , (801668, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801668,   1, True ) /* Stuck */
     , (801668,   2, True ) /* Open */
     , (801668,   3, True) /* Locked */
     , (801668,  12, True ) /* ReportCollisions */
     , (801668,  13, False) /* Ethereal */
     , (801668,  33, False) /* ResetMessagePending */
     , (801668,  34, True ) /* DefaultOpen */
     , (801668,  35, False) /* DefaultLocked */
     , (801668,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801668,  39,     1.1) /* DefaultScale */
     , (801668,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801668,   1, 'Living Proto Chest') /* Name */
     , (801668,  12, 'livingprotokey2') /* LockCode */
     , (801668,  14, 'Use this item to open it and see its contents.') /* Use */
     , (801668,  16, 'A chest containing the highest quality gear.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801668,   1,   33557001) /* Setup */
     , (801668,   2,  150995121) /* MotionTable */
     , (801668,   3,  536871023) /* SoundTable */
     , (801668,   6,   67111346) /* PaletteBase */
     , (801668,   7,  268436149) /* ClothingBase */
     , (801668,   8,  100672609) /* Icon */
     , (801668,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801668, -1, 4111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801668, -1, 4111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801668, -1, 4111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (801668, -1, 4111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */;
