DELETE FROM `weenie` WHERE `class_Id` = 800267;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800267, 'tproundone1hrgen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800267,  81,          1) /* MaxGeneratedObjects */
     , (800267,  82,          1) /* InitGeneratedObjects */
     , (800267,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800267, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800267,   1, True ) /* Stuck */
     , (800267,  11, True ) /* IgnoreCollisions */
     , (800267,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800267,  41,     3600) /* RegenerationInterval */
     , (800267,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800267,   1, '1 Hr TP Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800267,   1, 0x0200026B) /* Setup */
     , (800267,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800267,  1, 800232, 120, 1, 1, 1, 1, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate TP Round One (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
