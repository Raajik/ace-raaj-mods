DELETE FROM `weenie` WHERE `class_Id` = 803381;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803381, 'Celestial Hand Halls', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803381,   1,      65536) /* ItemType - Portal */
     , (803381,  16,         32) /* ItemUseable - Remote */
     , (803381,  86,      10000) /* MinLevel */
     , (803381,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803381, 111,         32) /* PortalBitmask - NoRecall */
     , (803381, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803381,   1, True ) /* Stuck */
     , (803381,  11, False) /* IgnoreCollisions */
     , (803381,  12, True ) /* ReportCollisions */
     , (803381,  13, True ) /* Ethereal */
     , (803381,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803381,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803381,   1, 'Celestial Hand Halls') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803381,   1,   33554867) /* Setup */
     , (803381,   2,  150994947) /* MotionTable */
     , (803381,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803381, 2, 0x596B010D, 109.454224, -160.199814, 0.005000,  -0.708918, 0, 0, 0.705291) /* Destination */
/*  /teleloc 0x596B010D [109.454224 -160.199814 0.005000] -0.708918 0.000000 0.000000 0.705291 */;
