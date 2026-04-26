DELETE FROM `weenie` WHERE `class_Id` = 802926;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802926, 'mosswartbullygen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802926,  81,         20) /* MaxGeneratedObjects */
     , (802926,  82,         20) /* InitGeneratedObjects */
     , (802926,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802926, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802926,   1, True ) /* Stuck */
     , (802926,  11, True ) /* IgnoreCollisions */
     , (802926,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802926,  41,      15) /* RegenerationInterval */
     , (802926,  43,      35) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802926,   1, 'mosswartbullygen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802926,   1, 0x0200026B) /* Setup */
     , (802926,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802926,  1, 300132, 1, 20, 20, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Olthoi Queen (11048) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
