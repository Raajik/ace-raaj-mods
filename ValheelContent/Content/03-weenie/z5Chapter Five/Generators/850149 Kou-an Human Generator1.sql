DELETE FROM `weenie` WHERE `class_Id` = 850149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850149, 'ace850149-kou-anhumangenerator1', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850149,  81,          4) /* MaxGeneratedObjects */
     , (850149,  82,          4) /* InitGeneratedObjects */
     , (850149,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850149,   1, True ) /* Stuck */
     , (850149,  11, True ) /* IgnoreCollisions */
     , (850149,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850149,  41,     180) /* RegenerationInterval */
     , (850149,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850149,   1, 'Kou-an Human Generator1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850149,   1, 0x0200026B) /* Setup */
     , (850149,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850149, -1, 850141, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Kin (850141) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850149, -1, 850142, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Kin Mage (850142) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850149, -1, 850143, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Minion (850143) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850149, -1, 850144, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Minion Mage (850144) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Scatter */;
