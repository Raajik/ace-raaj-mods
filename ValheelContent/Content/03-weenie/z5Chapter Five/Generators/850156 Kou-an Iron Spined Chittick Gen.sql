DELETE FROM `weenie` WHERE `class_Id` = 850156;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850156, 'ace850156-kou-anchittironspinegen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850156,  81,          7) /* MaxGeneratedObjects */
     , (850156,  82,          3) /* InitGeneratedObjects */
     , (850156,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850156,   1, True ) /* Stuck */
     , (850156,  11, True ) /* IgnoreCollisions */
     , (850156,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850156,  41,     600) /* RegenerationInterval */
     , (850156,  43,       7) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850156,   1, 'Kou-an Iron Spined Chittick Camp Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850156,   1, 0x0200026B) /* Setup */
     , (850156,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850156, 1, 850153, 600, 1, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Iron Spined Chittick (850153) (x1 up to max of 7) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
