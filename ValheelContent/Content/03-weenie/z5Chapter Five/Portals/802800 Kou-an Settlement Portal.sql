DELETE FROM `weenie` WHERE `class_Id` = 802800;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802800, 'KouanSettlement', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802800,   1,      65536) /* ItemType - Portal */
     , (802800,  16,         32) /* ItemUseable - Remote */
     , (802800,  86,       6000) /* MinLevel */
     , (802800,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802800, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (802800, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802800,   1, True ) /* Stuck */
     , (802800,  11, False) /* IgnoreCollisions */
     , (802800,  12, True ) /* ReportCollisions */
     , (802800,  13, True ) /* Ethereal */
     , (802800,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802800,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802800,   1, 'Kou-an Settlement') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802800,   1,   33554867) /* Setup */
     , (802800,   2,  150994947) /* MotionTable */
     , (802800,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802800, 2, 0x2562000C, 43.068699, 84.454399, 20.004999, 0.699170, 0, 0, -0.714956) /* Destination */
/* @teleloc 0x2562000C [43.068699 84.454399 20.004999] 0.699170 0.000000 0.000000 -0.714956 */;
