DELETE FROM `weenie` WHERE `class_Id` = 850131;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850131, 'ace850131-kou-anmukkirgenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850131,  81,          30) /* MaxGeneratedObjects */
     , (850131,  82,          30) /* InitGeneratedObjects */
     , (850131,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850131,   1, True ) /* Stuck */
     , (850131,  11, True ) /* IgnoreCollisions */
     , (850131,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850131,  41,      60) /* RegenerationInterval */
     , (850131,  43,       40) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850131,   1, 'Kou-an Mukkir Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850131,   1,   33555051) /* Setup */
     , (850131,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850131, .25, 850127, 0, 5, 10, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850127) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (850131, .25, 850128, 0, 5, 10, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850128) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (850131, .25, 850129, 0, 5, 10, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850129) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;