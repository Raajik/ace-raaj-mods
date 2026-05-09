DELETE FROM `weenie` WHERE `class_Id` = 802043;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802043, 'GreenBowl', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802043,   1,      65536) /* ItemType - Portal */
     , (802043,  16,         32) /* ItemUseable - Remote */
     , (802043,  86,          1) /* MinLevel */
     , (802043,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802043, 111,         32) /* PortalBitmask - Unrestricted */
     , (802043, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802043,   1, True ) /* Stuck */
     , (802043,  11, False) /* IgnoreCollisions */
     , (802043,  12, True ) /* ReportCollisions */
     , (802043,  13, True ) /* Ethereal */
     , (802043,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802043,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802043,   1, 'Green Bowl (1-9)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802043,   1,   33555922) /* Setup */
     , (802043,   2,  150994947) /* MotionTable */
     , (802043,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802043, 2, 4104650773, 61.0855, 99.756, 9.30583, -0.689523, 0, 0, -0.724263) /* Destination */
/* @teleloc 0xF4A80015 [61.085499 99.755997 9.305830] -0.689523 0.000000 0.000000 -0.724263 */;
