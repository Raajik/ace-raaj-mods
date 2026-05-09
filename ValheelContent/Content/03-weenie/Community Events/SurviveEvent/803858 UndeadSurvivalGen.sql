DELETE FROM `weenie` WHERE `class_Id` = 803858;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803858, 'UndeadSurvivalGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803858,  81,         10) /* MaxGeneratedObjects */
     , (803858,  82,         10) /* InitGeneratedObjects */
     , (803858,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803858,   1, True ) /* Stuck */
     , (803858,  11, True ) /* IgnoreCollisions */
     , (803858,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803858,  41,    9999) /* RegenerationInterval */
     , (803858,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803858,   1, 'UndeadSurvivalGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803858,   1,   33555051) /* Setup */
     , (803858,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803858, 1, 800000, 1, 10, 10, 1, 1, -1, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0) /* Generate Distraught Ancient Undead (800000) (x1 up to max of 5) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
