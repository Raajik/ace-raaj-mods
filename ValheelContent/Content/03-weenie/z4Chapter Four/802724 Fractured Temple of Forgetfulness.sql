DELETE FROM `weenie` WHERE `class_Id` = 802724;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802724, 'FracturedTempleofForgetfulness', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802724,   1,      65536) /* ItemType - Portal */
     , (802724,  16,         32) /* ItemUseable - Remote */
     , (802724,  86,       3000) /* MinLevel */
     , (802724,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802724, 111,         32) /* PortalBitmask - Unrestricted */
     , (802724, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802724,   1, True ) /* Stuck */
     , (802724,  11, False) /* IgnoreCollisions */
     , (802724,  12, True ) /* ReportCollisions */
     , (802724,  13, True ) /* Ethereal */
     , (802724,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802724,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802724,   1, 'Fractured Temple of Forgetfulness') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802724,   1,   33555923) /* Setup */
     , (802724,   2,  150994947) /* MotionTable */
     , (802724,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802724, 2, 0x5D480170, 37.220005, -32.859398, 18.059999, -0.929164, 0, 0, 0.369668) /* Destination */
/* @teleloc 0x5D480170 [37.220005 -32.859398 18.059999] -0.929164 0.000000 0.000000 0.369668 */;
