DELETE FROM `weenie` WHERE `class_Id` = 803332;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803332, 'Celestial Blood Raid', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803332,   1,      65536) /* ItemType - Portal */
     , (803332,  16,         32) /* ItemUseable - Remote */
     , (803332,  86,      10000) /* MinLevel */
     , (803332,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803332, 111,         32) /* PortalBitmask - NoRecall */
     , (803332, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803332,   1, True ) /* Stuck */
     , (803332,  11, False) /* IgnoreCollisions */
     , (803332,  12, True ) /* ReportCollisions */
     , (803332,  13, True ) /* Ethereal */
     , (803332,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803332,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803332,   1, 'Radiant Blood Raid') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803332,   1,   33554867) /* Setup */
     , (803332,   2,  150994947) /* MotionTable */
     , (803332,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803332, 2, 0x5964010B, 20.282402, -101.436722, 0.005000,  0.999985, 0, 0, 0.005403) /* Destination */
/* /teleloc 0x5964010B [20.282402 -101.436722 0.005000] 0.999985 0.000000 0.000000 0.005403 */;
