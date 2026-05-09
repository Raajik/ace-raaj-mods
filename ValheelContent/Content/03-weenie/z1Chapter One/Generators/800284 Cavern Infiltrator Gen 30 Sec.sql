DELETE FROM `weenie` WHERE `class_Id` = 800284;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800284, 'caverninfiltratorgen30sec', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800284,  66,          1) /* CheckpointStatus */
     , (800284,  81,          4) /* MaxGeneratedObjects */
     , (800284,  82,          4) /* InitGeneratedObjects */
     , (800284,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800284,   1, True ) /* Stuck */
     , (800284,  11, True ) /* IgnoreCollisions */
     , (800284,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800284,  41,      30) /* RegenerationInterval */
     , (800284,  43,       3) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800284,   1, 'Cavern Infiltrator Gen 30 Sec') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800284,   1,   33555051) /* Setup */
     , (800284,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800284, -1, 800283, 30, 4, 4, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Cavern Infiltrator (800283) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
