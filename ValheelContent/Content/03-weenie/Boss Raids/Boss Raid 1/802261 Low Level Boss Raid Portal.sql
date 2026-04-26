DELETE FROM `weenie` WHERE `class_Id` = 802261;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802261, 'BossRaid1Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802261,   1,      65536) /* ItemType - Portal */
     , (802261,  16,         32) /* ItemUseable - Remote */
     , (802261,  86,        400) /* MinLevel */
     , (802261,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802261, 111,         32) /* PortalBitmask - NoRecall */
     , (802261, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802261,   1, True ) /* Stuck */
     , (802261,  11, False) /* IgnoreCollisions */
     , (802261,  12, True ) /* ReportCollisions */
     , (802261,  13, True ) /* Ethereal */
     , (802261,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802261,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802261,   1, 'Low Level Boss Raid Portal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802261,   1,   33555923) /* Setup */
     , (802261,   2,  150994947) /* MotionTable */
     , (802261,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802261, 2, 0x2BF50110, 20.075459, -371.318115, 0.005000, -0.999999, 0, 0, 0.001405) /* Destination */
/* @teleloc 0x2BF50110 [20.075459 -371.318115 0.005000] -0.999999 0.000000 0.000000 0.001405 */;
