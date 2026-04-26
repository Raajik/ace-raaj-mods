DELETE FROM `weenie` WHERE `class_Id` = 802396;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802396, 'MarketOpenGenNote2', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802396,  81,          1) /* MaxGeneratedObjects */
     , (802396,  82,          1) /* InitGeneratedObjects */
     , (802396,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802396, 142,          6) /* GeneratorTimeType - RealTimePeriod */
     , (802396, 143,         17) /* GeneratorStartTime - 01/01/1970 08:00:05 */
     , (802396, 144,         21) /* GeneratorEndTime - 01/01/1970 08:00:09 */
     , (802396, 145,          3) /* GeneratorEndDestructionType - Kill */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802396,   1, True ) /* Stuck */
     , (802396,  11, True ) /* IgnoreCollisions */
     , (802396,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802396,  41,      60) /* RegenerationInterval */
     , (802396,  43,       0) /* GeneratorRadius */
     , (802396, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802396,   1, 'MarketOpenGenNote2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802396,   1,   33555051) /* Setup */
     , (802396,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802396, -1, 801960, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Note Exchange (801960) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
