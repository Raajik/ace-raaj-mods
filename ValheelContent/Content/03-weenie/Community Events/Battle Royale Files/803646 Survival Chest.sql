DELETE FROM `weenie` WHERE `class_Id` = 803646;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803646, 'SurvivalChest', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803646,   1,        512) /* ItemType - Container */
     , (803646,   5,       9000) /* EncumbranceVal */
     , (803646,   6,         -1) /* ItemsCapacity */
     , (803646,   7,         -1) /* ContainersCapacity */
     , (803646,   8,       3000) /* Mass */
     , (803646,  16,         48) /* ItemUseable - ViewedRemote */
     , (803646,  19,       2500) /* Value */
     , (803646,  37,        240) /* ResistItemAppraisal */
     , (803646,  38,       9999) /* ResistLockpick */
     , (803646,  81,          5) /* MaxGeneratedObjects */
     , (803646,  82,          5) /* InitGeneratedObjects */
     , (803646,  83,          2) /* ActivationResponse - Use */
     , (803646,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803646,  96,        500) /* EncumbranceCapacity */
     , (803646, 100,          1) /* GeneratorType - Relative */
     , (803646, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803646,   1, True ) /* Stuck */
     , (803646,   2, True ) /* Open */
     , (803646,   3, False) /* Locked */
     , (803646,  12, True ) /* ReportCollisions */
     , (803646,  13, False) /* Ethereal */
     , (803646,  33, False) /* ResetMessagePending */
     , (803646,  34, True ) /* DefaultOpen */
     , (803646,  35, False) /* DefaultLocked */
     , (803646,  86, False) /* ChestRegenOnClose */
     , (803646, 117, True ) /* ChestClearOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803646,  39,     0.6) /* DefaultScale */
     , (803646,  41,     180) /* RegenerationInterval */
	 , (803646,  43,      35) /* GeneratorRadius */
     , (803646,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803646,   1, 'Minor Survival Chest') /* Name */
     /* , (803646,  12, 'livingprotokey2') /* LockCode */
     , (803646,  14, 'Use this item to open it and see its contents.') /* Use */
     , (803646,  16, 'A chest containing the randomized gear and goodies.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803646,   1,   33557001) /* Setup */
     , (803646,   2,  150995121) /* MotionTable */
     , (803646,   3,  536871023) /* SoundTable */
     , (803646,   6,   67111346) /* PaletteBase */
     , (803646,   7,  268436149) /* ClothingBase */
     , (803646,   8,  100672609) /* Icon */
     , (803646,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803646, 9, 803648,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803646,   -1,     453, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803646,   -1,     453, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
	 , (803646,   -1,     192, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (803646,   -1,     192, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (803646,   -1,     192, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
