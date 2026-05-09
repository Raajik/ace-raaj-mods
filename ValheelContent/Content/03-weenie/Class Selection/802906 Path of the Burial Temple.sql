DELETE FROM `weenie` WHERE `class_Id` = 802906;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802906, 'Path of the Burial Temple', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802906,   1,      65536) /* ItemType - Portal */
     , (802906,  16,         32) /* ItemUseable - Remote */
     , (802906,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802906, 111,         32) /* PortalBitmask - Unrestricted */
     , (802906, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802906,   1, True ) /* Stuck */
     , (802906,  11, False) /* IgnoreCollisions */
     , (802906,  12, True ) /* ReportCollisions */
     , (802906,  13, True ) /* Ethereal */
     , (802906,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802906,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802906,   1, 'Path of the Burial Temple') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802906,   1,   33555922) /* Setup */
     , (802906,   2,  150994947) /* MotionTable */
     , (802906,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802906, 2, 0x013E010F, 110.000000, -130.000000, -29.995001, 0.923879, 0, 0, -0.382684) /* Destination */
/* @teleloc 0x013E010F [110.000000 -130.000000 -29.995001] 0.923879 0.000000 0.000000 -0.382684 */;
