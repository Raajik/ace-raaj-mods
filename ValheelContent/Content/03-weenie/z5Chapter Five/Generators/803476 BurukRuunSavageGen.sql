DELETE FROM `weenie` WHERE `class_Id` = 803476;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803476, 'BurukRuunSavageGen', 1, '2023-03-02 10:06:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803476,  81,          3) /* MaxGeneratedObjects */
     , (803476,  82,          3) /* InitGeneratedObjects */
     , (803476,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803476,   1, True ) /* Stuck */
     , (803476,  11, True ) /* IgnoreCollisions */
     , (803476,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803476,  41,      30) /* RegenerationInterval */
     , (803476,  43,       5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803476,   1, 'BurukRuunSavageGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803476,   1,   33555051) /* Setup */
     , (803476,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803476, -1, 803473, 1, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Northren Grievver (802306) (x5 up to max of 5) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
