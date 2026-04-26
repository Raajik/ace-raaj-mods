DELETE FROM `weenie` WHERE `class_Id` = 803569;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803569, 'PlainClothesGen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803569,  81,          2) /* MaxGeneratedObjects */
     , (803569,  82,          2) /* InitGeneratedObjects */
     , (803569,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803569,   1, True ) /* Stuck */
     , (803569,  11, True ) /* IgnoreCollisions */
     , (803569,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803569,  41,      30) /* RegenerationInterval */
     , (803569,  43,       3) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803569,   1, 'PlainClothesGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803569,   1, 0x0200026B) /* Setup */
     , (803569,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803569, -1, 803566, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (803569, -1, 803567, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;