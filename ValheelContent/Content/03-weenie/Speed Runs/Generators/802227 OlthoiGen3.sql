DELETE FROM `weenie` WHERE `class_Id` = 802227;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802227, 'OlthoiGen3', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802227,  81,          8) /* MaxGeneratedObjects */
     , (802227,  82,          8) /* InitGeneratedObjects */
     , (802227,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802227, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802227,   1, True ) /* Stuck */
     , (802227,  11, True ) /* IgnoreCollisions */
     , (802227,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802227,  41,     300) /* RegenerationInterval */
     , (802227,  43,      15) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802227,   1, 'OlthoiGen3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802227,   1,   33555051) /* Setup */
     , (802227,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802227, 1, 802226, 0, 8, 8, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Olthoi Primordial (802226) (x8 up to max of 8) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
