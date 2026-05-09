DELETE FROM `weenie` WHERE `class_Id` = 802406;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802406, 'Volcano North', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802406,   1,      65536) /* ItemType - Portal */
     , (802406,  16,         32) /* ItemUseable - Remote */
     , (802406,  86,       6000) /* MinLevel */
     , (802406,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802406, 111,         32) /* PortalBitmask - Unrestricted */
     , (802406, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802406,   1, True ) /* Stuck */
     , (802406,  11, False) /* IgnoreCollisions */
     , (802406,  12, True ) /* ReportCollisions */
     , (802406,  13, True ) /* Ethereal */
     , (802406,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802406,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802406,   1, 'Volcano North') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802406,   1,   33555923) /* Setup */
     , (802406,   2,  150994947) /* MotionTable */
     , (802406,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802406, 2, 0x5C710027, 112.733459, 156.378387, 399.573181, -0.982204, 0, 0, -0.187815) /* Destination */
/* @teleloc 0x5C710027 [112.733459 156.378387 399.573181] -0.982204 0.000000 0.000000 -0.187815 */;
