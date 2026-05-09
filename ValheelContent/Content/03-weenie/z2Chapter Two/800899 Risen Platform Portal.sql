DELETE FROM `weenie` WHERE `class_Id` = 800899;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800899, 'Risen Platform Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800899,   1,      65536) /* ItemType - Portal */
     , (800899,  16,         32) /* ItemUseable - Remote */
     , (800899,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800899, 111,         32) /* PortalBitmask - NoSummon */
     , (800899, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800899,   1, True ) /* Stuck */
     , (800899,  11, False) /* IgnoreCollisions */
     , (800899,  12, True ) /* ReportCollisions */
     , (800899,  13, True ) /* Ethereal */
     , (800899,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800899,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800899,   1, 'Risen Platform Portal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800899,   1,   33554867) /* Setup */
     , (800899,   2,  150994947) /* MotionTable */
     , (800899,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800899, 2, 4191748118, 55.5279, 124.033, 19.8163, -0.057738, 0, 0, -0.998332) /* Destination */
/* @teleloc 0xF9D90016 [55.527901 124.032997 19.816299] -0.057738 0.000000 0.000000 -0.998332 */;
