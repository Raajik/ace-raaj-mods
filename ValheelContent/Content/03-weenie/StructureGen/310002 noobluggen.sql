DELETE FROM `weenie` WHERE `class_Id` = 310002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (310002, 'noobluggen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (310002,  81,          1) /* MaxGeneratedObjects */
     , (310002,  82,          1) /* InitGeneratedObjects */
     , (310002,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (310002,   1, True ) /* Stuck */
     , (310002,  11, True ) /* IgnoreCollisions */
     , (310002,  18, True ) /* Visibility */
	 , (310002, 9016, True) /* IsStructureGenerator */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (310002,  41,      60) /* RegenerationInterval */
     , (310002,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (310002,   1, 'noobluggen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (310002,   1,   33555051) /* Setup */
     , (310002,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (310002, -1, 310003, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Noob Lug - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
