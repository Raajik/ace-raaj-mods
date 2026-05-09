DELETE FROM `weenie` WHERE `class_Id` = 802166;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802166, 'HardenedSteelChest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802166,   1,        512) /* ItemType - Container */
     , (802166,   5,       9000) /* EncumbranceVal */
     , (802166,   6,        120) /* ItemsCapacity */
     , (802166,   7,         10) /* ContainersCapacity */
     , (802166,   8,       3000) /* Mass */
     , (802166,  16,         48) /* ItemUseable - ViewedRemote */
     , (802166,  19,       2500) /* Value */
     , (802166,  37,        240) /* ResistItemAppraisal */
     , (802166,  38,        400) /* ResistLockpick */
     , (802166,  81,          1) /* MaxGeneratedObjects */
     , (802166,  82,          1) /* InitGeneratedObjects */
     , (802166,  83,          2) /* ActivationResponse - Use */
     , (802166,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802166,  96,        500) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802166,   1, True ) /* Stuck */
     , (802166,   2, False) /* Open */
     , (802166,   3, True ) /* Locked */
     , (802166,  12, True ) /* ReportCollisions */
     , (802166,  13, False) /* Ethereal */
     , (802166,  33, False) /* ResetMessagePending */
     , (802166,  34, False) /* DefaultOpen */
     , (802166,  35, True ) /* DefaultLocked */
     , (802166,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802166,  39,     1.1) /* DefaultScale */
     , (802166,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802166,   1, 'Hardened Steel Chest') /* Name */
     , (802166,  12, 'nothanks') /* LockCode */
     , (802166,  14, 'There does not seem to be a key around. You may have to pick the lock.') /* Use */
     , (802166,  16, 'A well made chest. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802166,   1,   33558324) /* Setup */
     , (802166,   2,  150995235) /* MotionTable */
     , (802166,   3,  536870945) /* SoundTable */
     , (802166,   8,  100674256) /* Icon */
     , (802166,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802166, -1, 802167, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Metal Key (802167) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
