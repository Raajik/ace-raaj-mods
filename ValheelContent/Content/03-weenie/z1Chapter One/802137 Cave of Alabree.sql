DELETE FROM `weenie` WHERE `class_Id` = 802137;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802137, 'caveofalabreenew', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802137,   1,      65536) /* ItemType - Portal */
     , (802137,  16,         32) /* ItemUseable - Remote */
     , (802137,  86,        275) /* MinLevel */
     , (802137,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802137, 111,          1) /* PortalBitmask - Unrestricted */
     , (802137, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802137,   1, True ) /* Stuck */
     , (802137,  11, False) /* IgnoreCollisions */
     , (802137,  12, True ) /* ReportCollisions */
     , (802137,  13, True ) /* Ethereal */
     , (802137,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802137,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802137,   1, 'Cave of Alabree') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802137,   1,   33555922) /* Setup */
     , (802137,   2,  150994947) /* MotionTable */
     , (802137,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802137, 2, 23200209, 60, -10, 12, 0, 0, 0, -1) /* Destination */
/* @teleloc 0x016201D1 [60.000000 -10.000000 12.000000] 0.000000 0.000000 0.000000 -1.000000 */;
