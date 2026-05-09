DELETE FROM `weenie` WHERE `class_Id` = 4306;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4306, 'banderlingscoutcampgen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4306,  81,          7) /* MaxGeneratedObjects */
     , (4306,  82,          7) /* InitGeneratedObjects */
     , (4306,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4306,   1, True ) /* Stuck */
     , (4306,  11, True ) /* IgnoreCollisions */
     , (4306,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4306,  41,      60) /* RegenerationInterval */
     , (4306,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4306,   1, 'Banderling Scout Camp Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4306,   1,   33555051) /* Setup */
     , (4306,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (4306, 1, 6, 1, 7, 7, 1, 2, -1, 0, 0, 0, 0, 0, 0, 0.707107, 0, 0, -0.707107) /* Generate Banderling Scout (6) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
