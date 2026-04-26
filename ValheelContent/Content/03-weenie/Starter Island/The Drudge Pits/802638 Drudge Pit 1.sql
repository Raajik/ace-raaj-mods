DELETE FROM `weenie` WHERE `class_Id` = 802638;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802638, 'DrudgePit1', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802638,   1,      65536) /* ItemType - Portal */
     , (802638,  16,         32) /* ItemUseable - Remote */
     , (802638,  86,          1) /* MinLevel */
     , (802638,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802638, 111,         32) /* PortalBitmask - Unrestricted */
     , (802638, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802638,   1, True ) /* Stuck */
     , (802638,  11, False) /* IgnoreCollisions */
     , (802638,  12, True ) /* ReportCollisions */
     , (802638,  13, True ) /* Ethereal */
     , (802638,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802638,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802638,   1, 'Drudge Pit (1-15)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802638,   1,   33555922) /* Setup */
     , (802638,   2,  150994947) /* MotionTable */
     , (802638,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802638, 2, 0xEAF70008, 19.220156, 185.774811, 2.119807, 0.637763, 0, 0, 0.770232) /* Destination */
/* @teleloc 0xEAF70008 [19.220156 185.774811 2.119807] 0.637763 0.000000 0.000000 0.770232 */;
