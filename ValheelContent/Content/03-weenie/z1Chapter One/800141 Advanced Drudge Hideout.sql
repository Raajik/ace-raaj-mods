DELETE FROM `weenie` WHERE `class_Id` = 800141;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800141, 'advancdportaldrudgehideout', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800141,   1,      65536) /* ItemType - Portal */
     , (800141,  16,         32) /* ItemUseable - Remote */
     , (800141,  86,        180) /* MinLevel */
     , (800141,  87,        225) /* MinLevel */
     , (800141,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800141, 111,         32) /* PortalBitmask - Unrestricted */
     , (800141, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800141,   1, True ) /* Stuck */
     , (800141,  11, False) /* IgnoreCollisions */
     , (800141,  12, True ) /* ReportCollisions */
     , (800141,  13, True ) /* Ethereal */
     , (800141,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800141,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800141,   1, 'Advanced Drudge Hideout') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800141,   1,   33555922) /* Setup */
     , (800141,   2,  150994947) /* MotionTable */
     , (800141,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800141, 2, 27132180, 10, -40, 0, 1, 0, 0, 0) /* Destination */
/* @teleloc 0x019E0114 [10.000000 -40.000000 0.000000] 1.000000 0.000000 0.000000 0.000000 */;
