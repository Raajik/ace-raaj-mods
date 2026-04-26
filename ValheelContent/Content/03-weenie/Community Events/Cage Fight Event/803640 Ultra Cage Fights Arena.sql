DELETE FROM `weenie` WHERE `class_Id` = 803640;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803640, 'UltraCageFightsPortal', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803640,   1,      65536) /* ItemType - Portal */
     , (803640,  16,         32) /* ItemUseable - Remote */
     , (803640,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803640, 111,         32) /* PortalBitmask - Unrestricted */
     , (803640, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803640,   1, True ) /* Stuck */
     , (803640,  12, True ) /* ReportCollisions */
     , (803640,  13, True ) /* Ethereal */
     , (803640,  14, True ) /* GravityStatus */
     , (803640,  15, True ) /* LightsStatus */
     , (803640,  19, True ) /* Attackable */
     , (803640,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803640,  54, -0.100000001490116) /* UseRadius */
     , (803640,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803640,   1, 'Ultra Cage Fights Arena') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803640,   1,   33554867) /* Setup */
     , (803640,   2,  150994947) /* MotionTable */
     , (803640,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803640, 2, 0x576B0127, 72.821266, -35.013775, 0.005000, -0.707107, 0, 0, -0.707107) /* Destination */
/* @teleloc 0x576B0127 [72.821266 -35.013775 0.005000] -0.707107 0.000000 0.000000 -0.707107 */;
