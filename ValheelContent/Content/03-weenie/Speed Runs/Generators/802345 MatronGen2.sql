DELETE FROM `weenie` WHERE `class_Id` = 802345;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802345, 'MatronGen2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802345,  81,          1) /* MaxGeneratedObjects */
     , (802345,  82,          1) /* InitGeneratedObjects */
     , (802345,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802345, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802345,   1, True ) /* Stuck */
     , (802345,  11, True ) /* IgnoreCollisions */
     , (802345,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802345,  41,     120) /* RegenerationInterval */
     , (802345,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802345,   1, 'MatronGen2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802345,   1,   33555051) /* Setup */
     , (802345,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802345, 1, 802210, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Olthoi Primordial (22902) (x8 up to max of 8) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
