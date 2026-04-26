DELETE FROM `weenie` WHERE `class_Id` = 803147;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803147, 'Daybringer Lair', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803147,   1,      65536) /* ItemType - Portal */
     , (803147,  16,         32) /* ItemUseable - Remote */
     , (803147,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803147, 111,         32) /* PortalBitmask - NoRecall */
     , (803147, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803147,   1, True ) /* Stuck */
     , (803147,  11, False) /* IgnoreCollisions */
     , (803147,  12, True ) /* ReportCollisions */
     , (803147,  13, True ) /* Ethereal */
     , (803147,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803147,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803147,   1, 'Daybringer Lair') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803147,   1,   33554867) /* Setup */
     , (803147,   2,  150994947) /* MotionTable */
     , (803147,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803147, 2, 0x2BF50110, 20.000000, -368.000000, 0.005000,  1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc   0x2BF50110 [20.000000 -368.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
