DELETE FROM `weenie` WHERE `class_Id` = 800154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800154, 'brotherlugiangen1hr3', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800154,  81,          1) /* MaxGeneratedObjects */
     , (800154,  82,          1) /* InitGeneratedObjects */
     , (800154,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800154, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800154,   1, True ) /* Stuck */
     , (800154,  11, True ) /* IgnoreCollisions */
     , (800154,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800154,  41,     120) /* RegenerationInterval */
     , (800154,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800154,   1, '1 Hr Brother Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800154,   1, 0x0200026B) /* Setup */
     , (800154,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800154,  1, 800149, 120, 1, 1, 1, 1, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Mayor (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
