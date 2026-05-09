DELETE FROM `weenie` WHERE `class_Id` = 802052;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802052, 'HillburnTrails', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802052,   1,      65536) /* ItemType - Portal */
     , (802052,  16,         32) /* ItemUseable - Remote */
     , (802052,  86,        160) /* MinLevel */
     , (802052,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802052, 111,         32) /* PortalBitmask - Unrestricted */
     , (802052, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802052,   1, True ) /* Stuck */
     , (802052,  11, False) /* IgnoreCollisions */
     , (802052,  12, True ) /* ReportCollisions */
     , (802052,  13, True ) /* Ethereal */
     , (802052,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802052,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802052,   1, 'Hillburn Trails (160-180)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802052,   1,   33555922) /* Setup */
     , (802052,   2,  150994947) /* MotionTable */
     , (802052,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802052, 2, 4087939099, 74.7301, 66.9265, 65.5822, -0.012016, 0, 0, 0.999928) /* Destination */
/* @teleloc 0xF3A9001B [74.730103 66.926498 65.582199] -0.012016 0.000000 0.000000 0.999928 */;
