DELETE FROM `weenie` WHERE `class_Id` = 801891;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801891, 'MarketOpenGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801891,  81,          1) /* MaxGeneratedObjects */
     , (801891,  82,          1) /* InitGeneratedObjects */
     , (801891,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801891, 142,          6) /* GeneratorTimeType - RealTimePeriod */
     , (801891, 143,          5) /* GeneratorStartTime - 01/01/1970 08:00:05 */
     , (801891, 144,          9) /* GeneratorEndTime - 01/01/1970 08:00:09 */
     , (801891, 145,          3) /* GeneratorEndDestructionType - Kill */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801891,   1, True ) /* Stuck */
     , (801891,  11, True ) /* IgnoreCollisions */
     , (801891,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801891,  41,      60) /* RegenerationInterval */
     , (801891,  43,       0) /* GeneratorRadius */
     , (801891, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801891,   1, 'MarketOpenGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801891,   1,   33555051) /* Setup */
     , (801891,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801891, -1, 801689, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate ValHeel Market Exchange Manager (801689) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
