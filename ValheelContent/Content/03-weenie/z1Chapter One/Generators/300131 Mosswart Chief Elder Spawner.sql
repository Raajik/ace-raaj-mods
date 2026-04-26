DELETE FROM `weenie` WHERE `class_Id` = 300131;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300131, 'mosswartchiefelderspawner', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300131,  81,          3) /* MaxGeneratedObjects */
     , (300131,  82,          3) /* InitGeneratedObjects */
     , (300131,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300131,   1, True ) /* Stuck */
     , (300131,  11, True ) /* IgnoreCollisions */
     , (300131,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300131,  41,      60) /* RegenerationInterval */
     , (300131,  43,       3) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300131,   1, 'Mosswart Cheif Elder Spawner') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300131,   1, 0x0200026B) /* Setup */
     , (300131,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300131, 1, 300130, 60, 1, 1, 1, 4, -1, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0) /* Generate Lich Lord (1630) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
