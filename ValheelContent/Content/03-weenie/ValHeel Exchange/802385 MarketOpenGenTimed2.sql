DELETE FROM `weenie` WHERE `class_Id` = 802385;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802385, 'MarketOpenGenTimed2', 1, '2022-02-10 05:08:07') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802385,  81,          1) /* MaxGeneratedObjects */
     , (802385,  82,          1) /* InitGeneratedObjects */
     , (802385,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802385, 142,          6) /* GeneratorTimeType - RealTimePeriod */
     , (802385, 143,         17) /* GeneratorStartTime - 01/01/1970 08:00:18 */
     , (802385, 144,         21) /* GeneratorEndTime - 01/01/1970 08:00:22 */
     , (802385, 145,          3) /* GeneratorEndDestructionType - Kill */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802385,   1, True ) /* Stuck */
     , (802385,  11, True ) /* IgnoreCollisions */
     , (802385,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802385,  41,      60) /* RegenerationInterval */
     , (802385,  43,       0) /* GeneratorRadius */
     , (802385, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802385,   1, 'MarketOpenGenTimed2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802385,   1,   33555051) /* Setup */
     , (802385,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802385, -1, 801687, 1, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Crypto Tracking Agent (801687) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
