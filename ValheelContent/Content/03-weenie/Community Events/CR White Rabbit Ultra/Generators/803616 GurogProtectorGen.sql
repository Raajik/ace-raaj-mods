DELETE FROM `weenie` WHERE `class_Id` = 803616;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803616, 'GurogProtectorGen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803616,  81,         1) /* MaxGeneratedObjects */
     , (803616,  82,         1) /* InitGeneratedObjects */
     , (803616,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803616, 103,          2) /* GeneratorDestructionType - Destroy */
     /*, (803616, 142,          3) /* GeneratorTimeType - Event */
     , (803616, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803616,   1, True ) /* Stuck */
     , (803616,  11, True ) /* IgnoreCollisions */
     , (803616,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803616,  41,     600) /* RegenerationInterval */
     , (803616,  43,      10) /* GeneratorRadius */
     , (803616, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803616,   1, 'GurogProtectorGen') /* Name */
     /* , (803616,  34, 'BaishiOwnedF1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803616,   1, 0x0200026B) /* Setup */
     , (803616,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803616, -1, 803615, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;