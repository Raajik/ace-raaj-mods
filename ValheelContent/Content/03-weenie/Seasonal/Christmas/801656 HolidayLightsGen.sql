DELETE FROM `weenie` WHERE `class_Id` = 801656;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801656, 'HolidayLightsGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801656,  81,          1) /* MaxGeneratedObjects */
     , (801656,  82,          1) /* InitGeneratedObjects */
     , (801656,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801656, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801656,   1, True ) /* Stuck */
     , (801656,  11, True ) /* IgnoreCollisions */
     , (801656,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801656,  41,     120) /* RegenerationInterval */
     , (801656,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801656,   1, 'HolidayLightsGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801656,   1, 0x0200026B) /* Setup */
     , (801656,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801656,  1, 34401, 120, 1, 1, 1, 1, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Mayor (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
