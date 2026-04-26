DELETE FROM `weenie` WHERE `class_Id` = 801962;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801962, 'MarketOpenGenNote', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801962,  81,          1) /* MaxGeneratedObjects */
     , (801962,  82,          1) /* InitGeneratedObjects */
     , (801962,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801962, 142,          6) /* GeneratorTimeType - RealTimePeriod */
     , (801962, 143,          5) /* GeneratorStartTime - 01/01/1970 08:00:05 */
     , (801962, 144,          9) /* GeneratorEndTime - 01/01/1970 08:00:09 */
     , (801962, 145,          3) /* GeneratorEndDestructionType - Kill */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801962,   1, True ) /* Stuck */
     , (801962,  11, True ) /* IgnoreCollisions */
     , (801962,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801962,  41,      60) /* RegenerationInterval */
     , (801962,  43,       0) /* GeneratorRadius */
     , (801962, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801962,   1, 'MarketOpenGenNote') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801962,   1,   33555051) /* Setup */
     , (801962,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801962, -1, 801960, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Note Exchange (801960) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
