DELETE FROM `weenie` WHERE `class_Id` = 803278;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803278, 'ImperialSpiritGen', 1, '2023-03-02 10:06:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803278,  81,          1) /* MaxGeneratedObjects */
     , (803278,  82,          1) /* InitGeneratedObjects */
     , (803278,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803278,   1, True ) /* Stuck */
     , (803278,  11, True ) /* IgnoreCollisions */
     , (803278,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803278,  41,      60) /* RegenerationInterval */
     , (803278,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803278,   1, 'ImperialSpiritGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803278,   1, 0x0200026B) /* Setup */
     , (803278,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803278, -1, 803275, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Banderling Captain (184) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
