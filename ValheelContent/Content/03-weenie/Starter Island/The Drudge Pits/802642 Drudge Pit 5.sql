DELETE FROM `weenie` WHERE `class_Id` = 802642;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802642, 'DrudgePit5', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802642,   1,      65536) /* ItemType - Portal */
     , (802642,  16,         32) /* ItemUseable - Remote */
     , (802642,  86,         71) /* MinLevel */
     , (802642,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802642, 111,         32) /* PortalBitmask - Unrestricted */
     , (802642, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802642,   1, True ) /* Stuck */
     , (802642,  11, False) /* IgnoreCollisions */
     , (802642,  12, True ) /* ReportCollisions */
     , (802642,  13, True ) /* Ethereal */
     , (802642,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802642,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802642,   1, 'Drudge Pit (71-100)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802642,   1,   33555922) /* Setup */
     , (802642,   2,  150994947) /* MotionTable */
     , (802642,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802642, 2, 0xE8F8001E, 78.653496, 120.565903, 2.119846, 0.699217, 0, 0, 0.714909) /* Destination */
/* @teleloc 0xE8F8001E [78.653496 120.565903 2.119846] 0.699217 0.000000 0.000000 0.714909 */;
