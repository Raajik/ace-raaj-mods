DELETE FROM `weenie` WHERE `class_Id` = 800255;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800255, 'Tradewinds Path Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800255,   1,        512) /* ItemType - Container */
     , (800255,   5,       9000) /* EncumbranceVal */
     , (800255,   6,         -1) /* ItemsCapacity */
     , (800255,   7,         -1) /* ContainersCapacity */
     , (800255,   8,       3000) /* Mass */
     , (800255,  16,         48) /* ItemUseable - ViewedRemote */
     , (800255,  19,       2500) /* Value */
     , (800255,  37,         30) /* ResistItemAppraisal */
     , (800255,  38,       9999) /* ResistLockpick */
     , (800255,  81,        120) /* MaxGeneratedObjects */
     , (800255,  82,        120) /* InitGeneratedObjects */
     , (800255,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800255,  96,        500) /* EncumbranceCapacity */
     , (800255, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800255,   1, True ) /* Stuck */
     , (800255,   2, False) /* Open */
     , (800255,   3, True ) /* Locked */
     , (800255,  12, True ) /* ReportCollisions */
     , (800255,  13, False) /* Ethereal */
     , (800255,  19, False ) /* Attackable */
     , (800255,  33, False) /* ResetMessagePending */
     , (800255,  34, False) /* DefaultOpen */
     , (800255,  35, True ) /* DefaultLocked */
     , (800255,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800255,  39,       3) /* DefaultScale */
     , (800255,  41,      10) /* RegenerationInterval */
     , (800255,  43,       1) /* GeneratorRadius */
     , (800255,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800255,   1, 'Tradewinds Path Chest') /* Name */
     , (800255,  12, 'tradepathkey') /* LockCode */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800255,   1,   33557027) /* Setup */
     , (800255,   2,  150994948) /* MotionTable */
     , (800255,   3,  536870945) /* SoundTable */
     , (800255,   7,  268436160) /* ClothingBase */
     , (800255,   8,  100671480) /* Icon */
     , (800255,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800255, -1, 800385, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* TP Triumph Cert */;