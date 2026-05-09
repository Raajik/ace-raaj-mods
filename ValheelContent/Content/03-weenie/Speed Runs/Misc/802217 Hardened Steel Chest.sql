DELETE FROM `weenie` WHERE `class_Id` = 802217;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802217, 'HardenedSteelChest300', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802217,   1,        512) /* ItemType - Container */
     , (802217,   5,       9000) /* EncumbranceVal */
     , (802217,   6,        120) /* ItemsCapacity */
     , (802217,   7,         10) /* ContainersCapacity */
     , (802217,   8,       3000) /* Mass */
     , (802217,  16,         48) /* ItemUseable - ViewedRemote */
     , (802217,  19,       2500) /* Value */
     , (802217,  37,        240) /* ResistItemAppraisal */
     , (802217,  38,        500) /* ResistLockpick */
     , (802217,  81,          1) /* MaxGeneratedObjects */
     , (802217,  82,          1) /* InitGeneratedObjects */
     , (802217,  83,          2) /* ActivationResponse - Use */
     , (802217,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802217,  96,        500) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802217,   1, True ) /* Stuck */
     , (802217,   2, False) /* Open */
     , (802217,   3, True ) /* Locked */
     , (802217,  12, True ) /* ReportCollisions */
     , (802217,  13, False) /* Ethereal */
     , (802217,  33, False) /* ResetMessagePending */
     , (802217,  34, False) /* DefaultOpen */
     , (802217,  35, True ) /* DefaultLocked */
     , (802217,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802217,  39,     1.1) /* DefaultScale */
     , (802217,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802217,   1, 'Hardened Steel Chest') /* Name */
     , (802217,  12, 'nothanks') /* LockCode */
     , (802217,  14, 'There does not seem to be a key around. You may have to pick the lock.') /* Use */
     , (802217,  16, 'A well made chest. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802217,   1,   33558324) /* Setup */
     , (802217,   2,  150995235) /* MotionTable */
     , (802217,   3,  536870945) /* SoundTable */
     , (802217,   8,  100674256) /* Icon */
     , (802217,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802217, -1, 802167, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Metal Key (802167) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
