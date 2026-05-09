DELETE FROM `weenie` WHERE `class_Id` = 802641;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802641, 'DrudgePit4', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802641,   1,      65536) /* ItemType - Portal */
     , (802641,  16,         32) /* ItemUseable - Remote */
     , (802641,  86,         41) /* MinLevel */
     , (802641,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802641, 111,         32) /* PortalBitmask - Unrestricted */
     , (802641, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802641,   1, True ) /* Stuck */
     , (802641,  11, False) /* IgnoreCollisions */
     , (802641,  12, True ) /* ReportCollisions */
     , (802641,  13, True ) /* Ethereal */
     , (802641,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802641,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802641,   1, 'Drudge Pit (41-70)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802641,   1,   33555922) /* Setup */
     , (802641,   2,  150994947) /* MotionTable */
     , (802641,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802641, 2, 0xE8F8003E, 181.451614, 136.902664, 2.119543, -0.706040, 0, 0, -0.708172) /* Destination */
/* @teleloc 0xE8F8003E [181.451614 136.902664 2.119543] -0.706040 0.000000 0.000000 -0.708172 */;
