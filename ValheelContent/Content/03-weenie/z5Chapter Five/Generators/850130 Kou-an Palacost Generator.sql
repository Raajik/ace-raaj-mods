DELETE FROM `weenie` WHERE `class_Id` = 850130;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850130, 'ace850130-kou-anpalacostgenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850130,  81,          15) /* MaxGeneratedObjects */
     , (850130,  82,          15) /* InitGeneratedObjects */
     , (850130,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850130,   1, True ) /* Stuck */
     , (850130,  11, True ) /* IgnoreCollisions */
     , (850130,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850130,  41,      60) /* RegenerationInterval */
     , (850130,  43,       30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850130,   1, 'Kou-an Palacost Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850130,   1,   33555051) /* Setup */
     , (850130,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850130, .25, 850126, 0, 5, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850126) (x4 up to max of 4) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;