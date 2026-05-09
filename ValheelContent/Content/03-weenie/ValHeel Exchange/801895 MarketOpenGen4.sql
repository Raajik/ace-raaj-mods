DELETE FROM `weenie` WHERE `class_Id` = 801895;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801895, 'MarketOpenGen4', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801895,  81,          5) /* MaxGeneratedObjects */
     , (801895,  82,          5) /* InitGeneratedObjects */
     , (801895,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801895, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801895, 142,          3) /* GeneratorTimeType - Event */
     , (801895, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801895,   1, True ) /* Stuck */
     , (801895,  11, True ) /* IgnoreCollisions */
     , (801895,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801895,  41,  999999) /* RegenerationInterval */
     , (801895,  43,       8) /* GeneratorRadius */
     , (801895, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801895,   1, 'MarketOpenGen4') /* Name */
     , (801895,  34, 'MarketOpen') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801895,   1,   33555051) /* Setup */
     , (801895,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801895, -1, 801694, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Tradewind's Path Token Exchange (801694) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
