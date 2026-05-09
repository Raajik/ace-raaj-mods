DELETE FROM `weenie` WHERE `class_Id` = 803333;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803333, 'Radiant Blood Halls', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803333,   1,      65536) /* ItemType - Portal */
     , (803333,  16,         32) /* ItemUseable - Remote */
     , (803333,  86,      10000) /* MinLevel */
     , (803333,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803333, 111,         32) /* PortalBitmask - NoRecall */
     , (803333, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803333,   1, True ) /* Stuck */
     , (803333,  11, False) /* IgnoreCollisions */
     , (803333,  12, True ) /* ReportCollisions */
     , (803333,  13, True ) /* Ethereal */
     , (803333,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803333,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803333,   1, 'Radiant Blood Halls') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803333,   1,   33554867) /* Setup */
     , (803333,   2,  150994947) /* MotionTable */
     , (803333,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803333, 2, 0x596B010F, 120.000000, -10.000000, 0.005000,  0.710073, 0, 0, -0.704128) /* Destination */
/*  /teleloc 0x596B010F [120.000000 -10.000000 0.005000] 0.710073 0.000000 0.000000 -0.704128 */;
