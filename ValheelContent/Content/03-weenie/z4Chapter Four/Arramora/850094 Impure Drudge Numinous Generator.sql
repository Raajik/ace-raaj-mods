DELETE FROM `weenie` WHERE `class_Id` = 850094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850094, 'ace850094-impuredrudgenuminousgenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850094,  81,         25) /* MaxGeneratedObjects */
     , (850094,  82,         25) /* InitGeneratedObjects */
     , (850094,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850094,   1, True ) /* Stuck */
     , (850094,  11, True ) /* IgnoreCollisions */
     , (850094,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850094,  41,      60) /* RegenerationInterval */
     , (850094,  43,      60) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850094,   1, 'Impure Drudge Numinous Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850094,   1,   33555051) /* Setup */
     , (850094,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850094, -1, 850090, 300, 25, 25, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impure Drudge Numinous 850090) (x25 up to max of 25) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;