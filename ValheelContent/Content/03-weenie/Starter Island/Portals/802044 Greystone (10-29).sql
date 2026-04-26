DELETE FROM `weenie` WHERE `class_Id` = 802044;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802044, 'Greystone', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802044,   1,      65536) /* ItemType - Portal */
     , (802044,  16,         32) /* ItemUseable - Remote */
     , (802044,  86,         10) /* MinLevel */
     , (802044,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802044, 111,         32) /* PortalBitmask - Unrestricted */
     , (802044, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802044,   1, True ) /* Stuck */
     , (802044,  11, False) /* IgnoreCollisions */
     , (802044,  12, True ) /* ReportCollisions */
     , (802044,  13, True ) /* Ethereal */
     , (802044,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802044,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802044,   1, 'Greystone (10-29)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802044,   1,   33555922) /* Setup */
     , (802044,   2,  150994947) /* MotionTable */
     , (802044,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802044, 2, 4171759636, 58.1987, 78.3231, 17.4781, -0.9884, 0, 0, -0.151874) /* Destination */
/* @teleloc 0xF8A80014 [58.198700 78.323097 17.478100] -0.988400 0.000000 0.000000 -0.151874 */;
