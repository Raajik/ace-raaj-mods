DELETE FROM `weenie` WHERE `class_Id` = 802466;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802466, 'MarketCowGenAM', 1, '2022-02-10 05:08:07') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802466,  81,          1) /* MaxGeneratedObjects */
     , (802466,  82,          1) /* InitGeneratedObjects */
     , (802466,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802466, 142,          6) /* GeneratorTimeType - RealTimePeriod */
     , (802466, 143,          5) /* GeneratorStartTime - 01/01/1970 08:00:05 */
     , (802466, 144,          9) /* GeneratorEndTime - 01/01/1970 08:00:09 */
     , (802466, 145,          3) /* GeneratorEndDestructionType - Kill */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802466,   1, True ) /* Stuck */
     , (802466,  11, True ) /* IgnoreCollisions */
     , (802466,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802466,  41,      60) /* RegenerationInterval */
     , (802466,  43,       0) /* GeneratorRadius */
     , (802466, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802466,   1, 'MarketCowGenAM') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802466,   1,   33555051) /* Setup */
     , (802466,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802466, -1, 802465, 1, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Crypto Tracking Agent (801687) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
