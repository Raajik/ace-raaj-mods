DELETE FROM `weenie` WHERE `class_Id` = 802404;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802404, 'Southern Kou-an Skerry', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802404,   1,      65536) /* ItemType - Portal */
     , (802404,  16,         32) /* ItemUseable - Remote */
     , (802404,  86,       6000) /* MinLevel */
     , (802404,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802404, 111,         32) /* PortalBitmask - Unrestricted */
     , (802404, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802404,   1, True ) /* Stuck */
     , (802404,  11, False) /* IgnoreCollisions */
     , (802404,  12, True ) /* ReportCollisions */
     , (802404,  13, True ) /* Ethereal */
     , (802404,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802404,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802404,   1, 'Southern Kou-an Skerry') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802404,   1,   33555923) /* Setup */
     , (802404,   2,  150994947) /* MotionTable */
     , (802404,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802404, 2, 0x6543002F, 125.094978, 166.381958, 301.870148, -0.974551, 0, 0, -0.224165) /* Destination */
/* @teleloc 0x6543002F [125.094978 166.381958 301.870148] -0.974551 0.000000 0.000000 -0.224165 */;
