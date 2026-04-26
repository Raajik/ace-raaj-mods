DELETE FROM `weenie` WHERE `class_Id` = 803452;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803452, 'DrakinEmpyreanIslandGen', 1, '2023-03-02 10:06:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803452,  81,         15) /* MaxGeneratedObjects */
     , (803452,  82,         15) /* InitGeneratedObjects */
     , (803452,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803452,   1, True ) /* Stuck */
     , (803452,  11, True ) /* IgnoreCollisions */
     , (803452,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803452,  41,      30) /* RegenerationInterval */
     , (803452,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803452,   1, 'DrakinEmpyreanIslandGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803452,   1,   33555051) /* Setup */
     , (803452,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803452, -1, 803354, 1, 15, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Northren Grievver (802306) (x5 up to max of 5) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
