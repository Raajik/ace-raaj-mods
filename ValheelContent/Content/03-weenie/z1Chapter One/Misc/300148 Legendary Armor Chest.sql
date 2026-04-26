DELETE FROM `weenie` WHERE `class_Id` = 300148;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300148, 'ValHeellegendaryarmorchest', 20, '121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300148,   1,        512) /* ItemType - Container */
     , (300148,   5,       9000) /* EncumbranceVal */
     , (300148,   6,        120) /* ItemsCapacity */
     , (300148,   7,         20) /* ContainersCapacity */
     , (300148,   8,       3111) /* Mass */
     , (300148,  16,         48) /* ItemUseable - ViewedRemote */
     , (300148,  19,       2500) /* Value */
     , (300148,  37,        240) /* ResistItemAppraisal */
     , (300148,  38,       9999) /* ResistLockpick */
     , (300148,  81,         40) /* MaxGeneratedObjects */
     , (300148,  82,         20) /* InitGeneratedObjects */
     , (300148,  83,          2) /* ActivationResponse - Use */
     , (300148,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (300148,  96,        500) /* EncumbranceCapacity */
     , (300148, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300148,   1, True ) /* Stuck */
     , (300148,   2, False) /* Open */
     , (300148,   3, True ) /* Locked */
     , (300148,  12, True ) /* ReportCollisions */
     , (300148,  13, False) /* Ethereal */
     , (300148,  33, False) /* ResetMessagePending */
     , (300148,  34, False) /* DefaultOpen */
     , (300148,  35, True ) /* DefaultLocked */
     , (300148,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300148,  39,     1.1) /* DefaultScale */
     , (300148,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300148,   1, 'ValHeel Legendary Armor Chest') /* Name */
     , (300148,  12, 'keychestleg') /* LockCode */
     , (300148,  14, 'Use this item to open it and see its contents.') /* Use */
     , (300148,  16, 'A chest containing the highest quality mixed gear. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300148,   1, 0x02000F34) /* Setup */
     , (300148,   2, 0x09000123) /* MotionTable */
     , (300148,   3, 0x20000021) /* SoundTable */
     , (300148,   8, 0x06002AD0) /* Icon */
     , (300148,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300148, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate RANDOMLY GENERATED TREASURE from Loot Tier 8 from Death Treasure Table id: 2001 (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (300148, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)
	 , (300148, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)
	 , (300148, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)
	 , (300148, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)
     , (300148, -1, 3111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);