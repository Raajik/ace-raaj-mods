DELETE FROM `weenie` WHERE `class_Id` = 801598;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801598, 'Platform of Death', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801598,   1,      65536) /* ItemType - Portal */
     , (801598,  16,         32) /* ItemUseable - Remote */
     , (801598,  86,        350) /* MinLevel */
     , (801598,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801598, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (801598, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801598,   1, True ) /* Stuck */
     , (801598,  11, False) /* IgnoreCollisions */
     , (801598,  12, True ) /* ReportCollisions */
     , (801598,  13, True ) /* Ethereal */
     , (801598,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801598,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801598,   1, 'Platform of Death') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801598,   1,   33554867) /* Setup */
     , (801598,   2,  150994947) /* MotionTable */
     , (801598,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801598, 2, 774897707, 131.714920, 60.232658, 155.580460, -0.373668, 0, 0, 0.927562) /* Destination */
/* @teleloc 0x2E30002B [131.714920 60.232658 155.580460] -0.373668 0.000000 0.000000 0.927562 */;
