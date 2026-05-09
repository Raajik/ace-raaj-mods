DELETE FROM `weenie` WHERE `class_Id` = 802407;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802407, 'Volcano Central', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802407,   1,      65536) /* ItemType - Portal */
     , (802407,  16,         32) /* ItemUseable - Remote */
     , (802407,  86,       6000) /* MinLevel */
     , (802407,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802407, 111,         32) /* PortalBitmask - Unrestricted */
     , (802407, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802407,   1, True ) /* Stuck */
     , (802407,  11, False) /* IgnoreCollisions */
     , (802407,  12, True ) /* ReportCollisions */
     , (802407,  13, True ) /* Ethereal */
     , (802407,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802407,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802407,   1, 'Volcano Central') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802407,   1,   33555923) /* Setup */
     , (802407,   2,  150994947) /* MotionTable */
     , (802407,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802407, 2, 0x616C0029, 121.266739, 11.437771, 344.958160, -0.679854, 0, 0, -0.733348) /* Destination */
/* @teleloc 0x616C0029 [121.266739 11.437771 344.958160] -0.679854 0.000000 0.000000 -0.733348 */;
