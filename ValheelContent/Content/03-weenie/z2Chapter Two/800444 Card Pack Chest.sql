DELETE FROM `weenie` WHERE `class_Id` = 800444;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800444, 'ACPackChest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800444,   1,        512) /* ItemType - Container */
     , (800444,   5,      14750) /* EncumbranceVal */
     , (800444,   6,        120) /* ItemsCapacity */
     , (800444,   7,         20) /* ContainersCapacity */
     , (800444,  16,         48) /* ItemUseable - ViewedRemote */
     , (800444,  19,       2500) /* Value */
     , (800444,  38,       9999) /* ResistLockpick */
     , (800444,  81,         20) /* MaxGeneratedObjects */
     , (800444,  82,         20) /* InitGeneratedObjects */
     , (800444,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800444, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800444,   1, True ) /* Stuck */
     , (800444,   2, False) /* Open */
     , (800444,   3, True ) /* Locked */
     , (800444,  11, True ) /* IgnoreCollisions */
     , (800444,  12, True ) /* ReportCollisions */
     , (800444,  14, True ) /* GravityStatus */
     , (800444,  19, True ) /* Attackable */
     , (800444,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800444,  11,       1) /* ResetInterval */
     , (800444,  41,       1) /* RegenerationInterval */
     , (800444,  43,       1) /* GeneratorRadius */
     , (800444,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800444,   1, 'Card Pack Chest') /* Name */
     , (800444,  12, 'cardpackkey') /* LockCode */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800444,   1, 0x0200007C) /* Setup */
     , (800444,   2, 0x09000004) /* MotionTable */
     , (800444,   3, 0x20000021) /* SoundTable */
     , (800444,   8, 0x06001020) /* Icon */
     , (800444,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800444, 0.60, 800500, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800501, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800502, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800503, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800504, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800505, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800506, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800507, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800508, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800509, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800510, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800511, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800512, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800513, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.60, 800514, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.30, 800515, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.30, 800516, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.30, 800517, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.30, 800518, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.30, 800519, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.30, 800520, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.10, 800521, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.10, 800522, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.10, 800523, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.10, 800524, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.10, 800525, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.01, 800526, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.01, 800527, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.01, 800528, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.001, 800529, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */
     , (800444, 0.001, 800530, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate AC Trading Card Contain */;
