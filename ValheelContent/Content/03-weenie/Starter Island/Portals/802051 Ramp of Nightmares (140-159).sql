DELETE FROM `weenie` WHERE `class_Id` = 802051;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802051, 'RampOfNightmares', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802051,   1,      65536) /* ItemType - Portal */
     , (802051,  16,         32) /* ItemUseable - Remote */
     , (802051,  86,        140) /* MinLevel */
     , (802051,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802051, 111,         32) /* PortalBitmask - Unrestricted */
     , (802051, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802051,   1, True ) /* Stuck */
     , (802051,  11, False) /* IgnoreCollisions */
     , (802051,  12, True ) /* ReportCollisions */
     , (802051,  13, True ) /* Ethereal */
     , (802051,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802051,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802051,   1, 'Ramp of Nightmares (140-159)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802051,   1,   33555922) /* Setup */
     , (802051,   2,  150994947) /* MotionTable */
     , (802051,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802051, 2, 4088004665, 186.569, 21.0679, 149.887, 0.999968, 0, 0, 0.007972) /* Destination */
/* @teleloc 0xF3AA0039 [186.569000 21.067900 149.886993] 0.999968 0.000000 0.000000 0.007972 */;
