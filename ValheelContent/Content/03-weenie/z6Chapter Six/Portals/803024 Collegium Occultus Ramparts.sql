DELETE FROM `weenie` WHERE `class_Id` = 803024;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803024, 'Collegium Occultus Ramparts', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803024,   1,      65536) /* ItemType - Portal */
     , (803024,  16,         32) /* ItemUseable - Remote */
     , (803024,  86,      10000) /* MinLevel */
     , (803024,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803024, 111,         32) /* PortalBitmask - NoRecall */
     , (803024, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803024,   1, True ) /* Stuck */
     , (803024,  11, False) /* IgnoreCollisions */
     , (803024,  12, True ) /* ReportCollisions */
     , (803024,  13, True ) /* Ethereal */
     , (803024,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803024,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803024,   1, 'Collegium Occultus Ramparts') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803024,   1,   33554867) /* Setup */
     , (803024,   2,  150994947) /* MotionTable */
     , (803024,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803024, 2, 0x004401FE, 69.997063, -149.983551, 0.308130,  0.003238, 0, 0, -0.999995) /* Destination */
/* @teleloc 0x004401FE [69.997063 -149.983551 0.308130] 0.003238 0.000000 0.000000 -0.999995 */;
