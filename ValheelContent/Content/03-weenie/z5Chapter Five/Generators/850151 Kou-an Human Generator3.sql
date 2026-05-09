DELETE FROM `weenie` WHERE `class_Id` = 850151;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850151, 'ace850151-kou-anhumangenerator3', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850151,  81,          4) /* MaxGeneratedObjects */
     , (850151,  82,          4) /* InitGeneratedObjects */
     , (850151,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850151,   1, True ) /* Stuck */
     , (850151,  11, True ) /* IgnoreCollisions */
     , (850151,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850151,  41,     180) /* RegenerationInterval */
     , (850151,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850151,   1, 'Kou-an Human Generator3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850151,   1, 0x0200026B) /* Setup */
     , (850151,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850151, -1, 850141, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Kin (850141) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850151, -1, 850143, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Minion (850143) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850151, -1, 850145, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Sycophant (850145) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850151, -1, 850147, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Worshipper (850147) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Scatter */;
