DELETE FROM `weenie` WHERE `class_Id` = 803612;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803612, 'AurochUltraMinionGenWave4', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803612,  81,         30) /* MaxGeneratedObjects */
     , (803612,  82,         30) /* InitGeneratedObjects */
     , (803612,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803612, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803612, 142,          3) /* GeneratorTimeType - Event */
     , (803612, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803612,   1, True ) /* Stuck */
     , (803612,  11, True ) /* IgnoreCollisions */
     , (803612,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803612,  41,      10) /* RegenerationInterval */
     , (803612,  43,      20) /* GeneratorRadius */
     , (803612, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803612,   1, 'AurochUltraMinionGenWave4') /* Name */
     , (803612,  34, 'TouTouOwnedF4') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803612,   1, 0x0200026B) /* Setup */
     , (803612,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803612, -1, 803608, 1, 30, 30, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;