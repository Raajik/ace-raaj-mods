DELETE FROM `weenie` WHERE `class_Id` = 803449;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803449, 'AsheronsCastlePort', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803449,   1,      65536) /* ItemType - Portal */
     , (803449,  16,         32) /* ItemUseable - Remote */
     , (803449,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803449, 111,         32) /* PortalBitmask - NoRecall */
     , (803449, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803449,   1, True ) /* Stuck */
     , (803449,  11, False) /* IgnoreCollisions */
     , (803449,  12, True ) /* ReportCollisions */
     , (803449,  13, True ) /* Ethereal */
     , (803449,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803449,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803449,   1, 'Asheron''s Castle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803449,   1,   33554867) /* Setup */
     , (803449,   2,  150994947) /* MotionTable */
     , (803449,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803449, 2, 3583639609, 177, 1.21, 373.501, 0, 0, 0, -1) /* Destination */
/* @teleloc 0xD59A0039 [177.000000 1.210000 373.501007] 0.000000 0.000000 0.000000 -1.000000 */;
