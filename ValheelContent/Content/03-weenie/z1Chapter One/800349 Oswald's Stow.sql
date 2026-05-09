DELETE FROM `weenie` WHERE `class_Id` = 800349;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800349, 'Oswald''s Stow', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800349,   1,        512) /* ItemType - Container */
     , (800349,   5,      14750) /* EncumbranceVal */
     , (800349,   6,        120) /* ItemsCapacity */
     , (800349,   7,         20) /* ContainersCapacity */
     , (800349,  16,         48) /* ItemUseable - ViewedRemote */
     , (800349,  19,       2500) /* Value */
     , (800349,  38,       9999) /* ResistLockpick */
     , (800349,  81,         20) /* MaxGeneratedObjects */
     , (800349,  82,         20) /* InitGeneratedObjects */
     , (800349,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800349, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800349,   1, True ) /* Stuck */
     , (800349,   2, False) /* Open */
     , (800349,   3, False ) /* Locked */
     , (800349,  11, True ) /* IgnoreCollisions */
     , (800349,  12, True ) /* ReportCollisions */
     , (800349,  14, True ) /* GravityStatus */
     , (800349,  19, True ) /* Attackable */
     , (800349,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800349,  11,       1) /* ResetInterval */
     , (800349,  41,       1) /* RegenerationInterval */
     , (800349,  43,       1) /* GeneratorRadius */
     , (800349,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800349,   1, 'Oswald''s Stow') /* Name */
     , (800349,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800349,   1, 0x0200007C) /* Setup */
     , (800349,   2, 0x09000004) /* MotionTable */
     , (800349,   3, 0x20000021) /* SoundTable */
     , (800349,   8, 0x06001020) /* Icon */
     , (800349,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800349, -1, 29475, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */
     , (800349, -1, 29474, 0, 1,   1, 2, 8,  -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Token of Carnage */;