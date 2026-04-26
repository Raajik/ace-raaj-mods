DELETE FROM `weenie` WHERE `class_Id` = 800434;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800434, 'Certificate Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800434,   1,        512) /* ItemType - Container */
     , (800434,   5,      14750) /* EncumbranceVal */
     , (800434,   6,        120) /* ItemsCapacity */
     , (800434,   7,         20) /* ContainersCapacity */
     , (800434,  16,         48) /* ItemUseable - ViewedRemote */
     , (800434,  19,       2500) /* Value */
     , (800434,  38,       9999) /* ResistLockpick */
     , (800434,  81,         20) /* MaxGeneratedObjects */
     , (800434,  82,         20) /* InitGeneratedObjects */
     , (800434,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800434, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800434,   1, True ) /* Stuck */
     , (800434,   2, False) /* Open */
     , (800434,   3, True ) /* Locked */
     , (800434,  11, True ) /* IgnoreCollisions */
     , (800434,  12, True ) /* ReportCollisions */
     , (800434,  14, True ) /* GravityStatus */
     , (800434,  19, True ) /* Attackable */
     , (800434,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800434,  11,       1) /* ResetInterval */
     , (800434,  41,       1) /* RegenerationInterval */
     , (800434,  43,       1) /* GeneratorRadius */
     , (800434,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800434,   1, 'Certificate Chest') /* Name */
     , (800434,  12, 'certchest1') /* LockCode */
     , (800434,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800434,   1, 0x0200007C) /* Setup */
     , (800434,   2, 0x09000004) /* MotionTable */
     , (800434,   3, 0x20000021) /* SoundTable */
     , (800434,   8, 0x06001020) /* Icon */
     , (800434,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800434, -1, 46414, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Lum Certificate */
     , (800434, -1, 46415, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* XP Certificate */;
