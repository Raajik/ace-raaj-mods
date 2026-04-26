DELETE FROM `weenie` WHERE `class_Id` = 803652;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803652, 'SurvivalChestHigh', 20, '0121-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803652,   1,        512) /* ItemType - Container */
     , (803652,   5,       9000) /* EncumbranceVal */
     , (803652,   6,         -1) /* ItemsCapacity */
     , (803652,   7,         -1) /* ContainersCapacity */
     , (803652,   8,       3000) /* Mass */
     , (803652,  16,         48) /* ItemUseable - ViewedRemote */
     , (803652,  19,       2500) /* Value */
     , (803652,  37,        240) /* ResistItemAppraisal */
     , (803652,  38,       9999) /* ResistLockpick */
     , (803652,  81,          5) /* MaxGeneratedObjects */
     , (803652,  82,          5) /* InitGeneratedObjects */
     , (803652,  83,          2) /* ActivationResponse - Use */
     , (803652,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803652,  96,        500) /* EncumbranceCapacity */
     , (803652, 100,          1) /* GeneratorType - Relative */
     , (803652, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803652,   1, True ) /* Stuck */
     , (803652,   2, True ) /* Open */
     , (803652,   3, False) /* Locked */
     , (803652,  12, True ) /* ReportCollisions */
     , (803652,  13, False) /* Ethereal */
     , (803652,  33, False) /* ResetMessagePending */
     , (803652,  34, True ) /* DefaultOpen */
     , (803652,  35, False) /* DefaultLocked */
     , (803652,  86, False) /* ChestRegenOnClose */
     , (803652, 117, True ) /* ChestClearOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803652,  39,     1.2) /* DefaultScale */
     , (803652,  41,     180) /* RegenerationInterval */
	 , (803652,  43,      35) /* GeneratorRadius */
     , (803652,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803652,   1, 'High Survival Chest') /* Name */
     /* , (803652,  12, 'livingprotokey2') /* LockCode */
     , (803652,  14, 'Use this item to open it and see its contents.') /* Use */
     , (803652,  16, 'A chest containing the randomized gear and goodies.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803652,   1,   33557001) /* Setup */
     , (803652,   2,  150995121) /* MotionTable */
     , (803652,   3,  536871023) /* SoundTable */
     , (803652,   6,   67111346) /* PaletteBase */
     , (803652,   7,  268436149) /* ClothingBase */
     , (803652,   8,  100672609) /* Icon */
     , (803652,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803652, 9, 803653,    0, 0, 1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803652,   -1,     2111, 0, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
	 , (803652,   -1,    30891, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (803652,   -1,    30891, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (803652,   -1,    30891, 0, 1, 1, 1,  2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
