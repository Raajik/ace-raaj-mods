DELETE FROM `weenie` WHERE `class_Id` = 802179;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802179, 'WildMushroomGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802179,  81,          8) /* MaxGeneratedObjects */
     , (802179,  82,          8) /* InitGeneratedObjects */
     , (802179,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802179, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802179,   1, True ) /* Stuck */
     , (802179,  11, True ) /* IgnoreCollisions */
     , (802179,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802179,  41,     300) /* RegenerationInterval */
     , (802179,  43,      25) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802179,   1, 'WildMushroomGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802179,   1,   33555051) /* Setup */
     , (802179,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802179, 1, 802177, 0, 8, 8, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Wild Mushroom (802177) (x8 up to max of 8) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
