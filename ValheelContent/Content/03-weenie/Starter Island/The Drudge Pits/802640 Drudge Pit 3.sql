DELETE FROM `weenie` WHERE `class_Id` = 802640;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802640, 'DrudgePit3', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802640,   1,      65536) /* ItemType - Portal */
     , (802640,  16,         32) /* ItemUseable - Remote */
     , (802640,  86,         26) /* MinLevel */
     , (802640,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802640, 111,         32) /* PortalBitmask - Unrestricted */
     , (802640, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802640,   1, True ) /* Stuck */
     , (802640,  11, False) /* IgnoreCollisions */
     , (802640,  12, True ) /* ReportCollisions */
     , (802640,  13, True ) /* Ethereal */
     , (802640,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802640,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802640,   1, 'Drudge Pit (26-40)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802640,   1,   33555922) /* Setup */
     , (802640,   2,  150994947) /* MotionTable */
     , (802640,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802640, 2, 0xE9F8001B, 83.659790, 67.546349, 2.119302, 0.698822, 0, 0, 0.715295) /* Destination */
/* @teleloc 0xE9F8001B [83.659790 67.546349 2.119302] 0.698822 0.000000 0.000000 0.715295 */;
