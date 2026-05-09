DELETE FROM `weenie` WHERE `class_Id` = 801512;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801512, 'MercofShemGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801512,  81,         1) /* MaxGeneratedObjects */
     , (801512,  82,         1) /* InitGeneratedObjects */
     , (801512,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801512, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801512, 142,          3) /* GeneratorTimeType - Event */
     , (801512, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801512,   1, True ) /* Stuck */
     , (801512,  11, True ) /* IgnoreCollisions */
     , (801512,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801512,  41,      999999) /* RegenerationInterval */
     , (801512,  43,       10) /* GeneratorRadius */
     , (801512, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801512,   1, 'MercofShemGen') /* Name */
     , (801512,  34, 'MercOfShem') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801512,   1,   33555051) /* Setup */
     , (801512,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801512, -1, 801513, 45, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;