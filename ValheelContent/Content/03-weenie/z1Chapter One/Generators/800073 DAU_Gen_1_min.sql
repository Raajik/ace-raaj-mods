DELETE FROM `weenie` WHERE `class_Id` = 800073;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800073, 'distraughtancientundeadcampgen2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800073,  81,          3) /* MaxGeneratedObjects */
     , (800073,  82,          3) /* InitGeneratedObjects */
     , (800073,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800073,   1, True ) /* Stuck */
     , (800073,  11, True ) /* IgnoreCollisions */
     , (800073,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800073,  41,      60) /* RegenerationInterval */
     , (800073,  43,       3) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800073,   1, 'Lich Camp Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800073,   1, 0x0200026B) /* Setup */
     , (800073,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800073, 1, 800072, 60, 1, 5, 1, 4, -1, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0) /* Generate Lich Lord (1630) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (800073, 1, 800072, 60, 1, 5, 1, 4, -1, 0, 0, 0, 2.4, 1.4, 0, 0.92388, 0, 0, -0.382684) /* Generate Lich Lord (1630) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (800073, 1, 800072, 60, 1, 5, 1, 4, -1, 0, 0, 0, 2.4, -2.4, 0, 0.92388, 0, 0, -0.382684) /* Generate Lich Lord (1630) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (800073, 1, 800072, 60, 1, 5, 1, 4, -1, 0, 0, 0, 1.1, 1.4, 0, 1, 0, 0, 0) /* Generate Lich Lord (1630) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (800073, 1, 800072, 60, 1, 5, 1, 4, -1, 0, 0, 0, -4.1, -3.4, 0, 1, 0, 0, 0) /* Generate Lich Lord (1630) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
