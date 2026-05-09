DELETE FROM `weenie` WHERE `class_Id` = 801548;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801548, 'Fort Terra', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801548,   1,      65536) /* ItemType - Portal */
     , (801548,  16,         32) /* ItemUseable - Remote */
     , (801548,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801548, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (801548, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801548,   1, True ) /* Stuck */
     , (801548,  11, False) /* IgnoreCollisions */
     , (801548,  12, True ) /* ReportCollisions */
     , (801548,  13, True ) /* Ethereal */
     , (801548,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801548,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801548,   1, 'Fort Terra') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801548,   1,   33554867) /* Setup */
     , (801548,   2,  150994947) /* MotionTable */
     , (801548,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801548, 2, 4108189700, 3.869281, 80.551064, 0.005000, 0.999286, 0, 0, -0.037790) /* Destination */
/* @teleloc 0xF4DE0004 [3.869281 80.551064 0.005000] 0.999286 0.000000 0.000000 -0.037790 */;
