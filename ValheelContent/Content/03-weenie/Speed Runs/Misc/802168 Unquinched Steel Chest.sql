DELETE FROM `weenie` WHERE `class_Id` = 802168;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802168, 'unquinchedSteelChest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802168,   1,        512) /* ItemType - Container */
     , (802168,   5,       9000) /* EncumbranceVal */
     , (802168,   6,        120) /* ItemsCapacity */
     , (802168,   7,         10) /* ContainersCapacity */
     , (802168,   8,       3000) /* Mass */
     , (802168,  16,         48) /* ItemUseable - ViewedRemote */
     , (802168,  19,       2500) /* Value */
     , (802168,  37,        240) /* ResistItemAppraisal */
     , (802168,  38,       9999) /* ResistLockpick */
     , (802168,  81,          1) /* MaxGeneratedObjects */
     , (802168,  82,          1) /* InitGeneratedObjects */
     , (802168,  83,          2) /* ActivationResponse - Use */
     , (802168,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802168,  96,        500) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802168,   1, True ) /* Stuck */
     , (802168,   2, False) /* Open */
     , (802168,   3, True ) /* Locked */
     , (802168,  12, True ) /* ReportCollisions */
     , (802168,  13, False) /* Ethereal */
     , (802168,  33, False) /* ResetMessagePending */
     , (802168,  34, False) /* DefaultOpen */
     , (802168,  35, True ) /* DefaultLocked */
     , (802168,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802168,  39,     1.1) /* DefaultScale */
     , (802168,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802168,   1, 'Unquinched Steel Chest') /* Name */
     , (802168,  12, 'metalkeycode') /* LockCode */
     , (802168,  14, 'Use a metal key to open.') /* Use */
     , (802168,  16, 'A hastily made chest. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802168,   1,   33558324) /* Setup */
     , (802168,   2,  150995235) /* MotionTable */
     , (802168,   3,  536870945) /* SoundTable */
     , (802168,   8,  100674256) /* Icon */
     , (802168,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802168, -1, 802169, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Harolding Gem (802169) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
