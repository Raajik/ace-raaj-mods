DELETE FROM `weenie` WHERE `class_Id` = 803859;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803859, 'BarrierEssence', 1, '2005-02-09 10:00:00') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803859,   1,        128) /* ItemType - Misc */
     , (803859,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803859,   1, True ) /* Stuck */
     , (803859,  11, False) /* IgnoreCollisions */
     , (803859,  12, True ) /* ReportCollisions */
     , (803859,  13, True ) /* Ethereal */
     , (803859,  15, True ) /* LightsStatus */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803859,  39,       0.1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803859,   1, 'BarrierEssence') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803859,   1,   33560023) /* Setup */
     , (803859,   2,  150994947) /* MotionTable */
     , (803859,   8,  100667499) /* Icon */;