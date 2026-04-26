DELETE FROM `weenie` WHERE `class_Id` = 800107;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800107, 'mayorgen1hr3', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800107,  81,          1) /* MaxGeneratedObjects */
     , (800107,  82,          1) /* InitGeneratedObjects */
     , (800107,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800107, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800107,   1, True ) /* Stuck */
     , (800107,  11, True ) /* IgnoreCollisions */
     , (800107,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800107,  41,     120) /* RegenerationInterval */
     , (800107,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800107,   1, '1 Hr Mayor Gen Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800107,   1, 0x0200026B) /* Setup */
     , (800107,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800107,  1, 800106, 120, 1, 1, 1, 1, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Mayor (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
