DELETE FROM `weenie` WHERE `class_Id` = 850159;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850159, 'ace850159-kou-anmultichittickgen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850159,  81,          3) /* MaxGeneratedObjects */
     , (850159,  82,          3) /* InitGeneratedObjects */
     , (850159,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850159,   1, True ) /* Stuck */
     , (850159,  11, True ) /* IgnoreCollisions */
     , (850159,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850159,  41,     180) /* RegenerationInterval */
     , (850159,  43,      12) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850159,   1, 'Kou-an Multi-Chittick Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850159,   1, 0x0200026B) /* Setup */
     , (850159,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850159, -1, 850153, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Iron Spined Chittick (850153) (x1 up to max of 4) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850159, -1, 850154, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Obsidian Chittick (850154) (x1 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850159, -1, 850155, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Spiny Chittick (850155) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Scatter */;
