DELETE FROM `weenie` WHERE `class_Id` = 803320;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803320, 'ColoBoss12PortalGenGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803320,  66,          1) /* CheckpointStatus */
     , (803320,  81,          1) /* MaxGeneratedObjects */
     , (803320,  82,          1) /* InitGeneratedObjects */
     , (803320,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803320, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803320, 142,          3) /* GeneratorTimeType - Event */
     , (803320, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803320,   1, True ) /* Stuck */
     , (803320,  11, True ) /* IgnoreCollisions */
     , (803320,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803320,  41,     600) /* RegenerationInterval */
     , (803320,  43,       1) /* GeneratorRadius */
     , (803320, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803320,   1, 'ColoBoss12PortalGenGen') /* Name */
     , (803320,  34, 'NewColoBoss12') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803320,   1, 0x0200026B) /* Setup */
     , (803320,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803320, 1, 802881, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
