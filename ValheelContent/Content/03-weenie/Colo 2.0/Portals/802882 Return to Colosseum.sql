DELETE FROM `weenie` WHERE `class_Id` = 802882;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802882, 'ReturnToColo', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802882,   1,      65536) /* ItemType - Portal */
     , (802882,  16,         32) /* ItemUseable - Remote */
     , (802882,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802882, 111,         32) /* PortalBitmask - Unrestricted */
     , (802882, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802882,   1, True ) /* Stuck */
     , (802882,  11, False) /* IgnoreCollisions */
     , (802882,  12, True ) /* ReportCollisions */
     , (802882,  13, True ) /* Ethereal */
     , (802882,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802882,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802882,   1, 'Return to Colosseum') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802882,   1,   33555923) /* Setup */
     , (802882,   2,  150994947) /* MotionTable */
     , (802882,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802882, 2, 0x00AF0118, 40.000000, -11.051539, 0.005000, 1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc  0x00AF0118 [40.000000 -11.051539 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
