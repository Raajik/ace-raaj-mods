DELETE FROM `weenie` WHERE `class_Id` = 802645;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802645, 'DrudgePit8', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802645,   1,      65536) /* ItemType - Portal */
     , (802645,  16,         32) /* ItemUseable - Remote */
     , (802645,  86,        151) /* MinLevel */
     , (802645,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802645, 111,         32) /* PortalBitmask - Unrestricted */
     , (802645, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802645,   1, True ) /* Stuck */
     , (802645,  11, False) /* IgnoreCollisions */
     , (802645,  12, True ) /* ReportCollisions */
     , (802645,  13, True ) /* Ethereal */
     , (802645,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802645,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802645,   1, 'Drudge Pit (151-180)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802645,   1,   33555922) /* Setup */
     , (802645,   2,  150994947) /* MotionTable */
     , (802645,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802645, 2, 0xE7F70021, 102.459755, 6.484120, 2.119864, 0.708832, 0, 0, 0.705377) /* Destination */
/* @teleloc 0xE7F70021 [102.459755 6.484120 2.119864] 0.708832 0.000000 0.000000 0.705377 */;
