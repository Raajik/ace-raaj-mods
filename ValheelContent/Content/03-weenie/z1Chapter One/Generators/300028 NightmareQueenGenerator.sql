DELETE FROM `weenie` WHERE `class_Id` = 300028;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300028, 'nightmarequeendynamicgen-xp', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300028,  81,          1) /* MaxGeneratedObjects */
     , (300028,  82,          1) /* InitGeneratedObjects */
     , (300028,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300028,   1, True ) /* Stuck */
     , (300028,  11, True ) /* IgnoreCollisions */
     , (300028,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300028,  41,     120) /* RegenerationInterval */
     , (300028,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300028,   1, 'Nightmare Queen Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300028,   1, 0x0200026B) /* Setup */
     , (300028,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300028,  1, 800034,  1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Olthoi Queen (11048) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
