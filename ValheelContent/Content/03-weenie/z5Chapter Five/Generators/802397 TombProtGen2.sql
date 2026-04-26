DELETE FROM `weenie` WHERE `class_Id` = 802397;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802397, 'TombProtGen2', 1, '2023-03-02 10:06:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802397,  81,         25) /* MaxGeneratedObjects */
     , (802397,  82,         25) /* InitGeneratedObjects */
     , (802397,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802397,   1, True ) /* Stuck */
     , (802397,  11, True ) /* IgnoreCollisions */
     , (802397,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802397,  41,      60) /* RegenerationInterval */
     , (802397,  43,      40) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802397,   1, 'TombProtGen2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802397,   1,   33555051) /* Setup */
     , (802397,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802397, 0.9, 802377, 1, 25, 25, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Northren Grievver (802306) (x5 up to max of 5) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
