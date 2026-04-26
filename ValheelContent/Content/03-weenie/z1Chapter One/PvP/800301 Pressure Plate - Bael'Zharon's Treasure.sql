DELETE FROM `weenie` WHERE `class_Id` = 800301;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800301, 'kingofhillchestpressureplate', 24, '2005-02-09 10:00:00') /* PressurePlate */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800301,   1,        128) /* ItemType - Misc */
     , (800301,  16,          1) /* ItemUseable - No */
     , (800301,  81,          1) /* MaxGeneratedObjects */
     , (800301,  82,          0) /* InitGeneratedObjects */
     , (800301,  83,      65552) /* ActivationResponse - Talk, Generate */
     , (800301,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */
     , (800301, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800301,   1, True ) /* Stuck */
     , (800301,  11, False) /* IgnoreCollisions */
     , (800301,  12, True ) /* ReportCollisions */
     , (800301,  13, True ) /* Ethereal */
     , (800301,  14, False) /* GravityStatus */
     , (800301,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800301,  11,       300) /* ResetInterval */
     , (800301,  41,       0) /* RegenerationInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800301,   1, 'Pressure Plate - King of Hill Treasure') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800301,   1,   33555536) /* Setup */
     , (800301,   2,  150994977) /* MotionTable */
     , (800301,   8,  100668114) /* Icon */
     , (800301,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (800301,  16,          0) /* ActivationTarget */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800301, -1, 800299, 0, 1, 1, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Olthoi Noble (10905) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
