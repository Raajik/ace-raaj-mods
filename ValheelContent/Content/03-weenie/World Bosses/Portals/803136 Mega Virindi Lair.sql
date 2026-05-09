DELETE FROM `weenie` WHERE `class_Id` = 803136;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803136, 'Mega Virindi Lair', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803136,   1,      65536) /* ItemType - Portal */
     , (803136,  16,         32) /* ItemUseable - Remote */
     , (803136,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803136, 111,         32) /* PortalBitmask - NoRecall */
     , (803136, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803136,   1, True ) /* Stuck */
     , (803136,  11, False) /* IgnoreCollisions */
     , (803136,  12, True ) /* ReportCollisions */
     , (803136,  13, True ) /* Ethereal */
     , (803136,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803136,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803136,   1, 'Mega Virindi Lair') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803136,   1,   33554867) /* Setup */
     , (803136,   2,  150994947) /* MotionTable */
     , (803136,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803136, 2, 0x2BF5013C, 240.000000, -198.000000, 0.005000,  1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc  0x2BF5013C [240.000000 -198.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
