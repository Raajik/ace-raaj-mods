DELETE FROM `weenie` WHERE `class_Id` = 803239;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803239, 'Isle of Refuge', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803239,   1,      65536) /* ItemType - Portal */
     , (803239,  16,         32) /* ItemUseable - Remote */
     , (803239,  86,      10000) /* MinLevel */
     , (803239,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803239, 111,         32) /* PortalBitmask - NoRecall */
     , (803239, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803239,   1, True ) /* Stuck */
     , (803239,  11, False) /* IgnoreCollisions */
     , (803239,  12, True ) /* ReportCollisions */
     , (803239,  13, True ) /* Ethereal */
     , (803239,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803239,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803239,   1, 'Isle of Refuge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803239,   1,   33554867) /* Setup */
     , (803239,   2,  150994947) /* MotionTable */
     , (803239,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803239, 2, 0xEB100008, 11.755666, 181.823410, -0.445000,  -0.017348, 0, 0, 0.999849) /* Destination */
/* @teleloc 0xEB100008 [11.755666 181.823410 -0.445000] -0.017348 0.000000 0.000000 0.999849 */;
