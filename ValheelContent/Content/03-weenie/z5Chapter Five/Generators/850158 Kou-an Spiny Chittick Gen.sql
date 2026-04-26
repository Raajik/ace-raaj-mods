DELETE FROM `weenie` WHERE `class_Id` = 850158;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850158, 'ace850158-kou-anchittickspinygen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850158,  81,          5) /* MaxGeneratedObjects */
     , (850158,  82,          3) /* InitGeneratedObjects */
     , (850158,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850158,   1, True ) /* Stuck */
     , (850158,  11, True ) /* IgnoreCollisions */
     , (850158,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850158,  41,     600) /* RegenerationInterval */
     , (850158,  43,       7) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850158,   1, 'Kou-an Spiny Chittick Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850158,   1, 0x0200026B) /* Setup */
     , (850158,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850158, 1, 850155, 600, 1, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Spiny Chittick (22508) (x1 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
