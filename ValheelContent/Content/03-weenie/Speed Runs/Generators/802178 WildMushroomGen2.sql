DELETE FROM `weenie` WHERE `class_Id` = 802178;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802178, 'WildMushroomGen2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802178,  81,          8) /* MaxGeneratedObjects */
     , (802178,  82,          8) /* InitGeneratedObjects */
     , (802178,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802178, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802178,   1, True ) /* Stuck */
     , (802178,  11, True ) /* IgnoreCollisions */
     , (802178,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802178,  41,     300) /* RegenerationInterval */
     , (802178,  43,      25) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802178,   1, 'WildMushroomGen2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802178,   1,   33555051) /* Setup */
     , (802178,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802178, 1, 32593, 0, 8, 8, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate False Morel Thrungus (32593) (x8 up to max of 8) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
