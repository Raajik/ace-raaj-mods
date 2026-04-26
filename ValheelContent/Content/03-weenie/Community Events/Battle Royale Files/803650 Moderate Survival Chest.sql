DELETE FROM `weenie` WHERE `class_Id` = 803650;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803650, 'SurvivalChestModerate', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803650,   1,        512) /* ItemType - Container */
     , (803650,   5,       9000) /* EncumbranceVal */
     , (803650,   6,         -1) /* ItemsCapacity */
     , (803650,   7,         -1) /* ContainersCapacity */
     , (803650,   8,       3000) /* Mass */
     , (803650,  16,         48) /* ItemUseable - ViewedRemote */
     , (803650,  19,       2500) /* Value */
     , (803650,  37,        240) /* ResistItemAppraisal */
     , (803650,  38,       9999) /* ResistLockpick */
     , (803650,  81,          5) /* MaxGeneratedObjects */
     , (803650,  82,          5) /* InitGeneratedObjects */
     , (803650,  83,          2) /* ActivationResponse - Use */
     , (803650,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803650,  96,        500) /* EncumbranceCapacity */
     , (803650, 100,          1) /* GeneratorType - Relative */
     , (803650, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803650,   1, True ) /* Stuck */
     , (803650,   2, True ) /* Open */
     , (803650,   3, False) /* Locked */
     , (803650,  12, True ) /* ReportCollisions */
     , (803650,  13, False) /* Ethereal */
     , (803650,  33, False) /* ResetMessagePending */
     , (803650,  34, True ) /* DefaultOpen */
     , (803650,  35, False) /* DefaultLocked */
     , (803650,  86, False) /* ChestRegenOnClose */
     , (803650, 117, True ) /* ChestClearOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803650,  39,     0.9) /* DefaultScale */
     , (803650,  41,     180) /* RegenerationInterval */
	 , (803650,  43,      35) /* GeneratorRadius */
     , (803650,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803650,   1, 'Moderate Survival Chest') /* Name */
     /* , (803650,  12, 'livingprotokey2') /* LockCode */
     , (803650,  14, 'Use this item to open it and see its contents.') /* Use */
     , (803650,  16, 'A chest containing the randomized gear and goodies.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803650,   1,   33557001) /* Setup */
     , (803650,   2,  150995121) /* MotionTable */
     , (803650,   3,  536871023) /* SoundTable */
     , (803650,   6,   67111346) /* PaletteBase */
     , (803650,   7,  268436149) /* ClothingBase */
     , (803650,   8,  100672609) /* Icon */
     , (803650,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803650, 9, 803651,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803650,   -1,     450, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803650,   -1,     450, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
	 , (803650,   -1,    1609, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (803650,   -1,    1609, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (803650,   -1,    1609, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
