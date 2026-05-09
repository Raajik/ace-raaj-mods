DELETE FROM `weenie` WHERE `class_Id` = 803139;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803139, 'VooDoo MaMa JooJoo Lair', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803139,   1,      65536) /* ItemType - Portal */
     , (803139,  16,         32) /* ItemUseable - Remote */
     , (803139,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803139, 111,         32) /* PortalBitmask - NoRecall */
     , (803139, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803139,   1, True ) /* Stuck */
     , (803139,  11, False) /* IgnoreCollisions */
     , (803139,  12, True ) /* ReportCollisions */
     , (803139,  13, True ) /* Ethereal */
     , (803139,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803139,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803139,   1, 'VooDoo MaMa JooJoo Lair') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803139,   1,   33554867) /* Setup */
     , (803139,   2,  150994947) /* MotionTable */
     , (803139,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803139, 2, 0x2BF50137, 240.000000, -38.000000, 0.005000,  1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc  0x2BF50137 [240.000000 -38.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
