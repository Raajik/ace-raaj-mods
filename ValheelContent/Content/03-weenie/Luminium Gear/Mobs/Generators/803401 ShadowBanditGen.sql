DELETE FROM `weenie` WHERE `class_Id` = 803401;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803401, 'ShadowBanditGen', 1, '2023-03-02 10:06:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803401,  81,         10) /* MaxGeneratedObjects */
     , (803401,  82,         10) /* InitGeneratedObjects */
     , (803401,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803401,   1, True ) /* Stuck */
     , (803401,  11, True ) /* IgnoreCollisions */
     , (803401,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803401,  41,      20) /* RegenerationInterval */
     , (803401,  43,       5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803401,   1, 'ShadowBanditGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803401,   1,   33555051) /* Setup */
     , (803401,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803401, -1, 803400, 1, 10, 10, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Northren Grievver (802306) (x5 up to max of 5) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
