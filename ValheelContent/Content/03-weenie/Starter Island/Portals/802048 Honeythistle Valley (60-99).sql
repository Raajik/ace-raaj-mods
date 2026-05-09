DELETE FROM `weenie` WHERE `class_Id` = 802048;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802048, 'HoneythistleValley', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802048,   1,      65536) /* ItemType - Portal */
     , (802048,  16,         32) /* ItemUseable - Remote */
     , (802048,  86,         60) /* MinLevel */
     , (802048,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802048, 111,         32) /* PortalBitmask - Unrestricted */
     , (802048, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802048,   1, True ) /* Stuck */
     , (802048,  11, False) /* IgnoreCollisions */
     , (802048,  12, True ) /* ReportCollisions */
     , (802048,  13, True ) /* Ethereal */
     , (802048,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802048,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802048,   1, 'Honeythistle Valley (60-99)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802048,   1,   33555922) /* Setup */
     , (802048,   2,  150994947) /* MotionTable */
     , (802048,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802048, 2, 4070834209, 115.65, 13.069, 11.2813, -0.539577, 0, 0, 0.841936) /* Destination */
/* @teleloc 0xF2A40021 [115.650002 13.069000 11.281300] -0.539577 0.000000 0.000000 0.841936 */;
