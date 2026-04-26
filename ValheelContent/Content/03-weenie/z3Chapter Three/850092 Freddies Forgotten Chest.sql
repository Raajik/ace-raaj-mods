DELETE FROM `weenie` WHERE `class_Id` = 850092;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850092, 'ace850092-freddieschest', 20, '2005-02-09 10:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850092,   1,        512) /* ItemType - Container */
     , (850092,   5,         25) /* EncumbranceVal */
     , (850092,   6,         -1) /* ItemsCapacity */
     , (850092,   7,         -1) /* ContainersCapacity */
     , (850092,   8,       3000) /* Mass */
     , (850092,  16,         48) /* ItemUseable - ViewedRemote */
     , (850092,  19,         10) /* Value */
     , (850092,  38,       9999) /* ResistLockpick */
     , (850092,  81,          1) /* MaxGeneratedObjects */
     , (850092,  82,          1) /* InitGeneratedObjects */
     , (850092,  83,          2) /* ActivationResponse - Use */
     , (850092,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (850092,  96,       5000) /* EncumbranceCapacity */
     , (850092, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850092,   1, True ) /* Stuck */
     , (850092,   2, False) /* Open */
     , (850092,   3, True ) /* Locked */
	 , (850092,   4, True ) /* Rot Proof - Yes */
     , (850092,  12, True ) /* ReportCollisions */
     , (850092,  13, False) /* Ethereal */
     , (850092,  33, False) /* ResetMessagePending */
     , (850092,  34, False) /* DefaultOpen */
     , (850092,  35, True ) /* DefaultLocked */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850092,  11,      30) /* ResetInterval */
     , (850092,  41,      30) /* RegenerationInterval */
     , (850092,  43,       1) /* GeneratorRadius */
	 , (850092,  44,      -1) /* Time to Rot - Never */
     , (850092,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850092,   1, '') /* Name */
     , (850092,  12, 'freddieschest') /* LockCode */
     , (850092,  14, 'Use this item to open it and see what Freddie left behind.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850092,   1, 0x02000F30) /* Setup */
     , (850092,   2, 0x09000123) /* MotionTable */
     , (850092,   3, 0x20000021) /* SoundTable */
     , (850092,   8, 0x06002AE4) /* Icon */
     , (850092,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850092, -1, 850093, 30, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Talaria (850093) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;