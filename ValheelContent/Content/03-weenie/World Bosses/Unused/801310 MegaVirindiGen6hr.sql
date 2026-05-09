DELETE FROM `weenie` WHERE `class_Id` = 801310;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801310, 'MegaVirindiGen6hr', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801310,  66,          1) /* CheckpointStatus */
     , (801310,  81,          1) /* MaxGeneratedObjects */
     , (801310,  82,          1) /* InitGeneratedObjects */
     , (801310,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801310, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801310, 142,          3) /* GeneratorTimeType - Event */
     , (801310, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801310,   1, True ) /* Stuck */
     , (801310,  11, True ) /* IgnoreCollisions */
     , (801310,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801310,  41,     600) /* RegenerationInterval */
     , (801310,  43,       1) /* GeneratorRadius */
     , (801310, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801310,   1, 'MegaVirindiGen6hr') /* Name */
     , (801310,  34, 'WBoss1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801310,   1, 0x0200026B) /* Setup */
     , (801310,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801310, 1, 801309, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
