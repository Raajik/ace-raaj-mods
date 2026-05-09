DELETE FROM `weenie` WHERE `class_Id` = 803610;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803610, 'AurochUltraMinionGenWave2', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803610,  81,         30) /* MaxGeneratedObjects */
     , (803610,  82,         30) /* InitGeneratedObjects */
     , (803610,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803610, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803610, 142,          3) /* GeneratorTimeType - Event */
     , (803610, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803610,   1, True ) /* Stuck */
     , (803610,  11, True ) /* IgnoreCollisions */
     , (803610,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803610,  41,      10) /* RegenerationInterval */
     , (803610,  43,      20) /* GeneratorRadius */
     , (803610, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803610,   1, 'AurochUltraMinionGenWave2') /* Name */
     , (803610,  34, 'TouTouOwnedF2') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803610,   1, 0x0200026B) /* Setup */
     , (803610,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803610, -1, 803608, 1, 30, 30, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;