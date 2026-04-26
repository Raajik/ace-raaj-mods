DELETE FROM `weenie` WHERE `class_Id` = 300105;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300105, 'arwicfiregen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300105,  81,          1) /* MaxGeneratedObjects */
     , (300105,  82,          1) /* InitGeneratedObjects */
     , (300105,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300105,   1, True ) /* Stuck */
     , (300105,  11, True ) /* IgnoreCollisions */
     , (300105,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300105,  41,     180) /* RegenerationInterval */
     , (300105,  43,      18) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300105,   1, 'Arwic Pillar of Fire Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300105,   1,   33555051) /* Setup */
     , (300105,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300105, 1, 300106, 120, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pillar of Fire (300106) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
