DELETE FROM `weenie` WHERE `class_Id` = 800677;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800677, 'Hero Memorial', 1, '2020-01-08 07:59:45') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800677,   1,        128) /* ItemType - Misc */
     , (800677,   5,       9000) /* EncumbranceVal */
     , (800677,   8,       5800) /* Mass */
     , (800677,  16,          1) /* ItemUseable - No */
     , (800677,  19,          0) /* Value */
     , (800677,  81,          1) /* MaxGeneratedObjects */
     , (800677,  82,          1) /* InitGeneratedObjects */
     , (800677,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800677,  95,          8) /* RadarBlipColor - Yellow */
     , (800677, 133,          1) /* ShowableOnRadar - ShowAlways */
     , (800677, 142,          1) /* GeneratorTimeType - RealTime */
     , (800677, 143, 1036213260) /* GeneratorStartTime - 11/02/2002 13:01:00 */
     , (800677, 144, 1036558740) /* GeneratorEndTime - 11/06/2002 12:59:00 */
     , (800677, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800677,   1, True ) /* Stuck */
     , (800677,  12, True ) /* ReportCollisions */
     , (800677,  13, False) /* Ethereal */
     , (800677,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800677,  41,      60) /* RegenerationInterval */
     , (800677,  43,       0) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800677,   1, 'Hero Memorial') /* Name */
     , (800677,  16, 'This memorial signifies the great effort the hero has gone through to ensure the safety of our people!') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800677,   1,   33556034) /* Setup */
     , (800677,   8,  100670208) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800677, -1, 8359, 60, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 8, 1, 0, 0, 0) /* Generate Anniversary Effect (8359) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
