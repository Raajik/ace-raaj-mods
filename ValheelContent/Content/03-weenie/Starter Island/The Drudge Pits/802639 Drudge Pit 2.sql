DELETE FROM `weenie` WHERE `class_Id` = 802639;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802639, 'DrudgePit2', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802639,   1,      65536) /* ItemType - Portal */
     , (802639,  16,         32) /* ItemUseable - Remote */
     , (802639,  86,         16) /* MinLevel */
     , (802639,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802639, 111,         32) /* PortalBitmask - Unrestricted */
     , (802639, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802639,   1, True ) /* Stuck */
     , (802639,  11, False) /* IgnoreCollisions */
     , (802639,  12, True ) /* ReportCollisions */
     , (802639,  13, True ) /* Ethereal */
     , (802639,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802639,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802639,   1, 'Drudge Pit (16-25)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802639,   1,   33555922) /* Setup */
     , (802639,   2,  150994947) /* MotionTable */
     , (802639,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802639, 2, 0xE9F70026, 104.755028, 138.545807, 2.119809, -0.690950, 0, 0, -0.722903) /* Destination */
/* @teleloc 0xE9F70026 [104.755028 138.545807 2.119809] -0.690950 0.000000 0.000000 -0.722903 */;
