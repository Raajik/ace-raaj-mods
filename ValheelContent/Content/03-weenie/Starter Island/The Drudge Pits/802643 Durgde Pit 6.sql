DELETE FROM `weenie` WHERE `class_Id` = 802643;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802643, 'DrudgePit6', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802643,   1,      65536) /* ItemType - Portal */
     , (802643,  16,         32) /* ItemUseable - Remote */
     , (802643,  86,        101) /* MinLevel */
     , (802643,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802643, 111,         32) /* PortalBitmask - Unrestricted */
     , (802643, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802643,   1, True ) /* Stuck */
     , (802643,  11, False) /* IgnoreCollisions */
     , (802643,  12, True ) /* ReportCollisions */
     , (802643,  13, True ) /* Ethereal */
     , (802643,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802643,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802643,   1, 'Drudge Pit (101-125)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802643,   1,   33555922) /* Setup */
     , (802643,   2,  150994947) /* MotionTable */
     , (802643,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802643, 2, 0xE8F80001, 10.846197, 23.934290, 2.119873, -0.699775, 0, 0, -0.714363) /* Destination */
/* @teleloc 0xE8F80001 [10.846197 23.934290 2.119873] -0.699775 0.000000 0.000000 -0.714363 */;
