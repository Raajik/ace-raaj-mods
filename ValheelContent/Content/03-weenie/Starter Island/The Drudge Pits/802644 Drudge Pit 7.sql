DELETE FROM `weenie` WHERE `class_Id` = 802644;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802644, 'DrudgePit7', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802644,   1,      65536) /* ItemType - Portal */
     , (802644,  16,         32) /* ItemUseable - Remote */
     , (802644,  86,        126) /* MinLevel */
     , (802644,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802644, 111,         32) /* PortalBitmask - Unrestricted */
     , (802644, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802644,   1, True ) /* Stuck */
     , (802644,  11, False) /* IgnoreCollisions */
     , (802644,  12, True ) /* ReportCollisions */
     , (802644,  13, True ) /* Ethereal */
     , (802644,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802644,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802644,   1, 'Drudge Pit (126-150)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802644,   1,   33555922) /* Setup */
     , (802644,   2,  150994947) /* MotionTable */
     , (802644,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802644, 2, 0xE7F70026, 114.011009, 132.440689, 2.119823, -0.702940, 0, 0, -0.711249) /* Destination */
/* @teleloc 0xE7F70026 [114.011009 132.440689 2.119823] -0.702940 0.000000 0.000000 -0.711249 */;
