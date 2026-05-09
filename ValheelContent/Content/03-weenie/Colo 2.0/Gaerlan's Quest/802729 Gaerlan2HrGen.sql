DELETE FROM `weenie` WHERE `class_Id` = 802729;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802729, 'Gaerlan2HrGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802729,  66,          1) /* CheckpointStatus */
     , (802729,  81,          1) /* MaxGeneratedObjects */
     , (802729,  82,          1) /* InitGeneratedObjects */
     , (802729,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802729, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802729, 142,          3) /* GeneratorTimeType - Event */
     , (802729, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802729,   1, True ) /* Stuck */
     , (802729,  11, True ) /* IgnoreCollisions */
     , (802729,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802729,  41,    7200) /* RegenerationInterval */
     , (802729,  43,       1) /* GeneratorRadius */
     , (802729, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802729,   1, 'Gaerlan2HrGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802729,   1, 0x0200026B) /* Setup */
     , (802729,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802729, 1, 802725, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
